	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-3xcqeiwo" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -584
	addli r1, zero, 1
.Ltmp0:
	.loc	1 35 5 prologue_end             # parallel-rne.mlir:35:5
	core_id r2
	core_id r10
	addli r30, sp, 520
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
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
	addli r1, zero, 11
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
	addli r2, zero, 9
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
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 33
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
	addli r1, zero, 22
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
	addli r1, zero, 26
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 35
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 41
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 43
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
	storeli.w zero, -120(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -144(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -168(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -192(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -216(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -240(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -264(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -288(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -312(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -336(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -360(r30)
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
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -140(r30)
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -164(r30)
	storeli.w r3, -160(r30)
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	storeli.w r3, -180(r30)
	storeli.w r3, -176(r30)
	storeli.w r3, -172(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -212(r30)
	storeli.w r3, -208(r30)
	storeli.w r3, -204(r30)
	storeli.w r3, -200(r30)
	storeli.w r3, -196(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -236(r30)
	storeli.w r3, -232(r30)
	storeli.w r3, -228(r30)
	storeli.w r3, -224(r30)
	storeli.w r3, -220(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -260(r30)
	storeli.w r3, -256(r30)
	storeli.w r3, -252(r30)
	storeli.w r3, -248(r30)
	storeli.w r3, -244(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -284(r30)
	storeli.w r3, -280(r30)
	storeli.w r3, -276(r30)
	storeli.w r3, -272(r30)
	storeli.w r3, -268(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -308(r30)
	storeli.w r3, -304(r30)
	storeli.w r3, -300(r30)
	storeli.w r3, -296(r30)
	storeli.w r3, -292(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -332(r30)
	storeli.w r3, -328(r30)
	storeli.w r3, -324(r30)
	storeli.w r3, -320(r30)
	storeli.w r3, -316(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r3, -356(r30)
	storeli.w r3, -352(r30)
	storeli.w r3, -348(r30)
	storeli.w r3, -344(r30)
	storeli.w r3, -340(r30)
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	mul.s r1, r2, r6
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	fmac.s r2, r2, r6
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	min.s r2, r2, r4
	.loc	1 63 5                          # parallel-rne.mlir:63:5
	ble.s r2, r1, .LBB0_1088
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 46 11 is_stmt 1               # parallel-rne.mlir:46:11
	sext_int2long r[4:5], r1
	lui r1, 12
	addli r14, zero, 5
	addli r15, zero, 1
	addli r16, zero, 7
	addli r19, zero, 4
	addli r17, zero, 16
	lui r20, 522240
	lui r23, 268288
	store.d r[2:3], -464(r30)               # 8-byte Folded Spill
	ori r1, r1, 2048
	lui r2, 32
	lui r3, 56
	storeli.w r1, -468(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 43
	storeli.w r1, -472(r30)                 # 4-byte Folded Spill
	lui r1, 33
	ori r1, r1, 512
	storeli.w r1, -476(r30)                 # 4-byte Folded Spill
	ori r1, r2, 512
	lui r2, 63
	storeli.w r1, -480(r30)                 # 4-byte Folded Spill
	lui r1, 53
	ori r1, r1, 512
	storeli.w r1, -484(r30)                 # 4-byte Folded Spill
	ori r1, r2, 512
	lui r2, 83
	storeli.w r1, -488(r30)                 # 4-byte Folded Spill
	lui r1, 73
	ori r1, r1, 512
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
	ori r1, r2, 512
	lui r2, 93
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 512
	lui r2, 2047
	storeli.w r1, -500(r30)                 # 4-byte Folded Spill
	lui r1, 103
	ori r1, r1, 512
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
	ori r1, r2, 4095
	lui r2, 113
	ori r2, r2, 512
	storeli.w r2, -508(r30)                 # 4-byte Folded Spill
	ori r2, r3, 2115
	lui r3, 259268
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	lui r2, 250738
	ori r2, r2, 1811
	storeli.w r2, -516(r30)                 # 4-byte Folded Spill
	ori r2, r3, 554
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1319 7                        # parallel-rne.mlir:1319:7
	addli r2, zero, 22
	addli r14, zero, 5
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 16
	xsignal r2, 0
	.loc	1 1320 7                        # parallel-rne.mlir:1320:7
	addli r2, zero, 32
	xsignal r2, 0
	.loc	1 1321 7                        # parallel-rne.mlir:1321:7
	addli r2, zero, 41
	xsignal r2, 0
	.loc	1 1322 7                        # parallel-rne.mlir:1322:7
	addli r2, zero, 43
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -432(r30)                # 8-byte Folded Reload
	.loc	1 63 5 is_stmt 1                # parallel-rne.mlir:63:5
	load.d r[2:3], -464(r30)                # 8-byte Folded Reload
	addli r19, zero, 4
	addli.d r[4:5], r[4:5], 1
	setlt.sl r2, r[4:5], r[2:3]
	beq r2, zero, .LBB0_1088
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_124 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_127 Depth 3
                                        #     Child Loop BB0_37 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #     Child Loop BB0_153 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #     Child Loop BB0_66 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #     Child Loop BB0_182 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #     Child Loop BB0_95 Depth 2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_98 Depth 3
                                        #     Child Loop BB0_211 Depth 2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_214 Depth 3
                                        #     Child Loop BB0_239 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
                                        #     Child Loop BB0_295 Depth 2
                                        #       Child Loop BB0_299 Depth 3
                                        #       Child Loop BB0_297 Depth 3
                                        #     Child Loop BB0_274 Depth 2
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_275 Depth 3
                                        #     Child Loop BB0_304 Depth 2
                                        #       Child Loop BB0_306 Depth 3
                                        #       Child Loop BB0_305 Depth 3
                                        #     Child Loop BB0_281 Depth 2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
                                        #     Child Loop BB0_311 Depth 2
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_312 Depth 3
                                        #     Child Loop BB0_288 Depth 2
                                        #       Child Loop BB0_290 Depth 3
                                        #       Child Loop BB0_289 Depth 3
                                        #     Child Loop BB0_318 Depth 2
                                        #       Child Loop BB0_320 Depth 3
                                        #       Child Loop BB0_319 Depth 3
                                        #     Child Loop BB0_324 Depth 2
                                        #       Child Loop BB0_326 Depth 3
                                        #       Child Loop BB0_325 Depth 3
                                        #     Child Loop BB0_415 Depth 2
                                        #       Child Loop BB0_422 Depth 3
                                        #       Child Loop BB0_418 Depth 3
                                        #     Child Loop BB0_334 Depth 2
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_337 Depth 3
                                        #     Child Loop BB0_442 Depth 2
                                        #       Child Loop BB0_449 Depth 3
                                        #       Child Loop BB0_445 Depth 3
                                        #     Child Loop BB0_361 Depth 2
                                        #       Child Loop BB0_368 Depth 3
                                        #       Child Loop BB0_364 Depth 3
                                        #     Child Loop BB0_469 Depth 2
                                        #       Child Loop BB0_476 Depth 3
                                        #       Child Loop BB0_472 Depth 3
                                        #     Child Loop BB0_388 Depth 2
                                        #       Child Loop BB0_395 Depth 3
                                        #       Child Loop BB0_391 Depth 3
                                        #     Child Loop BB0_496 Depth 2
                                        #       Child Loop BB0_503 Depth 3
                                        #       Child Loop BB0_499 Depth 3
                                        #     Child Loop BB0_522 Depth 2
                                        #       Child Loop BB0_529 Depth 3
                                        #       Child Loop BB0_525 Depth 3
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
                                        #     Child Loop BB0_629 Depth 2
                                        #       Child Loop BB0_639 Depth 3
                                        #       Child Loop BB0_633 Depth 3
                                        #     Child Loop BB0_777 Depth 2
                                        #       Child Loop BB0_787 Depth 3
                                        #       Child Loop BB0_781 Depth 3
                                        #     Child Loop BB0_813 Depth 2
                                        #       Child Loop BB0_823 Depth 3
                                        #       Child Loop BB0_817 Depth 3
                                        #     Child Loop BB0_942 Depth 2
                                        #       Child Loop BB0_959 Depth 3
                                        #       Child Loop BB0_945 Depth 3
                                        #     Child Loop BB0_856 Depth 2
                                        #       Child Loop BB0_873 Depth 3
                                        #       Child Loop BB0_859 Depth 3
                                        #     Child Loop BB0_971 Depth 2
                                        #       Child Loop BB0_988 Depth 3
                                        #       Child Loop BB0_974 Depth 3
                                        #     Child Loop BB0_885 Depth 2
                                        #       Child Loop BB0_902 Depth 3
                                        #       Child Loop BB0_888 Depth 3
                                        #     Child Loop BB0_1000 Depth 2
                                        #       Child Loop BB0_1017 Depth 3
                                        #       Child Loop BB0_1003 Depth 3
                                        #     Child Loop BB0_914 Depth 2
                                        #       Child Loop BB0_931 Depth 3
                                        #       Child Loop BB0_917 Depth 3
                                        #     Child Loop BB0_1029 Depth 2
                                        #       Child Loop BB0_1046 Depth 3
                                        #       Child Loop BB0_1032 Depth 3
                                        #     Child Loop BB0_1058 Depth 2
                                        #       Child Loop BB0_1075 Depth 3
                                        #       Child Loop BB0_1061 Depth 3
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	loadli.w r2,  48(r30)
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	loadli.w r3,  44(r30)
	store.d r[4:5], -432(r30)               # 8-byte Folded Spill
	.loc	1 99 13                         # parallel-rne.mlir:99:13
	loadli.w r9,  -336(r30)
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	loadli.w r10,  -312(r30)
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	loadli.w r6,  -360(r30)
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	div.s r2, r4, r2
	.loc	1 99 13                         # parallel-rne.mlir:99:13
	mod.s r11, r9, r14
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	mod.s r13, r10, r14
	.loc	1 99 13                         # parallel-rne.mlir:99:13
	addli r9, r9, 1
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	addli r10, r10, 1
	addli r5, zero, 8
	.loc	1 99 13                         # parallel-rne.mlir:99:13
	storeli.w r9, -336(r30)
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	storeli.w r10, -312(r30)
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	div.s r2, r2, r3
	addli r3, zero, 8
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	slli r9, r13, 11
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	div.s r4, r2, r3
	slli r8, r4, 3
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	addli r4, r6, 1
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	sub.s r7, r15, r8
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	storeli.w r4, -360(r30)
	.loc	1 99 13                         # parallel-rne.mlir:99:13
	slli r4, r11, 11
	.loc	1 72 13                         # parallel-rne.mlir:72:13
	min.s r7, r7, r3
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	mod.s r12, r2, r7
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	add.s r3, r12, r8
	.loc	1 82 13                         # parallel-rne.mlir:82:13
	zext_int2long r[11:12], r3
	storeli.w r3, -440(r30)                 # 4-byte Folded Spill
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	lui r3, 10
	add.s r9, r9, r3
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r3
	store.d r[11:12], -392(r30)             # 8-byte Folded Spill
	.loc	1 105 7                         # parallel-rne.mlir:105:7
	bneq r3, r15, .LBB0_10
# %bb.9:                                # %.thread76
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 11
	storeli.w zero, -412(r30)               # 4-byte Folded Spill
	sll.d r[10:11], r[11:12], r3
	load.d r[12:13], 0(r30)
	addli r3, zero, 3
	xwait r3, 0
	lock zero, r19
	addli r3, zero, 128
	add.ul r[10:11], r[12:13], r[10:11]
	dma_cfg r15, r15, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r9, r10, r3, 3
	dma_cfg r3, r3, r17, 4
	addli r3, zero, 2
	dma_run zero
	unlock r19
	xsignal r3, 0
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	j .LBB0_13
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 2
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	bneq r3, r10, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 3
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	xwait r10, 0
	xwait r14, 0
	lock zero, zero
	addli r10, zero, 64
	ds_cfg r3, zero, 0
	ds_cfg r10, zero, 1
	ds_cfg r10, zero, 14
	ds_cfg r17, zero, 13
	shuffle_batch r4, r9, r10, 1
	unlock zero
	xsignal r3, 0
	addli r3, zero, 1
	storeli.w r3, -412(r30)                 # 4-byte Folded Spill
	xsignal r19, 0
	j .LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -412(r30)               # 4-byte Folded Spill
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	sub.s r2, r2, r8
	.loc	1 116 13 is_stmt 1              # parallel-rne.mlir:116:13
	loadli.w r8,  -264(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mod.s r6, r6, r14
	.loc	1 114 13 is_stmt 1              # parallel-rne.mlir:114:13
	loadli.w r9,  -288(r30)
	.loc	1 116 13                        # parallel-rne.mlir:116:13
	loadli.w r3,  -468(r30)                 # 4-byte Folded Reload
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r2, r2, r7
	.loc	1 116 13                        # parallel-rne.mlir:116:13
	mod.s r10, r8, r14
	.loc	1 114 13 is_stmt 1              # parallel-rne.mlir:114:13
	addli r7, r9, 1
	storeli.w r7, -288(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r7, r6, 13
	zext_int2long r[11:12], r2
	.loc	1 116 13 is_stmt 1              # parallel-rne.mlir:116:13
	slli r6, r10, 14
	addli r10, r8, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[12:13], r[11:12], r16
	.loc	1 116 13                        # parallel-rne.mlir:116:13
	add.s r8, r6, r3
	storeli.w r10, -264(r30)
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r3
	addli r10, zero, 6
	.loc	1 120 7                         # parallel-rne.mlir:120:7
	bneq r3, r10, .LBB0_15
# %bb.14:                               # %.thread77
                                        #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], 8(r30)
	sll.d r[9:10], r[12:13], r15
	storeli.w zero, -408(r30)               # 4-byte Folded Spill
	storeli.w zero, -404(r30)               # 4-byte Folded Spill
	xwait r16, 0
	lock zero, r19
	addli r3, zero, 6
	dma_cfg r15, r15, zero, 0
	add.ul r[9:10], r[4:5], r[9:10]
	addli r4, zero, 256
	addli r5, zero, 64
	dma_cfg zero, r10, zero, 2
	dma_cfg r8, r9, r4, 3
	dma_cfg r4, r4, r5, 4
	dma_run zero
	unlock r19
	j .LBB0_21
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r6, r9, r14
	slli r6, r6, 14
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	beq r3, r19, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r3, r16, .LBB0_1087
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 9
	storeli.w zero, -408(r30)               # 4-byte Folded Spill
	xwait r10, 0
	addli r4, zero, 64
	xwait r3, 0
	addli r3, zero, 3
	lock zero, zero
	ds_cfg r3, zero, 0
	addli r3, zero, 128
	ds_cfg r3, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 1
	shuffle_coa r6, r8, r4, 2
	unlock zero
	xsignal r16, 0
	storeli.w r3, -404(r30)                 # 4-byte Folded Spill
	xsignal r5, 0
	j .LBB0_22
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	addli r3, zero, 11
	xwait r19, 0
	xwait r5, 0
	addli r10, zero, 0
	addli r8, zero, 1
	addli r9, zero, 1
	addli r5, zero, 64
	xwait r3, 0
	addli r3, zero, 2
.LBB0_19:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r11, r10, 13
	slli r10, r10, 8
	lock zero, r8
	mm_cfg r5, r5, r17, 0
	or r11, r11, r6
	or r10, r10, r7
	mm_cfg r3, r19, r8, 2
	mm r10, r4, r11, 5
	andi r11, r9, 1
	addli r10, zero, 1
	addli r9, zero, 0
	unlock r8
	bneq r11, zero, .LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 9
	storeli.w zero, -404(r30)               # 4-byte Folded Spill
	xsignal r14, 0
	xsignal r3, 0
	addli r3, zero, 1
	storeli.w r3, -408(r30)                 # 4-byte Folded Spill
	addli r3, zero, 10
.LBB0_21:                               # %.thread78
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r3, 0
.LBB0_22:                               # %.thread78
                                        #   in Loop: Header=BB0_8 Depth=1
	slli r2, r2, 7
	.loc	1 136 13 is_stmt 1              # parallel-rne.mlir:136:13
	loadli.w r4,  -240(r30)
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	store.d r[12:13], -448(r30)             # 8-byte Folded Spill
	.loc	1 129 13                        # parallel-rne.mlir:129:13
	zext_int2long r[8:9], r2
	addli r2, zero, 128
	zext_int2long r[5:6], r2
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	mod.s r2, r4, r14
	addli r4, r4, 1
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	max.ul r[10:11], r[8:9], r[5:6]
	store.d r[5:6], -376(r30)               # 8-byte Folded Spill
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r6,  -216(r30)
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	storeli.w r4, -240(r30)
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	sub.sl r[9:10], r[10:11], r[8:9]
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	addli r4, r6, 1
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	slli r2, r2, 9
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	store.d r[9:10], -456(r30)              # 8-byte Folded Spill
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	storeli.w r4, -216(r30)
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	add.s r2, r2, r3
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r3
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	bneq r3, r15, .LBB0_24
# %bb.23:                               # %.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 13
	sll.d r[7:8], r[12:13], r15
	xwait r3, 0
	load.d r[3:4], 16(r30)
	lock zero, r19
	dma_cfg zero, r15, zero, 0
	add.ul r[7:8], r[3:4], r[7:8]
	slli r4, r9, 1
	addli r3, zero, 512
	addli r10, zero, 6
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r4, 3
	addli r2, zero, 256
	dma_cfg r3, r2, r15, 4
	addli r2, zero, 12
	dma_run zero
	unlock r19
	xsignal r2, 0
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	loadli.w r2,  -192(r30)
	loadli.w r3,  -480(r30)                 # 4-byte Folded Reload
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	mod.s r4, r2, r14
	addli r2, r2, 1
	storeli.w r2, -192(r30)
	slli r4, r4, 13
	add.s r16, r4, r3
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	j .LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	loadli.w r4,  -192(r30)
	loadli.w r3,  -480(r30)                 # 4-byte Folded Reload
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	mod.s r8, r4, r14
	addli r9, r4, 1
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	storeli.w r9, -192(r30)
	slli r8, r8, 13
	add.s r16, r8, r3
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r3, zero, 3
	bneq r4, r3, .LBB0_31
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 10
	lui r5, 260096
	addli r8, zero, 0
	xwait r3, 0
	addli r3, zero, 12
	xwait r3, 0
	addli r3, zero, 19
	xwait r3, 0
	addli r3, zero, 2
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	addli r5, zero, 8192
	ew_cfg r15, zero, zero, 3
.LBB0_26:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r9, r16, r8
	add.s r10, r7, r8
	addli r8, r8, 512
	dsmadd r9, r10, r2, 0
	bneq r8, r5, .LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	unlock r3
	addli r10, zero, 6
	xsignal r2, 0
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 17
	xsignal r17, 0
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 14
	xsignal r2, 0
.LBB0_28:                               # %.thread180
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r2,  -168(r30)
	loadli.w r3,  -484(r30)                 # 4-byte Folded Reload
	mod.s r7, r2, r14
	addli r2, r2, 1
	storeli.w r2, -168(r30)
	slli r7, r7, 13
	add.s r5, r7, r3
.LBB0_29:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r2,  -144(r30)
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r7,  -120(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r3,  -488(r30)                 # 4-byte Folded Reload
	storeli.w r5, -364(r30)                 # 4-byte Folded Spill
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	loadli.w r5,  -96(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	mod.s r8, r2, r14
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	mod.s r9, r7, r14
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	addli r2, r2, 1
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	addli r7, r7, 1
	storeli.w r5, -436(r30)                 # 4-byte Folded Spill
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	storeli.w r2, -144(r30)
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	storeli.w r7, -120(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	slli r2, r8, 13
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	slli r7, r9, 13
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	add.s r17, r2, r3
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r3,  -492(r30)                 # 4-byte Folded Reload
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	addli r2, r5, 1
	storeli.w r2, -96(r30)
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r2, zero, 3
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	add.s r18, r7, r3
	bneq r4, r2, .LBB0_33
# %bb.30:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r2, zero, 15
	xwait r2, 0
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	addli r2, zero, 23
	xwait r2, 0
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r2, zero, 25
	xwait r2, 0
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r2, zero, 33
	xwait r2, 0
	j .LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r2,  -168(r30)
	loadli.w r3,  -484(r30)                 # 4-byte Folded Reload
	addli r10, zero, 6
	mod.s r7, r2, r14
	addli r2, r2, 1
	storeli.w r2, -168(r30)
	slli r7, r7, 13
	add.s r5, r7, r3
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	bneq r4, r14, .LBB0_29
# %bb.32:                               # %.thread81
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 14
	addli r3, zero, 2
	addli r9, zero, 511
	lui r8, 260096
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	lock zero, r3
	lui r2, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 21
	ew_cfg zero, r9, zero, 2
	ew_cfg r19, zero, zero, 3
	ew_cfg r19, r19, zero, 19
	storeli.w r5, -364(r30)                 # 4-byte Folded Spill
	hp_ssmul r5, r16, r16, 0
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r5, zero, 24
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r2, 0
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r2,  -144(r30)
	mod.s r7, r2, r14
	addli r2, r2, 1
	storeli.w r2, -144(r30)
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	xwait r17, 0
	xwait r5, 0
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r5,  -488(r30)                 # 4-byte Folded Reload
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r8, 0
	ew_cfg zero, r9, zero, 2
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	slli r2, r7, 13
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	ew_cfg r19, zero, zero, 3
	ew_cfg r19, r19, r19, 19
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	add.s r17, r2, r5
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r5, zero, 17
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	dsmul r17, r16, r16, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r2,  -120(r30)
	mod.s r7, r2, r14
	addli r2, r2, 1
	storeli.w r2, -120(r30)
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	xwait r5, 0
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r5,  -492(r30)                 # 4-byte Folded Reload
	slli r2, r7, 13
	add.s r18, r2, r5
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r3
	addli r2, zero, 15
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r8, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r19, zero, zero, 3
	ew_cfg r19, r19, r19, 19
	dsmul r18, r17, r16, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	addli r2, zero, 25
	xsignal r2, 0
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	loadli.w r2,  -96(r30)
	storeli.w r2, -436(r30)                 # 4-byte Folded Spill
	addli r2, r2, 1
	storeli.w r2, -96(r30)
.LBB0_33:                               # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mod.s r2, r6, r14
	.loc	1 162 7 is_stmt 1               # parallel-rne.mlir:162:7
	xfence
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	mfence { lm, sm, gm }
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r3,  -476(r30)                 # 4-byte Folded Reload
	slli r2, r2, 13
	add.s r19, r2, r3
	.loc	1 164 7 is_stmt 1               # parallel-rne.mlir:164:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r19, r17
	storeli.w r2, -416(r30)                 # 4-byte Folded Spill
	sub.s r2, r19, r16
	storeli.w r2, -420(r30)                 # 4-byte Folded Spill
	sub.s r2, r19, r18
	storeli.w r2, -424(r30)                 # 4-byte Folded Spill
	addli r2, zero, 127
	sync_core
	storeli.w r16, -384(r30)                # 4-byte Folded Spill
	zext_int2long r[14:15], r2
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	beq r4, zero, .LBB0_122
# %bb.34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 201 7                         # parallel-rne.mlir:201:7
	addli r2, zero, 1
	bneq r4, r2, .LBB0_150
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r5, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 201 7                         # parallel-rne.mlir:201:7
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 256
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_37
.LBB0_36:                               # %middle.block667
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 384
	.loc	1 209 9 is_stmt 1               # parallel-rne.mlir:209:9
	andi r2, r5, 1
	addli r5, zero, 0
	zext_int2long r[9:10], r3
	beq r2, zero, .LBB0_62
.LBB0_37:                               # %vector.memcheck653
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_40 Depth 3
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_52
# %bb.38:                               # %scalar.ph659.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_40
.LBB0_39:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 232 13 is_stmt 1              # parallel-rne.mlir:232:13
	add.s r2, r19, r2
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	stores.w r8, 0(r2)
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	beq r3, zero, .LBB0_36
.LBB0_40:                               # %scalar.ph659
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	add.ul r[2:3], r[6:7], r[9:10]
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	add.s r3, r16, r2
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.s r8, r18, r2
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	loads.w r3, 0(r3)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	loads.w r24, 0(r8)
	lui r8, 523264
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	and r11, r3, r27
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	beq r11, r20, .LBB0_42
# %bb.41:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_42:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	beq r12, zero, .LBB0_50
# %bb.43:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
	lui r24, 523264
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r11, zero, .LBB0_51
.LBB0_44:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	beq r12, r20, .LBB0_46
.LBB0_45:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
.LBB0_46:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	setlt.u r3, r20, r11
	lui r11, 523264
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r3, zero, .LBB0_48
# %bb.47:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r24, 0
.LBB0_48:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	setlt.u r3, r20, r12
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r3, zero, .LBB0_39
# %bb.49:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r11, 0
	j .LBB0_39
.LBB0_50:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	lui r24, 523264
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	beq r11, zero, .LBB0_44
.LBB0_51:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_40 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r12, r20, .LBB0_45
	j .LBB0_46
.LBB0_52:                               # %vector.body661.preheader
                                        #   in Loop: Header=BB0_37 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_54
.LBB0_53:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	addli r3, zero, 128
	.loc	1 210 11 is_stmt 1              # parallel-rne.mlir:210:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 232 13                        # parallel-rne.mlir:232:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 210 11                        # parallel-rne.mlir:210:11
	seteq.d r3, r[24:25], r[6:7]
	bneq r3, zero, .LBB0_36
.LBB0_54:                               # %vector.body661
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_37 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	add.ul r[2:3], r[24:25], r[9:10]
	lui r26, 523264
	slli r2, r2, 2
	add.s r6, r17, r2
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	add.s r7, r16, r2
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	loads.w r3, 0(r6)
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	loads.w r8, 0(r7)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r3, r3, r27
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	and r8, r8, r27
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	seteq r11, r3, r20
	.loc	1 223 20                        # parallel-rne.mlir:223:20
	seteq r16, r3, zero
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	seteq r12, r8, zero
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	seteq r13, r8, r20
	.loc	1 228 20                        # parallel-rne.mlir:228:20
	max.u r3, r3, r8
	setlt.u r3, r20, r3
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	and r8, r11, r12
	.loc	1 224 20                        # parallel-rne.mlir:224:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 225 20                        # parallel-rne.mlir:225:20
	or r11, r8, r11
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.s r8, r18, r2
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	or r3, r3, r11
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r3, zero, .LBB0_56
# %bb.55:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_56:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r3, 4(r6)
	loads.w r11, 4(r7)
	and r3, r3, r27
	and r11, r11, r27
	seteq r12, r3, r20
	seteq r21, r3, zero
	seteq r16, r11, zero
	seteq r28, r11, r20
	max.u r3, r3, r11
	setlt.u r3, r20, r3
	and r11, r12, r16
	and r12, r21, r28
	or r11, r11, r12
	or r3, r3, r11
	lui r11, 523264
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r3, zero, .LBB0_58
# %bb.57:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r8)
.LBB0_58:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r3, 8(r6)
	loads.w r12, 8(r7)
	and r3, r3, r27
	and r12, r12, r27
	seteq r16, r3, r20
	seteq r22, r3, zero
	seteq r21, r12, zero
	seteq r28, r12, r20
	max.u r3, r3, r12
	setlt.u r3, r20, r3
	and r12, r16, r21
	and r16, r22, r28
	or r12, r12, r16
	or r3, r3, r12
	lui r12, 523264
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r3, zero, .LBB0_60
# %bb.59:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r8)
.LBB0_60:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r3, 12(r6)
	loads.w r6, 12(r7)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r22, r3, zero
	seteq r16, r6, zero
	seteq r21, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r22, r21
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	bneq r3, zero, .LBB0_53
# %bb.61:                               # %vector.body661
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_53
.LBB0_62:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 201 7 is_stmt 1               # parallel-rne.mlir:201:7
	mfence { sm }
	addli r10, zero, 6
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_151
.LBB0_63:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r2, zero, 3
	bneq r4, r2, .LBB0_179
.LBB0_64:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r5, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 768
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_66
.LBB0_65:                               # %middle.block637
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 896
	.loc	1 281 9 is_stmt 1               # parallel-rne.mlir:281:9
	andi r2, r5, 1
	addli r5, zero, 0
	zext_int2long r[9:10], r3
	beq r2, zero, .LBB0_91
.LBB0_66:                               # %vector.memcheck623
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_81
# %bb.67:                               # %scalar.ph629.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_69
.LBB0_68:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 304 13 is_stmt 1              # parallel-rne.mlir:304:13
	add.s r2, r19, r2
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r8, 0(r2)
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	beq r3, zero, .LBB0_65
.LBB0_69:                               # %scalar.ph629
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	add.ul r[2:3], r[6:7], r[9:10]
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.s r3, r16, r2
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.s r8, r18, r2
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	loads.w r3, 0(r3)
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	loads.w r24, 0(r8)
	lui r8, 523264
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r11, r3, r27
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	beq r11, r20, .LBB0_71
# %bb.70:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_71:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	beq r12, zero, .LBB0_79
# %bb.72:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
	lui r24, 523264
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r11, zero, .LBB0_80
.LBB0_73:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	beq r12, r20, .LBB0_75
.LBB0_74:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
.LBB0_75:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r3, r20, r11
	lui r11, 523264
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r3, zero, .LBB0_77
# %bb.76:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r24, 0
.LBB0_77:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	setlt.u r3, r20, r12
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r3, zero, .LBB0_68
# %bb.78:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r11, 0
	j .LBB0_68
.LBB0_79:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	lui r24, 523264
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	beq r11, zero, .LBB0_73
.LBB0_80:                               # %scalar.ph629
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r12, r20, .LBB0_74
	j .LBB0_75
.LBB0_81:                               # %vector.body631.preheader
                                        #   in Loop: Header=BB0_66 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	addli r3, zero, 128
	.loc	1 282 11 is_stmt 1              # parallel-rne.mlir:282:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 282 11                        # parallel-rne.mlir:282:11
	seteq.d r3, r[24:25], r[6:7]
	bneq r3, zero, .LBB0_65
.LBB0_83:                               # %vector.body631
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	add.ul r[2:3], r[24:25], r[9:10]
	lui r26, 523264
	slli r2, r2, 2
	add.s r6, r17, r2
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.s r7, r16, r2
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	loads.w r3, 0(r6)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	loads.w r8, 0(r7)
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r3, r3, r27
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	and r8, r8, r27
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	seteq r11, r3, r20
	.loc	1 295 20                        # parallel-rne.mlir:295:20
	seteq r16, r3, zero
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	seteq r12, r8, zero
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	seteq r13, r8, r20
	.loc	1 300 20                        # parallel-rne.mlir:300:20
	max.u r3, r3, r8
	setlt.u r3, r20, r3
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r8, r11, r12
	.loc	1 296 20                        # parallel-rne.mlir:296:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 297 20                        # parallel-rne.mlir:297:20
	or r11, r8, r11
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.s r8, r18, r2
	.loc	1 301 20                        # parallel-rne.mlir:301:20
	or r3, r3, r11
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r3, zero, .LBB0_85
# %bb.84:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_85:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r3, 4(r6)
	loads.w r11, 4(r7)
	and r3, r3, r27
	and r11, r11, r27
	seteq r12, r3, r20
	seteq r21, r3, zero
	seteq r16, r11, zero
	seteq r28, r11, r20
	max.u r3, r3, r11
	setlt.u r3, r20, r3
	and r11, r12, r16
	and r12, r21, r28
	or r11, r11, r12
	or r3, r3, r11
	lui r11, 523264
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r3, zero, .LBB0_87
# %bb.86:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r8)
.LBB0_87:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r3, 8(r6)
	loads.w r12, 8(r7)
	and r3, r3, r27
	and r12, r12, r27
	seteq r16, r3, r20
	seteq r22, r3, zero
	seteq r21, r12, zero
	seteq r28, r12, r20
	max.u r3, r3, r12
	setlt.u r3, r20, r3
	and r12, r16, r21
	and r16, r22, r28
	or r12, r12, r16
	or r3, r3, r12
	lui r12, 523264
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r3, zero, .LBB0_89
# %bb.88:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r8)
.LBB0_89:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r3, 12(r6)
	loads.w r6, 12(r7)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r22, r3, zero
	seteq r16, r6, zero
	seteq r21, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r22, r21
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	bneq r3, zero, .LBB0_82
# %bb.90:                               # %vector.body631
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_82
.LBB0_91:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 273 7 is_stmt 1               # parallel-rne.mlir:273:7
	mfence { sm }
	addli r10, zero, 6
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_180
.LBB0_92:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	addli r2, zero, 5
	bneq r4, r2, .LBB0_208
.LBB0_93:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r4, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r5, r2, r3
	addli r2, zero, 1280
	zext_int2long r[9:10], r2
	j .LBB0_95
.LBB0_94:                               # %middle.block607
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1408
	.loc	1 353 9 is_stmt 1               # parallel-rne.mlir:353:9
	andi r2, r4, 1
	addli r4, zero, 0
	zext_int2long r[9:10], r3
	beq r2, zero, .LBB0_120
.LBB0_95:                               # %vector.memcheck593
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_112 Depth 3
                                        #       Child Loop BB0_98 Depth 3
	.loc	1 354 11                        # parallel-rne.mlir:354:11
	beq r5, zero, .LBB0_110
# %bb.96:                               # %scalar.ph599.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_98
.LBB0_97:                               # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 354 11                        # parallel-rne.mlir:354:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 376 13 is_stmt 1              # parallel-rne.mlir:376:13
	add.s r2, r19, r2
	.loc	1 354 11                        # parallel-rne.mlir:354:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	stores.w r8, 0(r2)
	.loc	1 354 11                        # parallel-rne.mlir:354:11
	beq r3, zero, .LBB0_94
.LBB0_98:                               # %scalar.ph599
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	add.ul r[2:3], r[6:7], r[9:10]
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	add.s r3, r16, r2
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.s r8, r18, r2
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	loads.w r3, 0(r3)
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	loads.w r24, 0(r8)
	lui r8, 523264
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	and r11, r3, r27
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	beq r11, r20, .LBB0_100
# %bb.99:                               # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_100:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	beq r12, zero, .LBB0_108
# %bb.101:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
	lui r24, 523264
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r11, zero, .LBB0_109
.LBB0_102:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	beq r12, r20, .LBB0_104
.LBB0_103:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
.LBB0_104:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	setlt.u r3, r20, r11
	lui r11, 523264
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r3, zero, .LBB0_106
# %bb.105:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r24, 0
.LBB0_106:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	setlt.u r3, r20, r12
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r3, zero, .LBB0_97
# %bb.107:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r11, 0
	j .LBB0_97
.LBB0_108:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	lui r24, 523264
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	beq r11, zero, .LBB0_102
.LBB0_109:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_98 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r12, r20, .LBB0_103
	j .LBB0_104
.LBB0_110:                              # %vector.body601.preheader
                                        #   in Loop: Header=BB0_95 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_112
.LBB0_111:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	addli r3, zero, 128
	.loc	1 354 11 is_stmt 1              # parallel-rne.mlir:354:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 354 11                        # parallel-rne.mlir:354:11
	seteq.d r3, r[24:25], r[6:7]
	bneq r3, zero, .LBB0_94
.LBB0_112:                              # %vector.body601
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_95 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	add.ul r[2:3], r[24:25], r[9:10]
	lui r26, 523264
	slli r2, r2, 2
	add.s r6, r17, r2
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	add.s r7, r16, r2
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	loads.w r3, 0(r6)
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	loads.w r8, 0(r7)
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	and r3, r3, r27
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	and r8, r8, r27
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	seteq r11, r3, r20
	.loc	1 367 20                        # parallel-rne.mlir:367:20
	seteq r16, r3, zero
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	seteq r12, r8, zero
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	seteq r13, r8, r20
	.loc	1 372 20                        # parallel-rne.mlir:372:20
	max.u r3, r3, r8
	setlt.u r3, r20, r3
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	and r8, r11, r12
	.loc	1 368 20                        # parallel-rne.mlir:368:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	or r11, r8, r11
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.s r8, r18, r2
	.loc	1 373 20                        # parallel-rne.mlir:373:20
	or r3, r3, r11
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r3, zero, .LBB0_114
# %bb.113:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_114:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r3, 4(r6)
	loads.w r11, 4(r7)
	and r3, r3, r27
	and r11, r11, r27
	seteq r12, r3, r20
	seteq r21, r3, zero
	seteq r16, r11, zero
	seteq r28, r11, r20
	max.u r3, r3, r11
	setlt.u r3, r20, r3
	and r11, r12, r16
	and r12, r21, r28
	or r11, r11, r12
	or r3, r3, r11
	lui r11, 523264
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r3, zero, .LBB0_116
# %bb.115:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r8)
.LBB0_116:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r3, 8(r6)
	loads.w r12, 8(r7)
	and r3, r3, r27
	and r12, r12, r27
	seteq r16, r3, r20
	seteq r22, r3, zero
	seteq r21, r12, zero
	seteq r28, r12, r20
	max.u r3, r3, r12
	setlt.u r3, r20, r3
	and r12, r16, r21
	and r16, r22, r28
	or r12, r12, r16
	or r3, r3, r12
	lui r12, 523264
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r3, zero, .LBB0_118
# %bb.117:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r8)
.LBB0_118:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	loads.w r3, 12(r6)
	loads.w r6, 12(r7)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r22, r3, zero
	seteq r16, r6, zero
	seteq r21, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r22, r21
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	bneq r3, zero, .LBB0_111
# %bb.119:                              # %vector.body601
                                        #   in Loop: Header=BB0_112 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_111
.LBB0_120:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 345 7 is_stmt 1               # parallel-rne.mlir:345:7
	mfence { sm }
	addli r10, zero, 6
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	beq r4, r10, .LBB0_209
.LBB0_121:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 417 7                         # parallel-rne.mlir:417:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_237
	j .LBB0_265
.LBB0_122:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r5, zero, 1
	zext_int2long r[9:10], zero
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_124
.LBB0_123:                              # %middle.block682
                                        #   in Loop: Header=BB0_124 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 128
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	andi r2, r5, 1
	addli r5, zero, 0
	zext_int2long r[9:10], r3
	beq r2, zero, .LBB0_149
.LBB0_124:                              # %vector.memcheck668
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_127 Depth 3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_139
# %bb.125:                              # %scalar.ph674.preheader
                                        #   in Loop: Header=BB0_124 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_127
.LBB0_126:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 196 13 is_stmt 1              # parallel-rne.mlir:196:13
	add.s r2, r19, r2
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 196 13                        # parallel-rne.mlir:196:13
	stores.w r8, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r3, zero, .LBB0_123
.LBB0_127:                              # %scalar.ph674
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_124 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[2:3], r[6:7], r[9:10]
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.s r3, r16, r2
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.s r8, r18, r2
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	loads.w r3, 0(r3)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	loads.w r24, 0(r8)
	lui r8, 523264
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r11, r3, r27
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	beq r11, r20, .LBB0_129
# %bb.128:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_129:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	beq r12, zero, .LBB0_137
# %bb.130:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
	lui r24, 523264
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r11, zero, .LBB0_138
.LBB0_131:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	beq r12, r20, .LBB0_133
.LBB0_132:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
.LBB0_133:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	setlt.u r3, r20, r11
	lui r11, 523264
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r3, zero, .LBB0_135
# %bb.134:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r24, 0
.LBB0_135:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	setlt.u r3, r20, r12
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r3, zero, .LBB0_126
# %bb.136:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r11, 0
	j .LBB0_126
.LBB0_137:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	lui r24, 523264
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	beq r11, zero, .LBB0_131
.LBB0_138:                              # %scalar.ph674
                                        #   in Loop: Header=BB0_127 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r12, r20, .LBB0_132
	j .LBB0_133
.LBB0_139:                              # %vector.body676.preheader
                                        #   in Loop: Header=BB0_124 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_141
.LBB0_140:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	addli r3, zero, 128
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 196 13                        # parallel-rne.mlir:196:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	seteq.d r3, r[24:25], r[6:7]
	bneq r3, zero, .LBB0_123
.LBB0_141:                              # %vector.body676
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_124 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[6:7], r[24:25], r[9:10]
	slli r2, r6, 2
	add.s r6, r17, r2
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.s r7, r16, r2
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	loads.w r8, 0(r6)
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	loads.w r11, 0(r7)
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	and r8, r8, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r11, r11, r27
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	seteq r12, r8, r20
	.loc	1 187 20                        # parallel-rne.mlir:187:20
	seteq r21, r8, zero
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	seteq r13, r11, zero
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	seteq r26, r11, r20
	.loc	1 192 20                        # parallel-rne.mlir:192:20
	max.u r8, r8, r11
	setlt.u r11, r20, r8
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	and r8, r12, r13
	.loc	1 188 20                        # parallel-rne.mlir:188:20
	and r12, r21, r26
	lui r26, 523264
	lui r13, 523264
	.loc	1 189 20                        # parallel-rne.mlir:189:20
	or r12, r8, r12
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.s r8, r18, r2
	.loc	1 193 20                        # parallel-rne.mlir:193:20
	or r11, r11, r12
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r11, zero, .LBB0_143
# %bb.142:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_143:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r11, 4(r6)
	loads.w r12, 4(r7)
	and r11, r11, r27
	and r12, r12, r27
	seteq r21, r11, r20
	seteq r28, r11, zero
	seteq r16, r12, r20
	seteq r22, r12, zero
	max.u r11, r11, r12
	setlt.u r11, r20, r11
	and r12, r21, r22
	and r16, r28, r16
	or r12, r12, r16
	or r12, r11, r12
	lui r11, 523264
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r12, zero, .LBB0_145
# %bb.144:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r8)
.LBB0_145:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r12, 8(r6)
	loads.w r16, 8(r7)
	and r12, r12, r27
	and r16, r16, r27
	seteq r21, r12, r20
	seteq r3, r12, zero
	seteq r28, r16, r20
	seteq r22, r16, zero
	max.u r12, r12, r16
	setlt.u r12, r20, r12
	and r16, r21, r22
	and r3, r3, r28
	or r3, r16, r3
	or r3, r12, r3
	lui r12, 523264
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r3, zero, .LBB0_147
# %bb.146:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r8)
.LBB0_147:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r3, 12(r6)
	loads.w r6, 12(r7)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r22, r3, zero
	seteq r16, r6, zero
	seteq r21, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r22, r21
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	bneq r3, zero, .LBB0_140
# %bb.148:                              # %vector.body676
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_140
.LBB0_149:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	mfence { sm }
	addli r10, zero, 6
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 201 7                         # parallel-rne.mlir:201:7
	addli r2, zero, 1
	beq r4, r2, .LBB0_35
.LBB0_150:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_63
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r5, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 237 7                         # parallel-rne.mlir:237:7
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 512
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_153
.LBB0_152:                              # %middle.block652
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 640
	.loc	1 245 9 is_stmt 1               # parallel-rne.mlir:245:9
	andi r2, r5, 1
	addli r5, zero, 0
	zext_int2long r[9:10], r3
	beq r2, zero, .LBB0_178
.LBB0_153:                              # %vector.memcheck638
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_156 Depth 3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_168
# %bb.154:                              # %scalar.ph644.preheader
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_156
.LBB0_155:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 268 13 is_stmt 1              # parallel-rne.mlir:268:13
	add.s r2, r19, r2
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	stores.w r8, 0(r2)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	beq r3, zero, .LBB0_152
.LBB0_156:                              # %scalar.ph644
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[2:3], r[6:7], r[9:10]
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	add.s r3, r16, r2
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.s r8, r18, r2
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	loads.w r3, 0(r3)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	loads.w r24, 0(r8)
	lui r8, 523264
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	and r11, r3, r27
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	beq r11, r20, .LBB0_158
# %bb.157:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_158:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	beq r12, zero, .LBB0_166
# %bb.159:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
	lui r24, 523264
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r11, zero, .LBB0_167
.LBB0_160:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	beq r12, r20, .LBB0_162
.LBB0_161:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
.LBB0_162:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r3, r20, r11
	lui r11, 523264
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r3, zero, .LBB0_164
# %bb.163:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r24, 0
.LBB0_164:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r3, r20, r12
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r3, zero, .LBB0_155
# %bb.165:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r11, 0
	j .LBB0_155
.LBB0_166:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	lui r24, 523264
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	beq r11, zero, .LBB0_160
.LBB0_167:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r12, r20, .LBB0_161
	j .LBB0_162
.LBB0_168:                              # %vector.body646.preheader
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_170
.LBB0_169:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	addli r3, zero, 128
	.loc	1 246 11 is_stmt 1              # parallel-rne.mlir:246:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 246 11                        # parallel-rne.mlir:246:11
	seteq.d r3, r[24:25], r[6:7]
	bneq r3, zero, .LBB0_152
.LBB0_170:                              # %vector.body646
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	add.ul r[2:3], r[24:25], r[9:10]
	lui r26, 523264
	slli r2, r2, 2
	add.s r6, r17, r2
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	add.s r7, r16, r2
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	loads.w r3, 0(r6)
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	loads.w r8, 0(r7)
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	and r3, r3, r27
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	and r8, r8, r27
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	seteq r11, r3, r20
	.loc	1 259 20                        # parallel-rne.mlir:259:20
	seteq r16, r3, zero
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	seteq r12, r8, zero
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	seteq r13, r8, r20
	.loc	1 264 20                        # parallel-rne.mlir:264:20
	max.u r3, r3, r8
	setlt.u r3, r20, r3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	and r8, r11, r12
	.loc	1 260 20                        # parallel-rne.mlir:260:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	or r11, r8, r11
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.s r8, r18, r2
	.loc	1 265 20                        # parallel-rne.mlir:265:20
	or r3, r3, r11
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r3, zero, .LBB0_172
# %bb.171:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_172:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r3, 4(r6)
	loads.w r11, 4(r7)
	and r3, r3, r27
	and r11, r11, r27
	seteq r12, r3, r20
	seteq r21, r3, zero
	seteq r16, r11, zero
	seteq r28, r11, r20
	max.u r3, r3, r11
	setlt.u r3, r20, r3
	and r11, r12, r16
	and r12, r21, r28
	or r11, r11, r12
	or r3, r3, r11
	lui r11, 523264
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r3, zero, .LBB0_174
# %bb.173:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r8)
.LBB0_174:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r3, 8(r6)
	loads.w r12, 8(r7)
	and r3, r3, r27
	and r12, r12, r27
	seteq r16, r3, r20
	seteq r22, r3, zero
	seteq r21, r12, zero
	seteq r28, r12, r20
	max.u r3, r3, r12
	setlt.u r3, r20, r3
	and r12, r16, r21
	and r16, r22, r28
	or r12, r12, r16
	or r3, r3, r12
	lui r12, 523264
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r3, zero, .LBB0_176
# %bb.175:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r8)
.LBB0_176:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r3, 12(r6)
	loads.w r6, 12(r7)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r22, r3, zero
	seteq r16, r6, zero
	seteq r21, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r22, r21
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	bneq r3, zero, .LBB0_169
# %bb.177:                              # %vector.body646
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_169
.LBB0_178:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 237 7 is_stmt 1               # parallel-rne.mlir:237:7
	mfence { sm }
	addli r10, zero, 6
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r2, zero, 3
	beq r4, r2, .LBB0_64
.LBB0_179:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_92
.LBB0_180:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r5, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 1024
	xfence
	zext_int2long r[9:10], r2
	mfence { lm, sm, gm }
	j .LBB0_182
.LBB0_181:                              # %middle.block622
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1152
	.loc	1 317 9 is_stmt 1               # parallel-rne.mlir:317:9
	andi r2, r5, 1
	addli r5, zero, 0
	zext_int2long r[9:10], r3
	beq r2, zero, .LBB0_207
.LBB0_182:                              # %vector.memcheck608
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_185 Depth 3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_197
# %bb.183:                              # %scalar.ph614.preheader
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_185
.LBB0_184:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 340 13 is_stmt 1              # parallel-rne.mlir:340:13
	add.s r2, r19, r2
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 340 13                        # parallel-rne.mlir:340:13
	stores.w r8, 0(r2)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	beq r3, zero, .LBB0_181
.LBB0_185:                              # %scalar.ph614
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[2:3], r[6:7], r[9:10]
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.s r3, r16, r2
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.s r8, r18, r2
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	loads.w r3, 0(r3)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	loads.w r24, 0(r8)
	lui r8, 523264
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r11, r3, r27
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	beq r11, r20, .LBB0_187
# %bb.186:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_187:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	beq r12, zero, .LBB0_195
# %bb.188:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
	lui r24, 523264
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r11, zero, .LBB0_196
.LBB0_189:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	beq r12, r20, .LBB0_191
.LBB0_190:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
.LBB0_191:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r3, r20, r11
	lui r11, 523264
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r3, zero, .LBB0_193
# %bb.192:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r24, 0
.LBB0_193:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r3, r20, r12
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r3, zero, .LBB0_184
# %bb.194:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r11, 0
	j .LBB0_184
.LBB0_195:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	lui r24, 523264
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	beq r11, zero, .LBB0_189
.LBB0_196:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r12, r20, .LBB0_190
	j .LBB0_191
.LBB0_197:                              # %vector.body616.preheader
                                        #   in Loop: Header=BB0_182 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_199
.LBB0_198:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	addli r3, zero, 128
	.loc	1 318 11 is_stmt 1              # parallel-rne.mlir:318:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 340 13                        # parallel-rne.mlir:340:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 318 11                        # parallel-rne.mlir:318:11
	seteq.d r3, r[24:25], r[6:7]
	bneq r3, zero, .LBB0_181
.LBB0_199:                              # %vector.body616
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_182 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	add.ul r[2:3], r[24:25], r[9:10]
	lui r26, 523264
	slli r2, r2, 2
	add.s r6, r17, r2
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.s r7, r16, r2
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	loads.w r3, 0(r6)
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	loads.w r8, 0(r7)
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	and r3, r3, r27
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	and r8, r8, r27
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	seteq r11, r3, r20
	.loc	1 331 20                        # parallel-rne.mlir:331:20
	seteq r16, r3, zero
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	seteq r12, r8, zero
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	seteq r13, r8, r20
	.loc	1 336 20                        # parallel-rne.mlir:336:20
	max.u r3, r3, r8
	setlt.u r3, r20, r3
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r8, r11, r12
	.loc	1 332 20                        # parallel-rne.mlir:332:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 333 20                        # parallel-rne.mlir:333:20
	or r11, r8, r11
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.s r8, r18, r2
	.loc	1 337 20                        # parallel-rne.mlir:337:20
	or r3, r3, r11
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r3, zero, .LBB0_201
# %bb.200:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_201:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r3, 4(r6)
	loads.w r11, 4(r7)
	and r3, r3, r27
	and r11, r11, r27
	seteq r12, r3, r20
	seteq r21, r3, zero
	seteq r16, r11, zero
	seteq r28, r11, r20
	max.u r3, r3, r11
	setlt.u r3, r20, r3
	and r11, r12, r16
	and r12, r21, r28
	or r11, r11, r12
	or r3, r3, r11
	lui r11, 523264
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r3, zero, .LBB0_203
# %bb.202:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r8)
.LBB0_203:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r3, 8(r6)
	loads.w r12, 8(r7)
	and r3, r3, r27
	and r12, r12, r27
	seteq r16, r3, r20
	seteq r22, r3, zero
	seteq r21, r12, zero
	seteq r28, r12, r20
	max.u r3, r3, r12
	setlt.u r3, r20, r3
	and r12, r16, r21
	and r16, r22, r28
	or r12, r12, r16
	or r3, r3, r12
	lui r12, 523264
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r3, zero, .LBB0_205
# %bb.204:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r8)
.LBB0_205:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r3, 12(r6)
	loads.w r6, 12(r7)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r22, r3, zero
	seteq r16, r6, zero
	seteq r21, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r22, r21
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	bneq r3, zero, .LBB0_198
# %bb.206:                              # %vector.body616
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_198
.LBB0_207:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	mfence { sm }
	addli r10, zero, 6
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 345 7                         # parallel-rne.mlir:345:7
	addli r2, zero, 5
	beq r4, r2, .LBB0_93
.LBB0_208:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	bneq r4, r10, .LBB0_121
.LBB0_209:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r4, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	.loc	1 381 7                         # parallel-rne.mlir:381:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r5, r2, r3
	addli r2, zero, 1536
	zext_int2long r[9:10], r2
	j .LBB0_211
.LBB0_210:                              # %middle.block592
                                        #   in Loop: Header=BB0_211 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1664
	.loc	1 389 9 is_stmt 1               # parallel-rne.mlir:389:9
	andi r2, r4, 1
	addli r4, zero, 0
	zext_int2long r[9:10], r3
	beq r2, zero, .LBB0_236
.LBB0_211:                              # %vector.memcheck578
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_214 Depth 3
	.loc	1 390 11                        # parallel-rne.mlir:390:11
	beq r5, zero, .LBB0_226
# %bb.212:                              # %scalar.ph584.preheader
                                        #   in Loop: Header=BB0_211 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_214
.LBB0_213:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 390 11                        # parallel-rne.mlir:390:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 412 13 is_stmt 1              # parallel-rne.mlir:412:13
	add.s r2, r19, r2
	.loc	1 390 11                        # parallel-rne.mlir:390:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 412 13                        # parallel-rne.mlir:412:13
	stores.w r8, 0(r2)
	.loc	1 390 11                        # parallel-rne.mlir:390:11
	beq r3, zero, .LBB0_210
.LBB0_214:                              # %scalar.ph584
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	add.ul r[2:3], r[6:7], r[9:10]
	lui r13, 523264
	slli r2, r2, 2
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	add.s r3, r16, r2
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	add.s r8, r18, r2
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	loads.w r3, 0(r3)
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	loads.w r24, 0(r8)
	lui r8, 523264
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	and r11, r3, r27
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	beq r11, r20, .LBB0_216
# %bb.215:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_216:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r12, r3, r27
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	beq r12, zero, .LBB0_224
# %bb.217:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
	lui r24, 523264
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r11, zero, .LBB0_225
.LBB0_218:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	beq r12, r20, .LBB0_220
.LBB0_219:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
.LBB0_220:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	setlt.u r3, r20, r11
	lui r11, 523264
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r3, zero, .LBB0_222
# %bb.221:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r24, 0
.LBB0_222:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	setlt.u r3, r20, r12
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r3, zero, .LBB0_213
# %bb.223:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r11, 0
	j .LBB0_213
.LBB0_224:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	lui r24, 523264
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	beq r11, zero, .LBB0_218
.LBB0_225:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_214 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r13, 0
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r12, r20, .LBB0_219
	j .LBB0_220
.LBB0_226:                              # %vector.body586.preheader
                                        #   in Loop: Header=BB0_211 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_228
.LBB0_227:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	addli r3, zero, 128
	.loc	1 390 11 is_stmt 1              # parallel-rne.mlir:390:11
	addli.d r[24:25], r[24:25], 4
	.loc	1 412 13                        # parallel-rne.mlir:412:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 390 11                        # parallel-rne.mlir:390:11
	seteq.d r3, r[24:25], r[6:7]
	bneq r3, zero, .LBB0_210
.LBB0_228:                              # %vector.body586
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	add.ul r[2:3], r[24:25], r[9:10]
	lui r26, 523264
	slli r2, r2, 2
	add.s r6, r17, r2
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	add.s r7, r16, r2
	.loc	1 391 19                        # parallel-rne.mlir:391:19
	loads.w r3, 0(r6)
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	loads.w r8, 0(r7)
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	and r3, r3, r27
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	and r8, r8, r27
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	seteq r11, r3, r20
	.loc	1 403 20                        # parallel-rne.mlir:403:20
	seteq r16, r3, zero
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	seteq r12, r8, zero
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	seteq r13, r8, r20
	.loc	1 408 20                        # parallel-rne.mlir:408:20
	max.u r3, r3, r8
	setlt.u r3, r20, r3
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	and r8, r11, r12
	.loc	1 404 20                        # parallel-rne.mlir:404:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 405 20                        # parallel-rne.mlir:405:20
	or r11, r8, r11
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	add.s r8, r18, r2
	.loc	1 409 20                        # parallel-rne.mlir:409:20
	or r3, r3, r11
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r3, zero, .LBB0_230
# %bb.229:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_230:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r3, 4(r6)
	loads.w r11, 4(r7)
	and r3, r3, r27
	and r11, r11, r27
	seteq r12, r3, r20
	seteq r21, r3, zero
	seteq r16, r11, zero
	seteq r28, r11, r20
	max.u r3, r3, r11
	setlt.u r3, r20, r3
	and r11, r12, r16
	and r12, r21, r28
	or r11, r11, r12
	or r3, r3, r11
	lui r11, 523264
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r3, zero, .LBB0_232
# %bb.231:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r8)
.LBB0_232:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r3, 8(r6)
	loads.w r12, 8(r7)
	and r3, r3, r27
	and r12, r12, r27
	seteq r16, r3, r20
	seteq r22, r3, zero
	seteq r21, r12, zero
	seteq r28, r12, r20
	max.u r3, r3, r12
	setlt.u r3, r20, r3
	and r12, r16, r21
	and r16, r22, r28
	or r12, r12, r16
	or r3, r3, r12
	lui r12, 523264
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r3, zero, .LBB0_234
# %bb.233:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r8)
.LBB0_234:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r3, 12(r6)
	loads.w r6, 12(r7)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r22, r3, zero
	seteq r16, r6, zero
	seteq r21, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r22, r21
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	bneq r3, zero, .LBB0_227
# %bb.235:                              # %vector.body586
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_227
.LBB0_236:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 381 7 is_stmt 1               # parallel-rne.mlir:381:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 417 7                         # parallel-rne.mlir:417:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_265
.LBB0_237:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	addli r4, zero, 1
	min.u r2, r2, r3
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	.loc	1 417 7                         # parallel-rne.mlir:417:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r5, r2, r3
	addli r2, zero, 1792
	zext_int2long r[8:9], r2
	j .LBB0_239
.LBB0_238:                              # %middle.block577
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1920
	.loc	1 425 9 is_stmt 1               # parallel-rne.mlir:425:9
	andi r2, r4, 1
	addli r4, zero, 0
	zext_int2long r[8:9], r3
	beq r2, zero, .LBB0_264
.LBB0_239:                              # %vector.memcheck563
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 426 11                        # parallel-rne.mlir:426:11
	beq r5, zero, .LBB0_254
# %bb.240:                              # %scalar.ph569.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_242
.LBB0_241:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 426 11                        # parallel-rne.mlir:426:11
	setlt.ul r3, r[10:11], r[14:15]
	.loc	1 448 13 is_stmt 1              # parallel-rne.mlir:448:13
	add.s r2, r19, r2
	.loc	1 426 11                        # parallel-rne.mlir:426:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 448 13                        # parallel-rne.mlir:448:13
	stores.w r12, 0(r2)
	.loc	1 426 11                        # parallel-rne.mlir:426:11
	beq r3, zero, .LBB0_238
.LBB0_242:                              # %scalar.ph569
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	add.ul r[2:3], r[10:11], r[8:9]
	lui r12, 523264
	lui r22, 523264
	slli r2, r2, 2
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	add.s r3, r16, r2
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.s r6, r18, r2
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	loads.w r3, 0(r3)
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	loads.w r24, 0(r6)
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	and r13, r3, r27
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	beq r13, r20, .LBB0_244
# %bb.243:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r22, r24, 0
.LBB0_244:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	add.s r3, r17, r2
	loads.w r3, 0(r3)
	and r21, r3, r27
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	beq r21, zero, .LBB0_252
# %bb.245:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r24, 0
	lui r24, 523264
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r13, zero, .LBB0_253
.LBB0_246:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	beq r21, r20, .LBB0_248
.LBB0_247:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r22, 0
.LBB0_248:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r3, r20, r13
	lui r13, 523264
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r3, zero, .LBB0_250
# %bb.249:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r24, 0
.LBB0_250:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r3, r20, r21
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r3, zero, .LBB0_241
# %bb.251:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r13, 0
	j .LBB0_241
.LBB0_252:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	lui r24, 523264
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	beq r13, zero, .LBB0_246
.LBB0_253:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r22, 0
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r21, r20, .LBB0_247
	j .LBB0_248
.LBB0_254:                              # %vector.body571.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[21:22], zero
	j .LBB0_256
.LBB0_255:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	addli r3, zero, 128
	.loc	1 426 11 is_stmt 1              # parallel-rne.mlir:426:11
	addli.d r[21:22], r[21:22], 4
	.loc	1 448 13                        # parallel-rne.mlir:448:13
	add.s r2, r19, r2
	zext_int2long r[6:7], r3
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r10, 0(r2)
	.loc	1 426 11                        # parallel-rne.mlir:426:11
	seteq.d r3, r[21:22], r[6:7]
	bneq r3, zero, .LBB0_238
.LBB0_256:                              # %vector.body571
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	add.ul r[2:3], r[21:22], r[8:9]
	slli r2, r2, 2
	add.s r24, r17, r2
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	add.s r25, r16, r2
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.s r26, r18, r2
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	loads.w r3, 0(r24)
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	loads.w r10, 0(r25)
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	and r3, r3, r27
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	and r10, r10, r27
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	seteq r11, r3, r20
	.loc	1 439 20                        # parallel-rne.mlir:439:20
	seteq r16, r3, zero
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	seteq r12, r10, zero
	.loc	1 438 19                        # parallel-rne.mlir:438:19
	seteq r13, r10, r20
	.loc	1 444 20                        # parallel-rne.mlir:444:20
	max.u r3, r3, r10
	setlt.u r3, r20, r3
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	and r10, r11, r12
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 441 20                        # parallel-rne.mlir:441:20
	or r10, r10, r11
	.loc	1 445 20                        # parallel-rne.mlir:445:20
	or r3, r3, r10
	lui r10, 523264
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r3, zero, .LBB0_258
# %bb.257:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r10, 0(r26)
.LBB0_258:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r3, 4(r24)
	loads.w r11, 4(r25)
	and r3, r3, r27
	and r11, r11, r27
	seteq r12, r3, r20
	seteq r6, r3, zero
	seteq r28, r11, r20
	seteq r16, r11, zero
	max.u r3, r3, r11
	setlt.u r3, r20, r3
	and r11, r12, r16
	and r6, r6, r28
	or r6, r11, r6
	lui r11, 523264
	or r3, r3, r6
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r3, zero, .LBB0_260
# %bb.259:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r26)
.LBB0_260:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r3, 8(r24)
	loads.w r6, 8(r25)
	and r3, r3, r27
	and r6, r6, r27
	seteq r12, r3, r20
	seteq r7, r3, zero
	seteq r28, r6, r20
	seteq r16, r6, zero
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r12, r16
	and r7, r7, r28
	lui r12, 523264
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r3, zero, .LBB0_262
# %bb.261:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r26)
.LBB0_262:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r3, 12(r24)
	loads.w r6, 12(r25)
	and r3, r3, r27
	and r6, r6, r27
	seteq r7, r3, r20
	seteq r25, r3, zero
	seteq r16, r6, zero
	seteq r24, r6, r20
	max.u r3, r3, r6
	setlt.u r3, r20, r3
	and r6, r7, r16
	and r7, r25, r24
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	or r6, r6, r7
	or r3, r3, r6
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	bneq r3, zero, .LBB0_255
# %bb.263:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r13, 12(r26)
	j .LBB0_255
.LBB0_264:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 417 7 is_stmt 1               # parallel-rne.mlir:417:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
.LBB0_265:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 454 7                         # parallel-rne.mlir:454:7
	addli r2, zero, 3
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	sync_core
	.loc	1 454 7                         # parallel-rne.mlir:454:7
	bneq r4, r2, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 18
	addli r5, zero, 5
	xsignal r2, 0
	.loc	1 455 7                         # parallel-rne.mlir:455:7
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 456 7                         # parallel-rne.mlir:456:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	addli r2, zero, 27
	xsignal r2, 0
	.loc	1 459 13                        # parallel-rne.mlir:459:13
	loadli.w r2,  -72(r30)
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	loadli.w r2,  -500(r30)                 # 4-byte Folded Reload
	slli r3, r3, 13
	add.s r6, r3, r2
	.loc	1 463 7                         # parallel-rne.mlir:463:7
	addli r2, zero, 34
	xwait r2, 0
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	addli r2, zero, 38
	xwait r2, 0
	j .LBB0_270
.LBB0_267:                              # %.critedge8
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 459 13                        # parallel-rne.mlir:459:13
	loadli.w r2,  -72(r30)
	addli r5, zero, 5
	loadli.w r6,  -500(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	slli r3, r3, 13
	add.s r6, r3, r6
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	bneq r4, r5, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 18
	addli r3, zero, 2
	lui r5, 260096
	addli r7, zero, 511
	xwait r2, 0
	addli r2, zero, 27
	xwait r2, 0
	addli r2, zero, 35
	xwait r2, 0
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, r2, zero, 0
	addli r2, zero, 4
	addli r5, zero, 28
	ew_cfg zero, r7, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	dsmadd r6, r16, r19, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r5, 0
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	loadli.w r5,  -520(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, zero, zero, 0
	addli r5, zero, 5
	ew_cfg zero, r7, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	addli r2, zero, 34
	hp_ssmul r6, r6, r6, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r2, 0
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 5
.LBB0_270:                              # %.critedge12
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r2,  -436(r30)                 # 4-byte Folded Reload
	.loc	1 466 7 is_stmt 1               # parallel-rne.mlir:466:7
	xfence
	loadli.w r3,  -496(r30)                 # 4-byte Folded Reload
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r5
	slli r2, r2, 13
	add.s r10, r2, r3
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r2, zero, 255
	sub.s r28, r10, r6
	csr_set csr5, r2
	sync_core
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	beq r4, zero, .LBB0_293
# %bb.271:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	addli r2, zero, 1
	bneq r4, r2, .LBB0_301
.LBB0_272:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r3, zero, 256
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r28, r2
	zext_int2long r[17:18], r3
	j .LBB0_274
.LBB0_273:                              # %middle.block552
                                        #   in Loop: Header=BB0_274 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 384
	.loc	1 494 9 is_stmt 1               # parallel-rne.mlir:494:9
	andi r3, r8, 1
	addli r8, zero, 0
	zext_int2long r[17:18], r4
	beq r3, zero, .LBB0_277
.LBB0_274:                              # %vector.memcheck543
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_276 Depth 3
                                        #       Child Loop BB0_275 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 495 11 is_stmt 1              # parallel-rne.mlir:495:11
	beq r2, zero, .LBB0_276
.LBB0_275:                              # %scalar.ph545
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_274 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	add.ul r[3:4], r[11:12], r[17:18]
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	setlt.ul r5, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	slli r3, r3, 2
	add.s r4, r6, r3
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	add.s r3, r10, r3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	loads.w r4, 0(r4)
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	stores.w r4, 0(r3)
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	bneq r5, zero, .LBB0_275
	j .LBB0_273
.LBB0_276:                              # %vector.body547
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_274 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	add.ul r[21:22], r[11:12], r[17:18]
	addli r4, zero, 128
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	slli r3, r21, 2
	zext_int2long r[4:5], r4
	add.s r7, r6, r3
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	seteq.d r4, r[11:12], r[4:5]
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	add.s r3, r10, r3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	loads.w r9, 12(r7)
	loads.w r13, 8(r7)
	loads.w r16, 4(r7)
	loads.w r21, 0(r7)
	loads.w r22, 28(r7)
	loads.w r24, 24(r7)
	loads.w r25, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	stores.w r9, 12(r3)
	stores.w r13, 8(r3)
	stores.w r16, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r24, 24(r3)
	stores.w r25, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	beq r4, zero, .LBB0_276
	j .LBB0_273
.LBB0_277:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_302
.LBB0_278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r2, zero, 3
	bneq r4, r2, .LBB0_308
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r3, zero, 768
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r28, r2
	zext_int2long r[17:18], r3
	j .LBB0_281
.LBB0_280:                              # %middle.block532
                                        #   in Loop: Header=BB0_281 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 896
	.loc	1 528 9 is_stmt 1               # parallel-rne.mlir:528:9
	andi r3, r8, 1
	addli r8, zero, 0
	zext_int2long r[17:18], r4
	beq r3, zero, .LBB0_284
.LBB0_281:                              # %vector.memcheck523
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 529 11 is_stmt 1              # parallel-rne.mlir:529:11
	beq r2, zero, .LBB0_283
.LBB0_282:                              # %scalar.ph525
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	add.ul r[3:4], r[11:12], r[17:18]
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	setlt.ul r5, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	slli r3, r3, 2
	add.s r4, r6, r3
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	add.s r3, r10, r3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	loads.w r4, 0(r4)
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	stores.w r4, 0(r3)
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	bneq r5, zero, .LBB0_282
	j .LBB0_280
.LBB0_283:                              # %vector.body527
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	add.ul r[3:4], r[11:12], r[17:18]
	addli r24, zero, 128
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	slli r3, r3, 2
	zext_int2long r[24:25], r24
	add.s r4, r6, r3
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	add.s r3, r10, r3
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	loads.w r5, 12(r4)
	loads.w r7, 8(r4)
	loads.w r9, 4(r4)
	loads.w r13, 0(r4)
	loads.w r16, 28(r4)
	loads.w r21, 24(r4)
	loads.w r22, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	stores.w r5, 12(r3)
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	seteq.d r5, r[11:12], r[24:25]
	.loc	1 532 13                        # parallel-rne.mlir:532:13
	stores.w r7, 8(r3)
	stores.w r9, 4(r3)
	stores.w r13, 0(r3)
	stores.w r16, 28(r3)
	stores.w r21, 24(r3)
	stores.w r22, 20(r3)
	stores.w r4, 16(r3)
	.loc	1 529 11                        # parallel-rne.mlir:529:11
	beq r5, zero, .LBB0_283
	j .LBB0_280
.LBB0_284:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_309
.LBB0_285:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 5
	bneq r4, r2, .LBB0_315
.LBB0_286:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r3, zero, 1280
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r28, r2
	zext_int2long r[17:18], r3
	j .LBB0_288
.LBB0_287:                              # %middle.block512
                                        #   in Loop: Header=BB0_288 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1408
	.loc	1 562 9 is_stmt 1               # parallel-rne.mlir:562:9
	andi r3, r8, 1
	addli r8, zero, 0
	zext_int2long r[17:18], r4
	beq r3, zero, .LBB0_291
.LBB0_288:                              # %vector.memcheck503
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_290 Depth 3
                                        #       Child Loop BB0_289 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 563 11 is_stmt 1              # parallel-rne.mlir:563:11
	beq r2, zero, .LBB0_290
.LBB0_289:                              # %scalar.ph505
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	add.ul r[3:4], r[11:12], r[17:18]
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	setlt.ul r5, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	slli r3, r3, 2
	add.s r4, r6, r3
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	add.s r3, r10, r3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	loads.w r4, 0(r4)
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	stores.w r4, 0(r3)
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	bneq r5, zero, .LBB0_289
	j .LBB0_287
.LBB0_290:                              # %vector.body507
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	add.ul r[3:4], r[11:12], r[17:18]
	addli r24, zero, 128
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	slli r3, r3, 2
	zext_int2long r[24:25], r24
	add.s r4, r6, r3
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	add.s r3, r10, r3
	.loc	1 564 19                        # parallel-rne.mlir:564:19
	loads.w r5, 12(r4)
	loads.w r7, 8(r4)
	loads.w r9, 4(r4)
	loads.w r13, 0(r4)
	loads.w r16, 28(r4)
	loads.w r21, 24(r4)
	loads.w r22, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	stores.w r5, 12(r3)
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	seteq.d r5, r[11:12], r[24:25]
	.loc	1 566 13                        # parallel-rne.mlir:566:13
	stores.w r7, 8(r3)
	stores.w r9, 4(r3)
	stores.w r13, 0(r3)
	stores.w r16, 28(r3)
	stores.w r21, 24(r3)
	stores.w r22, 20(r3)
	stores.w r4, 16(r3)
	.loc	1 563 11                        # parallel-rne.mlir:563:11
	beq r5, zero, .LBB0_290
	j .LBB0_287
.LBB0_291:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	addli r2, zero, 6
	beq r4, r2, .LBB0_316
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_322
	j .LBB0_328
.LBB0_293:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	zext_int2long r[17:18], zero
	setlt.u r2, r28, r2
	.loc	1 469 7 is_stmt 1               # parallel-rne.mlir:469:7
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 1
	xfence
	mfence { lm, sm, gm }
	j .LBB0_295
.LBB0_294:                              # %middle.block562
                                        #   in Loop: Header=BB0_295 Depth=2
	.loc	1 477 9                         # parallel-rne.mlir:477:9
	andi r3, r2, 1
	addli r2, zero, 128
	zext_int2long r[17:18], r2
	addli r2, zero, 0
	beq r3, zero, .LBB0_300
.LBB0_295:                              # %vector.memcheck553
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_299 Depth 3
                                        #       Child Loop BB0_297 Depth 3
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	loadli.w r3,  -400(r30)                 # 4-byte Folded Reload
	beq r3, zero, .LBB0_298
# %bb.296:                              # %scalar.ph555.preheader
                                        #   in Loop: Header=BB0_295 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
.LBB0_297:                              # %scalar.ph555
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 479 19 is_stmt 1              # parallel-rne.mlir:479:19
	add.ul r[7:8], r[11:12], r[17:18]
	slli r3, r7, 2
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	setlt.ul r8, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	add.s r7, r6, r3
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	add.s r3, r10, r3
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	loads.w r7, 0(r7)
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	stores.w r7, 0(r3)
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	bneq r8, zero, .LBB0_297
	j .LBB0_294
.LBB0_298:                              # %vector.body557.preheader
                                        #   in Loop: Header=BB0_295 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
.LBB0_299:                              # %vector.body557
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 479 19 is_stmt 1              # parallel-rne.mlir:479:19
	add.ul r[21:22], r[11:12], r[17:18]
	addli r5, zero, 128
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	slli r3, r21, 2
	zext_int2long r[7:8], r5
	add.s r9, r6, r3
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	seteq.d r7, r[11:12], r[7:8]
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	add.s r3, r10, r3
	.loc	1 479 19                        # parallel-rne.mlir:479:19
	loads.w r13, 12(r9)
	loads.w r16, 8(r9)
	loads.w r21, 4(r9)
	loads.w r22, 0(r9)
	loads.w r24, 28(r9)
	loads.w r25, 24(r9)
	loads.w r26, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	stores.w r13, 12(r3)
	stores.w r16, 8(r3)
	stores.w r21, 4(r3)
	stores.w r22, 0(r3)
	stores.w r24, 28(r3)
	stores.w r25, 24(r3)
	stores.w r26, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 478 11                        # parallel-rne.mlir:478:11
	beq r7, zero, .LBB0_299
	j .LBB0_294
.LBB0_300:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	mfence { sm }
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	addli r2, zero, 1
	beq r4, r2, .LBB0_272
.LBB0_301:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_278
.LBB0_302:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r3, zero, 512
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r28, r2
	zext_int2long r[17:18], r3
	j .LBB0_304
.LBB0_303:                              # %middle.block542
                                        #   in Loop: Header=BB0_304 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 640
	.loc	1 511 9 is_stmt 1               # parallel-rne.mlir:511:9
	andi r3, r8, 1
	addli r8, zero, 0
	zext_int2long r[17:18], r4
	beq r3, zero, .LBB0_307
.LBB0_304:                              # %vector.memcheck533
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_306 Depth 3
                                        #       Child Loop BB0_305 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 512 11 is_stmt 1              # parallel-rne.mlir:512:11
	beq r2, zero, .LBB0_306
.LBB0_305:                              # %scalar.ph535
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_304 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	add.ul r[3:4], r[11:12], r[17:18]
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	setlt.ul r5, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	slli r3, r3, 2
	add.s r4, r6, r3
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	add.s r3, r10, r3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	loads.w r4, 0(r4)
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	stores.w r4, 0(r3)
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	bneq r5, zero, .LBB0_305
	j .LBB0_303
.LBB0_306:                              # %vector.body537
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_304 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	add.ul r[3:4], r[11:12], r[17:18]
	addli r24, zero, 128
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	slli r3, r3, 2
	zext_int2long r[24:25], r24
	add.s r4, r6, r3
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	add.s r3, r10, r3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	loads.w r5, 12(r4)
	loads.w r7, 8(r4)
	loads.w r9, 4(r4)
	loads.w r13, 0(r4)
	loads.w r16, 28(r4)
	loads.w r21, 24(r4)
	loads.w r22, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	stores.w r5, 12(r3)
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	seteq.d r5, r[11:12], r[24:25]
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	stores.w r7, 8(r3)
	stores.w r9, 4(r3)
	stores.w r13, 0(r3)
	stores.w r16, 28(r3)
	stores.w r21, 24(r3)
	stores.w r22, 20(r3)
	stores.w r4, 16(r3)
	.loc	1 512 11                        # parallel-rne.mlir:512:11
	beq r5, zero, .LBB0_306
	j .LBB0_303
.LBB0_307:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r2, zero, 3
	beq r4, r2, .LBB0_279
.LBB0_308:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_285
.LBB0_309:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r3, zero, 1024
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r28, r2
	zext_int2long r[17:18], r3
	j .LBB0_311
.LBB0_310:                              # %middle.block522
                                        #   in Loop: Header=BB0_311 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1152
	.loc	1 545 9 is_stmt 1               # parallel-rne.mlir:545:9
	andi r3, r8, 1
	addli r8, zero, 0
	zext_int2long r[17:18], r4
	beq r3, zero, .LBB0_314
.LBB0_311:                              # %vector.memcheck513
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_312 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 546 11 is_stmt 1              # parallel-rne.mlir:546:11
	beq r2, zero, .LBB0_313
.LBB0_312:                              # %scalar.ph515
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_311 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[3:4], r[11:12], r[17:18]
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	setlt.ul r5, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	slli r3, r3, 2
	add.s r4, r6, r3
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r10, r3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r4, 0(r4)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r4, 0(r3)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	bneq r5, zero, .LBB0_312
	j .LBB0_310
.LBB0_313:                              # %vector.body517
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_311 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	add.ul r[3:4], r[11:12], r[17:18]
	addli r24, zero, 128
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	slli r3, r3, 2
	zext_int2long r[24:25], r24
	add.s r4, r6, r3
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	add.s r3, r10, r3
	.loc	1 547 19                        # parallel-rne.mlir:547:19
	loads.w r5, 12(r4)
	loads.w r7, 8(r4)
	loads.w r9, 4(r4)
	loads.w r13, 0(r4)
	loads.w r16, 28(r4)
	loads.w r21, 24(r4)
	loads.w r22, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r5, 12(r3)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	seteq.d r5, r[11:12], r[24:25]
	.loc	1 549 13                        # parallel-rne.mlir:549:13
	stores.w r7, 8(r3)
	stores.w r9, 4(r3)
	stores.w r13, 0(r3)
	stores.w r16, 28(r3)
	stores.w r21, 24(r3)
	stores.w r22, 20(r3)
	stores.w r4, 16(r3)
	.loc	1 546 11                        # parallel-rne.mlir:546:11
	beq r5, zero, .LBB0_313
	j .LBB0_310
.LBB0_314:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 537 7                         # parallel-rne.mlir:537:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 554 7                         # parallel-rne.mlir:554:7
	addli r2, zero, 5
	beq r4, r2, .LBB0_286
.LBB0_315:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	addli r2, zero, 6
	bneq r4, r2, .LBB0_292
.LBB0_316:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r3, zero, 1536
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	xfence
	addli r8, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r28, r2
	zext_int2long r[17:18], r3
	j .LBB0_318
.LBB0_317:                              # %middle.block502
                                        #   in Loop: Header=BB0_318 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1664
	.loc	1 579 9 is_stmt 1               # parallel-rne.mlir:579:9
	andi r3, r8, 1
	addli r8, zero, 0
	zext_int2long r[17:18], r4
	beq r3, zero, .LBB0_321
.LBB0_318:                              # %vector.memcheck493
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_320 Depth 3
                                        #       Child Loop BB0_319 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 580 11 is_stmt 1              # parallel-rne.mlir:580:11
	beq r2, zero, .LBB0_320
.LBB0_319:                              # %scalar.ph495
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_318 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.ul r[3:4], r[11:12], r[17:18]
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	setlt.ul r5, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	slli r3, r3, 2
	add.s r4, r6, r3
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r3, r10, r3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	loads.w r4, 0(r4)
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r4, 0(r3)
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	bneq r5, zero, .LBB0_319
	j .LBB0_317
.LBB0_320:                              # %vector.body497
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_318 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	add.ul r[3:4], r[11:12], r[17:18]
	addli r24, zero, 128
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	slli r3, r3, 2
	zext_int2long r[24:25], r24
	add.s r4, r6, r3
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	add.s r3, r10, r3
	.loc	1 581 19                        # parallel-rne.mlir:581:19
	loads.w r5, 12(r4)
	loads.w r7, 8(r4)
	loads.w r9, 4(r4)
	loads.w r13, 0(r4)
	loads.w r16, 28(r4)
	loads.w r21, 24(r4)
	loads.w r22, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r5, 12(r3)
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	seteq.d r5, r[11:12], r[24:25]
	.loc	1 583 13                        # parallel-rne.mlir:583:13
	stores.w r7, 8(r3)
	stores.w r9, 4(r3)
	stores.w r13, 0(r3)
	stores.w r16, 28(r3)
	stores.w r21, 24(r3)
	stores.w r22, 20(r3)
	stores.w r4, 16(r3)
	.loc	1 580 11                        # parallel-rne.mlir:580:11
	beq r5, zero, .LBB0_320
	j .LBB0_317
.LBB0_321:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 571 7                         # parallel-rne.mlir:571:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_328
.LBB0_322:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	addli r3, zero, 1792
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	xfence
	addli r7, zero, 1
	mfence { lm, sm, gm }
	setlt.u r2, r28, r2
	zext_int2long r[8:9], r3
	j .LBB0_324
.LBB0_323:                              # %middle.block492
                                        #   in Loop: Header=BB0_324 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 1920
	.loc	1 596 9 is_stmt 1               # parallel-rne.mlir:596:9
	andi r3, r7, 1
	addli r7, zero, 0
	zext_int2long r[8:9], r4
	beq r3, zero, .LBB0_327
.LBB0_324:                              # %vector.memcheck483
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_326 Depth 3
                                        #       Child Loop BB0_325 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[11:12], zero
	.loc	1 597 11 is_stmt 1              # parallel-rne.mlir:597:11
	beq r2, zero, .LBB0_326
.LBB0_325:                              # %scalar.ph485
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_324 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	add.ul r[3:4], r[11:12], r[8:9]
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	setlt.ul r5, r[11:12], r[14:15]
	addli.d r[11:12], r[11:12], 1
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	slli r3, r3, 2
	add.s r4, r6, r3
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	add.s r3, r10, r3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	loads.w r4, 0(r4)
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	stores.w r4, 0(r3)
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	bneq r5, zero, .LBB0_325
	j .LBB0_323
.LBB0_326:                              # %vector.body487
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_324 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	add.ul r[3:4], r[11:12], r[8:9]
	addli r24, zero, 128
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	addli.d r[11:12], r[11:12], 8
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	slli r3, r3, 2
	zext_int2long r[24:25], r24
	add.s r4, r6, r3
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	add.s r3, r10, r3
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	loads.w r5, 12(r4)
	loads.w r13, 8(r4)
	loads.w r16, 4(r4)
	loads.w r17, 0(r4)
	loads.w r18, 28(r4)
	loads.w r21, 24(r4)
	loads.w r22, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	stores.w r5, 12(r3)
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	seteq.d r5, r[11:12], r[24:25]
	.loc	1 600 13                        # parallel-rne.mlir:600:13
	stores.w r13, 8(r3)
	stores.w r16, 4(r3)
	stores.w r17, 0(r3)
	stores.w r18, 28(r3)
	stores.w r21, 24(r3)
	stores.w r22, 20(r3)
	stores.w r4, 16(r3)
	.loc	1 597 11                        # parallel-rne.mlir:597:11
	beq r5, zero, .LBB0_326
	j .LBB0_323
.LBB0_327:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 588 7                         # parallel-rne.mlir:588:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
.LBB0_328:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	addli r2, zero, 3
	.loc	1 605 7                         # parallel-rne.mlir:605:7
	sync_core
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	bneq r4, r2, .LBB0_330
# %bb.329:                              # %.critedge14
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 35
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	addli r3, zero, 28
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	xsignal r2, 0
	addli r2, zero, 36
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	xsignal r2, 0
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	xwait r3, 0
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	xwait r2, 0
.LBB0_330:                              # %.critedge16
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	addli r2, zero, 255
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	xfence
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	mfence { lm, sm, gm }
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	csr_set csr5, r2
	sync_core
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	beq r4, zero, .LBB0_413
# %bb.331:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	addli r2, zero, 1
	bneq r4, r2, .LBB0_439
.LBB0_332:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 256
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_334
.LBB0_333:                              # %middle.block472
                                        #   in Loop: Header=BB0_334 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 384
	.loc	1 645 9 is_stmt 1               # parallel-rne.mlir:645:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_357
.LBB0_334:                              # %vector.memcheck463
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_341 Depth 3
                                        #       Child Loop BB0_337 Depth 3
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	bneq r19, r10, .LBB0_339
# %bb.335:                              # %scalar.ph465.preheader
                                        #   in Loop: Header=BB0_334 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_337
.LBB0_336:                              # %scalar.ph465
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 654 13 is_stmt 1              # parallel-rne.mlir:654:13
	add.s r2, r19, r2
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 654 13                        # parallel-rne.mlir:654:13
	stores.w r9, 0(r2)
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	beq r3, zero, .LBB0_333
.LBB0_337:                              # %scalar.ph465
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_334 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	and r3, r9, r27
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_336
# %bb.338:                              #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_336
.LBB0_339:                              # %vector.body467.preheader
                                        #   in Loop: Header=BB0_334 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_341
.LBB0_340:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	addli r4, zero, 128
	.loc	1 646 11 is_stmt 1              # parallel-rne.mlir:646:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 654 13                        # parallel-rne.mlir:654:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 646 11                        # parallel-rne.mlir:646:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_333
.LBB0_341:                              # %vector.body467
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_334 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	and r3, r2, r27
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_343
# %bb.342:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_343:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_345
# %bb.344:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_345:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_347:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_349:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_351:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_353
# %bb.352:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_353:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_355:                              # %vector.body467
                                        #   in Loop: Header=BB0_341 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	beq r3, zero, .LBB0_340
# %bb.356:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_340
.LBB0_357:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 637 7 is_stmt 1               # parallel-rne.mlir:637:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 659 7                         # parallel-rne.mlir:659:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_440
.LBB0_358:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 681 7                         # parallel-rne.mlir:681:7
	addli r2, zero, 3
	bneq r4, r2, .LBB0_466
.LBB0_359:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 768
	.loc	1 681 7                         # parallel-rne.mlir:681:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_361
.LBB0_360:                              # %middle.block452
                                        #   in Loop: Header=BB0_361 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 896
	.loc	1 689 9 is_stmt 1               # parallel-rne.mlir:689:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_384
.LBB0_361:                              # %vector.memcheck443
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_368 Depth 3
                                        #       Child Loop BB0_364 Depth 3
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	bneq r19, r10, .LBB0_366
# %bb.362:                              # %scalar.ph445.preheader
                                        #   in Loop: Header=BB0_361 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_364
.LBB0_363:                              # %scalar.ph445
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 698 13 is_stmt 1              # parallel-rne.mlir:698:13
	add.s r2, r19, r2
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 698 13                        # parallel-rne.mlir:698:13
	stores.w r9, 0(r2)
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	beq r3, zero, .LBB0_360
.LBB0_364:                              # %scalar.ph445
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	and r3, r9, r27
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_363
# %bb.365:                              #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_363
.LBB0_366:                              # %vector.body447.preheader
                                        #   in Loop: Header=BB0_361 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_368
.LBB0_367:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	addli r4, zero, 128
	.loc	1 690 11 is_stmt 1              # parallel-rne.mlir:690:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 698 13                        # parallel-rne.mlir:698:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 690 11                        # parallel-rne.mlir:690:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_360
.LBB0_368:                              # %vector.body447
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	and r3, r2, r27
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_370:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_372:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_374:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_376:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_378:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_380
# %bb.379:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_380:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_382:                              # %vector.body447
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	beq r3, zero, .LBB0_367
# %bb.383:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_367
.LBB0_384:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 681 7 is_stmt 1               # parallel-rne.mlir:681:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 703 7                         # parallel-rne.mlir:703:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_467
.LBB0_385:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 725 7                         # parallel-rne.mlir:725:7
	addli r2, zero, 5
	bneq r4, r2, .LBB0_493
.LBB0_386:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1280
	.loc	1 725 7                         # parallel-rne.mlir:725:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_388
.LBB0_387:                              # %middle.block432
                                        #   in Loop: Header=BB0_388 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1408
	.loc	1 733 9 is_stmt 1               # parallel-rne.mlir:733:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_411
.LBB0_388:                              # %vector.memcheck423
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_395 Depth 3
                                        #       Child Loop BB0_391 Depth 3
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	bneq r19, r10, .LBB0_393
# %bb.389:                              # %scalar.ph425.preheader
                                        #   in Loop: Header=BB0_388 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_391
.LBB0_390:                              # %scalar.ph425
                                        #   in Loop: Header=BB0_391 Depth=3
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 742 13 is_stmt 1              # parallel-rne.mlir:742:13
	add.s r2, r19, r2
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 742 13                        # parallel-rne.mlir:742:13
	stores.w r9, 0(r2)
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	beq r3, zero, .LBB0_387
.LBB0_391:                              # %scalar.ph425
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_388 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	and r3, r9, r27
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_390
# %bb.392:                              #   in Loop: Header=BB0_391 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_390
.LBB0_393:                              # %vector.body427.preheader
                                        #   in Loop: Header=BB0_388 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_395
.LBB0_394:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	addli r4, zero, 128
	.loc	1 734 11 is_stmt 1              # parallel-rne.mlir:734:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 742 13                        # parallel-rne.mlir:742:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_387
.LBB0_395:                              # %vector.body427
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_388 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	and r3, r2, r27
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_397
# %bb.396:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_397:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_399:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_401:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_403:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_405:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_407:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_409:                              # %vector.body427
                                        #   in Loop: Header=BB0_395 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	beq r3, zero, .LBB0_394
# %bb.410:                              #   in Loop: Header=BB0_395 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_394
.LBB0_411:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 725 7 is_stmt 1               # parallel-rne.mlir:725:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 747 7                         # parallel-rne.mlir:747:7
	addli r2, zero, 6
	beq r4, r2, .LBB0_494
.LBB0_412:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 769 7                         # parallel-rne.mlir:769:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_520
	j .LBB0_546
.LBB0_413:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	xfence
	addli r6, zero, 1
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_415
.LBB0_414:                              # %middle.block482
                                        #   in Loop: Header=BB0_415 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 128
	.loc	1 623 9 is_stmt 1               # parallel-rne.mlir:623:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_438
.LBB0_415:                              # %vector.memcheck473
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_422 Depth 3
                                        #       Child Loop BB0_418 Depth 3
	.loc	1 624 11                        # parallel-rne.mlir:624:11
	bneq r19, r10, .LBB0_420
# %bb.416:                              # %scalar.ph475.preheader
                                        #   in Loop: Header=BB0_415 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_418
.LBB0_417:                              # %scalar.ph475
                                        #   in Loop: Header=BB0_418 Depth=3
	.loc	1 624 11                        # parallel-rne.mlir:624:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 632 13 is_stmt 1              # parallel-rne.mlir:632:13
	add.s r2, r19, r2
	.loc	1 624 11                        # parallel-rne.mlir:624:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 632 13                        # parallel-rne.mlir:632:13
	stores.w r9, 0(r2)
	.loc	1 624 11                        # parallel-rne.mlir:624:11
	beq r3, zero, .LBB0_414
.LBB0_418:                              # %scalar.ph475
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_415 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	and r3, r9, r27
	.loc	1 629 19                        # parallel-rne.mlir:629:19
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_417
# %bb.419:                              #   in Loop: Header=BB0_418 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_417
.LBB0_420:                              # %vector.body477.preheader
                                        #   in Loop: Header=BB0_415 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_422
.LBB0_421:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	addli r4, zero, 128
	.loc	1 624 11 is_stmt 1              # parallel-rne.mlir:624:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 632 13                        # parallel-rne.mlir:632:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 624 11                        # parallel-rne.mlir:624:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_414
.LBB0_422:                              # %vector.body477
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_415 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 628 19                        # parallel-rne.mlir:628:19
	and r3, r2, r27
	.loc	1 629 19                        # parallel-rne.mlir:629:19
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_424:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_426:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_428
# %bb.427:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_428:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_430:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_432:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_434:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_436
# %bb.435:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_436:                              # %vector.body477
                                        #   in Loop: Header=BB0_422 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	beq r3, zero, .LBB0_421
# %bb.437:                              #   in Loop: Header=BB0_422 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_421
.LBB0_438:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 615 7 is_stmt 1               # parallel-rne.mlir:615:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	addli r2, zero, 1
	beq r4, r2, .LBB0_332
.LBB0_439:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 659 7                         # parallel-rne.mlir:659:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_358
.LBB0_440:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 512
	.loc	1 659 7                         # parallel-rne.mlir:659:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_442
.LBB0_441:                              # %middle.block462
                                        #   in Loop: Header=BB0_442 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 640
	.loc	1 667 9 is_stmt 1               # parallel-rne.mlir:667:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_465
.LBB0_442:                              # %vector.memcheck453
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_449 Depth 3
                                        #       Child Loop BB0_445 Depth 3
	.loc	1 668 11                        # parallel-rne.mlir:668:11
	bneq r19, r10, .LBB0_447
# %bb.443:                              # %scalar.ph455.preheader
                                        #   in Loop: Header=BB0_442 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_445
.LBB0_444:                              # %scalar.ph455
                                        #   in Loop: Header=BB0_445 Depth=3
	.loc	1 668 11                        # parallel-rne.mlir:668:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 676 13 is_stmt 1              # parallel-rne.mlir:676:13
	add.s r2, r19, r2
	.loc	1 668 11                        # parallel-rne.mlir:668:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 676 13                        # parallel-rne.mlir:676:13
	stores.w r9, 0(r2)
	.loc	1 668 11                        # parallel-rne.mlir:668:11
	beq r3, zero, .LBB0_441
.LBB0_445:                              # %scalar.ph455
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_442 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 672 19                        # parallel-rne.mlir:672:19
	and r3, r9, r27
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_444
# %bb.446:                              #   in Loop: Header=BB0_445 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_444
.LBB0_447:                              # %vector.body457.preheader
                                        #   in Loop: Header=BB0_442 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_449
.LBB0_448:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	addli r4, zero, 128
	.loc	1 668 11 is_stmt 1              # parallel-rne.mlir:668:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 676 13                        # parallel-rne.mlir:676:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 668 11                        # parallel-rne.mlir:668:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_441
.LBB0_449:                              # %vector.body457
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_442 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 672 19                        # parallel-rne.mlir:672:19
	and r3, r2, r27
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_451:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_453:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_455:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_457:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_459:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_461:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_463:                              # %vector.body457
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	beq r3, zero, .LBB0_448
# %bb.464:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_448
.LBB0_465:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 659 7 is_stmt 1               # parallel-rne.mlir:659:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 681 7                         # parallel-rne.mlir:681:7
	addli r2, zero, 3
	beq r4, r2, .LBB0_359
.LBB0_466:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 703 7                         # parallel-rne.mlir:703:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_385
.LBB0_467:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1024
	.loc	1 703 7                         # parallel-rne.mlir:703:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_469
.LBB0_468:                              # %middle.block442
                                        #   in Loop: Header=BB0_469 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1152
	.loc	1 711 9 is_stmt 1               # parallel-rne.mlir:711:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_492
.LBB0_469:                              # %vector.memcheck433
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_476 Depth 3
                                        #       Child Loop BB0_472 Depth 3
	.loc	1 712 11                        # parallel-rne.mlir:712:11
	bneq r19, r10, .LBB0_474
# %bb.470:                              # %scalar.ph435.preheader
                                        #   in Loop: Header=BB0_469 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_472
.LBB0_471:                              # %scalar.ph435
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 712 11                        # parallel-rne.mlir:712:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 720 13 is_stmt 1              # parallel-rne.mlir:720:13
	add.s r2, r19, r2
	.loc	1 712 11                        # parallel-rne.mlir:712:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 720 13                        # parallel-rne.mlir:720:13
	stores.w r9, 0(r2)
	.loc	1 712 11                        # parallel-rne.mlir:712:11
	beq r3, zero, .LBB0_468
.LBB0_472:                              # %scalar.ph435
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_469 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	and r3, r9, r27
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_471
# %bb.473:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_471
.LBB0_474:                              # %vector.body437.preheader
                                        #   in Loop: Header=BB0_469 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_476
.LBB0_475:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	addli r4, zero, 128
	.loc	1 712 11 is_stmt 1              # parallel-rne.mlir:712:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 720 13                        # parallel-rne.mlir:720:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 712 11                        # parallel-rne.mlir:712:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_468
.LBB0_476:                              # %vector.body437
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_469 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	and r3, r2, r27
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_478
# %bb.477:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_478:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_480
# %bb.479:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_480:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_482
# %bb.481:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_482:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_484
# %bb.483:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_484:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_486:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_488:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_490:                              # %vector.body437
                                        #   in Loop: Header=BB0_476 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	beq r3, zero, .LBB0_475
# %bb.491:                              #   in Loop: Header=BB0_476 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_475
.LBB0_492:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 703 7 is_stmt 1               # parallel-rne.mlir:703:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 725 7                         # parallel-rne.mlir:725:7
	addli r2, zero, 5
	beq r4, r2, .LBB0_386
.LBB0_493:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 747 7                         # parallel-rne.mlir:747:7
	addli r2, zero, 6
	bneq r4, r2, .LBB0_412
.LBB0_494:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1536
	.loc	1 747 7                         # parallel-rne.mlir:747:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_496
.LBB0_495:                              # %middle.block422
                                        #   in Loop: Header=BB0_496 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1664
	.loc	1 755 9 is_stmt 1               # parallel-rne.mlir:755:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_519
.LBB0_496:                              # %vector.memcheck413
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_503 Depth 3
                                        #       Child Loop BB0_499 Depth 3
	.loc	1 756 11                        # parallel-rne.mlir:756:11
	bneq r19, r10, .LBB0_501
# %bb.497:                              # %scalar.ph415.preheader
                                        #   in Loop: Header=BB0_496 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_499
.LBB0_498:                              # %scalar.ph415
                                        #   in Loop: Header=BB0_499 Depth=3
	.loc	1 756 11                        # parallel-rne.mlir:756:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 764 13 is_stmt 1              # parallel-rne.mlir:764:13
	add.s r2, r19, r2
	.loc	1 756 11                        # parallel-rne.mlir:756:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 764 13                        # parallel-rne.mlir:764:13
	stores.w r9, 0(r2)
	.loc	1 756 11                        # parallel-rne.mlir:756:11
	beq r3, zero, .LBB0_495
.LBB0_499:                              # %scalar.ph415
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_496 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	and r3, r9, r27
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_498
# %bb.500:                              #   in Loop: Header=BB0_499 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_498
.LBB0_501:                              # %vector.body417.preheader
                                        #   in Loop: Header=BB0_496 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_503
.LBB0_502:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	addli r4, zero, 128
	.loc	1 756 11 is_stmt 1              # parallel-rne.mlir:756:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 764 13                        # parallel-rne.mlir:764:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 756 11                        # parallel-rne.mlir:756:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_495
.LBB0_503:                              # %vector.body417
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_496 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	and r3, r2, r27
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_505
# %bb.504:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_505:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_507
# %bb.506:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_507:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_509
# %bb.508:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_509:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_511
# %bb.510:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_511:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_513
# %bb.512:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_513:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_515
# %bb.514:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_515:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_517
# %bb.516:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_517:                              # %vector.body417
                                        #   in Loop: Header=BB0_503 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	beq r3, zero, .LBB0_502
# %bb.518:                              #   in Loop: Header=BB0_503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_502
.LBB0_519:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 747 7 is_stmt 1               # parallel-rne.mlir:747:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 769 7                         # parallel-rne.mlir:769:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_546
.LBB0_520:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 1792
	.loc	1 769 7                         # parallel-rne.mlir:769:7
	xfence
	addli r6, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_522
.LBB0_521:                              # %middle.block412
                                        #   in Loop: Header=BB0_522 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 1920
	.loc	1 777 9 is_stmt 1               # parallel-rne.mlir:777:9
	andi r2, r6, 1
	addli r6, zero, 0
	zext_int2long r[7:8], r3
	beq r2, zero, .LBB0_545
.LBB0_522:                              # %vector.memcheck403
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_529 Depth 3
                                        #       Child Loop BB0_525 Depth 3
	.loc	1 778 11                        # parallel-rne.mlir:778:11
	bneq r19, r10, .LBB0_527
# %bb.523:                              # %scalar.ph405.preheader
                                        #   in Loop: Header=BB0_522 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_525
.LBB0_524:                              # %scalar.ph405
                                        #   in Loop: Header=BB0_525 Depth=3
	.loc	1 778 11                        # parallel-rne.mlir:778:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 786 13 is_stmt 1              # parallel-rne.mlir:786:13
	add.s r2, r19, r2
	.loc	1 778 11                        # parallel-rne.mlir:778:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 786 13                        # parallel-rne.mlir:786:13
	stores.w r9, 0(r2)
	.loc	1 778 11                        # parallel-rne.mlir:778:11
	beq r3, zero, .LBB0_521
.LBB0_525:                              # %scalar.ph405
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	add.ul r[2:3], r[11:12], r[7:8]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r9, 0(r3)
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	and r3, r9, r27
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_524
# %bb.526:                              #   in Loop: Header=BB0_525 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r3, 524288
	and r3, r9, r3
	or r9, r3, r23
	j .LBB0_524
.LBB0_527:                              # %vector.body407.preheader
                                        #   in Loop: Header=BB0_522 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_529
.LBB0_528:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	addli r4, zero, 128
	.loc	1 778 11 is_stmt 1              # parallel-rne.mlir:778:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 786 13                        # parallel-rne.mlir:786:13
	add.s r3, r19, r9
	zext_int2long r[4:5], r4
	stores.w r11, 12(r3)
	stores.w r22, 8(r3)
	stores.w r13, 4(r3)
	stores.w r2, 0(r3)
	stores.w r21, 28(r3)
	stores.w r25, 24(r3)
	stores.w r24, 20(r3)
	stores.w r12, 16(r3)
	.loc	1 778 11                        # parallel-rne.mlir:778:11
	seteq.d r4, r[17:18], r[4:5]
	bneq r4, zero, .LBB0_521
.LBB0_529:                              # %vector.body407
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_522 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	add.ul r[2:3], r[17:18], r[7:8]
	lui r4, 524288
	slli r9, r2, 2
	add.s r21, r10, r9
	loads.w r2, 0(r21)
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	and r3, r2, r27
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_531
# %bb.530:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r4
	or r2, r2, r23
.LBB0_531:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	loads.w r13, 4(r21)
	and r3, r13, r27
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_533
# %bb.532:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r13, r4
	or r13, r3, r23
.LBB0_533:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	loads.w r22, 8(r21)
	and r3, r22, r27
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_535
# %bb.534:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r22, r4
	or r22, r3, r23
.LBB0_535:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	loads.w r11, 12(r21)
	and r3, r11, r27
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_537
# %bb.536:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r11, r4
	or r11, r3, r23
.LBB0_537:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	loads.w r12, 16(r21)
	and r3, r12, r27
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_539
# %bb.538:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r12, r4
	or r12, r3, r23
.LBB0_539:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	loads.w r24, 20(r21)
	and r3, r24, r27
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_541
# %bb.540:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r24, r4
	or r24, r3, r23
.LBB0_541:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	loads.w r25, 24(r21)
	and r3, r25, r27
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_543
# %bb.542:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r25, r4
	or r25, r3, r23
.LBB0_543:                              # %vector.body407
                                        #   in Loop: Header=BB0_529 Depth=3
	loads.w r21, 28(r21)
	and r3, r21, r27
	setlt.u r3, r23, r3
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	beq r3, zero, .LBB0_528
# %bb.544:                              #   in Loop: Header=BB0_529 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r21, r4
	or r21, r3, r23
	j .LBB0_528
.LBB0_545:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 769 7 is_stmt 1               # parallel-rne.mlir:769:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
.LBB0_546:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 791 7                         # parallel-rne.mlir:791:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 792 7                         # parallel-rne.mlir:792:7
	addli r2, zero, 3
	.loc	1 791 7                         # parallel-rne.mlir:791:7
	sync_core
	.loc	1 792 7                         # parallel-rne.mlir:792:7
	bneq r4, r2, .LBB0_548
# %bb.547:                              # %.critedge20
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 29
	addli r5, zero, 37
	xsignal r2, 0
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	xsignal r5, 0
	.loc	1 796 13                        # parallel-rne.mlir:796:13
	loadli.w r2,  -48(r30)
	addli r3, r2, 1
	storeli.w r3, -48(r30)
	.loc	1 798 7                         # parallel-rne.mlir:798:7
	addli r3, zero, 30
	xwait r3, 0
	.loc	1 800 7                         # parallel-rne.mlir:800:7
	addli r3, zero, 41
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	xwait r5, 0
	.loc	1 800 7                         # parallel-rne.mlir:800:7
	xwait r3, 0
	j .LBB0_551
.LBB0_548:                              # %.critedge18
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	addli r2, zero, 5
	bneq r4, r2, .LBB0_550
# %bb.549:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 29
	addli r5, zero, 2
	addli r3, zero, 4
	xwait r2, 0
	lock zero, r5
	addli r2, zero, 511
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 3
	ew_cfg r3, zero, zero, 3
	ew_cfg r3, r3, zero, 19
	ew_cfg r2, zero, zero, 10
	addli r2, zero, 1
	loadli.w r6,  -512(r30)                 # 4-byte Folded Reload
	ew_cfg r5, r2, r6, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r3, r2, 14
	addli r2, zero, 30
	ew_cfg zero, zero, zero, 15
	sslut r19, r19, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
.LBB0_550:                              # %.thread83
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 796 13                        # parallel-rne.mlir:796:13
	loadli.w r2,  -48(r30)
	addli r3, r2, 1
	storeli.w r3, -48(r30)
.LBB0_551:                              # %.critedge21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	lui r5, 1024
	mod.s r2, r2, r3
	loadli.w r3,  -504(r30)                 # 4-byte Folded Reload
	slli r2, r2, 13
	add.s r17, r2, r3
	seteq r2, r17, r19
	seteq r28, r17, r10
	.loc	1 802 7                         # parallel-rne.mlir:802:7
	storeli.w r2, -416(r30)                 # 4-byte Folded Spill
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	addli r2, zero, 255
	.loc	1 802 7                         # parallel-rne.mlir:802:7
	xfence
	.loc	1 803 7                         # parallel-rne.mlir:803:7
	mfence { lm, sm, gm }
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	csr_set csr5, r2
	sync_core
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	beq r4, zero, .LBB0_664
# %bb.552:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 831 7                         # parallel-rne.mlir:831:7
	addli r2, zero, 1
	bneq r4, r2, .LBB0_700
.LBB0_553:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r3, r28, 0
	addli r16, zero, 1
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r2, r3, r2
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 256
	zext_int2long r[21:22], r2
	j .LBB0_555
.LBB0_554:                              # %middle.block388
                                        #   in Loop: Header=BB0_555 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 384
	.loc	1 839 9 is_stmt 1               # parallel-rne.mlir:839:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_588
.LBB0_555:                              # %vector.memcheck375
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_565 Depth 3
                                        #       Child Loop BB0_559 Depth 3
	.loc	1 840 11                        # parallel-rne.mlir:840:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_562
# %bb.556:                              # %scalar.ph379.preheader
                                        #   in Loop: Header=BB0_555 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_559
.LBB0_557:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_559 Depth=3
	addli r8, r9, 0
.LBB0_558:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 840 11                        # parallel-rne.mlir:840:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 852 13 is_stmt 1              # parallel-rne.mlir:852:13
	add.s r2, r17, r2
	.loc	1 840 11                        # parallel-rne.mlir:840:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 852 13                        # parallel-rne.mlir:852:13
	stores.w r8, 0(r2)
	.loc	1 840 11                        # parallel-rne.mlir:840:11
	beq r3, zero, .LBB0_554
.LBB0_559:                              # %scalar.ph379
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_555 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	and r3, r11, r1
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_561
# %bb.560:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	beq r3, r20, .LBB0_558
	j .LBB0_557
.LBB0_561:                              #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	beq r3, r20, .LBB0_558
	j .LBB0_557
.LBB0_562:                              # %vector.body381.preheader
                                        #   in Loop: Header=BB0_555 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_565
.LBB0_563:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r2, 28(r2)
.LBB0_564:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	addli r4, zero, 128
	.loc	1 840 11 is_stmt 1              # parallel-rne.mlir:840:11
	addli.d r[24:25], r[24:25], 8
	.loc	1 852 13                        # parallel-rne.mlir:852:13
	add.s r3, r17, r9
	zext_int2long r[4:5], r4
	stores.w r7, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r18, 0(r3)
	stores.w r2, 28(r3)
	stores.w r8, 24(r3)
	stores.w r12, 20(r3)
	stores.w r11, 16(r3)
	.loc	1 840 11                        # parallel-rne.mlir:840:11
	seteq.d r4, r[24:25], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_554
.LBB0_565:                              # %vector.body381
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_555 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r9, r2, 2
	add.s r6, r10, r9
	loads.w r7, 0(r6)
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	and r2, r7, r20
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	and r3, r7, r1
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	seteq r2, r2, r20
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	setneq r3, r3, zero
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	and r3, r2, r3
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.s r2, r19, r9
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_567
# %bb.566:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r2)
	j .LBB0_568
.LBB0_567:                              #   in Loop: Header=BB0_565 Depth=3
	or r18, r7, r5
.LBB0_568:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r7, 4(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_570
# %bb.569:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_571
.LBB0_570:                              #   in Loop: Header=BB0_565 Depth=3
	or r13, r7, r5
.LBB0_571:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r7, 8(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_573
# %bb.572:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_574
.LBB0_573:                              #   in Loop: Header=BB0_565 Depth=3
	or r26, r7, r5
.LBB0_574:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r7, 12(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_576
# %bb.575:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r2)
	j .LBB0_577
.LBB0_576:                              #   in Loop: Header=BB0_565 Depth=3
	or r7, r7, r5
.LBB0_577:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r8, 16(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_579
# %bb.578:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 16(r2)
	j .LBB0_580
.LBB0_579:                              #   in Loop: Header=BB0_565 Depth=3
	or r11, r8, r5
.LBB0_580:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r8, 20(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_582
# %bb.581:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 20(r2)
	j .LBB0_583
.LBB0_582:                              #   in Loop: Header=BB0_565 Depth=3
	or r12, r8, r5
.LBB0_583:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r8, 24(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	bneq r3, zero, .LBB0_585
# %bb.584:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 24(r2)
	j .LBB0_586
.LBB0_585:                              #   in Loop: Header=BB0_565 Depth=3
	or r8, r8, r5
.LBB0_586:                              # %vector.body381
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r6, 28(r6)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	beq r3, zero, .LBB0_563
# %bb.587:                              #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r6, r5
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	j .LBB0_564
.LBB0_588:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 831 7 is_stmt 1               # parallel-rne.mlir:831:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 857 7                         # parallel-rne.mlir:857:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_701
.LBB0_589:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 883 7                         # parallel-rne.mlir:883:7
	addli r2, zero, 3
	bneq r4, r2, .LBB0_737
.LBB0_590:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r16, zero, 1
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r2, r28, r2
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 768
	zext_int2long r[21:22], r2
	j .LBB0_592
.LBB0_591:                              # %middle.block360
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 896
	.loc	1 891 9 is_stmt 1               # parallel-rne.mlir:891:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_625
.LBB0_592:                              # %vector.memcheck347
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_602 Depth 3
                                        #       Child Loop BB0_596 Depth 3
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_599
# %bb.593:                              # %scalar.ph351.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_596
.LBB0_594:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_596 Depth=3
	addli r8, r9, 0
.LBB0_595:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 904 13 is_stmt 1              # parallel-rne.mlir:904:13
	add.s r2, r17, r2
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 904 13                        # parallel-rne.mlir:904:13
	stores.w r8, 0(r2)
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	beq r3, zero, .LBB0_591
.LBB0_596:                              # %scalar.ph351
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	and r3, r11, r1
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_598
# %bb.597:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	beq r3, r20, .LBB0_595
	j .LBB0_594
.LBB0_598:                              #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	beq r3, r20, .LBB0_595
	j .LBB0_594
.LBB0_599:                              # %vector.body353.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_602
.LBB0_600:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r2, 28(r2)
.LBB0_601:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	addli r4, zero, 128
	.loc	1 892 11 is_stmt 1              # parallel-rne.mlir:892:11
	addli.d r[24:25], r[24:25], 8
	.loc	1 904 13                        # parallel-rne.mlir:904:13
	add.s r3, r17, r9
	zext_int2long r[4:5], r4
	stores.w r7, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r18, 0(r3)
	stores.w r2, 28(r3)
	stores.w r8, 24(r3)
	stores.w r12, 20(r3)
	stores.w r11, 16(r3)
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	seteq.d r4, r[24:25], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_591
.LBB0_602:                              # %vector.body353
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r9, r2, 2
	add.s r6, r10, r9
	loads.w r7, 0(r6)
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	and r2, r7, r20
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	and r3, r7, r1
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	seteq r2, r2, r20
	.loc	1 900 19                        # parallel-rne.mlir:900:19
	setneq r3, r3, zero
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	and r3, r2, r3
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	add.s r2, r19, r9
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_604
# %bb.603:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r2)
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_602 Depth=3
	or r18, r7, r5
.LBB0_605:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r7, 4(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_607
# %bb.606:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_602 Depth=3
	or r13, r7, r5
.LBB0_608:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r7, 8(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_610
# %bb.609:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_602 Depth=3
	or r26, r7, r5
.LBB0_611:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r7, 12(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_613
# %bb.612:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r2)
	j .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_602 Depth=3
	or r7, r7, r5
.LBB0_614:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r8, 16(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_616
# %bb.615:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 16(r2)
	j .LBB0_617
.LBB0_616:                              #   in Loop: Header=BB0_602 Depth=3
	or r11, r8, r5
.LBB0_617:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r8, 20(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_619
# %bb.618:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 20(r2)
	j .LBB0_620
.LBB0_619:                              #   in Loop: Header=BB0_602 Depth=3
	or r12, r8, r5
.LBB0_620:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r8, 24(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	bneq r3, zero, .LBB0_622
# %bb.621:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 24(r2)
	j .LBB0_623
.LBB0_622:                              #   in Loop: Header=BB0_602 Depth=3
	or r8, r8, r5
.LBB0_623:                              # %vector.body353
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r6, 28(r6)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	beq r3, zero, .LBB0_600
# %bb.624:                              #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r6, r5
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	j .LBB0_601
.LBB0_625:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 883 7 is_stmt 1               # parallel-rne.mlir:883:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 909 7                         # parallel-rne.mlir:909:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_738
.LBB0_626:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 935 7                         # parallel-rne.mlir:935:7
	addli r2, zero, 5
	bneq r4, r2, .LBB0_774
.LBB0_627:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r16, zero, 1
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r2, r28, r2
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 1280
	zext_int2long r[21:22], r2
	j .LBB0_629
.LBB0_628:                              # %middle.block332
                                        #   in Loop: Header=BB0_629 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 1408
	.loc	1 943 9 is_stmt 1               # parallel-rne.mlir:943:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_662
.LBB0_629:                              # %vector.memcheck319
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_639 Depth 3
                                        #       Child Loop BB0_633 Depth 3
	.loc	1 944 11                        # parallel-rne.mlir:944:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_636
# %bb.630:                              # %scalar.ph323.preheader
                                        #   in Loop: Header=BB0_629 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_633
.LBB0_631:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_633 Depth=3
	addli r8, r9, 0
.LBB0_632:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 944 11                        # parallel-rne.mlir:944:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 956 13 is_stmt 1              # parallel-rne.mlir:956:13
	add.s r2, r17, r2
	.loc	1 944 11                        # parallel-rne.mlir:944:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 956 13                        # parallel-rne.mlir:956:13
	stores.w r8, 0(r2)
	.loc	1 944 11                        # parallel-rne.mlir:944:11
	beq r3, zero, .LBB0_628
.LBB0_633:                              # %scalar.ph323
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_629 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	and r3, r11, r1
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_635
# %bb.634:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	beq r3, r20, .LBB0_632
	j .LBB0_631
.LBB0_635:                              #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	beq r3, r20, .LBB0_632
	j .LBB0_631
.LBB0_636:                              # %vector.body325.preheader
                                        #   in Loop: Header=BB0_629 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_639
.LBB0_637:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r2, 28(r2)
.LBB0_638:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	addli r4, zero, 128
	.loc	1 944 11 is_stmt 1              # parallel-rne.mlir:944:11
	addli.d r[24:25], r[24:25], 8
	.loc	1 956 13                        # parallel-rne.mlir:956:13
	add.s r3, r17, r9
	zext_int2long r[4:5], r4
	stores.w r7, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r18, 0(r3)
	stores.w r2, 28(r3)
	stores.w r8, 24(r3)
	stores.w r12, 20(r3)
	stores.w r11, 16(r3)
	.loc	1 944 11                        # parallel-rne.mlir:944:11
	seteq.d r4, r[24:25], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_628
.LBB0_639:                              # %vector.body325
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_629 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 945 19                        # parallel-rne.mlir:945:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r9, r2, 2
	add.s r6, r10, r9
	loads.w r7, 0(r6)
	.loc	1 949 19                        # parallel-rne.mlir:949:19
	and r2, r7, r20
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	and r3, r7, r1
	.loc	1 950 19                        # parallel-rne.mlir:950:19
	seteq r2, r2, r20
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	setneq r3, r3, zero
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	and r3, r2, r3
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	add.s r2, r19, r9
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_641
# %bb.640:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r2)
	j .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_639 Depth=3
	or r18, r7, r5
.LBB0_642:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r7, 4(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_644
# %bb.643:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_639 Depth=3
	or r13, r7, r5
.LBB0_645:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r7, 8(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_647
# %bb.646:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_639 Depth=3
	or r26, r7, r5
.LBB0_648:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r7, 12(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_650
# %bb.649:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r2)
	j .LBB0_651
.LBB0_650:                              #   in Loop: Header=BB0_639 Depth=3
	or r7, r7, r5
.LBB0_651:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r8, 16(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_653
# %bb.652:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 16(r2)
	j .LBB0_654
.LBB0_653:                              #   in Loop: Header=BB0_639 Depth=3
	or r11, r8, r5
.LBB0_654:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r8, 20(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_656
# %bb.655:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 20(r2)
	j .LBB0_657
.LBB0_656:                              #   in Loop: Header=BB0_639 Depth=3
	or r12, r8, r5
.LBB0_657:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r8, 24(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	bneq r3, zero, .LBB0_659
# %bb.658:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 24(r2)
	j .LBB0_660
.LBB0_659:                              #   in Loop: Header=BB0_639 Depth=3
	or r8, r8, r5
.LBB0_660:                              # %vector.body325
                                        #   in Loop: Header=BB0_639 Depth=3
	loads.w r6, 28(r6)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	beq r3, zero, .LBB0_637
# %bb.661:                              #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r6, r5
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	j .LBB0_638
.LBB0_662:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 935 7 is_stmt 1               # parallel-rne.mlir:935:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 961 7                         # parallel-rne.mlir:961:7
	addli r2, zero, 6
	beq r4, r2, .LBB0_775
.LBB0_663:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 987 7                         # parallel-rne.mlir:987:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_811
	j .LBB0_847
.LBB0_664:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	xfence
	addli r3, r28, 0
	addli r16, zero, 1
	zext_int2long r[21:22], zero
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r2, r3, r2
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	j .LBB0_666
.LBB0_665:                              # %middle.block402
                                        #   in Loop: Header=BB0_666 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 128
	.loc	1 813 9 is_stmt 1               # parallel-rne.mlir:813:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_699
.LBB0_666:                              # %vector.memcheck389
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_676 Depth 3
                                        #       Child Loop BB0_670 Depth 3
	.loc	1 814 11                        # parallel-rne.mlir:814:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_673
# %bb.667:                              # %scalar.ph393.preheader
                                        #   in Loop: Header=BB0_666 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_670
.LBB0_668:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_670 Depth=3
	addli r8, r9, 0
.LBB0_669:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 814 11                        # parallel-rne.mlir:814:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 826 13 is_stmt 1              # parallel-rne.mlir:826:13
	add.s r2, r17, r2
	.loc	1 814 11                        # parallel-rne.mlir:814:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 826 13                        # parallel-rne.mlir:826:13
	stores.w r8, 0(r2)
	.loc	1 814 11                        # parallel-rne.mlir:814:11
	beq r3, zero, .LBB0_665
.LBB0_670:                              # %scalar.ph393
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_666 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	and r3, r11, r1
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_672
# %bb.671:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	beq r3, r20, .LBB0_669
	j .LBB0_668
.LBB0_672:                              #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	beq r3, r20, .LBB0_669
	j .LBB0_668
.LBB0_673:                              # %vector.body395.preheader
                                        #   in Loop: Header=BB0_666 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_676
.LBB0_674:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r2, 28(r2)
.LBB0_675:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	addli r4, zero, 128
	.loc	1 814 11 is_stmt 1              # parallel-rne.mlir:814:11
	addli.d r[24:25], r[24:25], 8
	.loc	1 826 13                        # parallel-rne.mlir:826:13
	add.s r3, r17, r9
	zext_int2long r[4:5], r4
	stores.w r7, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r18, 0(r3)
	stores.w r2, 28(r3)
	stores.w r12, 24(r3)
	stores.w r11, 20(r3)
	stores.w r8, 16(r3)
	.loc	1 814 11                        # parallel-rne.mlir:814:11
	seteq.d r4, r[24:25], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_665
.LBB0_676:                              # %vector.body395
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_666 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r9, r2, 2
	add.s r6, r10, r9
	loads.w r7, 0(r6)
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	and r2, r7, r20
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	and r3, r7, r1
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	seteq r2, r2, r20
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	setneq r3, r3, zero
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	and r3, r2, r3
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.s r2, r19, r9
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_678
# %bb.677:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r2)
	j .LBB0_679
.LBB0_678:                              #   in Loop: Header=BB0_676 Depth=3
	or r18, r7, r5
.LBB0_679:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r7, 4(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_681
# %bb.680:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_682
.LBB0_681:                              #   in Loop: Header=BB0_676 Depth=3
	or r13, r7, r5
.LBB0_682:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r7, 8(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_684
# %bb.683:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_685
.LBB0_684:                              #   in Loop: Header=BB0_676 Depth=3
	or r26, r7, r5
.LBB0_685:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r7, 12(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_687
# %bb.686:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r2)
	j .LBB0_688
.LBB0_687:                              #   in Loop: Header=BB0_676 Depth=3
	or r7, r7, r5
.LBB0_688:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r8, 16(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_690
# %bb.689:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 16(r2)
	j .LBB0_691
.LBB0_690:                              #   in Loop: Header=BB0_676 Depth=3
	or r8, r8, r5
.LBB0_691:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r11, 20(r6)
	and r3, r11, r20
	and r4, r11, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_693
# %bb.692:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 20(r2)
	j .LBB0_694
.LBB0_693:                              #   in Loop: Header=BB0_676 Depth=3
	or r11, r11, r5
.LBB0_694:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r12, 24(r6)
	and r3, r12, r20
	and r4, r12, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r3, zero, .LBB0_696
# %bb.695:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 24(r2)
	j .LBB0_697
.LBB0_696:                              #   in Loop: Header=BB0_676 Depth=3
	or r12, r12, r5
.LBB0_697:                              # %vector.body395
                                        #   in Loop: Header=BB0_676 Depth=3
	loads.w r6, 28(r6)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	beq r3, zero, .LBB0_674
# %bb.698:                              #   in Loop: Header=BB0_676 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r6, r5
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	j .LBB0_675
.LBB0_699:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 805 7 is_stmt 1               # parallel-rne.mlir:805:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 831 7                         # parallel-rne.mlir:831:7
	addli r2, zero, 1
	beq r4, r2, .LBB0_553
.LBB0_700:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 857 7                         # parallel-rne.mlir:857:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_589
.LBB0_701:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r16, zero, 1
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r2, r28, r2
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 512
	zext_int2long r[21:22], r2
	j .LBB0_703
.LBB0_702:                              # %middle.block374
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 640
	.loc	1 865 9 is_stmt 1               # parallel-rne.mlir:865:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_736
.LBB0_703:                              # %vector.memcheck361
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_713 Depth 3
                                        #       Child Loop BB0_707 Depth 3
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_710
# %bb.704:                              # %scalar.ph365.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_707
.LBB0_705:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_707 Depth=3
	addli r8, r9, 0
.LBB0_706:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 878 13 is_stmt 1              # parallel-rne.mlir:878:13
	add.s r2, r17, r2
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 878 13                        # parallel-rne.mlir:878:13
	stores.w r8, 0(r2)
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	beq r3, zero, .LBB0_702
.LBB0_707:                              # %scalar.ph365
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	and r3, r11, r1
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_709
# %bb.708:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	beq r3, r20, .LBB0_706
	j .LBB0_705
.LBB0_709:                              #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	beq r3, r20, .LBB0_706
	j .LBB0_705
.LBB0_710:                              # %vector.body367.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_713
.LBB0_711:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r2, 28(r2)
.LBB0_712:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	addli r4, zero, 128
	.loc	1 866 11 is_stmt 1              # parallel-rne.mlir:866:11
	addli.d r[24:25], r[24:25], 8
	.loc	1 878 13                        # parallel-rne.mlir:878:13
	add.s r3, r17, r9
	zext_int2long r[4:5], r4
	stores.w r7, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r18, 0(r3)
	stores.w r2, 28(r3)
	stores.w r8, 24(r3)
	stores.w r12, 20(r3)
	stores.w r11, 16(r3)
	.loc	1 866 11                        # parallel-rne.mlir:866:11
	seteq.d r4, r[24:25], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_702
.LBB0_713:                              # %vector.body367
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r9, r2, 2
	add.s r6, r10, r9
	loads.w r7, 0(r6)
	.loc	1 871 19                        # parallel-rne.mlir:871:19
	and r2, r7, r20
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	and r3, r7, r1
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	seteq r2, r2, r20
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	setneq r3, r3, zero
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	and r3, r2, r3
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	add.s r2, r19, r9
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_715
# %bb.714:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r2)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_713 Depth=3
	or r18, r7, r5
.LBB0_716:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r7, 4(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_718
# %bb.717:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_713 Depth=3
	or r13, r7, r5
.LBB0_719:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r7, 8(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_721
# %bb.720:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_713 Depth=3
	or r26, r7, r5
.LBB0_722:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r7, 12(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_724
# %bb.723:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r2)
	j .LBB0_725
.LBB0_724:                              #   in Loop: Header=BB0_713 Depth=3
	or r7, r7, r5
.LBB0_725:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r8, 16(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_727
# %bb.726:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 16(r2)
	j .LBB0_728
.LBB0_727:                              #   in Loop: Header=BB0_713 Depth=3
	or r11, r8, r5
.LBB0_728:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r8, 20(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_730
# %bb.729:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 20(r2)
	j .LBB0_731
.LBB0_730:                              #   in Loop: Header=BB0_713 Depth=3
	or r12, r8, r5
.LBB0_731:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r8, 24(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	bneq r3, zero, .LBB0_733
# %bb.732:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 24(r2)
	j .LBB0_734
.LBB0_733:                              #   in Loop: Header=BB0_713 Depth=3
	or r8, r8, r5
.LBB0_734:                              # %vector.body367
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r6, 28(r6)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	beq r3, zero, .LBB0_711
# %bb.735:                              #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r6, r5
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	j .LBB0_712
.LBB0_736:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 857 7 is_stmt 1               # parallel-rne.mlir:857:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 883 7                         # parallel-rne.mlir:883:7
	addli r2, zero, 3
	beq r4, r2, .LBB0_590
.LBB0_737:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 909 7                         # parallel-rne.mlir:909:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_626
.LBB0_738:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r16, zero, 1
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r2, r28, r2
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 1024
	zext_int2long r[21:22], r2
	j .LBB0_740
.LBB0_739:                              # %middle.block346
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 1152
	.loc	1 917 9 is_stmt 1               # parallel-rne.mlir:917:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_773
.LBB0_740:                              # %vector.memcheck333
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_744 Depth 3
	.loc	1 918 11                        # parallel-rne.mlir:918:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_747
# %bb.741:                              # %scalar.ph337.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_744
.LBB0_742:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_744 Depth=3
	addli r8, r9, 0
.LBB0_743:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 918 11                        # parallel-rne.mlir:918:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 930 13 is_stmt 1              # parallel-rne.mlir:930:13
	add.s r2, r17, r2
	.loc	1 918 11                        # parallel-rne.mlir:918:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 930 13                        # parallel-rne.mlir:930:13
	stores.w r8, 0(r2)
	.loc	1 918 11                        # parallel-rne.mlir:918:11
	beq r3, zero, .LBB0_739
.LBB0_744:                              # %scalar.ph337
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	and r3, r11, r1
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_746
# %bb.745:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	beq r3, r20, .LBB0_743
	j .LBB0_742
.LBB0_746:                              #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	beq r3, r20, .LBB0_743
	j .LBB0_742
.LBB0_747:                              # %vector.body339.preheader
                                        #   in Loop: Header=BB0_740 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_750
.LBB0_748:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r2, 28(r2)
.LBB0_749:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	addli r4, zero, 128
	.loc	1 918 11 is_stmt 1              # parallel-rne.mlir:918:11
	addli.d r[24:25], r[24:25], 8
	.loc	1 930 13                        # parallel-rne.mlir:930:13
	add.s r3, r17, r9
	zext_int2long r[4:5], r4
	stores.w r7, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r18, 0(r3)
	stores.w r2, 28(r3)
	stores.w r8, 24(r3)
	stores.w r12, 20(r3)
	stores.w r11, 16(r3)
	.loc	1 918 11                        # parallel-rne.mlir:918:11
	seteq.d r4, r[24:25], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_739
.LBB0_750:                              # %vector.body339
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_740 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r9, r2, 2
	add.s r6, r10, r9
	loads.w r7, 0(r6)
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	and r2, r7, r20
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	and r3, r7, r1
	.loc	1 924 19                        # parallel-rne.mlir:924:19
	seteq r2, r2, r20
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	setneq r3, r3, zero
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	and r3, r2, r3
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	add.s r2, r19, r9
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_752
# %bb.751:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r2)
	j .LBB0_753
.LBB0_752:                              #   in Loop: Header=BB0_750 Depth=3
	or r18, r7, r5
.LBB0_753:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r7, 4(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_755
# %bb.754:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_756
.LBB0_755:                              #   in Loop: Header=BB0_750 Depth=3
	or r13, r7, r5
.LBB0_756:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r7, 8(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_758
# %bb.757:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_759
.LBB0_758:                              #   in Loop: Header=BB0_750 Depth=3
	or r26, r7, r5
.LBB0_759:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r7, 12(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_761
# %bb.760:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r2)
	j .LBB0_762
.LBB0_761:                              #   in Loop: Header=BB0_750 Depth=3
	or r7, r7, r5
.LBB0_762:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r8, 16(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_764
# %bb.763:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 16(r2)
	j .LBB0_765
.LBB0_764:                              #   in Loop: Header=BB0_750 Depth=3
	or r11, r8, r5
.LBB0_765:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r8, 20(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_767
# %bb.766:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 20(r2)
	j .LBB0_768
.LBB0_767:                              #   in Loop: Header=BB0_750 Depth=3
	or r12, r8, r5
.LBB0_768:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r8, 24(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	bneq r3, zero, .LBB0_770
# %bb.769:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 24(r2)
	j .LBB0_771
.LBB0_770:                              #   in Loop: Header=BB0_750 Depth=3
	or r8, r8, r5
.LBB0_771:                              # %vector.body339
                                        #   in Loop: Header=BB0_750 Depth=3
	loads.w r6, 28(r6)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	beq r3, zero, .LBB0_748
# %bb.772:                              #   in Loop: Header=BB0_750 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r6, r5
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	j .LBB0_749
.LBB0_773:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 909 7 is_stmt 1               # parallel-rne.mlir:909:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 935 7                         # parallel-rne.mlir:935:7
	addli r2, zero, 5
	beq r4, r2, .LBB0_627
.LBB0_774:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 961 7                         # parallel-rne.mlir:961:7
	addli r2, zero, 6
	bneq r4, r2, .LBB0_663
.LBB0_775:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r16, zero, 1
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r2, r28, r2
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	addli r2, zero, 1536
	zext_int2long r[21:22], r2
	j .LBB0_777
.LBB0_776:                              # %middle.block318
                                        #   in Loop: Header=BB0_777 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 1664
	.loc	1 969 9 is_stmt 1               # parallel-rne.mlir:969:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_810
.LBB0_777:                              # %vector.memcheck305
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_787 Depth 3
                                        #       Child Loop BB0_781 Depth 3
	.loc	1 970 11                        # parallel-rne.mlir:970:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_784
# %bb.778:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_777 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_781
.LBB0_779:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_781 Depth=3
	addli r8, r9, 0
.LBB0_780:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 970 11                        # parallel-rne.mlir:970:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 982 13 is_stmt 1              # parallel-rne.mlir:982:13
	add.s r2, r17, r2
	.loc	1 970 11                        # parallel-rne.mlir:970:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 982 13                        # parallel-rne.mlir:982:13
	stores.w r8, 0(r2)
	.loc	1 970 11                        # parallel-rne.mlir:970:11
	beq r3, zero, .LBB0_776
.LBB0_781:                              # %scalar.ph309
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_777 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	and r3, r11, r1
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_783
# %bb.782:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	beq r3, r20, .LBB0_780
	j .LBB0_779
.LBB0_783:                              #   in Loop: Header=BB0_781 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	beq r3, r20, .LBB0_780
	j .LBB0_779
.LBB0_784:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_777 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_787
.LBB0_785:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r2, 28(r2)
.LBB0_786:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	addli r4, zero, 128
	.loc	1 970 11 is_stmt 1              # parallel-rne.mlir:970:11
	addli.d r[24:25], r[24:25], 8
	.loc	1 982 13                        # parallel-rne.mlir:982:13
	add.s r3, r17, r9
	zext_int2long r[4:5], r4
	stores.w r7, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r18, 0(r3)
	stores.w r2, 28(r3)
	stores.w r8, 24(r3)
	stores.w r12, 20(r3)
	stores.w r11, 16(r3)
	.loc	1 970 11                        # parallel-rne.mlir:970:11
	seteq.d r4, r[24:25], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_776
.LBB0_787:                              # %vector.body311
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_777 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 971 19                        # parallel-rne.mlir:971:19
	add.ul r[2:3], r[24:25], r[21:22]
	slli r9, r2, 2
	add.s r6, r10, r9
	loads.w r7, 0(r6)
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	and r2, r7, r20
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	and r3, r7, r1
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	seteq r2, r2, r20
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	setneq r3, r3, zero
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	and r3, r2, r3
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	add.s r2, r19, r9
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_789
# %bb.788:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r2)
	j .LBB0_790
.LBB0_789:                              #   in Loop: Header=BB0_787 Depth=3
	or r18, r7, r5
.LBB0_790:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r7, 4(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_792
# %bb.791:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_793
.LBB0_792:                              #   in Loop: Header=BB0_787 Depth=3
	or r13, r7, r5
.LBB0_793:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r7, 8(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_795
# %bb.794:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_796
.LBB0_795:                              #   in Loop: Header=BB0_787 Depth=3
	or r26, r7, r5
.LBB0_796:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r7, 12(r6)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_798
# %bb.797:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r2)
	j .LBB0_799
.LBB0_798:                              #   in Loop: Header=BB0_787 Depth=3
	or r7, r7, r5
.LBB0_799:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r8, 16(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_801
# %bb.800:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 16(r2)
	j .LBB0_802
.LBB0_801:                              #   in Loop: Header=BB0_787 Depth=3
	or r11, r8, r5
.LBB0_802:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r8, 20(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_804
# %bb.803:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 20(r2)
	j .LBB0_805
.LBB0_804:                              #   in Loop: Header=BB0_787 Depth=3
	or r12, r8, r5
.LBB0_805:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r8, 24(r6)
	and r3, r8, r20
	and r4, r8, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	bneq r3, zero, .LBB0_807
# %bb.806:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 24(r2)
	j .LBB0_808
.LBB0_807:                              #   in Loop: Header=BB0_787 Depth=3
	or r8, r8, r5
.LBB0_808:                              # %vector.body311
                                        #   in Loop: Header=BB0_787 Depth=3
	loads.w r6, 28(r6)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	beq r3, zero, .LBB0_785
# %bb.809:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r6, r5
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	j .LBB0_786
.LBB0_810:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 961 7 is_stmt 1               # parallel-rne.mlir:961:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
	.loc	1 987 7                         # parallel-rne.mlir:987:7
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_847
.LBB0_811:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	addli r16, zero, 1
	mfence { lm, sm, gm }
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	or r28, r28, r2
	addli r2, zero, 1792
	zext_int2long r[21:22], r2
	j .LBB0_813
.LBB0_812:                              # %middle.block304
                                        #   in Loop: Header=BB0_813 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 1920
	.loc	1 995 9 is_stmt 1               # parallel-rne.mlir:995:9
	andi r2, r16, 1
	addli r16, zero, 0
	zext_int2long r[21:22], r3
	beq r2, zero, .LBB0_846
.LBB0_813:                              # %vector.memcheck291
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_823 Depth 3
                                        #       Child Loop BB0_817 Depth 3
	.loc	1 996 11                        # parallel-rne.mlir:996:11
	beq r28, zero, .LBB0_820
# %bb.814:                              # %scalar.ph295.preheader
                                        #   in Loop: Header=BB0_813 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_817
.LBB0_815:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_817 Depth=3
	addli r8, r9, 0
.LBB0_816:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 996 11                        # parallel-rne.mlir:996:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 1008 13 is_stmt 1             # parallel-rne.mlir:1008:13
	add.s r2, r17, r2
	.loc	1 996 11                        # parallel-rne.mlir:996:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1008 13                       # parallel-rne.mlir:1008:13
	stores.w r8, 0(r2)
	.loc	1 996 11                        # parallel-rne.mlir:996:11
	beq r3, zero, .LBB0_812
.LBB0_817:                              # %scalar.ph295
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_813 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	add.ul r[2:3], r[6:7], r[21:22]
	slli r2, r2, 2
	add.s r3, r10, r2
	loads.w r11, 0(r3)
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	add.s r3, r19, r2
	loads.w r9, 0(r3)
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	and r3, r11, r1
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_819
# %bb.818:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r3, r11, r20
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	beq r3, r20, .LBB0_816
	j .LBB0_815
.LBB0_819:                              #   in Loop: Header=BB0_817 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r11, r5
	and r3, r11, r20
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	beq r3, r20, .LBB0_816
	j .LBB0_815
.LBB0_820:                              # %vector.body297.preheader
                                        #   in Loop: Header=BB0_813 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_823
.LBB0_821:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r2, 28(r2)
.LBB0_822:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	addli r4, zero, 128
	.loc	1 996 11 is_stmt 1              # parallel-rne.mlir:996:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1008 13                       # parallel-rne.mlir:1008:13
	add.s r3, r17, r18
	zext_int2long r[4:5], r4
	stores.w r6, 12(r3)
	stores.w r26, 8(r3)
	stores.w r13, 4(r3)
	stores.w r24, 0(r3)
	stores.w r2, 28(r3)
	stores.w r7, 24(r3)
	stores.w r12, 20(r3)
	stores.w r11, 16(r3)
	.loc	1 996 11                        # parallel-rne.mlir:996:11
	seteq.d r4, r[8:9], r[4:5]
	lui r5, 1024
	bneq r4, zero, .LBB0_812
.LBB0_823:                              # %vector.body297
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_813 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 997 19                        # parallel-rne.mlir:997:19
	add.ul r[2:3], r[8:9], r[21:22]
	slli r18, r2, 2
	add.s r25, r10, r18
	loads.w r6, 0(r25)
	.loc	1 1001 19                       # parallel-rne.mlir:1001:19
	and r2, r6, r20
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	and r3, r6, r1
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	seteq r2, r2, r20
	.loc	1 1004 19                       # parallel-rne.mlir:1004:19
	setneq r3, r3, zero
	.loc	1 1005 19                       # parallel-rne.mlir:1005:19
	and r3, r2, r3
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	add.s r2, r19, r18
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_825
# %bb.824:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r24, 0(r2)
	j .LBB0_826
.LBB0_825:                              #   in Loop: Header=BB0_823 Depth=3
	or r24, r6, r5
.LBB0_826:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r6, 4(r25)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_828
# %bb.827:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
	j .LBB0_829
.LBB0_828:                              #   in Loop: Header=BB0_823 Depth=3
	or r13, r6, r5
.LBB0_829:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r6, 8(r25)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_831
# %bb.830:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r26, 8(r2)
	j .LBB0_832
.LBB0_831:                              #   in Loop: Header=BB0_823 Depth=3
	or r26, r6, r5
.LBB0_832:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r6, 12(r25)
	and r3, r6, r20
	and r4, r6, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_834
# %bb.833:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 12(r2)
	j .LBB0_835
.LBB0_834:                              #   in Loop: Header=BB0_823 Depth=3
	or r6, r6, r5
.LBB0_835:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r7, 16(r25)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_837
# %bb.836:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 16(r2)
	j .LBB0_838
.LBB0_837:                              #   in Loop: Header=BB0_823 Depth=3
	or r11, r7, r5
.LBB0_838:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r7, 20(r25)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_840
# %bb.839:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 20(r2)
	j .LBB0_841
.LBB0_840:                              #   in Loop: Header=BB0_823 Depth=3
	or r12, r7, r5
.LBB0_841:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r7, 24(r25)
	and r3, r7, r20
	and r4, r7, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	bneq r3, zero, .LBB0_843
# %bb.842:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 24(r2)
	j .LBB0_844
.LBB0_843:                              #   in Loop: Header=BB0_823 Depth=3
	or r7, r7, r5
.LBB0_844:                              # %vector.body297
                                        #   in Loop: Header=BB0_823 Depth=3
	loads.w r25, 28(r25)
	and r3, r25, r20
	and r4, r25, r1
	seteq r3, r3, r20
	setneq r4, r4, zero
	and r3, r3, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	beq r3, zero, .LBB0_821
# %bb.845:                              #   in Loop: Header=BB0_823 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r2, r25, r5
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	j .LBB0_822
.LBB0_846:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 987 7 is_stmt 1               # parallel-rne.mlir:987:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	loadli.w r16,  -384(r30)                # 4-byte Folded Reload
.LBB0_847:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1013 7                        # parallel-rne.mlir:1013:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	addli r2, zero, 3
	.loc	1 1013 7                        # parallel-rne.mlir:1013:7
	sync_core
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	bneq r4, r2, .LBB0_849
# %bb.848:                              # %.critedge26
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 31
	.loc	1 1015 7 is_stmt 1              # parallel-rne.mlir:1015:7
	addli r2, zero, 38
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	addli r3, zero, 5
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	xsignal r5, 0
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	xsignal r2, 0
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	addli r2, zero, 39
	xsignal r2, 0
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	loadli.w r2,  -24(r30)
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -24(r30)
	.loc	1 1022 7                        # parallel-rne.mlir:1022:7
	addli r2, zero, 21
	xwait r2, 0
	.loc	1 1023 7                        # parallel-rne.mlir:1023:7
	xwait r5, 0
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	slli r2, r3, 13
	loadli.w r3,  -508(r30)                 # 4-byte Folded Reload
	add.s r10, r2, r3
	.loc	1 1024 7                        # parallel-rne.mlir:1024:7
	addli r2, zero, 40
	xwait r2, 0
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	addli r2, zero, 42
	xwait r2, 0
	j .LBB0_852
.LBB0_849:                              # %.critedge24
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 5
	.loc	1 1017 7 is_stmt 1              # parallel-rne.mlir:1017:7
	bneq r4, r5, .LBB0_851
# %bb.850:                              # %.thread87
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 39
	addli r7, zero, 2
	addli r8, zero, 511
	addli r6, zero, 4
	xwait r2, 0
	lock zero, r7
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, zero, 19
	dsmadd r17, r17, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	mod.s r2, r2, r5
	storeli.w r3, -24(r30)
	.loc	1 1020 7                        # parallel-rne.mlir:1020:7
	addli r3, zero, 20
	xwait r3, 0
	addli r3, zero, 43
	xwait r3, 0
	lock zero, r7
	lui r3, 258048
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	slli r2, r2, 13
	.loc	1 1020 7                        # parallel-rne.mlir:1020:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	loadli.w r3,  -508(r30)                 # 4-byte Folded Reload
	.loc	1 1020 7                        # parallel-rne.mlir:1020:7
	ew_cfg zero, r8, zero, 2
	ew_cfg r6, zero, zero, 3
	ew_cfg r6, r6, r6, 19
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	add.s r10, r2, r3
	.loc	1 1020 7                        # parallel-rne.mlir:1020:7
	addli r2, zero, 19
	dsmul r10, r16, r17, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r2, 0
	addli r2, zero, 40
	xsignal r2, 0
	addli r2, zero, 42
	xsignal r2, 0
	.loc	1 1022 7                        # parallel-rne.mlir:1022:7
	j .LBB0_852
.LBB0_851:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1019 13                       # parallel-rne.mlir:1019:13
	loadli.w r2,  -24(r30)
	mod.s r3, r2, r5
	loadli.w r5,  -508(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -24(r30)
	slli r3, r3, 13
	add.s r10, r3, r5
.LBB0_852:                              # %.critedge28
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	seteq r2, r19, r17
	.loc	1 1027 7 is_stmt 1              # parallel-rne.mlir:1027:7
	storeli.w r2, -416(r30)                 # 4-byte Folded Spill
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	addli r2, zero, 255
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	xfence
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	mfence { lm, sm, gm }
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	csr_set csr5, r2
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	sub.s r2, r19, r5
	storeli.w r2, -420(r30)                 # 4-byte Folded Spill
	sub.s r2, r19, r10
	storeli.w r2, -424(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	beq r4, zero, .LBB0_940
# %bb.853:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1066 7                        # parallel-rne.mlir:1066:7
	addli r2, zero, 1
	bneq r4, r2, .LBB0_968
.LBB0_854:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	addli r3, zero, 256
	zext_int2long r[6:7], r3
	addli r3, zero, 384
	zext_int2long r[3:4], r3
	.loc	1 1066 7                        # parallel-rne.mlir:1066:7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	xfence
	mfence { lm, sm, gm }
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r2, r2, r3
	storeli.w r2, -400(r30)                 # 4-byte Folded Spill
	j .LBB0_856
.LBB0_855:                              # %middle.block275
                                        #   in Loop: Header=BB0_856 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[6:7], -384(r30)                # 8-byte Folded Reload
	.loc	1 1074 9 is_stmt 1              # parallel-rne.mlir:1074:9
	andi r2, r4, 1
	addli r4, zero, 0
	beq r2, zero, .LBB0_881
.LBB0_856:                              # %vector.memcheck261
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_873 Depth 3
                                        #       Child Loop BB0_859 Depth 3
	.loc	1 1075 11                       # parallel-rne.mlir:1075:11
	loadli.w r2,  -400(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_871
# %bb.857:                              # %scalar.ph267.preheader
                                        #   in Loop: Header=BB0_856 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_859
.LBB0_858:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 1075 11                       # parallel-rne.mlir:1075:11
	setlt.ul r3, r[8:9], r[14:15]
	.loc	1 1097 13 is_stmt 1             # parallel-rne.mlir:1097:13
	add.s r2, r19, r2
	.loc	1 1075 11                       # parallel-rne.mlir:1075:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1097 13                       # parallel-rne.mlir:1097:13
	stores.w r11, 0(r2)
	.loc	1 1075 11                       # parallel-rne.mlir:1075:11
	beq r3, zero, .LBB0_855
.LBB0_859:                              # %scalar.ph267
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_856 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	add.ul r[2:3], r[8:9], r[6:7]
	lui r11, 523264
	lui r18, 523264
	slli r2, r2, 2
	.loc	1 1077 19                       # parallel-rne.mlir:1077:19
	add.s r3, r17, r2
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	add.s r5, r10, r2
	.loc	1 1077 19                       # parallel-rne.mlir:1077:19
	loads.w r3, 0(r3)
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	loads.w r22, 0(r5)
	.loc	1 1081 19                       # parallel-rne.mlir:1081:19
	and r12, r3, r27
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	beq r12, r20, .LBB0_861
# %bb.860:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r22, 0
.LBB0_861:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r13, r3, r27
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	beq r13, zero, .LBB0_869
# %bb.862:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r22, 0
	lui r22, 523264
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r12, zero, .LBB0_870
.LBB0_863:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	beq r13, r20, .LBB0_865
.LBB0_864:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
.LBB0_865:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	setlt.u r3, r20, r12
	lui r12, 523264
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r3, zero, .LBB0_867
# %bb.866:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r22, 0
.LBB0_867:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	setlt.u r3, r20, r13
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r3, zero, .LBB0_858
# %bb.868:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_858
.LBB0_869:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	lui r22, 523264
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	beq r12, zero, .LBB0_863
.LBB0_870:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r13, r20, .LBB0_864
	j .LBB0_865
.LBB0_871:                              # %vector.body269.preheader
                                        #   in Loop: Header=BB0_856 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_873
.LBB0_872:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 1075 11 is_stmt 1             # parallel-rne.mlir:1075:11
	load.d r[21:22], -376(r30)              # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 1097 13                       # parallel-rne.mlir:1097:13
	add.s r2, r19, r2
	stores.w r26, 12(r2)
	stores.w r11, 8(r2)
	stores.w r9, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 1075 11                       # parallel-rne.mlir:1075:11
	seteq.d r3, r[24:25], r[21:22]
	bneq r3, zero, .LBB0_855
.LBB0_873:                              # %vector.body269
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_856 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	add.ul r[2:3], r[24:25], r[6:7]
	lui r26, 523264
	lui r13, 523264
	slli r2, r2, 2
	add.s r22, r5, r2
	.loc	1 1077 19                       # parallel-rne.mlir:1077:19
	add.s r18, r17, r2
	.loc	1 1076 19                       # parallel-rne.mlir:1076:19
	loads.w r3, 0(r22)
	.loc	1 1077 19                       # parallel-rne.mlir:1077:19
	loads.w r5, 0(r18)
	.loc	1 1083 19                       # parallel-rne.mlir:1083:19
	and r3, r3, r27
	.loc	1 1081 19                       # parallel-rne.mlir:1081:19
	and r5, r5, r27
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	seteq r8, r3, r20
	.loc	1 1088 20                       # parallel-rne.mlir:1088:20
	seteq r12, r3, zero
	.loc	1 1085 19                       # parallel-rne.mlir:1085:19
	seteq r9, r5, zero
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	seteq r11, r5, r20
	.loc	1 1093 20                       # parallel-rne.mlir:1093:20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	.loc	1 1086 19                       # parallel-rne.mlir:1086:19
	and r5, r8, r9
	.loc	1 1089 20                       # parallel-rne.mlir:1089:20
	and r8, r12, r11
	.loc	1 1090 20                       # parallel-rne.mlir:1090:20
	or r5, r5, r8
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	add.s r8, r10, r2
	.loc	1 1094 20                       # parallel-rne.mlir:1094:20
	or r3, r3, r5
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r3, zero, .LBB0_875
# %bb.874:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r8)
.LBB0_875:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	loads.w r3, 4(r22)
	loads.w r5, 4(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r9, r3, r20
	seteq r16, r3, zero
	seteq r11, r5, zero
	seteq r12, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r9, r11
	and r9, r16, r12
	or r5, r5, r9
	lui r9, 523264
	or r3, r3, r5
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r3, zero, .LBB0_877
# %bb.876:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r9, 4(r8)
.LBB0_877:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	loads.w r3, 8(r22)
	loads.w r5, 8(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r28, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r28, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r3, zero, .LBB0_879
# %bb.878:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 8(r8)
.LBB0_879:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	loads.w r3, 12(r22)
	loads.w r5, 12(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r22, r3, zero
	seteq r16, r5, zero
	seteq r18, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r22, r18
	or r5, r5, r12
	or r3, r3, r5
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	bneq r3, zero, .LBB0_872
# %bb.880:                              # %vector.body269
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r8)
	j .LBB0_872
.LBB0_881:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1066 7 is_stmt 1              # parallel-rne.mlir:1066:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 1102 7                        # parallel-rne.mlir:1102:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_969
.LBB0_882:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1138 7                        # parallel-rne.mlir:1138:7
	addli r2, zero, 3
	bneq r4, r2, .LBB0_997
.LBB0_883:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	addli r3, zero, 768
	zext_int2long r[8:9], r3
	addli r3, zero, 896
	zext_int2long r[3:4], r3
	.loc	1 1138 7                        # parallel-rne.mlir:1138:7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	xfence
	mfence { lm, sm, gm }
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r21, r2, r3
	j .LBB0_885
.LBB0_884:                              # %middle.block245
                                        #   in Loop: Header=BB0_885 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[8:9], -384(r30)                # 8-byte Folded Reload
	.loc	1 1146 9 is_stmt 1              # parallel-rne.mlir:1146:9
	andi r2, r4, 1
	addli r4, zero, 0
	beq r2, zero, .LBB0_910
.LBB0_885:                              # %vector.memcheck231
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_902 Depth 3
                                        #       Child Loop BB0_888 Depth 3
	.loc	1 1147 11                       # parallel-rne.mlir:1147:11
	beq r21, zero, .LBB0_900
# %bb.886:                              # %scalar.ph237.preheader
                                        #   in Loop: Header=BB0_885 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_888
.LBB0_887:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 1147 11                       # parallel-rne.mlir:1147:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 1169 13 is_stmt 1             # parallel-rne.mlir:1169:13
	add.s r2, r19, r2
	.loc	1 1147 11                       # parallel-rne.mlir:1147:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1169 13                       # parallel-rne.mlir:1169:13
	stores.w r11, 0(r2)
	.loc	1 1147 11                       # parallel-rne.mlir:1147:11
	beq r3, zero, .LBB0_884
.LBB0_888:                              # %scalar.ph237
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_885 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	add.ul r[2:3], r[6:7], r[8:9]
	lui r11, 523264
	lui r18, 523264
	slli r2, r2, 2
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	add.s r3, r17, r2
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	add.s r5, r10, r2
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	loads.w r3, 0(r3)
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	loads.w r22, 0(r5)
	.loc	1 1153 19                       # parallel-rne.mlir:1153:19
	and r12, r3, r27
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	beq r12, r20, .LBB0_890
# %bb.889:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r22, 0
.LBB0_890:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r13, r3, r27
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	beq r13, zero, .LBB0_898
# %bb.891:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r22, 0
	lui r22, 523264
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r12, zero, .LBB0_899
.LBB0_892:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	beq r13, r20, .LBB0_894
.LBB0_893:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
.LBB0_894:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	setlt.u r3, r20, r12
	lui r12, 523264
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r3, zero, .LBB0_896
# %bb.895:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r22, 0
.LBB0_896:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	setlt.u r3, r20, r13
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r3, zero, .LBB0_887
# %bb.897:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_887
.LBB0_898:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	lui r22, 523264
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	beq r12, zero, .LBB0_892
.LBB0_899:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r13, r20, .LBB0_893
	j .LBB0_894
.LBB0_900:                              # %vector.body239.preheader
                                        #   in Loop: Header=BB0_885 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_902
.LBB0_901:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 1147 11 is_stmt 1             # parallel-rne.mlir:1147:11
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	.loc	1 1169 13                       # parallel-rne.mlir:1169:13
	add.s r2, r19, r2
	stores.w r26, 12(r2)
	stores.w r11, 8(r2)
	stores.w r7, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 1147 11                       # parallel-rne.mlir:1147:11
	seteq.d r3, r[24:25], r[5:6]
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_884
.LBB0_902:                              # %vector.body239
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_885 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	add.ul r[2:3], r[24:25], r[8:9]
	lui r26, 523264
	lui r13, 523264
	slli r2, r2, 2
	add.s r22, r5, r2
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	add.s r18, r17, r2
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	loads.w r3, 0(r22)
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	loads.w r5, 0(r18)
	.loc	1 1155 19                       # parallel-rne.mlir:1155:19
	and r3, r3, r27
	.loc	1 1153 19                       # parallel-rne.mlir:1153:19
	and r5, r5, r27
	.loc	1 1156 19                       # parallel-rne.mlir:1156:19
	seteq r6, r3, r20
	.loc	1 1160 20                       # parallel-rne.mlir:1160:20
	seteq r12, r3, zero
	.loc	1 1157 19                       # parallel-rne.mlir:1157:19
	seteq r7, r5, zero
	.loc	1 1159 19                       # parallel-rne.mlir:1159:19
	seteq r11, r5, r20
	.loc	1 1165 20                       # parallel-rne.mlir:1165:20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	and r5, r6, r7
	.loc	1 1161 20                       # parallel-rne.mlir:1161:20
	and r6, r12, r11
	.loc	1 1162 20                       # parallel-rne.mlir:1162:20
	or r5, r5, r6
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	add.s r6, r10, r2
	.loc	1 1166 20                       # parallel-rne.mlir:1166:20
	or r3, r3, r5
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r3, zero, .LBB0_904
# %bb.903:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r6)
.LBB0_904:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	loads.w r3, 4(r22)
	loads.w r5, 4(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r7, r3, r20
	seteq r16, r3, zero
	seteq r11, r5, zero
	seteq r12, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r7, r11
	and r7, r16, r12
	or r5, r5, r7
	lui r7, 523264
	or r3, r3, r5
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r3, zero, .LBB0_906
# %bb.905:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_906:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	loads.w r3, 8(r22)
	loads.w r5, 8(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r28, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r28, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r3, zero, .LBB0_908
# %bb.907:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 8(r6)
.LBB0_908:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	loads.w r3, 12(r22)
	loads.w r5, 12(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r22, r3, zero
	seteq r16, r5, zero
	seteq r18, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r22, r18
	or r5, r5, r12
	or r3, r3, r5
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	bneq r3, zero, .LBB0_901
# %bb.909:                              # %vector.body239
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r6)
	j .LBB0_901
.LBB0_910:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1138 7 is_stmt 1              # parallel-rne.mlir:1138:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 1174 7                        # parallel-rne.mlir:1174:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_998
.LBB0_911:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1210 7                        # parallel-rne.mlir:1210:7
	addli r2, zero, 5
	bneq r4, r2, .LBB0_1026
.LBB0_912:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	addli r3, zero, 1280
	zext_int2long r[8:9], r3
	addli r3, zero, 1408
	zext_int2long r[3:4], r3
	.loc	1 1210 7                        # parallel-rne.mlir:1210:7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	xfence
	mfence { lm, sm, gm }
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r21, r2, r3
	j .LBB0_914
.LBB0_913:                              # %middle.block215
                                        #   in Loop: Header=BB0_914 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[8:9], -384(r30)                # 8-byte Folded Reload
	.loc	1 1218 9 is_stmt 1              # parallel-rne.mlir:1218:9
	andi r2, r4, 1
	addli r4, zero, 0
	beq r2, zero, .LBB0_939
.LBB0_914:                              # %vector.memcheck201
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_931 Depth 3
                                        #       Child Loop BB0_917 Depth 3
	.loc	1 1219 11                       # parallel-rne.mlir:1219:11
	beq r21, zero, .LBB0_929
# %bb.915:                              # %scalar.ph207.preheader
                                        #   in Loop: Header=BB0_914 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_917
.LBB0_916:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 1219 11                       # parallel-rne.mlir:1219:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 1241 13 is_stmt 1             # parallel-rne.mlir:1241:13
	add.s r2, r19, r2
	.loc	1 1219 11                       # parallel-rne.mlir:1219:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1241 13                       # parallel-rne.mlir:1241:13
	stores.w r11, 0(r2)
	.loc	1 1219 11                       # parallel-rne.mlir:1219:11
	beq r3, zero, .LBB0_913
.LBB0_917:                              # %scalar.ph207
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_914 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	add.ul r[2:3], r[6:7], r[8:9]
	lui r11, 523264
	lui r18, 523264
	slli r2, r2, 2
	.loc	1 1221 19                       # parallel-rne.mlir:1221:19
	add.s r3, r17, r2
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	add.s r5, r10, r2
	.loc	1 1221 19                       # parallel-rne.mlir:1221:19
	loads.w r3, 0(r3)
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	loads.w r22, 0(r5)
	.loc	1 1225 19                       # parallel-rne.mlir:1225:19
	and r12, r3, r27
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	beq r12, r20, .LBB0_919
# %bb.918:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r22, 0
.LBB0_919:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r13, r3, r27
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	beq r13, zero, .LBB0_927
# %bb.920:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r22, 0
	lui r22, 523264
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r12, zero, .LBB0_928
.LBB0_921:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	beq r13, r20, .LBB0_923
.LBB0_922:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
.LBB0_923:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	setlt.u r3, r20, r12
	lui r12, 523264
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r3, zero, .LBB0_925
# %bb.924:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r22, 0
.LBB0_925:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	setlt.u r3, r20, r13
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r3, zero, .LBB0_916
# %bb.926:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_916
.LBB0_927:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	lui r22, 523264
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	beq r12, zero, .LBB0_921
.LBB0_928:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_917 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r13, r20, .LBB0_922
	j .LBB0_923
.LBB0_929:                              # %vector.body209.preheader
                                        #   in Loop: Header=BB0_914 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_931
.LBB0_930:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	.loc	1 1219 11 is_stmt 1             # parallel-rne.mlir:1219:11
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	.loc	1 1241 13                       # parallel-rne.mlir:1241:13
	add.s r2, r19, r2
	stores.w r26, 12(r2)
	stores.w r11, 8(r2)
	stores.w r7, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 1219 11                       # parallel-rne.mlir:1219:11
	seteq.d r3, r[24:25], r[5:6]
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_913
.LBB0_931:                              # %vector.body209
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_914 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	add.ul r[2:3], r[24:25], r[8:9]
	lui r26, 523264
	lui r13, 523264
	slli r2, r2, 2
	add.s r22, r5, r2
	.loc	1 1221 19                       # parallel-rne.mlir:1221:19
	add.s r18, r17, r2
	.loc	1 1220 19                       # parallel-rne.mlir:1220:19
	loads.w r3, 0(r22)
	.loc	1 1221 19                       # parallel-rne.mlir:1221:19
	loads.w r5, 0(r18)
	.loc	1 1227 19                       # parallel-rne.mlir:1227:19
	and r3, r3, r27
	.loc	1 1225 19                       # parallel-rne.mlir:1225:19
	and r5, r5, r27
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	seteq r6, r3, r20
	.loc	1 1232 20                       # parallel-rne.mlir:1232:20
	seteq r12, r3, zero
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	seteq r7, r5, zero
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	seteq r11, r5, r20
	.loc	1 1237 20                       # parallel-rne.mlir:1237:20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	and r5, r6, r7
	.loc	1 1233 20                       # parallel-rne.mlir:1233:20
	and r6, r12, r11
	.loc	1 1234 20                       # parallel-rne.mlir:1234:20
	or r5, r5, r6
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	add.s r6, r10, r2
	.loc	1 1238 20                       # parallel-rne.mlir:1238:20
	or r3, r3, r5
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r3, zero, .LBB0_933
# %bb.932:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r6)
.LBB0_933:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	loads.w r3, 4(r22)
	loads.w r5, 4(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r7, r3, r20
	seteq r16, r3, zero
	seteq r11, r5, zero
	seteq r12, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r7, r11
	and r7, r16, r12
	or r5, r5, r7
	lui r7, 523264
	or r3, r3, r5
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r3, zero, .LBB0_935
# %bb.934:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_935:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	loads.w r3, 8(r22)
	loads.w r5, 8(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r28, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r28, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r3, zero, .LBB0_937
# %bb.936:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 8(r6)
.LBB0_937:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	loads.w r3, 12(r22)
	loads.w r5, 12(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r22, r3, zero
	seteq r16, r5, zero
	seteq r18, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r22, r18
	or r5, r5, r12
	or r3, r3, r5
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	bneq r3, zero, .LBB0_930
# %bb.938:                              # %vector.body209
                                        #   in Loop: Header=BB0_931 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r6)
	j .LBB0_930
.LBB0_939:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1210 7 is_stmt 1              # parallel-rne.mlir:1210:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 1246 7                        # parallel-rne.mlir:1246:7
	addli r2, zero, 6
	bneq r4, r2, .LBB0_1055
	j .LBB0_1027
.LBB0_940:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	.loc	1 1030 7 is_stmt 1              # parallel-rne.mlir:1030:7
	xfence
	addli r7, zero, 1
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r6, r2, r3
	j .LBB0_942
.LBB0_941:                              # %middle.block290
                                        #   in Loop: Header=BB0_942 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[8:9], -376(r30)                # 8-byte Folded Reload
	.loc	1 1038 9 is_stmt 1              # parallel-rne.mlir:1038:9
	andi r2, r7, 1
	addli r7, zero, 0
	beq r2, zero, .LBB0_967
.LBB0_942:                              # %vector.memcheck276
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_959 Depth 3
                                        #       Child Loop BB0_945 Depth 3
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	beq r6, zero, .LBB0_957
# %bb.943:                              # %scalar.ph282.preheader
                                        #   in Loop: Header=BB0_942 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_945
.LBB0_944:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	setlt.ul r3, r[11:12], r[14:15]
	.loc	1 1061 13 is_stmt 1             # parallel-rne.mlir:1061:13
	add.s r2, r19, r2
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 1061 13                       # parallel-rne.mlir:1061:13
	stores.w r4, 0(r2)
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	beq r3, zero, .LBB0_941
.LBB0_945:                              # %scalar.ph282
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_942 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	add.ul r[2:3], r[11:12], r[8:9]
	lui r21, 523264
	slli r2, r2, 2
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.s r3, r17, r2
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	add.s r4, r10, r2
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	loads.w r3, 0(r3)
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	loads.w r22, 0(r4)
	lui r4, 523264
	.loc	1 1045 19                       # parallel-rne.mlir:1045:19
	and r13, r3, r27
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	beq r13, r20, .LBB0_947
# %bb.946:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r21, r22, 0
.LBB0_947:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r18, r3, r27
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	beq r18, zero, .LBB0_955
# %bb.948:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r13, zero, .LBB0_956
.LBB0_949:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	beq r18, r20, .LBB0_951
.LBB0_950:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r21, 0
.LBB0_951:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	setlt.u r3, r20, r13
	lui r13, 523264
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r3, zero, .LBB0_953
# %bb.952:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r22, 0
.LBB0_953:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	setlt.u r3, r20, r18
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r3, zero, .LBB0_944
# %bb.954:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r13, 0
	j .LBB0_944
.LBB0_955:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	lui r22, 523264
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	beq r13, zero, .LBB0_949
.LBB0_956:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_945 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r21, 0
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r18, r20, .LBB0_950
	j .LBB0_951
.LBB0_957:                              # %vector.body284.preheader
                                        #   in Loop: Header=BB0_942 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_959
.LBB0_958:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	.loc	1 1039 11 is_stmt 1             # parallel-rne.mlir:1039:11
	load.d r[21:22], -376(r30)              # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 1061 13                       # parallel-rne.mlir:1061:13
	add.s r2, r19, r2
	stores.w r13, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r4, 0(r2)
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	seteq.d r3, r[24:25], r[21:22]
	bneq r3, zero, .LBB0_941
.LBB0_959:                              # %vector.body284
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_942 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	add.ul r[2:3], r[24:25], r[8:9]
	slli r2, r2, 2
	add.s r21, r5, r2
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.s r22, r17, r2
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	add.s r26, r10, r2
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	loads.w r3, 0(r21)
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	loads.w r4, 0(r22)
	.loc	1 1047 19                       # parallel-rne.mlir:1047:19
	and r3, r3, r27
	.loc	1 1045 19                       # parallel-rne.mlir:1045:19
	and r4, r4, r27
	.loc	1 1048 19                       # parallel-rne.mlir:1048:19
	seteq r5, r3, r20
	.loc	1 1052 20                       # parallel-rne.mlir:1052:20
	seteq r13, r3, zero
	.loc	1 1049 19                       # parallel-rne.mlir:1049:19
	seteq r11, r4, zero
	.loc	1 1051 19                       # parallel-rne.mlir:1051:19
	seteq r12, r4, r20
	.loc	1 1057 20                       # parallel-rne.mlir:1057:20
	max.u r3, r3, r4
	setlt.u r3, r20, r3
	.loc	1 1050 19                       # parallel-rne.mlir:1050:19
	and r4, r5, r11
	.loc	1 1053 20                       # parallel-rne.mlir:1053:20
	and r5, r13, r12
	lui r13, 523264
	.loc	1 1054 20                       # parallel-rne.mlir:1054:20
	or r4, r4, r5
	.loc	1 1058 20                       # parallel-rne.mlir:1058:20
	or r3, r3, r4
	lui r4, 523264
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r3, zero, .LBB0_961
# %bb.960:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r4, 0(r26)
.LBB0_961:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	loads.w r3, 4(r21)
	loads.w r5, 4(r22)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r18, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r18, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r3, zero, .LBB0_963
# %bb.962:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r26)
.LBB0_963:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	loads.w r3, 8(r21)
	loads.w r5, 8(r22)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r28, r3, zero
	seteq r16, r5, zero
	seteq r18, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r28, r18
	or r5, r5, r12
	lui r12, 523264
	or r3, r3, r5
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r3, zero, .LBB0_965
# %bb.964:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r26)
.LBB0_965:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	loads.w r3, 12(r21)
	loads.w r5, 12(r22)
	and r3, r3, r27
	and r5, r5, r27
	seteq r16, r3, r20
	seteq r22, r3, zero
	seteq r18, r5, zero
	seteq r21, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r16, r18
	and r16, r22, r21
	or r5, r5, r16
	or r3, r3, r5
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	bneq r3, zero, .LBB0_958
# %bb.966:                              # %vector.body284
                                        #   in Loop: Header=BB0_959 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r13, 12(r26)
	j .LBB0_958
.LBB0_967:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1030 7 is_stmt 1              # parallel-rne.mlir:1030:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 1066 7                        # parallel-rne.mlir:1066:7
	addli r2, zero, 1
	beq r4, r2, .LBB0_854
.LBB0_968:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1102 7                        # parallel-rne.mlir:1102:7
	loadli.w r2,  -412(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_882
.LBB0_969:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	addli r3, zero, 512
	zext_int2long r[8:9], r3
	addli r3, zero, 640
	zext_int2long r[3:4], r3
	.loc	1 1102 7                        # parallel-rne.mlir:1102:7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	xfence
	mfence { lm, sm, gm }
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r21, r2, r3
	j .LBB0_971
.LBB0_970:                              # %middle.block260
                                        #   in Loop: Header=BB0_971 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[8:9], -384(r30)                # 8-byte Folded Reload
	.loc	1 1110 9 is_stmt 1              # parallel-rne.mlir:1110:9
	andi r2, r4, 1
	addli r4, zero, 0
	beq r2, zero, .LBB0_996
.LBB0_971:                              # %vector.memcheck246
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_988 Depth 3
                                        #       Child Loop BB0_974 Depth 3
	.loc	1 1111 11                       # parallel-rne.mlir:1111:11
	beq r21, zero, .LBB0_986
# %bb.972:                              # %scalar.ph252.preheader
                                        #   in Loop: Header=BB0_971 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_974
.LBB0_973:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 1111 11                       # parallel-rne.mlir:1111:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 1133 13 is_stmt 1             # parallel-rne.mlir:1133:13
	add.s r2, r19, r2
	.loc	1 1111 11                       # parallel-rne.mlir:1111:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1133 13                       # parallel-rne.mlir:1133:13
	stores.w r11, 0(r2)
	.loc	1 1111 11                       # parallel-rne.mlir:1111:11
	beq r3, zero, .LBB0_970
.LBB0_974:                              # %scalar.ph252
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_971 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	add.ul r[2:3], r[6:7], r[8:9]
	lui r11, 523264
	lui r18, 523264
	slli r2, r2, 2
	.loc	1 1113 19                       # parallel-rne.mlir:1113:19
	add.s r3, r17, r2
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	add.s r5, r10, r2
	.loc	1 1113 19                       # parallel-rne.mlir:1113:19
	loads.w r3, 0(r3)
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	loads.w r22, 0(r5)
	.loc	1 1117 19                       # parallel-rne.mlir:1117:19
	and r12, r3, r27
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	beq r12, r20, .LBB0_976
# %bb.975:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r22, 0
.LBB0_976:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r13, r3, r27
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	beq r13, zero, .LBB0_984
# %bb.977:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r22, 0
	lui r22, 523264
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r12, zero, .LBB0_985
.LBB0_978:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	beq r13, r20, .LBB0_980
.LBB0_979:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
.LBB0_980:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	setlt.u r3, r20, r12
	lui r12, 523264
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r3, zero, .LBB0_982
# %bb.981:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r22, 0
.LBB0_982:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	setlt.u r3, r20, r13
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r3, zero, .LBB0_973
# %bb.983:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_973
.LBB0_984:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	lui r22, 523264
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	beq r12, zero, .LBB0_978
.LBB0_985:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r13, r20, .LBB0_979
	j .LBB0_980
.LBB0_986:                              # %vector.body254.preheader
                                        #   in Loop: Header=BB0_971 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_988
.LBB0_987:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 1111 11 is_stmt 1             # parallel-rne.mlir:1111:11
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	.loc	1 1133 13                       # parallel-rne.mlir:1133:13
	add.s r2, r19, r2
	stores.w r26, 12(r2)
	stores.w r11, 8(r2)
	stores.w r7, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 1111 11                       # parallel-rne.mlir:1111:11
	seteq.d r3, r[24:25], r[5:6]
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_970
.LBB0_988:                              # %vector.body254
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_971 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	add.ul r[2:3], r[24:25], r[8:9]
	lui r26, 523264
	lui r13, 523264
	slli r2, r2, 2
	add.s r22, r5, r2
	.loc	1 1113 19                       # parallel-rne.mlir:1113:19
	add.s r18, r17, r2
	.loc	1 1112 19                       # parallel-rne.mlir:1112:19
	loads.w r3, 0(r22)
	.loc	1 1113 19                       # parallel-rne.mlir:1113:19
	loads.w r5, 0(r18)
	.loc	1 1119 19                       # parallel-rne.mlir:1119:19
	and r3, r3, r27
	.loc	1 1117 19                       # parallel-rne.mlir:1117:19
	and r5, r5, r27
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	seteq r6, r3, r20
	.loc	1 1124 20                       # parallel-rne.mlir:1124:20
	seteq r12, r3, zero
	.loc	1 1121 19                       # parallel-rne.mlir:1121:19
	seteq r7, r5, zero
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	seteq r11, r5, r20
	.loc	1 1129 20                       # parallel-rne.mlir:1129:20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	.loc	1 1122 19                       # parallel-rne.mlir:1122:19
	and r5, r6, r7
	.loc	1 1125 20                       # parallel-rne.mlir:1125:20
	and r6, r12, r11
	.loc	1 1126 20                       # parallel-rne.mlir:1126:20
	or r5, r5, r6
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	add.s r6, r10, r2
	.loc	1 1130 20                       # parallel-rne.mlir:1130:20
	or r3, r3, r5
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r3, zero, .LBB0_990
# %bb.989:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r6)
.LBB0_990:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	loads.w r3, 4(r22)
	loads.w r5, 4(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r7, r3, r20
	seteq r16, r3, zero
	seteq r11, r5, zero
	seteq r12, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r7, r11
	and r7, r16, r12
	or r5, r5, r7
	lui r7, 523264
	or r3, r3, r5
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r3, zero, .LBB0_992
# %bb.991:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_992:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	loads.w r3, 8(r22)
	loads.w r5, 8(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r28, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r28, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r3, zero, .LBB0_994
# %bb.993:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 8(r6)
.LBB0_994:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	loads.w r3, 12(r22)
	loads.w r5, 12(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r22, r3, zero
	seteq r16, r5, zero
	seteq r18, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r22, r18
	or r5, r5, r12
	or r3, r3, r5
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	bneq r3, zero, .LBB0_987
# %bb.995:                              # %vector.body254
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r6)
	j .LBB0_987
.LBB0_996:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1102 7 is_stmt 1              # parallel-rne.mlir:1102:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 1138 7                        # parallel-rne.mlir:1138:7
	addli r2, zero, 3
	beq r4, r2, .LBB0_883
.LBB0_997:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1174 7                        # parallel-rne.mlir:1174:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_911
.LBB0_998:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	addli r3, zero, 1024
	zext_int2long r[8:9], r3
	addli r3, zero, 1152
	zext_int2long r[3:4], r3
	.loc	1 1174 7                        # parallel-rne.mlir:1174:7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	xfence
	mfence { lm, sm, gm }
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r21, r2, r3
	j .LBB0_1000
.LBB0_999:                              # %middle.block230
                                        #   in Loop: Header=BB0_1000 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[8:9], -384(r30)                # 8-byte Folded Reload
	.loc	1 1182 9 is_stmt 1              # parallel-rne.mlir:1182:9
	andi r2, r4, 1
	addli r4, zero, 0
	beq r2, zero, .LBB0_1025
.LBB0_1000:                             # %vector.memcheck216
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1017 Depth 3
                                        #       Child Loop BB0_1003 Depth 3
	.loc	1 1183 11                       # parallel-rne.mlir:1183:11
	beq r21, zero, .LBB0_1015
# %bb.1001:                             # %scalar.ph222.preheader
                                        #   in Loop: Header=BB0_1000 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_1003
.LBB0_1002:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 1183 11                       # parallel-rne.mlir:1183:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 1205 13 is_stmt 1             # parallel-rne.mlir:1205:13
	add.s r2, r19, r2
	.loc	1 1183 11                       # parallel-rne.mlir:1183:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1205 13                       # parallel-rne.mlir:1205:13
	stores.w r11, 0(r2)
	.loc	1 1183 11                       # parallel-rne.mlir:1183:11
	beq r3, zero, .LBB0_999
.LBB0_1003:                             # %scalar.ph222
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1000 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	add.ul r[2:3], r[6:7], r[8:9]
	lui r11, 523264
	lui r18, 523264
	slli r2, r2, 2
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	add.s r3, r17, r2
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	add.s r5, r10, r2
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	loads.w r3, 0(r3)
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	loads.w r22, 0(r5)
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	and r12, r3, r27
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	beq r12, r20, .LBB0_1005
# %bb.1004:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r22, 0
.LBB0_1005:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r13, r3, r27
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	beq r13, zero, .LBB0_1013
# %bb.1006:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r22, 0
	lui r22, 523264
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r12, zero, .LBB0_1014
.LBB0_1007:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	beq r13, r20, .LBB0_1009
.LBB0_1008:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
.LBB0_1009:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	setlt.u r3, r20, r12
	lui r12, 523264
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r3, zero, .LBB0_1011
# %bb.1010:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r22, 0
.LBB0_1011:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	setlt.u r3, r20, r13
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r3, zero, .LBB0_1002
# %bb.1012:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_1002
.LBB0_1013:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	lui r22, 523264
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	beq r12, zero, .LBB0_1007
.LBB0_1014:                             # %scalar.ph222
                                        #   in Loop: Header=BB0_1003 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r13, r20, .LBB0_1008
	j .LBB0_1009
.LBB0_1015:                             # %vector.body224.preheader
                                        #   in Loop: Header=BB0_1000 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_1017
.LBB0_1016:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	.loc	1 1183 11 is_stmt 1             # parallel-rne.mlir:1183:11
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	.loc	1 1205 13                       # parallel-rne.mlir:1205:13
	add.s r2, r19, r2
	stores.w r26, 12(r2)
	stores.w r11, 8(r2)
	stores.w r7, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 1183 11                       # parallel-rne.mlir:1183:11
	seteq.d r3, r[24:25], r[5:6]
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_999
.LBB0_1017:                             # %vector.body224
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1000 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	add.ul r[2:3], r[24:25], r[8:9]
	lui r26, 523264
	lui r13, 523264
	slli r2, r2, 2
	add.s r22, r5, r2
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	add.s r18, r17, r2
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	loads.w r3, 0(r22)
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	loads.w r5, 0(r18)
	.loc	1 1191 19                       # parallel-rne.mlir:1191:19
	and r3, r3, r27
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	and r5, r5, r27
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	seteq r6, r3, r20
	.loc	1 1196 20                       # parallel-rne.mlir:1196:20
	seteq r12, r3, zero
	.loc	1 1193 19                       # parallel-rne.mlir:1193:19
	seteq r7, r5, zero
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	seteq r11, r5, r20
	.loc	1 1201 20                       # parallel-rne.mlir:1201:20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	.loc	1 1194 19                       # parallel-rne.mlir:1194:19
	and r5, r6, r7
	.loc	1 1197 20                       # parallel-rne.mlir:1197:20
	and r6, r12, r11
	.loc	1 1198 20                       # parallel-rne.mlir:1198:20
	or r5, r5, r6
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	add.s r6, r10, r2
	.loc	1 1202 20                       # parallel-rne.mlir:1202:20
	or r3, r3, r5
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r3, zero, .LBB0_1019
# %bb.1018:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r6)
.LBB0_1019:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	loads.w r3, 4(r22)
	loads.w r5, 4(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r7, r3, r20
	seteq r16, r3, zero
	seteq r11, r5, zero
	seteq r12, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r7, r11
	and r7, r16, r12
	or r5, r5, r7
	lui r7, 523264
	or r3, r3, r5
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r3, zero, .LBB0_1021
# %bb.1020:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_1021:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	loads.w r3, 8(r22)
	loads.w r5, 8(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r28, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r28, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r3, zero, .LBB0_1023
# %bb.1022:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 8(r6)
.LBB0_1023:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	loads.w r3, 12(r22)
	loads.w r5, 12(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r22, r3, zero
	seteq r16, r5, zero
	seteq r18, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r22, r18
	or r5, r5, r12
	or r3, r3, r5
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	bneq r3, zero, .LBB0_1016
# %bb.1024:                             # %vector.body224
                                        #   in Loop: Header=BB0_1017 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r6)
	j .LBB0_1016
.LBB0_1025:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1174 7 is_stmt 1              # parallel-rne.mlir:1174:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
	.loc	1 1210 7                        # parallel-rne.mlir:1210:7
	addli r2, zero, 5
	beq r4, r2, .LBB0_912
.LBB0_1026:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1246 7                        # parallel-rne.mlir:1246:7
	addli r2, zero, 6
	bneq r4, r2, .LBB0_1055
.LBB0_1027:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	addli r3, zero, 1536
	zext_int2long r[8:9], r3
	addli r3, zero, 1664
	zext_int2long r[3:4], r3
	.loc	1 1246 7                        # parallel-rne.mlir:1246:7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	xfence
	mfence { lm, sm, gm }
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r21, r2, r3
	j .LBB0_1029
.LBB0_1028:                             # %middle.block200
                                        #   in Loop: Header=BB0_1029 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[8:9], -384(r30)                # 8-byte Folded Reload
	.loc	1 1254 9 is_stmt 1              # parallel-rne.mlir:1254:9
	andi r2, r4, 1
	addli r4, zero, 0
	beq r2, zero, .LBB0_1054
.LBB0_1029:                             # %vector.memcheck186
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1046 Depth 3
                                        #       Child Loop BB0_1032 Depth 3
	.loc	1 1255 11                       # parallel-rne.mlir:1255:11
	beq r21, zero, .LBB0_1044
# %bb.1030:                             # %scalar.ph192.preheader
                                        #   in Loop: Header=BB0_1029 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_1032
.LBB0_1031:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 1255 11                       # parallel-rne.mlir:1255:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 1277 13 is_stmt 1             # parallel-rne.mlir:1277:13
	add.s r2, r19, r2
	.loc	1 1255 11                       # parallel-rne.mlir:1255:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1277 13                       # parallel-rne.mlir:1277:13
	stores.w r11, 0(r2)
	.loc	1 1255 11                       # parallel-rne.mlir:1255:11
	beq r3, zero, .LBB0_1028
.LBB0_1032:                             # %scalar.ph192
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1029 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	add.ul r[2:3], r[6:7], r[8:9]
	lui r11, 523264
	lui r18, 523264
	slli r2, r2, 2
	.loc	1 1257 19                       # parallel-rne.mlir:1257:19
	add.s r3, r17, r2
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	add.s r5, r10, r2
	.loc	1 1257 19                       # parallel-rne.mlir:1257:19
	loads.w r3, 0(r3)
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	loads.w r22, 0(r5)
	.loc	1 1261 19                       # parallel-rne.mlir:1261:19
	and r12, r3, r27
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	beq r12, r20, .LBB0_1034
# %bb.1033:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r22, 0
.LBB0_1034:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r13, r3, r27
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	beq r13, zero, .LBB0_1042
# %bb.1035:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r22, 0
	lui r22, 523264
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r12, zero, .LBB0_1043
.LBB0_1036:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	beq r13, r20, .LBB0_1038
.LBB0_1037:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
.LBB0_1038:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	setlt.u r3, r20, r12
	lui r12, 523264
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r3, zero, .LBB0_1040
# %bb.1039:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r22, 0
.LBB0_1040:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	setlt.u r3, r20, r13
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r3, zero, .LBB0_1031
# %bb.1041:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_1031
.LBB0_1042:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	lui r22, 523264
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	beq r12, zero, .LBB0_1036
.LBB0_1043:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1032 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r18, 0
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r13, r20, .LBB0_1037
	j .LBB0_1038
.LBB0_1044:                             # %vector.body194.preheader
                                        #   in Loop: Header=BB0_1029 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_1046
.LBB0_1045:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	.loc	1 1255 11 is_stmt 1             # parallel-rne.mlir:1255:11
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	.loc	1 1277 13                       # parallel-rne.mlir:1277:13
	add.s r2, r19, r2
	stores.w r26, 12(r2)
	stores.w r11, 8(r2)
	stores.w r7, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 1255 11                       # parallel-rne.mlir:1255:11
	seteq.d r3, r[24:25], r[5:6]
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_1028
.LBB0_1046:                             # %vector.body194
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1029 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	add.ul r[2:3], r[24:25], r[8:9]
	lui r26, 523264
	lui r13, 523264
	slli r2, r2, 2
	add.s r22, r5, r2
	.loc	1 1257 19                       # parallel-rne.mlir:1257:19
	add.s r18, r17, r2
	.loc	1 1256 19                       # parallel-rne.mlir:1256:19
	loads.w r3, 0(r22)
	.loc	1 1257 19                       # parallel-rne.mlir:1257:19
	loads.w r5, 0(r18)
	.loc	1 1263 19                       # parallel-rne.mlir:1263:19
	and r3, r3, r27
	.loc	1 1261 19                       # parallel-rne.mlir:1261:19
	and r5, r5, r27
	.loc	1 1264 19                       # parallel-rne.mlir:1264:19
	seteq r6, r3, r20
	.loc	1 1268 20                       # parallel-rne.mlir:1268:20
	seteq r12, r3, zero
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	seteq r7, r5, zero
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	seteq r11, r5, r20
	.loc	1 1273 20                       # parallel-rne.mlir:1273:20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	and r5, r6, r7
	.loc	1 1269 20                       # parallel-rne.mlir:1269:20
	and r6, r12, r11
	.loc	1 1270 20                       # parallel-rne.mlir:1270:20
	or r5, r5, r6
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	add.s r6, r10, r2
	.loc	1 1274 20                       # parallel-rne.mlir:1274:20
	or r3, r3, r5
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r3, zero, .LBB0_1048
# %bb.1047:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r6)
.LBB0_1048:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	loads.w r3, 4(r22)
	loads.w r5, 4(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r7, r3, r20
	seteq r16, r3, zero
	seteq r11, r5, zero
	seteq r12, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r7, r11
	and r7, r16, r12
	or r5, r5, r7
	lui r7, 523264
	or r3, r3, r5
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r3, zero, .LBB0_1050
# %bb.1049:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_1050:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	loads.w r3, 8(r22)
	loads.w r5, 8(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r28, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r28, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r3, zero, .LBB0_1052
# %bb.1051:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 8(r6)
.LBB0_1052:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	loads.w r3, 12(r22)
	loads.w r5, 12(r18)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r22, r3, zero
	seteq r16, r5, zero
	seteq r18, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r22, r18
	or r5, r5, r12
	or r3, r3, r5
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	bneq r3, zero, .LBB0_1045
# %bb.1053:                             # %vector.body194
                                        #   in Loop: Header=BB0_1046 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r6)
	j .LBB0_1045
.LBB0_1054:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1246 7 is_stmt 1              # parallel-rne.mlir:1246:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
.LBB0_1055:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	zext_int2long r[2:3], zero
	.loc	1 1282 7 is_stmt 1              # parallel-rne.mlir:1282:7
	store.d r[2:3], -400(r30)               # 8-byte Folded Spill
	loadli.w r2,  -404(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1084
# %bb.1056:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -420(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	addli r18, zero, 1
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	addli r3, zero, 1792
	zext_int2long r[8:9], r3
	addli r3, zero, 1920
	zext_int2long r[3:4], r3
	.loc	1 1282 7                        # parallel-rne.mlir:1282:7
	store.d r[3:4], -384(r30)               # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	loadli.w r3,  -416(r30)                 # 4-byte Folded Reload
	or r4, r2, r3
	j .LBB0_1058
.LBB0_1057:                             # %middle.block
                                        #   in Loop: Header=BB0_1058 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[8:9], -384(r30)                # 8-byte Folded Reload
	.loc	1 1290 9 is_stmt 1              # parallel-rne.mlir:1290:9
	andi r2, r18, 1
	addli r18, zero, 0
	beq r2, zero, .LBB0_1083
.LBB0_1058:                             # %vector.memcheck
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1075 Depth 3
                                        #       Child Loop BB0_1061 Depth 3
	.loc	1 1291 11                       # parallel-rne.mlir:1291:11
	beq r4, zero, .LBB0_1073
# %bb.1059:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1058 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_1061
.LBB0_1060:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	.loc	1 1291 11                       # parallel-rne.mlir:1291:11
	setlt.ul r3, r[6:7], r[14:15]
	.loc	1 1313 13 is_stmt 1             # parallel-rne.mlir:1313:13
	add.s r2, r19, r2
	.loc	1 1291 11                       # parallel-rne.mlir:1291:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1313 13                       # parallel-rne.mlir:1313:13
	stores.w r11, 0(r2)
	.loc	1 1291 11                       # parallel-rne.mlir:1291:11
	beq r3, zero, .LBB0_1057
.LBB0_1061:                             # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1058 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	add.ul r[2:3], r[6:7], r[8:9]
	lui r11, 523264
	lui r21, 523264
	slli r2, r2, 2
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	add.s r3, r17, r2
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	add.s r5, r10, r2
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	loads.w r3, 0(r3)
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	loads.w r22, 0(r5)
	.loc	1 1297 19                       # parallel-rne.mlir:1297:19
	and r12, r3, r27
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	beq r12, r20, .LBB0_1063
# %bb.1062:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r21, r22, 0
.LBB0_1063:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	add.s r3, r5, r2
	loads.w r3, 0(r3)
	and r13, r3, r27
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	beq r13, zero, .LBB0_1071
# %bb.1064:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r12, zero, .LBB0_1072
.LBB0_1065:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	beq r13, r20, .LBB0_1067
.LBB0_1066:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r21, 0
.LBB0_1067:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	setlt.u r3, r20, r12
	lui r12, 523264
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r3, zero, .LBB0_1069
# %bb.1068:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r22, 0
.LBB0_1069:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	setlt.u r3, r20, r13
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r3, zero, .LBB0_1060
# %bb.1070:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_1060
.LBB0_1071:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	lui r22, 523264
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	beq r12, zero, .LBB0_1065
.LBB0_1072:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1061 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r22, r21, 0
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r13, r20, .LBB0_1066
	j .LBB0_1067
.LBB0_1073:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1058 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	load.d r[24:25], -400(r30)              # 8-byte Folded Reload
	j .LBB0_1075
.LBB0_1074:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	.loc	1 1291 11 is_stmt 1             # parallel-rne.mlir:1291:11
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	.loc	1 1313 13                       # parallel-rne.mlir:1313:13
	add.s r2, r19, r2
	stores.w r26, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 1291 11                       # parallel-rne.mlir:1291:11
	seteq.d r3, r[24:25], r[5:6]
	loadli.w r5,  -364(r30)                 # 4-byte Folded Reload
	bneq r3, zero, .LBB0_1057
.LBB0_1075:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1058 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	add.ul r[2:3], r[24:25], r[8:9]
	lui r26, 523264
	slli r2, r2, 2
	add.s r6, r5, r2
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	add.s r7, r17, r2
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	add.s r21, r10, r2
	.loc	1 1292 19                       # parallel-rne.mlir:1292:19
	loads.w r3, 0(r6)
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	loads.w r5, 0(r7)
	.loc	1 1299 19                       # parallel-rne.mlir:1299:19
	and r3, r3, r27
	.loc	1 1297 19                       # parallel-rne.mlir:1297:19
	and r5, r5, r27
	.loc	1 1300 19                       # parallel-rne.mlir:1300:19
	seteq r11, r3, r20
	.loc	1 1304 20                       # parallel-rne.mlir:1304:20
	seteq r16, r3, zero
	.loc	1 1301 19                       # parallel-rne.mlir:1301:19
	seteq r12, r5, zero
	.loc	1 1303 19                       # parallel-rne.mlir:1303:19
	seteq r13, r5, r20
	.loc	1 1309 20                       # parallel-rne.mlir:1309:20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	.loc	1 1302 19                       # parallel-rne.mlir:1302:19
	and r5, r11, r12
	.loc	1 1305 20                       # parallel-rne.mlir:1305:20
	and r11, r16, r13
	lui r13, 523264
	.loc	1 1306 20                       # parallel-rne.mlir:1306:20
	or r5, r5, r11
	.loc	1 1310 20                       # parallel-rne.mlir:1310:20
	or r3, r3, r5
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r3, zero, .LBB0_1077
# %bb.1076:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r13, 0(r21)
.LBB0_1077:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	loads.w r3, 4(r6)
	loads.w r5, 4(r7)
	and r3, r3, r27
	and r5, r5, r27
	seteq r11, r3, r20
	seteq r22, r3, zero
	seteq r12, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r11, r12
	and r11, r22, r16
	or r5, r5, r11
	lui r11, 523264
	or r3, r3, r5
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r3, zero, .LBB0_1079
# %bb.1078:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 4(r21)
.LBB0_1079:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	loads.w r3, 8(r6)
	loads.w r5, 8(r7)
	and r3, r3, r27
	and r5, r5, r27
	seteq r12, r3, r20
	seteq r28, r3, zero
	seteq r16, r5, zero
	seteq r22, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r12, r16
	and r12, r28, r22
	or r5, r5, r12
	lui r12, 523264
	or r3, r3, r5
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r3, zero, .LBB0_1081
# %bb.1080:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 8(r21)
.LBB0_1081:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	loads.w r3, 12(r6)
	loads.w r5, 12(r7)
	and r3, r3, r27
	and r5, r5, r27
	seteq r6, r3, r20
	seteq r22, r3, zero
	seteq r7, r5, zero
	seteq r16, r5, r20
	max.u r3, r3, r5
	setlt.u r3, r20, r3
	and r5, r6, r7
	and r6, r22, r16
	or r5, r5, r6
	or r3, r3, r5
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	bneq r3, zero, .LBB0_1074
# %bb.1082:                             # %vector.body
                                        #   in Loop: Header=BB0_1075 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r26, 12(r21)
	j .LBB0_1074
.LBB0_1083:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1282 7 is_stmt 1              # parallel-rne.mlir:1282:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r4
	load.d r[11:12], -392(r30)              # 8-byte Folded Reload
.LBB0_1084:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1318 7                        # parallel-rne.mlir:1318:7
	addli r2, zero, 255
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r10
	.loc	1 1318 7                        # parallel-rne.mlir:1318:7
	csr_set csr5, r2
	.loc	1 1319 7                        # parallel-rne.mlir:1319:7
	addli r2, zero, 3
	.loc	1 1318 7                        # parallel-rne.mlir:1318:7
	sync_core
	.loc	1 1319 7                        # parallel-rne.mlir:1319:7
	beq r4, r2, .LBB0_5
# %bb.1085:                             # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 5
	addli r15, zero, 1
	addli r16, zero, 7
	addli r17, zero, 16
	.loc	1 1330 7 is_stmt 1              # parallel-rne.mlir:1330:7
	bneq r4, zero, .LBB0_7
# %bb.1086:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -440(r30)                 # 4-byte Folded Reload
	load.d r[4:5], -400(r30)                # 8-byte Folded Reload
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	addli r6, zero, 12
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	sll.d r[6:7], r[11:12], r6
	load.d r[11:12], 24(r30)
	slli r2, r2, 4
	sll.d r[8:9], r[8:9], r15
	sext_int2long r[2:3], r2
	add.ul r[6:7], r[11:12], r[6:7]
	addli r11, zero, 32
	min.sl r[4:5], r[2:3], r[4:5]
	xwait r11, 0
	lock zero, r14
	add.ul r[6:7], r[6:7], r[8:9]
	dma_cfg r15, zero, zero, 0
	addli.d r[4:5], r[4:5], 16
	dma_cfg zero, r15, zero, 1
	max.sl r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r17
	.loc	1 1326 13 is_stmt 1             # parallel-rne.mlir:1326:13
	min.sl r[2:3], r[2:3], r[4:5]
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r4, r4, 2
	addli r5, zero, 512
	dma_cfg r6, r19, r4, 3
	addli r4, zero, 256
	dma_cfg r4, r5, r2, 4
	addli r2, zero, 33
	dma_run zero
	unlock r14
	j .LBB0_6
.LBB0_1087:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -408(r30)               # 4-byte Folded Spill
	storeli.w zero, -404(r30)               # 4-byte Folded Spill
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	j .LBB0_22
.LBB0_1088:                             # %._crit_edge
	.loc	1 1332 5                        # parallel-rne.mlir:1332:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_1090
# %bb.1089:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1332 5                        # parallel-rne.mlir:1332:5
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
.LBB0_1090:
	.loc	1 1333 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1333:5
	addli sp, sp, 520
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
	.long	584                             # 0x248
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-3xcqeiwo" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
