	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-24siyem_" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -520
	addli r1, zero, 1
.Ltmp0:
	.loc	1 37 5 prologue_end             # parallel-rne.mlir:37:5
	core_id r2
	core_id r11
	addli r30, sp, 456
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
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
	addli r1, zero, 11
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 3
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 33
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 22
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 26
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 35
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 41
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	storeli.w zero, -16(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -32(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -48(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -64(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -80(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -96(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -112(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -128(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -144(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -160(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -176(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -192(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -208(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -224(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -240(r30)
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
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	storeli.w r3, -20(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -140(r30)
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	storeli.w r3, -180(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r3, -204(r30)
	storeli.w r3, -200(r30)
	storeli.w r3, -196(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -220(r30)
	storeli.w r3, -216(r30)
	storeli.w r3, -212(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w r3, -236(r30)
	storeli.w r3, -232(r30)
	storeli.w r3, -228(r30)
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r1, r2, r6
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	fmac.s r2, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	min.s r2, r2, r4
	.loc	1 65 5                          # parallel-rne.mlir:65:5
	ble.s r2, r1, .LBB0_1085
# %bb.4:                                # %.lr.ph
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	sext_int2long r[15:16], r1
	lui r1, 39
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r13, zero, 3
	addli r17, zero, 1
	addli r18, zero, 7
	addli r14, zero, 4
	addli r20, zero, 32
	addli r21, zero, 2
	addli r22, zero, 6
	addli r23, zero, 64
	lui r4, 522240
	lui r26, 268288
	lui r28, 1024
	ori r1, r1, 1536
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	store.d r[2:3], -408(r30)               # 8-byte Folded Spill
	lui r2, 63
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	lui r1, 51
	ori r1, r1, 1536
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 87
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	lui r1, 75
	ori r1, r1, 1536
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 99
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 1536
	lui r2, 2047
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	lui r1, 111
	ori r19, r2, 4095
	lui r2, 56
	ori r1, r1, 1536
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	lui r1, 123
	ori r1, r1, 1536
	storeli.w r1, -440(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -444(r30)                 # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -448(r30)                 # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -452(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1321 7 is_stmt 1              # parallel-rne.mlir:1321:7
	addli r1, zero, 22
	addli r20, zero, 32
	addli r17, zero, 1
	addli r18, zero, 7
	addli r21, zero, 2
	addli r22, zero, 6
	addli r23, zero, 64
	xsignal r1, 0
	.loc	1 1323 7                        # parallel-rne.mlir:1323:7
	addli r1, zero, 41
	.loc	1 1322 7                        # parallel-rne.mlir:1322:7
	xsignal r20, 0
	.loc	1 1323 7                        # parallel-rne.mlir:1323:7
	xsignal r1, 0
	.loc	1 1324 7                        # parallel-rne.mlir:1324:7
	addli r1, zero, 43
	xsignal r1, 0
	load.d r[15:16], -360(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 65 5                          # parallel-rne.mlir:65:5
	load.d r[1:2], -408(r30)                # 8-byte Folded Reload
	addli.d r[15:16], r[15:16], 1
	addli r14, zero, 4
	setlt.sl r1, r[15:16], r[1:2]
	beq r1, zero, .LBB0_1085
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
                                        #     Child Loop BB0_26 Depth 2
                                        #     Child Loop BB0_36 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_39 Depth 3
                                        #     Child Loop BB0_65 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_68 Depth 3
                                        #     Child Loop BB0_94 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #     Child Loop BB0_123 Depth 2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #     Child Loop BB0_152 Depth 2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_155 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #     Child Loop BB0_210 Depth 2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #     Child Loop BB0_239 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
                                        #     Child Loop BB0_280 Depth 2
                                        #       Child Loop BB0_282 Depth 3
                                        #       Child Loop BB0_281 Depth 3
                                        #     Child Loop BB0_286 Depth 2
                                        #       Child Loop BB0_288 Depth 3
                                        #       Child Loop BB0_287 Depth 3
                                        #     Child Loop BB0_292 Depth 2
                                        #       Child Loop BB0_294 Depth 3
                                        #       Child Loop BB0_293 Depth 3
                                        #     Child Loop BB0_298 Depth 2
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_299 Depth 3
                                        #     Child Loop BB0_304 Depth 2
                                        #       Child Loop BB0_306 Depth 3
                                        #       Child Loop BB0_305 Depth 3
                                        #     Child Loop BB0_310 Depth 2
                                        #       Child Loop BB0_312 Depth 3
                                        #       Child Loop BB0_311 Depth 3
                                        #     Child Loop BB0_316 Depth 2
                                        #       Child Loop BB0_318 Depth 3
                                        #       Child Loop BB0_317 Depth 3
                                        #     Child Loop BB0_322 Depth 2
                                        #       Child Loop BB0_324 Depth 3
                                        #       Child Loop BB0_323 Depth 3
                                        #     Child Loop BB0_338 Depth 2
                                        #       Child Loop BB0_345 Depth 3
                                        #       Child Loop BB0_341 Depth 3
                                        #     Child Loop BB0_364 Depth 2
                                        #       Child Loop BB0_371 Depth 3
                                        #       Child Loop BB0_367 Depth 3
                                        #     Child Loop BB0_390 Depth 2
                                        #       Child Loop BB0_397 Depth 3
                                        #       Child Loop BB0_393 Depth 3
                                        #     Child Loop BB0_416 Depth 2
                                        #       Child Loop BB0_423 Depth 3
                                        #       Child Loop BB0_419 Depth 3
                                        #     Child Loop BB0_442 Depth 2
                                        #       Child Loop BB0_449 Depth 3
                                        #       Child Loop BB0_445 Depth 3
                                        #     Child Loop BB0_468 Depth 2
                                        #       Child Loop BB0_475 Depth 3
                                        #       Child Loop BB0_471 Depth 3
                                        #     Child Loop BB0_494 Depth 2
                                        #       Child Loop BB0_501 Depth 3
                                        #       Child Loop BB0_497 Depth 3
                                        #     Child Loop BB0_520 Depth 2
                                        #       Child Loop BB0_527 Depth 3
                                        #       Child Loop BB0_523 Depth 3
                                        #     Child Loop BB0_559 Depth 2
                                        #       Child Loop BB0_569 Depth 3
                                        #       Child Loop BB0_562 Depth 3
                                        #     Child Loop BB0_595 Depth 2
                                        #       Child Loop BB0_605 Depth 3
                                        #       Child Loop BB0_598 Depth 3
                                        #     Child Loop BB0_631 Depth 2
                                        #       Child Loop BB0_641 Depth 3
                                        #       Child Loop BB0_634 Depth 3
                                        #     Child Loop BB0_667 Depth 2
                                        #       Child Loop BB0_677 Depth 3
                                        #       Child Loop BB0_670 Depth 3
                                        #     Child Loop BB0_703 Depth 2
                                        #       Child Loop BB0_713 Depth 3
                                        #       Child Loop BB0_706 Depth 3
                                        #     Child Loop BB0_739 Depth 2
                                        #       Child Loop BB0_749 Depth 3
                                        #       Child Loop BB0_742 Depth 3
                                        #     Child Loop BB0_775 Depth 2
                                        #       Child Loop BB0_785 Depth 3
                                        #       Child Loop BB0_778 Depth 3
                                        #     Child Loop BB0_811 Depth 2
                                        #       Child Loop BB0_821 Depth 3
                                        #       Child Loop BB0_814 Depth 3
                                        #     Child Loop BB0_859 Depth 2
                                        #       Child Loop BB0_876 Depth 3
                                        #       Child Loop BB0_862 Depth 3
                                        #     Child Loop BB0_887 Depth 2
                                        #       Child Loop BB0_904 Depth 3
                                        #       Child Loop BB0_890 Depth 3
                                        #     Child Loop BB0_915 Depth 2
                                        #       Child Loop BB0_932 Depth 3
                                        #       Child Loop BB0_918 Depth 3
                                        #     Child Loop BB0_943 Depth 2
                                        #       Child Loop BB0_960 Depth 3
                                        #       Child Loop BB0_946 Depth 3
                                        #     Child Loop BB0_971 Depth 2
                                        #       Child Loop BB0_988 Depth 3
                                        #       Child Loop BB0_974 Depth 3
                                        #     Child Loop BB0_999 Depth 2
                                        #       Child Loop BB0_1016 Depth 3
                                        #       Child Loop BB0_1002 Depth 3
                                        #     Child Loop BB0_1027 Depth 2
                                        #       Child Loop BB0_1044 Depth 3
                                        #       Child Loop BB0_1030 Depth 3
                                        #     Child Loop BB0_1056 Depth 2
                                        #       Child Loop BB0_1073 Depth 3
                                        #       Child Loop BB0_1059 Depth 3
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	loadli.w r1,  48(r30)
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	loadli.w r2,  44(r30)
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	addli r9, zero, 8
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	loadli.w r7,  -224(r30)
	.loc	1 103 13                        # parallel-rne.mlir:103:13
	loadli.w r8,  -208(r30)
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	div.s r1, r15, r1
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	mod.s r11, r7, r13
	.loc	1 103 13                        # parallel-rne.mlir:103:13
	mod.s r12, r8, r13
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	addli r7, r7, 1
	.loc	1 103 13                        # parallel-rne.mlir:103:13
	addli r8, r8, 1
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	storeli.w r7, -224(r30)
	.loc	1 103 13                        # parallel-rne.mlir:103:13
	storeli.w r8, -208(r30)
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	div.s r1, r1, r2
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	addli r2, zero, 16
	.loc	1 103 13                        # parallel-rne.mlir:103:13
	slli r7, r12, 12
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	div.s r5, r1, r2
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	loadli.w r2,  -240(r30)
	.loc	1 72 13                         # parallel-rne.mlir:72:13
	slli r3, r5, 3
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	sub.s r6, r17, r3
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	min.s r6, r6, r9
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	addli r9, r2, 1
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	mod.s r10, r1, r6
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	storeli.w r9, -240(r30)
	.loc	1 76 13                         # parallel-rne.mlir:76:13
	add.s r9, r10, r3
	.loc	1 101 13                        # parallel-rne.mlir:101:13
	slli r3, r11, 12
	.loc	1 84 13                         # parallel-rne.mlir:84:13
	zext_int2long r[10:11], r9
	storeli.w r9, -388(r30)                 # 4-byte Folded Spill
	.loc	1 103 13                        # parallel-rne.mlir:103:13
	lui r9, 12
	add.s r7, r7, r9
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	store.d r[10:11], -384(r30)             # 8-byte Folded Spill
	bneq r8, r17, .LBB0_9
# %bb.8:                                # %.thread76
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r8, zero, 12
	storeli.w zero, -344(r30)               # 4-byte Folded Spill
	xwait r13, 0
	lock zero, r14
	dma_cfg r17, r17, zero, 0
	sll.d r[8:9], r[10:11], r8
	load.d r[10:11], 0(r30)
	add.ul r[8:9], r[10:11], r[8:9]
	addli r10, zero, 128
	dma_cfg zero, r9, zero, 2
	dma_cfg r7, r8, r10, 3
	dma_cfg r10, r10, r20, 4
	dma_run zero
	unlock r14
	xsignal r21, 0
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r8, r21, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r8, zero, 5
	xwait r21, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r13, zero, 0
	ds_cfg r23, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r20, zero, 13
	shuffle_batch r3, r7, r23, 1
	addli r7, zero, 1
	unlock zero
	xsignal r13, 0
	storeli.w r7, -344(r30)                 # 4-byte Folded Spill
	xsignal r14, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -344(r30)               # 4-byte Folded Spill
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r5, r5, 4
	.loc	1 118 13 is_stmt 1              # parallel-rne.mlir:118:13
	loadli.w r7,  -176(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mod.s r2, r2, r13
	.loc	1 122 7 is_stmt 1               # parallel-rne.mlir:122:7
	store.d r[15:16], -360(r30)             # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r1, r5
	.loc	1 116 13 is_stmt 1              # parallel-rne.mlir:116:13
	loadli.w r5,  -192(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r1, r1, r6
	.loc	1 118 13 is_stmt 1              # parallel-rne.mlir:118:13
	mod.s r6, r7, r13
	addli r7, r7, 1
	.loc	1 116 13                        # parallel-rne.mlir:116:13
	addli r8, r5, 1
	.loc	1 118 13                        # parallel-rne.mlir:118:13
	storeli.w r7, -176(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r2, r2, 14
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r7
	.loc	1 116 13                        # parallel-rne.mlir:116:13
	storeli.w r8, -192(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[8:9], r1
	.loc	1 118 13 is_stmt 1              # parallel-rne.mlir:118:13
	slli r6, r6, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[9:10], r[8:9], r18
	.loc	1 118 13                        # parallel-rne.mlir:118:13
	lui r8, 15
	add.s r6, r6, r8
	.loc	1 122 7 is_stmt 1               # parallel-rne.mlir:122:7
	store.d r[9:10], -376(r30)              # 8-byte Folded Spill
	bneq r7, r22, .LBB0_14
# %bb.13:                               # %.thread77
                                        #   in Loop: Header=BB0_7 Depth=1
	sll.d r[7:8], r[9:10], r17
	load.d r[9:10], 8(r30)
	storeli.w zero, -340(r30)               # 4-byte Folded Spill
	storeli.w zero, -336(r30)               # 4-byte Folded Spill
	xwait r18, 0
	lock zero, r14
	addli r3, zero, 256
	addli r5, zero, 512
	dma_cfg r17, r17, zero, 0
	add.ul r[7:8], r[9:10], r[7:8]
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r3, 3
	dma_cfg r3, r5, r23, 4
	dma_run zero
	unlock r14
	xsignal r22, 0
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	j .LBB0_22
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r5, r5, r13
	slli r5, r5, 14
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	beq r7, r14, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r7, r18, .LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 9
	storeli.w zero, -340(r30)               # 4-byte Folded Spill
	xwait r22, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r13, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r23, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 1
	shuffle_coa r5, r6, r23, 2
	unlock zero
	xsignal r18, 0
	storeli.w r3, -336(r30)                 # 4-byte Folded Spill
	addli r3, zero, 8
	j .LBB0_20
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 124 7 is_stmt 1               # parallel-rne.mlir:124:7
	addli r6, zero, 8
	xwait r14, 0
	addli r8, zero, 0
	addli r7, zero, 1
	addli r9, zero, 11
	xwait r6, 0
	addli r6, zero, 1
	xwait r9, 0
.LBB0_18:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r9, r8, 13
	slli r8, r8, 8
	lock zero, r6
	mm_cfg r23, r23, r20, 0
	or r9, r9, r5
	or r8, r8, r2
	mm_cfg r21, r14, r6, 2
	mm r8, r3, r9, 5
	andi r9, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r6
	bneq r9, zero, .LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 5
	storeli.w zero, -336(r30)               # 4-byte Folded Spill
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	addli r3, zero, 1
	storeli.w r3, -340(r30)                 # 4-byte Folded Spill
	addli r3, zero, 10
.LBB0_20:                               # %.thread78
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r3, 0
	j .LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -340(r30)               # 4-byte Folded Spill
	storeli.w zero, -336(r30)               # 4-byte Folded Spill
.LBB0_22:                               # %.thread78
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 128
	slli r1, r1, 7
	zext_int2long r[22:23], r3
	.loc	1 138 13 is_stmt 1              # parallel-rne.mlir:138:13
	loadli.w r3,  -160(r30)
	.loc	1 131 13                        # parallel-rne.mlir:131:13
	zext_int2long r[5:6], r1
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	loadli.w r1,  -144(r30)
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	min.ul r[7:8], r[5:6], r[22:23]
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	mod.s r9, r3, r13
	addli r3, r3, 1
	.loc	1 133 13                        # parallel-rne.mlir:133:13
	addli.d r[7:8], r[7:8], 128
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	storeli.w r3, -160(r30)
	lui r3, 27
	.loc	1 135 13                        # parallel-rne.mlir:135:13
	max.ul r[7:8], r[7:8], r[5:6]
	sub.sl r[5:6], r[7:8], r[5:6]
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	slli r7, r9, 9
	.loc	1 136 13                        # parallel-rne.mlir:136:13
	min.ul r[11:12], r[5:6], r[22:23]
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	addli r5, r1, 1
	.loc	1 138 13                        # parallel-rne.mlir:138:13
	add.s r3, r7, r3
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	storeli.w r5, -144(r30)
	.loc	1 143 7                         # parallel-rne.mlir:143:7
	store.d r[11:12], -400(r30)             # 8-byte Folded Spill
	bneq r8, r17, .LBB0_24
# %bb.23:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[5:6], -376(r30)                # 8-byte Folded Reload
	load.d r[9:10], 16(r30)
	addli r2, zero, 13
	xwait r2, 0
	lock zero, r14
	slli r2, r11, 1
	sll.d r[5:6], r[5:6], r17
	dma_cfg zero, r17, zero, 0
	add.ul r[5:6], r[9:10], r[5:6]
	dma_cfg zero, r6, zero, 2
	dma_cfg r3, r5, r2, 3
	addli r2, zero, 256
	addli r3, zero, 512
	dma_cfg r3, r2, r17, 4
	addli r2, zero, 12
	dma_run zero
	unlock r14
	xsignal r2, 0
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	loadli.w r2,  -128(r30)
	loadli.w r5,  -412(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r13
	addli r2, r2, 1
	storeli.w r2, -128(r30)
	slli r3, r3, 14
	add.s r10, r3, r5
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	j .LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	loadli.w r5,  -128(r30)
	loadli.w r7,  -412(r30)                 # 4-byte Folded Reload
	mod.s r6, r5, r13
	addli r5, r5, 1
	storeli.w r5, -128(r30)
	slli r6, r6, 14
	add.s r10, r6, r7
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	bneq r8, r13, .LBB0_31
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 10
	addli r5, zero, 0
	lui r9, 4
	xwait r6, 0
	addli r6, zero, 12
	xwait r6, 0
	addli r6, zero, 19
	xwait r6, 0
	lock zero, r21
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 127
	ew_cfg zero, r6, zero, 2
	ew_cfg r17, zero, zero, 3
.LBB0_26:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r10, r5
	add.s r7, r2, r5
	addli r5, r5, 512
	dsmadd r6, r7, r3, 0
	bneq r5, r9, .LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	unlock r21
	xsignal r2, 0
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 16
	xsignal r2, 0
	addli r2, zero, 17
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 14
	xsignal r2, 0
.LBB0_28:                               # %.thread180
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	loadli.w r2,  -112(r30)
	loadli.w r5,  -416(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r13
	addli r2, r2, 1
	storeli.w r2, -112(r30)
	slli r3, r3, 14
	add.s r3, r3, r5
	storeli.w r3, -252(r30)                 # 4-byte Folded Spill
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	loadli.w r2,  -96(r30)
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	loadli.w r3,  -80(r30)
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	loadli.w r7,  -64(r30)
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	mod.s r5, r2, r13
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	mod.s r6, r3, r13
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	addli r2, r2, 1
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	addli r3, r3, 1
	storeli.w r7, -364(r30)                 # 4-byte Folded Spill
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	storeli.w r2, -96(r30)
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	storeli.w r3, -80(r30)
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	slli r2, r5, 14
	loadli.w r5,  -420(r30)                 # 4-byte Folded Reload
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	slli r3, r6, 14
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	add.s r15, r2, r5
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	loadli.w r5,  -424(r30)                 # 4-byte Folded Reload
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	addli r2, r7, 1
	storeli.w r2, -64(r30)
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	add.s r3, r3, r5
	bneq r8, r13, .LBB0_33
# %bb.30:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r2, zero, 15
	xwait r2, 0
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r2, zero, 23
	xwait r2, 0
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r2, zero, 25
	xwait r2, 0
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, zero, 33
	xwait r2, 0
	j .LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	loadli.w r2,  -112(r30)
	loadli.w r5,  -416(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r13
	addli r2, r2, 1
	storeli.w r2, -112(r30)
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	addli r2, zero, 5
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	slli r3, r3, 14
	add.s r3, r3, r5
	.loc	1 149 7                         # parallel-rne.mlir:149:7
	storeli.w r3, -252(r30)                 # 4-byte Folded Spill
	bneq r8, r2, .LBB0_29
# %bb.32:                               # %.thread81
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r6, zero, 1023
	lui r5, 260096
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	lock zero, r21
	lui r2, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 21
	ew_cfg zero, r6, zero, 2
	ew_cfg r14, zero, zero, 3
	ew_cfg r14, r14, zero, 19
	hp_ssmul r3, r10, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	xsignal r2, 0
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	loadli.w r2,  -96(r30)
	mod.s r3, r2, r13
	addli r2, r2, 1
	storeli.w r2, -96(r30)
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	addli r2, zero, 16
	xwait r2, 0
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	slli r2, r3, 14
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	addli r3, zero, 24
	xwait r3, 0
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	loadli.w r3,  -420(r30)                 # 4-byte Folded Reload
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	lock zero, r21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r5, 0
	ew_cfg zero, r6, zero, 2
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	add.s r15, r2, r3
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	ew_cfg r14, zero, zero, 3
	ew_cfg r14, r14, r14, 19
	dsmul r15, r10, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	loadli.w r2,  -80(r30)
	mod.s r3, r2, r13
	addli r2, r2, 1
	storeli.w r2, -80(r30)
	slli r2, r3, 14
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	addli r3, zero, 17
	xwait r3, 0
	.loc	1 154 13                        # parallel-rne.mlir:154:13
	loadli.w r3,  -424(r30)                 # 4-byte Folded Reload
	add.s r3, r2, r3
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r21
	addli r2, zero, 15
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r5, 0
	ew_cfg zero, r6, zero, 2
	ew_cfg r14, zero, zero, 3
	ew_cfg r14, r14, r14, 19
	dsmul r3, r15, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r21
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
	addli r2, zero, 25
	xsignal r2, 0
	.loc	1 157 13                        # parallel-rne.mlir:157:13
	loadli.w r2,  -64(r30)
	storeli.w r2, -364(r30)                 # 4-byte Folded Spill
	addli r2, r2, 1
	storeli.w r2, -64(r30)
.LBB0_33:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	mod.s r1, r1, r13
	lui r2, 27
	zext_int2long r[5:6], r13
	.loc	1 164 7 is_stmt 1               # parallel-rne.mlir:164:7
	xfence
	ori r2, r2, 1536
	store.d r[5:6], -320(r30)               # 8-byte Folded Spill
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	mfence { lm, sm, gm }
	slli r1, r1, 14
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r14, r1, r2
	.loc	1 166 7 is_stmt 1               # parallel-rne.mlir:166:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r14, r15
	storeli.w r10, -248(r30)                # 4-byte Folded Spill
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	sub.s r1, r14, r10
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	sub.s r1, r14, r3
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	addli r1, zero, 127
	sync_core
	zext_int2long r[20:21], r1
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	bneq r8, zero, .LBB0_62
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	zext_int2long r[5:6], zero
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_36
.LBB0_35:                               # %middle.block682
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 175 9 is_stmt 1               # parallel-rne.mlir:175:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_61
.LBB0_36:                               # %.preheader128
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_39 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -264(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[5:6], r1
	.loc	1 176 11 is_stmt 1              # parallel-rne.mlir:176:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_51
# %bb.37:                               # %scalar.ph674.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_39
.LBB0_38:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 198 13 is_stmt 1              # parallel-rne.mlir:198:13
	add.s r6, r14, r9
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 198 13                        # parallel-rne.mlir:198:13
	stores.w r10, 0(r6)
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	beq r5, zero, .LBB0_35
.LBB0_39:                               # %scalar.ph674
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.ul r[5:6], r[1:2], r[7:8]
	lui r10, 523264
	lui r12, 523264
	slli r9, r5, 2
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	add.s r6, r3, r9
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.s r5, r5, r9
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	loads.w r13, 0(r6)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	loads.w r5, 0(r5)
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	and r5, r5, r27
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	beq r5, r4, .LBB0_41
# %bb.40:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_41:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	add.s r6, r15, r9
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r6, zero, .LBB0_49
# %bb.42:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r5, zero, .LBB0_50
.LBB0_43:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	beq r6, r4, .LBB0_45
.LBB0_44:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_45:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r11, zero, .LBB0_47
# %bb.46:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_47:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	setlt.u r6, r4, r6
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r6, zero, .LBB0_38
# %bb.48:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r5, 0
	j .LBB0_38
.LBB0_49:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	beq r5, zero, .LBB0_43
.LBB0_50:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_39 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r6, r4, .LBB0_44
	j .LBB0_45
.LBB0_51:                               # %vector.body676.preheader
                                        #   in Loop: Header=BB0_36 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 176 11 is_stmt 1              # parallel-rne.mlir:176:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 198 13                        # parallel-rne.mlir:198:13
	add.s r2, r14, r2
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	seteq.d r6, r[9:10], r[22:23]
	.loc	1 198 13                        # parallel-rne.mlir:198:13
	stores.w r17, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 176 11                        # parallel-rne.mlir:176:11
	bneq r6, zero, .LBB0_35
.LBB0_53:                               # %vector.body676
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.ul r[1:2], r[9:10], r[7:8]
	slli r2, r1, 2
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.s r18, r15, r2
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	add.s r24, r3, r2
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.s r13, r1, r2
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	loads.w r1, 0(r18)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	loads.w r5, 0(r13)
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	and r1, r1, r27
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	and r5, r5, r27
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	seteq r6, r1, r4
	.loc	1 189 20                        # parallel-rne.mlir:189:20
	seteq r17, r1, zero
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	seteq r12, r5, zero
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	seteq r16, r5, r4
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	and r5, r6, r12
	.loc	1 190 20                        # parallel-rne.mlir:190:20
	and r6, r17, r16
	lui r17, 523264
	lui r12, 523264
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	or r5, r5, r6
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	or r1, r1, r5
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_55:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r1, 4(r18)
	loads.w r5, 4(r13)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r28, r1, zero
	seteq r16, r5, zero
	seteq r25, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r16
	and r6, r28, r25
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r5, zero, .LBB0_57
# %bb.56:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_57:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r5, 8(r18)
	loads.w r6, 8(r13)
	and r5, r5, r27
	and r6, r6, r27
	seteq r16, r5, r4
	seteq r11, r5, zero
	seteq r28, r6, r4
	seteq r25, r6, zero
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r16, r25
	and r11, r11, r28
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r6, zero, .LBB0_59
# %bb.58:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_59:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r6, 12(r18)
	loads.w r11, 12(r13)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r13, r6, r4
	seteq r25, r6, zero
	seteq r16, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r13, r16
	and r13, r25, r18
	or r11, r11, r13
	or r6, r6, r11
	.loc	1 196 20                        # parallel-rne.mlir:196:20
	bneq r6, zero, .LBB0_52
# %bb.60:                               # %vector.body676
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r24)
	j .LBB0_52
.LBB0_61:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	mfence { sm }
.LBB0_62:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 203 7 is_stmt 1               # parallel-rne.mlir:203:7
	store.d r[1:2], -312(r30)               # 8-byte Folded Spill
	addli r1, zero, 1
	bneq r8, r1, .LBB0_91
# %bb.63:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 203 7                         # parallel-rne.mlir:203:7
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	addli r1, zero, 4
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_65
.LBB0_64:                               # %middle.block667
                                        #   in Loop: Header=BB0_65 Depth=2
	.loc	1 211 9 is_stmt 1               # parallel-rne.mlir:211:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_90
.LBB0_65:                               # %.preheader127
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_68 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -264(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[5:6], r1
	.loc	1 212 11 is_stmt 1              # parallel-rne.mlir:212:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_80
# %bb.66:                               # %scalar.ph659.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_68
.LBB0_67:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 234 13 is_stmt 1              # parallel-rne.mlir:234:13
	add.s r6, r14, r9
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	stores.w r10, 0(r6)
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	beq r5, zero, .LBB0_64
.LBB0_68:                               # %scalar.ph659
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.ul r[5:6], r[1:2], r[7:8]
	lui r10, 523264
	lui r12, 523264
	slli r9, r5, 2
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.s r6, r3, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	add.s r5, r5, r9
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	loads.w r13, 0(r6)
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	loads.w r5, 0(r5)
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r5, r5, r27
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	beq r5, r4, .LBB0_70
# %bb.69:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_70:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	add.s r6, r15, r9
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r6, zero, .LBB0_78
# %bb.71:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r5, zero, .LBB0_79
.LBB0_72:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	beq r6, r4, .LBB0_74
.LBB0_73:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_74:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r11, zero, .LBB0_76
# %bb.75:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_76:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	setlt.u r6, r4, r6
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r6, zero, .LBB0_67
# %bb.77:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r5, 0
	j .LBB0_67
.LBB0_78:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	beq r5, zero, .LBB0_72
.LBB0_79:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_68 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r6, r4, .LBB0_73
	j .LBB0_74
.LBB0_80:                               # %vector.body661.preheader
                                        #   in Loop: Header=BB0_65 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 212 11 is_stmt 1              # parallel-rne.mlir:212:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	add.s r2, r14, r2
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	seteq.d r6, r[9:10], r[22:23]
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	stores.w r17, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 212 11                        # parallel-rne.mlir:212:11
	bneq r6, zero, .LBB0_64
.LBB0_82:                               # %vector.body661
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_65 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.ul r[1:2], r[9:10], r[7:8]
	lui r17, 523264
	slli r2, r1, 2
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.s r18, r15, r2
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	add.s r24, r3, r2
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	add.s r13, r1, r2
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	loads.w r1, 0(r18)
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	loads.w r5, 0(r13)
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	and r1, r1, r27
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r5, r5, r27
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	seteq r6, r1, r4
	.loc	1 225 20                        # parallel-rne.mlir:225:20
	seteq r16, r1, zero
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	seteq r11, r5, zero
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	seteq r12, r5, r4
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	and r5, r6, r11
	.loc	1 226 20                        # parallel-rne.mlir:226:20
	and r6, r16, r12
	lui r12, 523264
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	or r5, r5, r6
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	or r1, r1, r5
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r1, zero, .LBB0_84
# %bb.83:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_84:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r1, 4(r18)
	loads.w r5, 4(r13)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r16
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r5, zero, .LBB0_86
# %bb.85:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_86:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r5, 8(r18)
	loads.w r6, 8(r13)
	and r5, r5, r27
	and r6, r6, r27
	seteq r11, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r11, r16
	and r11, r28, r25
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r6, zero, .LBB0_88
# %bb.87:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_88:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r6, 12(r18)
	loads.w r11, 12(r13)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r13, r6, r4
	seteq r25, r6, zero
	seteq r16, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r13, r16
	and r13, r25, r18
	or r11, r11, r13
	or r6, r6, r11
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r6, zero, .LBB0_81
# %bb.89:                               # %vector.body661
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r24)
	j .LBB0_81
.LBB0_90:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 203 7                         # parallel-rne.mlir:203:7
	mfence { sm }
.LBB0_91:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 11
	zext_int2long r[1:2], r1
	.loc	1 239 7 is_stmt 1               # parallel-rne.mlir:239:7
	store.d r[1:2], -304(r30)               # 8-byte Folded Spill
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_120
# %bb.92:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 239 7                         # parallel-rne.mlir:239:7
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_94
.LBB0_93:                               # %middle.block652
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 247 9 is_stmt 1               # parallel-rne.mlir:247:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_119
.LBB0_94:                               # %.preheader126
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_97 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -264(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[5:6], r1
	.loc	1 248 11 is_stmt 1              # parallel-rne.mlir:248:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_109
# %bb.95:                               # %scalar.ph644.preheader
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_97
.LBB0_96:                               # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 270 13 is_stmt 1              # parallel-rne.mlir:270:13
	add.s r6, r14, r9
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r10, 0(r6)
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	beq r5, zero, .LBB0_93
.LBB0_97:                               # %scalar.ph644
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.ul r[5:6], r[1:2], r[7:8]
	lui r10, 523264
	lui r12, 523264
	slli r9, r5, 2
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	add.s r6, r3, r9
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	add.s r5, r5, r9
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	loads.w r13, 0(r6)
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	loads.w r5, 0(r5)
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	and r5, r5, r27
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	beq r5, r4, .LBB0_99
# %bb.98:                               # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_99:                               # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	add.s r6, r15, r9
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r6, zero, .LBB0_107
# %bb.100:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r5, zero, .LBB0_108
.LBB0_101:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	beq r6, r4, .LBB0_103
.LBB0_102:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_103:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r11, zero, .LBB0_105
# %bb.104:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_105:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	setlt.u r6, r4, r6
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r6, zero, .LBB0_96
# %bb.106:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r5, 0
	j .LBB0_96
.LBB0_107:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	beq r5, zero, .LBB0_101
.LBB0_108:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r6, r4, .LBB0_102
	j .LBB0_103
.LBB0_109:                              # %vector.body646.preheader
                                        #   in Loop: Header=BB0_94 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_111
.LBB0_110:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 248 11 is_stmt 1              # parallel-rne.mlir:248:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	add.s r2, r14, r2
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	seteq.d r6, r[9:10], r[22:23]
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r17, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	bneq r6, zero, .LBB0_93
.LBB0_111:                              # %vector.body646
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_94 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.ul r[1:2], r[9:10], r[7:8]
	lui r17, 523264
	slli r2, r1, 2
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.s r18, r15, r2
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	add.s r24, r3, r2
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	add.s r13, r1, r2
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	loads.w r1, 0(r18)
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	loads.w r5, 0(r13)
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	and r1, r1, r27
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	and r5, r5, r27
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	seteq r6, r1, r4
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	seteq r16, r1, zero
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	seteq r11, r5, zero
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	seteq r12, r5, r4
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r5, r6, r11
	.loc	1 262 20                        # parallel-rne.mlir:262:20
	and r6, r16, r12
	lui r12, 523264
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	or r5, r5, r6
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	or r1, r1, r5
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r1, zero, .LBB0_113
# %bb.112:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_113:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r1, 4(r18)
	loads.w r5, 4(r13)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r16
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r5, zero, .LBB0_115
# %bb.114:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_115:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r5, 8(r18)
	loads.w r6, 8(r13)
	and r5, r5, r27
	and r6, r6, r27
	seteq r11, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r11, r16
	and r11, r28, r25
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r6, zero, .LBB0_117
# %bb.116:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_117:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r6, 12(r18)
	loads.w r11, 12(r13)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r13, r6, r4
	seteq r25, r6, zero
	seteq r16, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r13, r16
	and r13, r25, r18
	or r11, r11, r13
	or r6, r6, r11
	.loc	1 268 20                        # parallel-rne.mlir:268:20
	bneq r6, zero, .LBB0_110
# %bb.118:                              # %vector.body646
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r24)
	j .LBB0_110
.LBB0_119:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 239 7                         # parallel-rne.mlir:239:7
	mfence { sm }
.LBB0_120:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	zext_int2long r[1:2], r1
	.loc	1 275 7 is_stmt 1               # parallel-rne.mlir:275:7
	store.d r[1:2], -296(r30)               # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r8, r1, .LBB0_149
# %bb.121:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	addli r1, zero, 12
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_123
.LBB0_122:                              # %middle.block637
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_148
.LBB0_123:                              # %.preheader125
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_140 Depth 3
                                        #       Child Loop BB0_126 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -264(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[5:6], r1
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_138
# %bb.124:                              # %scalar.ph629.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_126
.LBB0_125:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 306 13 is_stmt 1              # parallel-rne.mlir:306:13
	add.s r6, r14, r9
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r10, 0(r6)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r5, zero, .LBB0_122
.LBB0_126:                              # %scalar.ph629
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[5:6], r[1:2], r[7:8]
	lui r10, 523264
	lui r12, 523264
	slli r9, r5, 2
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	add.s r6, r3, r9
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.s r5, r5, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	loads.w r13, 0(r6)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	loads.w r5, 0(r5)
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r5, r5, r27
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	beq r5, r4, .LBB0_128
# %bb.127:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_128:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	add.s r6, r15, r9
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r6, zero, .LBB0_136
# %bb.129:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r5, zero, .LBB0_137
.LBB0_130:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	beq r6, r4, .LBB0_132
.LBB0_131:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_132:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r11, zero, .LBB0_134
# %bb.133:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_134:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	setlt.u r6, r4, r6
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r6, zero, .LBB0_125
# %bb.135:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r5, 0
	j .LBB0_125
.LBB0_136:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	beq r5, zero, .LBB0_130
.LBB0_137:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r6, r4, .LBB0_131
	j .LBB0_132
.LBB0_138:                              # %vector.body631.preheader
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_140
.LBB0_139:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r2, r14, r2
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r6, r[9:10], r[22:23]
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r17, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r6, zero, .LBB0_122
.LBB0_140:                              # %vector.body631
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[1:2], r[9:10], r[7:8]
	lui r17, 523264
	slli r2, r1, 2
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.s r18, r15, r2
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	add.s r24, r3, r2
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.s r13, r1, r2
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	loads.w r1, 0(r18)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	loads.w r5, 0(r13)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r1, r1, r27
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r5, r5, r27
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	seteq r6, r1, r4
	.loc	1 297 20                        # parallel-rne.mlir:297:20
	seteq r16, r1, zero
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	seteq r11, r5, zero
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	seteq r12, r5, r4
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	and r5, r6, r11
	.loc	1 298 20                        # parallel-rne.mlir:298:20
	and r6, r16, r12
	lui r12, 523264
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	or r5, r5, r6
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	or r1, r1, r5
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r1, zero, .LBB0_142
# %bb.141:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_142:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r1, 4(r18)
	loads.w r5, 4(r13)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r16
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r5, zero, .LBB0_144
# %bb.143:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_144:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r5, 8(r18)
	loads.w r6, 8(r13)
	and r5, r5, r27
	and r6, r6, r27
	seteq r11, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r11, r16
	and r11, r28, r25
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r6, zero, .LBB0_146
# %bb.145:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_146:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	loads.w r6, 12(r18)
	loads.w r11, 12(r13)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r13, r6, r4
	seteq r25, r6, zero
	seteq r16, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r13, r16
	and r13, r25, r18
	or r11, r11, r13
	or r6, r6, r11
	.loc	1 304 20                        # parallel-rne.mlir:304:20
	bneq r6, zero, .LBB0_139
# %bb.147:                              # %vector.body631
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r24)
	j .LBB0_139
.LBB0_148:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	mfence { sm }
.LBB0_149:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 19
	zext_int2long r[1:2], r1
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	store.d r[1:2], -288(r30)               # 8-byte Folded Spill
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_178
# %bb.150:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[5:6], r2
	.loc	1 311 7                         # parallel-rne.mlir:311:7
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_152
.LBB0_151:                              # %middle.block622
                                        #   in Loop: Header=BB0_152 Depth=2
	.loc	1 319 9 is_stmt 1               # parallel-rne.mlir:319:9
	load.d r[1:2], -288(r30)                # 8-byte Folded Reload
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_177
.LBB0_152:                              # %.preheader124
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_155 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -264(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[5:6], r1
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_167
# %bb.153:                              # %scalar.ph614.preheader
                                        #   in Loop: Header=BB0_152 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_155
.LBB0_154:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 342 13 is_stmt 1              # parallel-rne.mlir:342:13
	add.s r6, r14, r9
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 342 13                        # parallel-rne.mlir:342:13
	stores.w r10, 0(r6)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	beq r5, zero, .LBB0_151
.LBB0_155:                              # %scalar.ph614
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_152 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[5:6], r[1:2], r[7:8]
	lui r10, 523264
	lui r12, 523264
	slli r9, r5, 2
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.s r6, r3, r9
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.s r5, r5, r9
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	loads.w r13, 0(r6)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	loads.w r5, 0(r5)
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	and r5, r5, r27
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	beq r5, r4, .LBB0_157
# %bb.156:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_157:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	add.s r6, r15, r9
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r6, zero, .LBB0_165
# %bb.158:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r5, zero, .LBB0_166
.LBB0_159:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	beq r6, r4, .LBB0_161
.LBB0_160:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_161:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r11, zero, .LBB0_163
# %bb.162:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_163:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	setlt.u r6, r4, r6
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r6, zero, .LBB0_154
# %bb.164:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r5, 0
	j .LBB0_154
.LBB0_165:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	beq r5, zero, .LBB0_159
.LBB0_166:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r6, r4, .LBB0_160
	j .LBB0_161
.LBB0_167:                              # %vector.body616.preheader
                                        #   in Loop: Header=BB0_152 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_169
.LBB0_168:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 342 13                        # parallel-rne.mlir:342:13
	add.s r2, r14, r2
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	seteq.d r6, r[9:10], r[22:23]
	.loc	1 342 13                        # parallel-rne.mlir:342:13
	stores.w r17, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	bneq r6, zero, .LBB0_151
.LBB0_169:                              # %vector.body616
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_152 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[1:2], r[9:10], r[7:8]
	lui r17, 523264
	slli r2, r1, 2
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.s r18, r15, r2
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.s r24, r3, r2
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.s r13, r1, r2
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	loads.w r1, 0(r18)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	loads.w r5, 0(r13)
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	and r1, r1, r27
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	and r5, r5, r27
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	seteq r6, r1, r4
	.loc	1 333 20                        # parallel-rne.mlir:333:20
	seteq r16, r1, zero
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	seteq r11, r5, zero
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	seteq r12, r5, r4
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	and r5, r6, r11
	.loc	1 334 20                        # parallel-rne.mlir:334:20
	and r6, r16, r12
	lui r12, 523264
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	or r5, r5, r6
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	or r1, r1, r5
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r1, zero, .LBB0_171
# %bb.170:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_171:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r1, 4(r18)
	loads.w r5, 4(r13)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r16
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r5, zero, .LBB0_173
# %bb.172:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_173:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r5, 8(r18)
	loads.w r6, 8(r13)
	and r5, r5, r27
	and r6, r6, r27
	seteq r11, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r11, r16
	and r11, r28, r25
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r6, zero, .LBB0_175
# %bb.174:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_175:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	loads.w r6, 12(r18)
	loads.w r11, 12(r13)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r13, r6, r4
	seteq r25, r6, zero
	seteq r16, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r13, r16
	and r13, r25, r18
	or r11, r11, r13
	or r6, r6, r11
	.loc	1 340 20                        # parallel-rne.mlir:340:20
	bneq r6, zero, .LBB0_168
# %bb.176:                              # %vector.body616
                                        #   in Loop: Header=BB0_169 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r24)
	j .LBB0_168
.LBB0_177:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 311 7                         # parallel-rne.mlir:311:7
	mfence { sm }
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	zext_int2long r[1:2], r1
	.loc	1 347 7 is_stmt 1               # parallel-rne.mlir:347:7
	store.d r[1:2], -280(r30)               # 8-byte Folded Spill
	addli r1, zero, 5
	bneq r8, r1, .LBB0_207
# %bb.179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_181
.LBB0_180:                              # %middle.block607
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 355 9 is_stmt 1               # parallel-rne.mlir:355:9
	load.d r[1:2], -280(r30)                # 8-byte Folded Reload
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_206
.LBB0_181:                              # %.preheader123
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -264(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[5:6], r1
	.loc	1 356 11 is_stmt 1              # parallel-rne.mlir:356:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_196
# %bb.182:                              # %scalar.ph599.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_184
.LBB0_183:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 356 11                        # parallel-rne.mlir:356:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 378 13 is_stmt 1              # parallel-rne.mlir:378:13
	add.s r6, r14, r7
	.loc	1 356 11                        # parallel-rne.mlir:356:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	stores.w r8, 0(r6)
	.loc	1 356 11                        # parallel-rne.mlir:356:11
	beq r5, zero, .LBB0_180
.LBB0_184:                              # %scalar.ph599
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.ul r[5:6], r[1:2], r[9:10]
	lui r8, 523264
	lui r12, 523264
	slli r7, r5, 2
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	add.s r6, r3, r7
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	add.s r5, r5, r7
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	loads.w r13, 0(r6)
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	loads.w r5, 0(r5)
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	and r5, r5, r27
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	beq r5, r4, .LBB0_186
# %bb.185:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_186:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	add.s r6, r15, r7
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r6, zero, .LBB0_194
# %bb.187:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r5, zero, .LBB0_195
.LBB0_188:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	beq r6, r4, .LBB0_190
.LBB0_189:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_190:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r11, zero, .LBB0_192
# %bb.191:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_192:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r6, r4, r6
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r6, zero, .LBB0_183
# %bb.193:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r5, 0
	j .LBB0_183
.LBB0_194:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	beq r5, zero, .LBB0_188
.LBB0_195:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r6, r4, .LBB0_189
	j .LBB0_190
.LBB0_196:                              # %vector.body601.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[7:8], zero
	j .LBB0_198
.LBB0_197:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 356 11 is_stmt 1              # parallel-rne.mlir:356:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	add.s r2, r14, r2
	.loc	1 356 11                        # parallel-rne.mlir:356:11
	seteq.d r6, r[7:8], r[22:23]
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	stores.w r17, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 356 11                        # parallel-rne.mlir:356:11
	bneq r6, zero, .LBB0_180
.LBB0_198:                              # %vector.body601
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.ul r[1:2], r[7:8], r[9:10]
	lui r17, 523264
	slli r2, r1, 2
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.s r18, r15, r2
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	add.s r24, r3, r2
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	add.s r13, r1, r2
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	loads.w r1, 0(r18)
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	loads.w r5, 0(r13)
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	and r1, r1, r27
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	and r5, r5, r27
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	seteq r6, r1, r4
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	seteq r16, r1, zero
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	seteq r11, r5, zero
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	seteq r12, r5, r4
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	and r5, r6, r11
	.loc	1 370 20                        # parallel-rne.mlir:370:20
	and r6, r16, r12
	lui r12, 523264
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	or r5, r5, r6
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	or r1, r1, r5
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r1, zero, .LBB0_200
# %bb.199:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_200:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r1, 4(r18)
	loads.w r5, 4(r13)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r16
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r5, zero, .LBB0_202
# %bb.201:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_202:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r5, 8(r18)
	loads.w r6, 8(r13)
	and r5, r5, r27
	and r6, r6, r27
	seteq r11, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r11, r16
	and r11, r28, r25
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r6, zero, .LBB0_204
# %bb.203:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_204:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r6, 12(r18)
	loads.w r11, 12(r13)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r13, r6, r4
	seteq r25, r6, zero
	seteq r16, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r13, r16
	and r13, r25, r18
	or r11, r11, r13
	or r6, r6, r11
	.loc	1 376 20                        # parallel-rne.mlir:376:20
	bneq r6, zero, .LBB0_197
# %bb.205:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r24)
	j .LBB0_197
.LBB0_206:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 347 7                         # parallel-rne.mlir:347:7
	mfence { sm }
.LBB0_207:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 27
	zext_int2long r[1:2], r1
	.loc	1 383 7 is_stmt 1               # parallel-rne.mlir:383:7
	store.d r[1:2], -272(r30)               # 8-byte Folded Spill
	addli r1, zero, 6
	bneq r8, r1, .LBB0_236
# %bb.208:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_210
.LBB0_209:                              # %middle.block592
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 391 9 is_stmt 1               # parallel-rne.mlir:391:9
	load.d r[1:2], -272(r30)                # 8-byte Folded Reload
	load.d r[5:6], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_235
.LBB0_210:                              # %.preheader122
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_227 Depth 3
                                        #       Child Loop BB0_213 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -264(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[5:6], r1
	.loc	1 392 11 is_stmt 1              # parallel-rne.mlir:392:11
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_225
# %bb.211:                              # %scalar.ph584.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_213
.LBB0_212:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 392 11                        # parallel-rne.mlir:392:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 414 13 is_stmt 1              # parallel-rne.mlir:414:13
	add.s r6, r14, r7
	.loc	1 392 11                        # parallel-rne.mlir:392:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 414 13                        # parallel-rne.mlir:414:13
	stores.w r8, 0(r6)
	.loc	1 392 11                        # parallel-rne.mlir:392:11
	beq r5, zero, .LBB0_209
.LBB0_213:                              # %scalar.ph584
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	add.ul r[5:6], r[1:2], r[9:10]
	lui r8, 523264
	lui r12, 523264
	slli r7, r5, 2
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	add.s r6, r3, r7
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	add.s r5, r5, r7
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	loads.w r13, 0(r6)
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	loads.w r5, 0(r5)
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	and r5, r5, r27
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	beq r5, r4, .LBB0_215
# %bb.214:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_215:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	add.s r6, r15, r7
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r6, zero, .LBB0_223
# %bb.216:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r5, zero, .LBB0_224
.LBB0_217:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	beq r6, r4, .LBB0_219
.LBB0_218:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_219:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r11, zero, .LBB0_221
# %bb.220:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_221:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	setlt.u r6, r4, r6
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r6, zero, .LBB0_212
# %bb.222:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r5, 0
	j .LBB0_212
.LBB0_223:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	beq r5, zero, .LBB0_217
.LBB0_224:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_213 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r6, r4, .LBB0_218
	j .LBB0_219
.LBB0_225:                              # %vector.body586.preheader
                                        #   in Loop: Header=BB0_210 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[7:8], zero
	j .LBB0_227
.LBB0_226:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 392 11 is_stmt 1              # parallel-rne.mlir:392:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 414 13                        # parallel-rne.mlir:414:13
	add.s r2, r14, r2
	.loc	1 392 11                        # parallel-rne.mlir:392:11
	seteq.d r6, r[7:8], r[22:23]
	.loc	1 414 13                        # parallel-rne.mlir:414:13
	stores.w r17, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 392 11                        # parallel-rne.mlir:392:11
	bneq r6, zero, .LBB0_209
.LBB0_227:                              # %vector.body586
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_210 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	add.ul r[1:2], r[7:8], r[9:10]
	lui r17, 523264
	slli r2, r1, 2
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	add.s r18, r15, r2
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	add.s r24, r3, r2
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	add.s r13, r1, r2
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	loads.w r1, 0(r18)
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	loads.w r5, 0(r13)
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	and r1, r1, r27
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	and r5, r5, r27
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	seteq r6, r1, r4
	.loc	1 405 20                        # parallel-rne.mlir:405:20
	seteq r16, r1, zero
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	seteq r11, r5, zero
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	seteq r12, r5, r4
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	and r5, r6, r11
	.loc	1 406 20                        # parallel-rne.mlir:406:20
	and r6, r16, r12
	lui r12, 523264
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	or r5, r5, r6
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	or r1, r1, r5
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r1, zero, .LBB0_229
# %bb.228:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_229:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r1, 4(r18)
	loads.w r5, 4(r13)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r16
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r5, zero, .LBB0_231
# %bb.230:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_231:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r5, 8(r18)
	loads.w r6, 8(r13)
	and r5, r5, r27
	and r6, r6, r27
	seteq r11, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r11, r16
	and r11, r28, r25
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r6, zero, .LBB0_233
# %bb.232:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_233:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	loads.w r6, 12(r18)
	loads.w r11, 12(r13)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r13, r6, r4
	seteq r25, r6, zero
	seteq r16, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r13, r16
	and r13, r25, r18
	or r11, r11, r13
	or r6, r6, r11
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r6, zero, .LBB0_226
# %bb.234:                              # %vector.body586
                                        #   in Loop: Header=BB0_227 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r24)
	j .LBB0_226
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 383 7                         # parallel-rne.mlir:383:7
	mfence { sm }
.LBB0_236:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	.loc	1 419 7 is_stmt 1               # parallel-rne.mlir:419:7
	store.d r[1:2], -264(r30)               # 8-byte Folded Spill
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_265
# %bb.237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -348(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 419 7                         # parallel-rne.mlir:419:7
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 28
	xfence
	zext_int2long r[5:6], r1
	mfence { lm, sm, gm }
	j .LBB0_239
.LBB0_238:                              # %middle.block577
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 427 9 is_stmt 1               # parallel-rne.mlir:427:9
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_264
.LBB0_239:                              # %.preheader121
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_242 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[5:6], r1
	.loc	1 428 11 is_stmt 1              # parallel-rne.mlir:428:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_254
# %bb.240:                              # %scalar.ph569.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_242
.LBB0_241:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 450 13 is_stmt 1              # parallel-rne.mlir:450:13
	add.s r6, r14, r9
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 450 13                        # parallel-rne.mlir:450:13
	stores.w r10, 0(r6)
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	beq r5, zero, .LBB0_238
.LBB0_242:                              # %scalar.ph569
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.ul r[5:6], r[1:2], r[7:8]
	lui r10, 523264
	lui r12, 523264
	slli r9, r5, 2
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	loadli.w r5,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	add.s r6, r3, r9
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	add.s r5, r5, r9
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	loads.w r13, 0(r6)
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	loads.w r5, 0(r5)
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	and r5, r5, r27
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	beq r5, r4, .LBB0_244
# %bb.243:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_244:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	add.s r6, r15, r9
	loads.w r6, 0(r6)
	and r6, r6, r27
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r6, zero, .LBB0_252
# %bb.245:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r5, zero, .LBB0_253
.LBB0_246:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	beq r6, r4, .LBB0_248
.LBB0_247:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_248:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r11, r4, r5
	lui r5, 523264
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r11, zero, .LBB0_250
# %bb.249:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r5, r13, 0
.LBB0_250:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r6, r4, r6
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r6, zero, .LBB0_241
# %bb.251:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r5, 0
	j .LBB0_241
.LBB0_252:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	beq r5, zero, .LBB0_246
.LBB0_253:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r6, r4, .LBB0_247
	j .LBB0_248
.LBB0_254:                              # %vector.body571.preheader
                                        #   in Loop: Header=BB0_239 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_256
.LBB0_255:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 428 11 is_stmt 1              # parallel-rne.mlir:428:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 450 13                        # parallel-rne.mlir:450:13
	add.s r2, r14, r2
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	seteq.d r6, r[9:10], r[22:23]
	.loc	1 450 13                        # parallel-rne.mlir:450:13
	stores.w r13, 12(r2)
	stores.w r5, 8(r2)
	stores.w r1, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 428 11                        # parallel-rne.mlir:428:11
	bneq r6, zero, .LBB0_238
.LBB0_256:                              # %vector.body571
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_239 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.ul r[1:2], r[9:10], r[7:8]
	slli r2, r1, 2
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.s r17, r15, r2
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	add.s r24, r3, r2
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	add.s r18, r1, r2
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	loads.w r1, 0(r17)
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	loads.w r5, 0(r18)
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	and r1, r1, r27
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	and r5, r5, r27
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	seteq r6, r1, r4
	.loc	1 441 20                        # parallel-rne.mlir:441:20
	seteq r13, r1, zero
	.loc	1 438 19                        # parallel-rne.mlir:438:19
	seteq r11, r5, zero
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	seteq r12, r5, r4
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	and r5, r6, r11
	.loc	1 442 20                        # parallel-rne.mlir:442:20
	and r6, r13, r12
	lui r13, 523264
	lui r12, 523264
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	or r5, r5, r6
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	or r1, r1, r5
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r1, zero, .LBB0_258
# %bb.257:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r24)
.LBB0_258:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r1, 4(r17)
	loads.w r5, 4(r18)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r16, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r16
	or r5, r5, r6
	or r5, r1, r5
	lui r1, 523264
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r5, zero, .LBB0_260
# %bb.259:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 4(r24)
.LBB0_260:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r5, 8(r17)
	loads.w r6, 8(r18)
	and r5, r5, r27
	and r6, r6, r27
	seteq r11, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r11, r16
	and r11, r28, r25
	or r6, r6, r11
	or r6, r5, r6
	lui r5, 523264
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r6, zero, .LBB0_262
# %bb.261:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r24)
.LBB0_262:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r6, 12(r17)
	loads.w r11, 12(r18)
	lui r28, 1024
	and r6, r6, r27
	and r11, r11, r27
	seteq r16, r6, r4
	seteq r25, r6, zero
	seteq r17, r11, zero
	seteq r18, r11, r4
	max.u r6, r6, r11
	setlt.u r6, r4, r6
	and r11, r16, r17
	and r16, r25, r18
	or r11, r11, r16
	or r6, r6, r11
	.loc	1 448 20                        # parallel-rne.mlir:448:20
	bneq r6, zero, .LBB0_255
# %bb.263:                              # %vector.body571
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r13, 12(r24)
	j .LBB0_255
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 419 7                         # parallel-rne.mlir:419:7
	mfence { sm }
.LBB0_265:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 455 7                         # parallel-rne.mlir:455:7
	addli r1, zero, 255
	addli r3, zero, 3
	csr_set csr5, r1
	sync_core
	.loc	1 456 7                         # parallel-rne.mlir:456:7
	bneq r8, r3, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 18
	xsignal r1, 0
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r1, zero, 26
	xsignal r1, 0
	.loc	1 459 7                         # parallel-rne.mlir:459:7
	addli r1, zero, 27
	xsignal r1, 0
	.loc	1 461 13                        # parallel-rne.mlir:461:13
	loadli.w r1,  -48(r30)
	mod.s r2, r1, r3
	addli r1, r1, 1
	storeli.w r1, -48(r30)
	loadli.w r1,  -432(r30)                 # 4-byte Folded Reload
	slli r2, r2, 14
	add.s r13, r2, r1
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	addli r1, zero, 34
	xwait r1, 0
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	addli r1, zero, 38
	xwait r1, 0
	j .LBB0_270
.LBB0_267:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 461 13                        # parallel-rne.mlir:461:13
	loadli.w r1,  -48(r30)
	mod.s r2, r1, r3
	loadli.w r3,  -432(r30)                 # 4-byte Folded Reload
	addli r1, r1, 1
	storeli.w r1, -48(r30)
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r1, zero, 5
	.loc	1 461 13                        # parallel-rne.mlir:461:13
	slli r2, r2, 14
	add.s r13, r2, r3
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	bneq r8, r1, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 18
	addli r2, zero, 2
	lui r3, 260096
	addli r5, zero, 1023
	xwait r1, 0
	addli r1, zero, 27
	xwait r1, 0
	addli r1, zero, 35
	xwait r1, 0
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -448(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, r1, zero, 0
	addli r1, zero, 4
	ew_cfg zero, r5, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	loadli.w r3,  -248(r30)                 # 4-byte Folded Reload
	dsmadd r13, r3, r14, 0
	addli r3, zero, 28
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r3, 0
	.loc	1 463 7                         # parallel-rne.mlir:463:7
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r3,  -452(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, zero, zero, 0
	addli r3, zero, 3
	ew_cfg zero, r5, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	addli r1, zero, 34
	hp_ssmul r13, r13, r13, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r1, 0
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 3
.LBB0_270:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r1,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 468 7 is_stmt 1               # parallel-rne.mlir:468:7
	xfence
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	mfence { lm, sm, gm }
	mod.s r1, r1, r3
	slli r1, r1, 14
	add.s r3, r1, r2
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r3, r13
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 471 7                         # parallel-rne.mlir:471:7
	beq r8, zero, .LBB0_278
# %bb.271:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	addli r1, zero, 1
	beq r8, r1, .LBB0_284
.LBB0_272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 505 7                         # parallel-rne.mlir:505:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_290
.LBB0_273:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	addli r1, zero, 3
	beq r8, r1, .LBB0_296
.LBB0_274:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 539 7                         # parallel-rne.mlir:539:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_302
.LBB0_275:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	addli r1, zero, 5
	beq r8, r1, .LBB0_308
.LBB0_276:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	addli r1, zero, 6
	beq r8, r1, .LBB0_314
.LBB0_277:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_320
	j .LBB0_326
.LBB0_278:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 471 7 is_stmt 1               # parallel-rne.mlir:471:7
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	j .LBB0_280
.LBB0_279:                              # %middle.block562
                                        #   in Loop: Header=BB0_280 Depth=2
	.loc	1 479 9                         # parallel-rne.mlir:479:9
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_283
.LBB0_280:                              # %.preheader120
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_282 Depth 3
                                        #       Child Loop BB0_281 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 480 11 is_stmt 1              # parallel-rne.mlir:480:11
	beq r1, zero, .LBB0_282
.LBB0_281:                              # %scalar.ph555
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_280 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	add.s r11, r13, r2
	.loc	1 483 13                        # parallel-rne.mlir:483:13
	add.s r2, r3, r2
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	loads.w r11, 0(r11)
	.loc	1 483 13                        # parallel-rne.mlir:483:13
	stores.w r11, 0(r2)
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	bneq r12, zero, .LBB0_281
	j .LBB0_279
.LBB0_282:                              # %vector.body557
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_280 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	slli r2, r11, 2
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	add.s r12, r13, r2
	.loc	1 483 13                        # parallel-rne.mlir:483:13
	add.s r2, r3, r2
	.loc	1 481 19                        # parallel-rne.mlir:481:19
	loads.w r16, 12(r12)
	loads.w r17, 8(r12)
	loads.w r18, 4(r12)
	loads.w r24, 0(r12)
	loads.w r25, 28(r12)
	loads.w r28, 24(r12)
	loads.w r15, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 483 13                        # parallel-rne.mlir:483:13
	stores.w r16, 12(r2)
	stores.w r17, 8(r2)
	stores.w r18, 4(r2)
	stores.w r24, 0(r2)
	stores.w r25, 28(r2)
	stores.w r28, 24(r2)
	stores.w r15, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 480 11                        # parallel-rne.mlir:480:11
	beq r11, zero, .LBB0_282
	j .LBB0_279
.LBB0_283:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 471 7                         # parallel-rne.mlir:471:7
	mfence { sm }
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	addli r1, zero, 1
	bneq r8, r1, .LBB0_272
.LBB0_284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 4
	zext_int2long r[5:6], r2
	j .LBB0_286
.LBB0_285:                              # %middle.block552
                                        #   in Loop: Header=BB0_286 Depth=2
	.loc	1 496 9 is_stmt 1               # parallel-rne.mlir:496:9
	load.d r[7:8], -312(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_289
.LBB0_286:                              # %.preheader119
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_288 Depth 3
                                        #       Child Loop BB0_287 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 497 11 is_stmt 1              # parallel-rne.mlir:497:11
	beq r1, zero, .LBB0_288
.LBB0_287:                              # %scalar.ph545
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_286 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 497 11                        # parallel-rne.mlir:497:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	add.s r11, r13, r2
	.loc	1 500 13                        # parallel-rne.mlir:500:13
	add.s r2, r3, r2
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	loads.w r11, 0(r11)
	.loc	1 500 13                        # parallel-rne.mlir:500:13
	stores.w r11, 0(r2)
	.loc	1 497 11                        # parallel-rne.mlir:497:11
	bneq r12, zero, .LBB0_287
	j .LBB0_285
.LBB0_288:                              # %vector.body547
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_286 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 497 11                        # parallel-rne.mlir:497:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	slli r2, r11, 2
	.loc	1 497 11                        # parallel-rne.mlir:497:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	add.s r12, r13, r2
	.loc	1 500 13                        # parallel-rne.mlir:500:13
	add.s r2, r3, r2
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	loads.w r15, 12(r12)
	loads.w r16, 8(r12)
	loads.w r17, 4(r12)
	loads.w r18, 0(r12)
	loads.w r24, 28(r12)
	loads.w r25, 24(r12)
	loads.w r28, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 500 13                        # parallel-rne.mlir:500:13
	stores.w r15, 12(r2)
	stores.w r16, 8(r2)
	stores.w r17, 4(r2)
	stores.w r18, 0(r2)
	stores.w r24, 28(r2)
	stores.w r25, 24(r2)
	stores.w r28, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 497 11                        # parallel-rne.mlir:497:11
	beq r11, zero, .LBB0_288
	j .LBB0_285
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 488 7                         # parallel-rne.mlir:488:7
	mfence { sm }
	.loc	1 505 7                         # parallel-rne.mlir:505:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_273
.LBB0_290:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 505 7                         # parallel-rne.mlir:505:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 8
	zext_int2long r[5:6], r2
	j .LBB0_292
.LBB0_291:                              # %middle.block542
                                        #   in Loop: Header=BB0_292 Depth=2
	.loc	1 513 9 is_stmt 1               # parallel-rne.mlir:513:9
	load.d r[7:8], -304(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_295
.LBB0_292:                              # %.preheader118
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_294 Depth 3
                                        #       Child Loop BB0_293 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 514 11 is_stmt 1              # parallel-rne.mlir:514:11
	beq r1, zero, .LBB0_294
.LBB0_293:                              # %scalar.ph535
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_292 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.s r11, r13, r2
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	add.s r2, r3, r2
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	loads.w r11, 0(r11)
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	stores.w r11, 0(r2)
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	bneq r12, zero, .LBB0_293
	j .LBB0_291
.LBB0_294:                              # %vector.body537
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_292 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	slli r2, r11, 2
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	add.s r12, r13, r2
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	add.s r2, r3, r2
	.loc	1 515 19                        # parallel-rne.mlir:515:19
	loads.w r15, 12(r12)
	loads.w r16, 8(r12)
	loads.w r17, 4(r12)
	loads.w r18, 0(r12)
	loads.w r24, 28(r12)
	loads.w r25, 24(r12)
	loads.w r28, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 517 13                        # parallel-rne.mlir:517:13
	stores.w r15, 12(r2)
	stores.w r16, 8(r2)
	stores.w r17, 4(r2)
	stores.w r18, 0(r2)
	stores.w r24, 28(r2)
	stores.w r25, 24(r2)
	stores.w r28, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 514 11                        # parallel-rne.mlir:514:11
	beq r11, zero, .LBB0_294
	j .LBB0_291
.LBB0_295:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 505 7                         # parallel-rne.mlir:505:7
	mfence { sm }
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	addli r1, zero, 3
	bneq r8, r1, .LBB0_274
.LBB0_296:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 12
	zext_int2long r[5:6], r2
	j .LBB0_298
.LBB0_297:                              # %middle.block532
                                        #   in Loop: Header=BB0_298 Depth=2
	.loc	1 530 9 is_stmt 1               # parallel-rne.mlir:530:9
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_301
.LBB0_298:                              # %.preheader117
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_299 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 531 11 is_stmt 1              # parallel-rne.mlir:531:11
	beq r1, zero, .LBB0_300
.LBB0_299:                              # %scalar.ph525
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_298 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 531 11                        # parallel-rne.mlir:531:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	add.s r11, r13, r2
	.loc	1 534 13                        # parallel-rne.mlir:534:13
	add.s r2, r3, r2
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	loads.w r11, 0(r11)
	.loc	1 534 13                        # parallel-rne.mlir:534:13
	stores.w r11, 0(r2)
	.loc	1 531 11                        # parallel-rne.mlir:531:11
	bneq r12, zero, .LBB0_299
	j .LBB0_297
.LBB0_300:                              # %vector.body527
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_298 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 531 11                        # parallel-rne.mlir:531:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	slli r2, r11, 2
	.loc	1 531 11                        # parallel-rne.mlir:531:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	add.s r12, r13, r2
	.loc	1 534 13                        # parallel-rne.mlir:534:13
	add.s r2, r3, r2
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	loads.w r15, 12(r12)
	loads.w r16, 8(r12)
	loads.w r17, 4(r12)
	loads.w r18, 0(r12)
	loads.w r24, 28(r12)
	loads.w r25, 24(r12)
	loads.w r28, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 534 13                        # parallel-rne.mlir:534:13
	stores.w r15, 12(r2)
	stores.w r16, 8(r2)
	stores.w r17, 4(r2)
	stores.w r18, 0(r2)
	stores.w r24, 28(r2)
	stores.w r25, 24(r2)
	stores.w r28, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 531 11                        # parallel-rne.mlir:531:11
	beq r11, zero, .LBB0_300
	j .LBB0_297
.LBB0_301:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 522 7                         # parallel-rne.mlir:522:7
	mfence { sm }
	.loc	1 539 7                         # parallel-rne.mlir:539:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_275
.LBB0_302:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 539 7                         # parallel-rne.mlir:539:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 16
	zext_int2long r[5:6], r2
	j .LBB0_304
.LBB0_303:                              # %middle.block522
                                        #   in Loop: Header=BB0_304 Depth=2
	.loc	1 547 9 is_stmt 1               # parallel-rne.mlir:547:9
	load.d r[7:8], -288(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_307
.LBB0_304:                              # %.preheader116
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_306 Depth 3
                                        #       Child Loop BB0_305 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 548 11 is_stmt 1              # parallel-rne.mlir:548:11
	beq r1, zero, .LBB0_306
.LBB0_305:                              # %scalar.ph515
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_304 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	add.s r11, r13, r2
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	add.s r2, r3, r2
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	loads.w r11, 0(r11)
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	stores.w r11, 0(r2)
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	bneq r12, zero, .LBB0_305
	j .LBB0_303
.LBB0_306:                              # %vector.body517
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_304 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	slli r2, r11, 2
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	add.s r12, r13, r2
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	add.s r2, r3, r2
	.loc	1 549 19                        # parallel-rne.mlir:549:19
	loads.w r15, 12(r12)
	loads.w r16, 8(r12)
	loads.w r17, 4(r12)
	loads.w r18, 0(r12)
	loads.w r24, 28(r12)
	loads.w r25, 24(r12)
	loads.w r28, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 551 13                        # parallel-rne.mlir:551:13
	stores.w r15, 12(r2)
	stores.w r16, 8(r2)
	stores.w r17, 4(r2)
	stores.w r18, 0(r2)
	stores.w r24, 28(r2)
	stores.w r25, 24(r2)
	stores.w r28, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 548 11                        # parallel-rne.mlir:548:11
	beq r11, zero, .LBB0_306
	j .LBB0_303
.LBB0_307:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 539 7                         # parallel-rne.mlir:539:7
	mfence { sm }
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_276
.LBB0_308:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 20
	zext_int2long r[5:6], r2
	j .LBB0_310
.LBB0_309:                              # %middle.block512
                                        #   in Loop: Header=BB0_310 Depth=2
	.loc	1 564 9 is_stmt 1               # parallel-rne.mlir:564:9
	load.d r[7:8], -280(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_313
.LBB0_310:                              # %.preheader115
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_312 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 565 11 is_stmt 1              # parallel-rne.mlir:565:11
	beq r1, zero, .LBB0_312
.LBB0_311:                              # %scalar.ph505
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_310 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 565 11                        # parallel-rne.mlir:565:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	add.s r11, r13, r2
	.loc	1 568 13                        # parallel-rne.mlir:568:13
	add.s r2, r3, r2
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	loads.w r11, 0(r11)
	.loc	1 568 13                        # parallel-rne.mlir:568:13
	stores.w r11, 0(r2)
	.loc	1 565 11                        # parallel-rne.mlir:565:11
	bneq r12, zero, .LBB0_311
	j .LBB0_309
.LBB0_312:                              # %vector.body507
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_310 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 565 11                        # parallel-rne.mlir:565:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	slli r2, r11, 2
	.loc	1 565 11                        # parallel-rne.mlir:565:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	add.s r12, r13, r2
	.loc	1 568 13                        # parallel-rne.mlir:568:13
	add.s r2, r3, r2
	.loc	1 566 19                        # parallel-rne.mlir:566:19
	loads.w r15, 12(r12)
	loads.w r16, 8(r12)
	loads.w r17, 4(r12)
	loads.w r18, 0(r12)
	loads.w r24, 28(r12)
	loads.w r25, 24(r12)
	loads.w r28, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 568 13                        # parallel-rne.mlir:568:13
	stores.w r15, 12(r2)
	stores.w r16, 8(r2)
	stores.w r17, 4(r2)
	stores.w r18, 0(r2)
	stores.w r24, 28(r2)
	stores.w r25, 24(r2)
	stores.w r28, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 565 11                        # parallel-rne.mlir:565:11
	beq r11, zero, .LBB0_312
	j .LBB0_309
.LBB0_313:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 556 7                         # parallel-rne.mlir:556:7
	mfence { sm }
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	addli r1, zero, 6
	bneq r8, r1, .LBB0_277
.LBB0_314:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 24
	zext_int2long r[5:6], r2
	j .LBB0_316
.LBB0_315:                              # %middle.block502
                                        #   in Loop: Header=BB0_316 Depth=2
	.loc	1 581 9 is_stmt 1               # parallel-rne.mlir:581:9
	load.d r[7:8], -272(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_319
.LBB0_316:                              # %.preheader114
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_318 Depth 3
                                        #       Child Loop BB0_317 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 582 11 is_stmt 1              # parallel-rne.mlir:582:11
	beq r1, zero, .LBB0_318
.LBB0_317:                              # %scalar.ph495
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.s r11, r13, r2
	.loc	1 585 13                        # parallel-rne.mlir:585:13
	add.s r2, r3, r2
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	loads.w r11, 0(r11)
	.loc	1 585 13                        # parallel-rne.mlir:585:13
	stores.w r11, 0(r2)
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	bneq r12, zero, .LBB0_317
	j .LBB0_315
.LBB0_318:                              # %vector.body497
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	slli r2, r11, 2
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.s r12, r13, r2
	.loc	1 585 13                        # parallel-rne.mlir:585:13
	add.s r2, r3, r2
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	loads.w r15, 12(r12)
	loads.w r16, 8(r12)
	loads.w r17, 4(r12)
	loads.w r18, 0(r12)
	loads.w r24, 28(r12)
	loads.w r25, 24(r12)
	loads.w r28, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 585 13                        # parallel-rne.mlir:585:13
	stores.w r15, 12(r2)
	stores.w r16, 8(r2)
	stores.w r17, 4(r2)
	stores.w r18, 0(r2)
	stores.w r24, 28(r2)
	stores.w r25, 24(r2)
	stores.w r28, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	beq r11, zero, .LBB0_318
	j .LBB0_315
.LBB0_319:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	mfence { sm }
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_326
.LBB0_320:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 28
	zext_int2long r[5:6], r2
	j .LBB0_322
.LBB0_321:                              # %middle.block492
                                        #   in Loop: Header=BB0_322 Depth=2
	.loc	1 598 9 is_stmt 1               # parallel-rne.mlir:598:9
	load.d r[7:8], -264(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_325
.LBB0_322:                              # %.preheader113
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_324 Depth 3
                                        #       Child Loop BB0_323 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 599 11 is_stmt 1              # parallel-rne.mlir:599:11
	beq r1, zero, .LBB0_324
.LBB0_323:                              # %scalar.ph485
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_322 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 599 11                        # parallel-rne.mlir:599:11
	setlt.ul r12, r[9:10], r[20:21]
	addli.d r[9:10], r[9:10], 1
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	add.s r11, r13, r2
	.loc	1 602 13                        # parallel-rne.mlir:602:13
	add.s r2, r3, r2
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	loads.w r11, 0(r11)
	.loc	1 602 13                        # parallel-rne.mlir:602:13
	stores.w r11, 0(r2)
	.loc	1 599 11                        # parallel-rne.mlir:599:11
	bneq r12, zero, .LBB0_323
	j .LBB0_321
.LBB0_324:                              # %vector.body487
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_322 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 599 11                        # parallel-rne.mlir:599:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	slli r2, r11, 2
	.loc	1 599 11                        # parallel-rne.mlir:599:11
	seteq.d r11, r[9:10], r[22:23]
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	add.s r12, r13, r2
	.loc	1 602 13                        # parallel-rne.mlir:602:13
	add.s r2, r3, r2
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	loads.w r15, 12(r12)
	loads.w r16, 8(r12)
	loads.w r17, 4(r12)
	loads.w r18, 0(r12)
	loads.w r24, 28(r12)
	loads.w r25, 24(r12)
	loads.w r28, 20(r12)
	loads.w r12, 16(r12)
	.loc	1 602 13                        # parallel-rne.mlir:602:13
	stores.w r15, 12(r2)
	stores.w r16, 8(r2)
	stores.w r17, 4(r2)
	stores.w r18, 0(r2)
	stores.w r24, 28(r2)
	stores.w r25, 24(r2)
	stores.w r28, 20(r2)
	stores.w r12, 16(r2)
	.loc	1 599 11                        # parallel-rne.mlir:599:11
	beq r11, zero, .LBB0_324
	j .LBB0_321
.LBB0_325:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	lui r28, 1024
	.loc	1 590 7                         # parallel-rne.mlir:590:7
	mfence { sm }
.LBB0_326:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	addli r1, zero, 3
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	sync_core
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	bneq r8, r1, .LBB0_328
# %bb.327:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 35
	addli r2, zero, 36
	xsignal r1, 0
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	addli r1, zero, 28
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	xsignal r2, 0
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	xwait r1, 0
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	xwait r2, 0
.LBB0_328:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	xfence
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r1, zero, 255
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	mfence { lm, sm, gm }
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	csr_set csr5, r1
	sync_core
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	beq r8, zero, .LBB0_336
# %bb.329:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	addli r1, zero, 1
	beq r8, r1, .LBB0_362
.LBB0_330:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 661 7                         # parallel-rne.mlir:661:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_388
.LBB0_331:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	addli r1, zero, 3
	beq r8, r1, .LBB0_414
.LBB0_332:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 705 7                         # parallel-rne.mlir:705:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_440
.LBB0_333:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	addli r1, zero, 5
	beq r8, r1, .LBB0_466
.LBB0_334:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 749 7                         # parallel-rne.mlir:749:7
	addli r1, zero, 6
	beq r8, r1, .LBB0_492
.LBB0_335:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 771 7                         # parallel-rne.mlir:771:7
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_518
	j .LBB0_544
.LBB0_336:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	j .LBB0_338
.LBB0_337:                              # %middle.block482
                                        #   in Loop: Header=BB0_338 Depth=2
	.loc	1 625 9                         # parallel-rne.mlir:625:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_361
.LBB0_338:                              # %.preheader112
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_345 Depth 3
                                        #       Child Loop BB0_341 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 626 11 is_stmt 1              # parallel-rne.mlir:626:11
	bneq r14, r3, .LBB0_343
# %bb.339:                              # %scalar.ph475.preheader
                                        #   in Loop: Header=BB0_338 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_341
.LBB0_340:                              # %scalar.ph475
                                        #   in Loop: Header=BB0_341 Depth=3
	.loc	1 626 11                        # parallel-rne.mlir:626:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 634 13 is_stmt 1              # parallel-rne.mlir:634:13
	add.s r7, r14, r7
	.loc	1 626 11                        # parallel-rne.mlir:626:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 634 13                        # parallel-rne.mlir:634:13
	stores.w r8, 0(r7)
	.loc	1 626 11                        # parallel-rne.mlir:626:11
	beq r9, zero, .LBB0_337
.LBB0_341:                              # %scalar.ph475
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_338 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	and r9, r8, r27
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	setlt.u r9, r26, r9
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r9, zero, .LBB0_340
# %bb.342:                              #   in Loop: Header=BB0_341 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_340
.LBB0_343:                              # %vector.body477.preheader
                                        #   in Loop: Header=BB0_338 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_345
.LBB0_344:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	.loc	1 626 11 is_stmt 1              # parallel-rne.mlir:626:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 634 13                        # parallel-rne.mlir:634:13
	add.s r10, r14, r10
	.loc	1 626 11                        # parallel-rne.mlir:626:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 634 13                        # parallel-rne.mlir:634:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 626 11                        # parallel-rne.mlir:626:11
	bneq r11, zero, .LBB0_337
.LBB0_345:                              # %vector.body477
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_338 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	and r1, r9, r27
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	setlt.u r1, r26, r1
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r1, zero, .LBB0_347
# %bb.346:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_347:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r1, zero, .LBB0_349
# %bb.348:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_349:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r1, zero, .LBB0_351
# %bb.350:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_351:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r1, zero, .LBB0_353
# %bb.352:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_353:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r1, zero, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_355:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r1, zero, .LBB0_357
# %bb.356:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_357:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r2, zero, .LBB0_359
# %bb.358:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_359:                              # %vector.body477
                                        #   in Loop: Header=BB0_345 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 632 19                        # parallel-rne.mlir:632:19
	beq r11, zero, .LBB0_344
# %bb.360:                              #   in Loop: Header=BB0_345 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_344
.LBB0_361:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	mfence { sm }
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	addli r1, zero, 1
	bneq r8, r1, .LBB0_330
.LBB0_362:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_364
.LBB0_363:                              # %middle.block472
                                        #   in Loop: Header=BB0_364 Depth=2
	.loc	1 647 9 is_stmt 1               # parallel-rne.mlir:647:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_387
.LBB0_364:                              # %.preheader111
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_371 Depth 3
                                        #       Child Loop BB0_367 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 648 11 is_stmt 1              # parallel-rne.mlir:648:11
	bneq r14, r3, .LBB0_369
# %bb.365:                              # %scalar.ph465.preheader
                                        #   in Loop: Header=BB0_364 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_367
.LBB0_366:                              # %scalar.ph465
                                        #   in Loop: Header=BB0_367 Depth=3
	.loc	1 648 11                        # parallel-rne.mlir:648:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 656 13 is_stmt 1              # parallel-rne.mlir:656:13
	add.s r7, r14, r7
	.loc	1 648 11                        # parallel-rne.mlir:648:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 656 13                        # parallel-rne.mlir:656:13
	stores.w r8, 0(r7)
	.loc	1 648 11                        # parallel-rne.mlir:648:11
	beq r9, zero, .LBB0_363
.LBB0_367:                              # %scalar.ph465
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_364 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	and r9, r8, r27
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	setlt.u r9, r26, r9
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r9, zero, .LBB0_366
# %bb.368:                              #   in Loop: Header=BB0_367 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_366
.LBB0_369:                              # %vector.body467.preheader
                                        #   in Loop: Header=BB0_364 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_371
.LBB0_370:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	.loc	1 648 11 is_stmt 1              # parallel-rne.mlir:648:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 656 13                        # parallel-rne.mlir:656:13
	add.s r10, r14, r10
	.loc	1 648 11                        # parallel-rne.mlir:648:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 656 13                        # parallel-rne.mlir:656:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 648 11                        # parallel-rne.mlir:648:11
	bneq r11, zero, .LBB0_363
.LBB0_371:                              # %vector.body467
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_364 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	and r1, r9, r27
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	setlt.u r1, r26, r1
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r1, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_373:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r1, zero, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_375:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r1, zero, .LBB0_377
# %bb.376:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_377:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r1, zero, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_379:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r1, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_381:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r1, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_383:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r2, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_385:                              # %vector.body467
                                        #   in Loop: Header=BB0_371 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 654 19                        # parallel-rne.mlir:654:19
	beq r11, zero, .LBB0_370
# %bb.386:                              #   in Loop: Header=BB0_371 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_370
.LBB0_387:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	mfence { sm }
	.loc	1 661 7                         # parallel-rne.mlir:661:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_331
.LBB0_388:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 661 7                         # parallel-rne.mlir:661:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_390
.LBB0_389:                              # %middle.block462
                                        #   in Loop: Header=BB0_390 Depth=2
	.loc	1 669 9 is_stmt 1               # parallel-rne.mlir:669:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_413
.LBB0_390:                              # %.preheader110
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_397 Depth 3
                                        #       Child Loop BB0_393 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 670 11 is_stmt 1              # parallel-rne.mlir:670:11
	bneq r14, r3, .LBB0_395
# %bb.391:                              # %scalar.ph455.preheader
                                        #   in Loop: Header=BB0_390 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_393
.LBB0_392:                              # %scalar.ph455
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 670 11                        # parallel-rne.mlir:670:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 678 13 is_stmt 1              # parallel-rne.mlir:678:13
	add.s r7, r14, r7
	.loc	1 670 11                        # parallel-rne.mlir:670:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 678 13                        # parallel-rne.mlir:678:13
	stores.w r8, 0(r7)
	.loc	1 670 11                        # parallel-rne.mlir:670:11
	beq r9, zero, .LBB0_389
.LBB0_393:                              # %scalar.ph455
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_390 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	and r9, r8, r27
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	setlt.u r9, r26, r9
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r9, zero, .LBB0_392
# %bb.394:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_392
.LBB0_395:                              # %vector.body457.preheader
                                        #   in Loop: Header=BB0_390 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_397
.LBB0_396:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	.loc	1 670 11 is_stmt 1              # parallel-rne.mlir:670:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 678 13                        # parallel-rne.mlir:678:13
	add.s r10, r14, r10
	.loc	1 670 11                        # parallel-rne.mlir:670:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 678 13                        # parallel-rne.mlir:678:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 670 11                        # parallel-rne.mlir:670:11
	bneq r11, zero, .LBB0_389
.LBB0_397:                              # %vector.body457
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_390 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	and r1, r9, r27
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	setlt.u r1, r26, r1
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r1, zero, .LBB0_399
# %bb.398:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_399:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r1, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_401:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r1, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_403:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r1, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_405:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r1, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_407:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r1, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_409:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r2, zero, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_411:                              # %vector.body457
                                        #   in Loop: Header=BB0_397 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	beq r11, zero, .LBB0_396
# %bb.412:                              #   in Loop: Header=BB0_397 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_396
.LBB0_413:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 661 7                         # parallel-rne.mlir:661:7
	mfence { sm }
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	addli r1, zero, 3
	bneq r8, r1, .LBB0_332
.LBB0_414:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_416
.LBB0_415:                              # %middle.block452
                                        #   in Loop: Header=BB0_416 Depth=2
	.loc	1 691 9 is_stmt 1               # parallel-rne.mlir:691:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_439
.LBB0_416:                              # %.preheader109
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_423 Depth 3
                                        #       Child Loop BB0_419 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 692 11 is_stmt 1              # parallel-rne.mlir:692:11
	bneq r14, r3, .LBB0_421
# %bb.417:                              # %scalar.ph445.preheader
                                        #   in Loop: Header=BB0_416 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_419
.LBB0_418:                              # %scalar.ph445
                                        #   in Loop: Header=BB0_419 Depth=3
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 700 13 is_stmt 1              # parallel-rne.mlir:700:13
	add.s r7, r14, r7
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 700 13                        # parallel-rne.mlir:700:13
	stores.w r8, 0(r7)
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	beq r9, zero, .LBB0_415
.LBB0_419:                              # %scalar.ph445
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_416 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	and r9, r8, r27
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	setlt.u r9, r26, r9
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r9, zero, .LBB0_418
# %bb.420:                              #   in Loop: Header=BB0_419 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_418
.LBB0_421:                              # %vector.body447.preheader
                                        #   in Loop: Header=BB0_416 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_423
.LBB0_422:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 692 11 is_stmt 1              # parallel-rne.mlir:692:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 700 13                        # parallel-rne.mlir:700:13
	add.s r10, r14, r10
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 700 13                        # parallel-rne.mlir:700:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 692 11                        # parallel-rne.mlir:692:11
	bneq r11, zero, .LBB0_415
.LBB0_423:                              # %vector.body447
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_416 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	and r1, r9, r27
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	setlt.u r1, r26, r1
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r1, zero, .LBB0_425
# %bb.424:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_425:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r1, zero, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_427:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r1, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_429:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r1, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_431:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r1, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_433:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r1, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_435:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r2, zero, .LBB0_437
# %bb.436:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_437:                              # %vector.body447
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	beq r11, zero, .LBB0_422
# %bb.438:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_422
.LBB0_439:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 683 7                         # parallel-rne.mlir:683:7
	mfence { sm }
	.loc	1 705 7                         # parallel-rne.mlir:705:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_333
.LBB0_440:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 705 7                         # parallel-rne.mlir:705:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_442
.LBB0_441:                              # %middle.block442
                                        #   in Loop: Header=BB0_442 Depth=2
	.loc	1 713 9 is_stmt 1               # parallel-rne.mlir:713:9
	load.d r[1:2], -288(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_465
.LBB0_442:                              # %.preheader108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_449 Depth 3
                                        #       Child Loop BB0_445 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 714 11 is_stmt 1              # parallel-rne.mlir:714:11
	bneq r14, r3, .LBB0_447
# %bb.443:                              # %scalar.ph435.preheader
                                        #   in Loop: Header=BB0_442 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_445
.LBB0_444:                              # %scalar.ph435
                                        #   in Loop: Header=BB0_445 Depth=3
	.loc	1 714 11                        # parallel-rne.mlir:714:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 722 13 is_stmt 1              # parallel-rne.mlir:722:13
	add.s r7, r14, r7
	.loc	1 714 11                        # parallel-rne.mlir:714:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 722 13                        # parallel-rne.mlir:722:13
	stores.w r8, 0(r7)
	.loc	1 714 11                        # parallel-rne.mlir:714:11
	beq r9, zero, .LBB0_441
.LBB0_445:                              # %scalar.ph435
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_442 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	and r9, r8, r27
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	setlt.u r9, r26, r9
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r9, zero, .LBB0_444
# %bb.446:                              #   in Loop: Header=BB0_445 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_444
.LBB0_447:                              # %vector.body437.preheader
                                        #   in Loop: Header=BB0_442 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_449
.LBB0_448:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 714 11 is_stmt 1              # parallel-rne.mlir:714:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 722 13                        # parallel-rne.mlir:722:13
	add.s r10, r14, r10
	.loc	1 714 11                        # parallel-rne.mlir:714:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 722 13                        # parallel-rne.mlir:722:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 714 11                        # parallel-rne.mlir:714:11
	bneq r11, zero, .LBB0_441
.LBB0_449:                              # %vector.body437
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_442 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	and r1, r9, r27
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	setlt.u r1, r26, r1
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r1, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_451:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r1, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_453:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r1, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_455:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r1, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_457:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r1, zero, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_459:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r1, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_461:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r2, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_463:                              # %vector.body437
                                        #   in Loop: Header=BB0_449 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	beq r11, zero, .LBB0_448
# %bb.464:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_448
.LBB0_465:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 705 7                         # parallel-rne.mlir:705:7
	mfence { sm }
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_334
.LBB0_466:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_468
.LBB0_467:                              # %middle.block432
                                        #   in Loop: Header=BB0_468 Depth=2
	.loc	1 735 9 is_stmt 1               # parallel-rne.mlir:735:9
	load.d r[1:2], -280(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_491
.LBB0_468:                              # %.preheader107
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_475 Depth 3
                                        #       Child Loop BB0_471 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 736 11 is_stmt 1              # parallel-rne.mlir:736:11
	bneq r14, r3, .LBB0_473
# %bb.469:                              # %scalar.ph425.preheader
                                        #   in Loop: Header=BB0_468 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_471
.LBB0_470:                              # %scalar.ph425
                                        #   in Loop: Header=BB0_471 Depth=3
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 744 13 is_stmt 1              # parallel-rne.mlir:744:13
	add.s r7, r14, r7
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 744 13                        # parallel-rne.mlir:744:13
	stores.w r8, 0(r7)
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	beq r9, zero, .LBB0_467
.LBB0_471:                              # %scalar.ph425
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_468 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r9, r8, r27
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	setlt.u r9, r26, r9
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r9, zero, .LBB0_470
# %bb.472:                              #   in Loop: Header=BB0_471 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_470
.LBB0_473:                              # %vector.body427.preheader
                                        #   in Loop: Header=BB0_468 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_475
.LBB0_474:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	.loc	1 736 11 is_stmt 1              # parallel-rne.mlir:736:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 744 13                        # parallel-rne.mlir:744:13
	add.s r10, r14, r10
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 744 13                        # parallel-rne.mlir:744:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	bneq r11, zero, .LBB0_467
.LBB0_475:                              # %vector.body427
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_468 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r1, r9, r27
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	setlt.u r1, r26, r1
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r1, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_477:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r1, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_479:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r1, zero, .LBB0_481
# %bb.480:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_481:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r1, zero, .LBB0_483
# %bb.482:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_483:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r1, zero, .LBB0_485
# %bb.484:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_485:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r1, zero, .LBB0_487
# %bb.486:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_487:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r2, zero, .LBB0_489
# %bb.488:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_489:                              # %vector.body427
                                        #   in Loop: Header=BB0_475 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	beq r11, zero, .LBB0_474
# %bb.490:                              #   in Loop: Header=BB0_475 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_474
.LBB0_491:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	mfence { sm }
	.loc	1 749 7                         # parallel-rne.mlir:749:7
	addli r1, zero, 6
	bneq r8, r1, .LBB0_335
.LBB0_492:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 749 7                         # parallel-rne.mlir:749:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_494
.LBB0_493:                              # %middle.block422
                                        #   in Loop: Header=BB0_494 Depth=2
	.loc	1 757 9 is_stmt 1               # parallel-rne.mlir:757:9
	load.d r[1:2], -272(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_517
.LBB0_494:                              # %.preheader106
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_501 Depth 3
                                        #       Child Loop BB0_497 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 758 11 is_stmt 1              # parallel-rne.mlir:758:11
	bneq r14, r3, .LBB0_499
# %bb.495:                              # %scalar.ph415.preheader
                                        #   in Loop: Header=BB0_494 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_497
.LBB0_496:                              # %scalar.ph415
                                        #   in Loop: Header=BB0_497 Depth=3
	.loc	1 758 11                        # parallel-rne.mlir:758:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 766 13 is_stmt 1              # parallel-rne.mlir:766:13
	add.s r7, r14, r7
	.loc	1 758 11                        # parallel-rne.mlir:758:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 766 13                        # parallel-rne.mlir:766:13
	stores.w r8, 0(r7)
	.loc	1 758 11                        # parallel-rne.mlir:758:11
	beq r9, zero, .LBB0_493
.LBB0_497:                              # %scalar.ph415
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_494 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	and r9, r8, r27
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	setlt.u r9, r26, r9
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r9, zero, .LBB0_496
# %bb.498:                              #   in Loop: Header=BB0_497 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_496
.LBB0_499:                              # %vector.body417.preheader
                                        #   in Loop: Header=BB0_494 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_501
.LBB0_500:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	.loc	1 758 11 is_stmt 1              # parallel-rne.mlir:758:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 766 13                        # parallel-rne.mlir:766:13
	add.s r10, r14, r10
	.loc	1 758 11                        # parallel-rne.mlir:758:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 766 13                        # parallel-rne.mlir:766:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 758 11                        # parallel-rne.mlir:758:11
	bneq r11, zero, .LBB0_493
.LBB0_501:                              # %vector.body417
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_494 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	and r1, r9, r27
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	setlt.u r1, r26, r1
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r1, zero, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_503:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r1, zero, .LBB0_505
# %bb.504:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_505:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r1, zero, .LBB0_507
# %bb.506:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_507:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r1, zero, .LBB0_509
# %bb.508:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_509:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r1, zero, .LBB0_511
# %bb.510:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_511:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r1, zero, .LBB0_513
# %bb.512:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_513:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r2, zero, .LBB0_515
# %bb.514:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_515:                              # %vector.body417
                                        #   in Loop: Header=BB0_501 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	beq r11, zero, .LBB0_500
# %bb.516:                              #   in Loop: Header=BB0_501 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_500
.LBB0_517:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 749 7                         # parallel-rne.mlir:749:7
	mfence { sm }
	.loc	1 771 7                         # parallel-rne.mlir:771:7
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_544
.LBB0_518:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 771 7                         # parallel-rne.mlir:771:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r1
	j .LBB0_520
.LBB0_519:                              # %middle.block412
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 779 9 is_stmt 1               # parallel-rne.mlir:779:9
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_543
.LBB0_520:                              # %.preheader105
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_527 Depth 3
                                        #       Child Loop BB0_523 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 780 11 is_stmt 1              # parallel-rne.mlir:780:11
	bneq r14, r3, .LBB0_525
# %bb.521:                              # %scalar.ph405.preheader
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_523
.LBB0_522:                              # %scalar.ph405
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 780 11                        # parallel-rne.mlir:780:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 788 13 is_stmt 1              # parallel-rne.mlir:788:13
	add.s r7, r14, r7
	.loc	1 780 11                        # parallel-rne.mlir:780:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 788 13                        # parallel-rne.mlir:788:13
	stores.w r8, 0(r7)
	.loc	1 780 11                        # parallel-rne.mlir:780:11
	beq r9, zero, .LBB0_519
.LBB0_523:                              # %scalar.ph405
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_520 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r8, 0(r8)
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	and r9, r8, r27
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	setlt.u r9, r26, r9
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r9, zero, .LBB0_522
# %bb.524:                              #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 524288
	and r8, r8, r9
	or r8, r8, r26
	j .LBB0_522
.LBB0_525:                              # %vector.body407.preheader
                                        #   in Loop: Header=BB0_520 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_527
.LBB0_526:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	.loc	1 780 11 is_stmt 1              # parallel-rne.mlir:780:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 788 13                        # parallel-rne.mlir:788:13
	add.s r10, r14, r10
	.loc	1 780 11                        # parallel-rne.mlir:780:11
	seteq.d r11, r[7:8], r[22:23]
	.loc	1 788 13                        # parallel-rne.mlir:788:13
	stores.w r17, 12(r10)
	stores.w r15, 8(r10)
	stores.w r12, 4(r10)
	stores.w r9, 0(r10)
	stores.w r2, 28(r10)
	stores.w r1, 24(r10)
	stores.w r24, 20(r10)
	stores.w r18, 16(r10)
	.loc	1 780 11                        # parallel-rne.mlir:780:11
	bneq r11, zero, .LBB0_519
.LBB0_527:                              # %vector.body407
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_520 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	add.ul r[1:2], r[7:8], r[5:6]
	lui r11, 524288
	slli r10, r1, 2
	add.s r13, r3, r10
	loads.w r9, 0(r13)
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	and r1, r9, r27
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	setlt.u r1, r26, r1
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r1, zero, .LBB0_529
# %bb.528:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r9, r11
	or r9, r1, r26
.LBB0_529:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	loads.w r12, 4(r13)
	and r1, r12, r27
	setlt.u r1, r26, r1
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r1, zero, .LBB0_531
# %bb.530:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r11
	or r12, r1, r26
.LBB0_531:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	loads.w r15, 8(r13)
	and r1, r15, r27
	setlt.u r1, r26, r1
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r1, zero, .LBB0_533
# %bb.532:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r15, r11
	or r15, r1, r26
.LBB0_533:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	loads.w r17, 12(r13)
	and r1, r17, r27
	setlt.u r1, r26, r1
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r1, zero, .LBB0_535
# %bb.534:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r17, r11
	or r17, r1, r26
.LBB0_535:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	loads.w r18, 16(r13)
	and r1, r18, r27
	setlt.u r1, r26, r1
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r1, zero, .LBB0_537
# %bb.536:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r11
	or r18, r1, r26
.LBB0_537:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	loads.w r24, 20(r13)
	and r1, r24, r27
	setlt.u r1, r26, r1
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r1, zero, .LBB0_539
# %bb.538:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r24, r11
	or r24, r1, r26
.LBB0_539:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	loads.w r1, 24(r13)
	and r2, r1, r27
	setlt.u r2, r26, r2
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r2, zero, .LBB0_541
# %bb.540:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r11
	or r1, r1, r26
.LBB0_541:                              # %vector.body407
                                        #   in Loop: Header=BB0_527 Depth=3
	loads.w r2, 28(r13)
	and r11, r2, r27
	setlt.u r11, r26, r11
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	beq r11, zero, .LBB0_526
# %bb.542:                              #   in Loop: Header=BB0_527 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 524288
	and r2, r2, r11
	or r2, r2, r26
	j .LBB0_526
.LBB0_543:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 771 7                         # parallel-rne.mlir:771:7
	mfence { sm }
.LBB0_544:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	addli r1, zero, 3
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	sync_core
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	bneq r8, r1, .LBB0_546
# %bb.545:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 29
	addli r5, zero, 37
	xsignal r1, 0
	.loc	1 795 7                         # parallel-rne.mlir:795:7
	xsignal r5, 0
	.loc	1 798 13                        # parallel-rne.mlir:798:13
	loadli.w r1,  -32(r30)
	addli r2, r1, 1
	storeli.w r2, -32(r30)
	.loc	1 800 7                         # parallel-rne.mlir:800:7
	addli r2, zero, 30
	xwait r2, 0
	.loc	1 802 7                         # parallel-rne.mlir:802:7
	addli r2, zero, 41
	.loc	1 801 7                         # parallel-rne.mlir:801:7
	xwait r5, 0
	.loc	1 802 7                         # parallel-rne.mlir:802:7
	xwait r2, 0
	j .LBB0_549
.LBB0_546:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 796 7                         # parallel-rne.mlir:796:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_548
# %bb.547:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 29
	addli r5, zero, 2
	addli r2, zero, 4
	xwait r1, 0
	lock zero, r5
	addli r1, zero, 1023
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 3
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r1, zero, zero, 10
	addli r1, zero, 1
	loadli.w r6,  -444(r30)                 # 4-byte Folded Reload
	ew_cfg r5, r1, r6, 11
	lui r1, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r2, r1, 14
	addli r1, zero, 30
	ew_cfg zero, zero, zero, 15
	sslut r14, r14, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r1, 0
.LBB0_548:                              # %.thread83
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 798 13                        # parallel-rne.mlir:798:13
	loadli.w r1,  -32(r30)
	addli r2, r1, 1
	storeli.w r2, -32(r30)
.LBB0_549:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 3
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	mod.s r1, r1, r2
	loadli.w r2,  -436(r30)                 # 4-byte Folded Reload
	slli r1, r1, 14
	add.s r15, r1, r2
	seteq r1, r15, r3
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	seteq r1, r15, r14
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	addli r1, zero, 255
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	xfence
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	mfence { lm, sm, gm }
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	csr_set csr5, r1
	sync_core
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	beq r8, zero, .LBB0_557
# %bb.550:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 833 7                         # parallel-rne.mlir:833:7
	addli r1, zero, 1
	beq r8, r1, .LBB0_593
.LBB0_551:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 859 7                         # parallel-rne.mlir:859:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_629
.LBB0_552:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 885 7                         # parallel-rne.mlir:885:7
	addli r1, zero, 3
	beq r8, r1, .LBB0_665
.LBB0_553:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 911 7                         # parallel-rne.mlir:911:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_701
.LBB0_554:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 937 7                         # parallel-rne.mlir:937:7
	addli r1, zero, 5
	beq r8, r1, .LBB0_737
.LBB0_555:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 963 7                         # parallel-rne.mlir:963:7
	addli r1, zero, 6
	beq r8, r1, .LBB0_773
.LBB0_556:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 989 7                         # parallel-rne.mlir:989:7
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_809
	j .LBB0_845
.LBB0_557:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	j .LBB0_559
.LBB0_558:                              # %middle.block402
                                        #   in Loop: Header=BB0_559 Depth=2
	.loc	1 815 9                         # parallel-rne.mlir:815:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_592
.LBB0_559:                              # %.preheader104
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_569 Depth 3
                                        #       Child Loop BB0_562 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 816 11 is_stmt 1              # parallel-rne.mlir:816:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_566
# %bb.560:                              # %scalar.ph393.preheader
                                        #   in Loop: Header=BB0_559 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_562
.LBB0_561:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 816 11                        # parallel-rne.mlir:816:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 828 13 is_stmt 1              # parallel-rne.mlir:828:13
	add.s r7, r15, r7
	.loc	1 816 11                        # parallel-rne.mlir:816:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 828 13                        # parallel-rne.mlir:828:13
	stores.w r8, 0(r7)
	.loc	1 816 11                        # parallel-rne.mlir:816:11
	beq r9, zero, .LBB0_558
.LBB0_562:                              # %scalar.ph393
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_559 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	and r8, r10, r19
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r8, zero, .LBB0_564
# %bb.563:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	beq r10, r4, .LBB0_561
	j .LBB0_565
.LBB0_564:                              #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	beq r10, r4, .LBB0_561
.LBB0_565:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_561
.LBB0_566:                              # %vector.body395.preheader
                                        #   in Loop: Header=BB0_559 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_569
.LBB0_567:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r10, 28(r17)
.LBB0_568:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 816 11 is_stmt 1              # parallel-rne.mlir:816:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 828 13                        # parallel-rne.mlir:828:13
	add.s r11, r15, r13
	.loc	1 816 11                        # parallel-rne.mlir:816:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 828 13                        # parallel-rne.mlir:828:13
	stores.w r24, 12(r11)
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 816 11                        # parallel-rne.mlir:816:11
	bneq r13, zero, .LBB0_558
.LBB0_569:                              # %vector.body395
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_559 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r13, r1, 2
	add.s r10, r3, r13
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	add.s r17, r14, r13
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	loads.w r1, 0(r10)
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	and r2, r1, r4
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	and r9, r1, r19
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	seteq r2, r2, r4
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	setneq r9, r9, zero
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	and r2, r2, r9
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r2, zero, .LBB0_571
# %bb.570:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_569 Depth=3
	or r9, r1, r28
.LBB0_572:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r2, zero, .LBB0_574
# %bb.573:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_569 Depth=3
	or r18, r1, r28
.LBB0_575:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r2, zero, .LBB0_577
# %bb.576:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_569 Depth=3
	or r12, r1, r28
.LBB0_578:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r2, zero, .LBB0_580
# %bb.579:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r17)
	j .LBB0_581
.LBB0_580:                              #   in Loop: Header=BB0_569 Depth=3
	or r24, r1, r28
.LBB0_581:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r2, zero, .LBB0_583
# %bb.582:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_584
.LBB0_583:                              #   in Loop: Header=BB0_569 Depth=3
	or r1, r1, r28
.LBB0_584:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r11, zero, .LBB0_586
# %bb.585:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_587
.LBB0_586:                              #   in Loop: Header=BB0_569 Depth=3
	or r2, r2, r28
.LBB0_587:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	bneq r11, zero, .LBB0_589
# %bb.588:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_590
.LBB0_589:                              #   in Loop: Header=BB0_569 Depth=3
	or r16, r16, r28
.LBB0_590:                              # %vector.body395
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	beq r11, zero, .LBB0_567
# %bb.591:                              #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 826 19                        # parallel-rne.mlir:826:19
	j .LBB0_568
.LBB0_592:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 807 7 is_stmt 1               # parallel-rne.mlir:807:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 833 7                         # parallel-rne.mlir:833:7
	addli r1, zero, 1
	bneq r8, r1, .LBB0_551
.LBB0_593:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 4
	zext_int2long r[5:6], r1
	j .LBB0_595
.LBB0_594:                              # %middle.block388
                                        #   in Loop: Header=BB0_595 Depth=2
	.loc	1 841 9                         # parallel-rne.mlir:841:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_628
.LBB0_595:                              # %.preheader103
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_605 Depth 3
                                        #       Child Loop BB0_598 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 842 11 is_stmt 1              # parallel-rne.mlir:842:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_602
# %bb.596:                              # %scalar.ph379.preheader
                                        #   in Loop: Header=BB0_595 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_598
.LBB0_597:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_598 Depth=3
	.loc	1 842 11                        # parallel-rne.mlir:842:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 854 13 is_stmt 1              # parallel-rne.mlir:854:13
	add.s r7, r15, r7
	.loc	1 842 11                        # parallel-rne.mlir:842:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 854 13                        # parallel-rne.mlir:854:13
	stores.w r8, 0(r7)
	.loc	1 842 11                        # parallel-rne.mlir:842:11
	beq r9, zero, .LBB0_594
.LBB0_598:                              # %scalar.ph379
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_595 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	and r8, r10, r19
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r8, zero, .LBB0_600
# %bb.599:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_598 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	beq r10, r4, .LBB0_597
	j .LBB0_601
.LBB0_600:                              #   in Loop: Header=BB0_598 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	beq r10, r4, .LBB0_597
.LBB0_601:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_598 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_597
.LBB0_602:                              # %vector.body381.preheader
                                        #   in Loop: Header=BB0_595 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_605
.LBB0_603:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r10, 28(r17)
.LBB0_604:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 842 11 is_stmt 1              # parallel-rne.mlir:842:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 854 13                        # parallel-rne.mlir:854:13
	add.s r11, r15, r13
	.loc	1 842 11                        # parallel-rne.mlir:842:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 854 13                        # parallel-rne.mlir:854:13
	stores.w r24, 12(r11)
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 842 11                        # parallel-rne.mlir:842:11
	bneq r13, zero, .LBB0_594
.LBB0_605:                              # %vector.body381
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_595 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r13, r1, 2
	add.s r10, r3, r13
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	add.s r17, r14, r13
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	loads.w r1, 0(r10)
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	and r2, r1, r4
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	and r9, r1, r19
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	seteq r2, r2, r4
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	setneq r9, r9, zero
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	and r2, r2, r9
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r2, zero, .LBB0_607
# %bb.606:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_605 Depth=3
	or r9, r1, r28
.LBB0_608:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r2, zero, .LBB0_610
# %bb.609:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_605 Depth=3
	or r18, r1, r28
.LBB0_611:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r2, zero, .LBB0_613
# %bb.612:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_605 Depth=3
	or r12, r1, r28
.LBB0_614:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r2, zero, .LBB0_616
# %bb.615:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r17)
	j .LBB0_617
.LBB0_616:                              #   in Loop: Header=BB0_605 Depth=3
	or r24, r1, r28
.LBB0_617:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r2, zero, .LBB0_619
# %bb.618:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_620
.LBB0_619:                              #   in Loop: Header=BB0_605 Depth=3
	or r1, r1, r28
.LBB0_620:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r11, zero, .LBB0_622
# %bb.621:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_623
.LBB0_622:                              #   in Loop: Header=BB0_605 Depth=3
	or r2, r2, r28
.LBB0_623:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	bneq r11, zero, .LBB0_625
# %bb.624:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_626
.LBB0_625:                              #   in Loop: Header=BB0_605 Depth=3
	or r16, r16, r28
.LBB0_626:                              # %vector.body381
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	beq r11, zero, .LBB0_603
# %bb.627:                              #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	j .LBB0_604
.LBB0_628:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 833 7 is_stmt 1               # parallel-rne.mlir:833:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 859 7                         # parallel-rne.mlir:859:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_552
.LBB0_629:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	zext_int2long r[5:6], r1
	j .LBB0_631
.LBB0_630:                              # %middle.block374
                                        #   in Loop: Header=BB0_631 Depth=2
	.loc	1 867 9                         # parallel-rne.mlir:867:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_664
.LBB0_631:                              # %.preheader102
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_641 Depth 3
                                        #       Child Loop BB0_634 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 868 11 is_stmt 1              # parallel-rne.mlir:868:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_638
# %bb.632:                              # %scalar.ph365.preheader
                                        #   in Loop: Header=BB0_631 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_634
.LBB0_633:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 868 11                        # parallel-rne.mlir:868:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 880 13 is_stmt 1              # parallel-rne.mlir:880:13
	add.s r7, r15, r7
	.loc	1 868 11                        # parallel-rne.mlir:868:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 880 13                        # parallel-rne.mlir:880:13
	stores.w r8, 0(r7)
	.loc	1 868 11                        # parallel-rne.mlir:868:11
	beq r9, zero, .LBB0_630
.LBB0_634:                              # %scalar.ph365
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_631 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	and r8, r10, r19
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r8, zero, .LBB0_636
# %bb.635:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	beq r10, r4, .LBB0_633
	j .LBB0_637
.LBB0_636:                              #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	beq r10, r4, .LBB0_633
.LBB0_637:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_633
.LBB0_638:                              # %vector.body367.preheader
                                        #   in Loop: Header=BB0_631 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_641
.LBB0_639:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r10, 28(r17)
.LBB0_640:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 868 11 is_stmt 1              # parallel-rne.mlir:868:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 880 13                        # parallel-rne.mlir:880:13
	add.s r11, r15, r13
	.loc	1 868 11                        # parallel-rne.mlir:868:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 880 13                        # parallel-rne.mlir:880:13
	stores.w r24, 12(r11)
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 868 11                        # parallel-rne.mlir:868:11
	bneq r13, zero, .LBB0_630
.LBB0_641:                              # %vector.body367
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_631 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r13, r1, 2
	add.s r10, r3, r13
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	add.s r17, r14, r13
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	loads.w r1, 0(r10)
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	and r2, r1, r4
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	and r9, r1, r19
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	seteq r2, r2, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	setneq r9, r9, zero
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	and r2, r2, r9
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r2, zero, .LBB0_643
# %bb.642:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_644
.LBB0_643:                              #   in Loop: Header=BB0_641 Depth=3
	or r9, r1, r28
.LBB0_644:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r2, zero, .LBB0_646
# %bb.645:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_647
.LBB0_646:                              #   in Loop: Header=BB0_641 Depth=3
	or r18, r1, r28
.LBB0_647:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r2, zero, .LBB0_649
# %bb.648:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_650
.LBB0_649:                              #   in Loop: Header=BB0_641 Depth=3
	or r12, r1, r28
.LBB0_650:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r2, zero, .LBB0_652
# %bb.651:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r17)
	j .LBB0_653
.LBB0_652:                              #   in Loop: Header=BB0_641 Depth=3
	or r24, r1, r28
.LBB0_653:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r2, zero, .LBB0_655
# %bb.654:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_656
.LBB0_655:                              #   in Loop: Header=BB0_641 Depth=3
	or r1, r1, r28
.LBB0_656:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r11, zero, .LBB0_658
# %bb.657:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_659
.LBB0_658:                              #   in Loop: Header=BB0_641 Depth=3
	or r2, r2, r28
.LBB0_659:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	bneq r11, zero, .LBB0_661
# %bb.660:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_662
.LBB0_661:                              #   in Loop: Header=BB0_641 Depth=3
	or r16, r16, r28
.LBB0_662:                              # %vector.body367
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	beq r11, zero, .LBB0_639
# %bb.663:                              #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	j .LBB0_640
.LBB0_664:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 859 7 is_stmt 1               # parallel-rne.mlir:859:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 885 7                         # parallel-rne.mlir:885:7
	addli r1, zero, 3
	bneq r8, r1, .LBB0_553
.LBB0_665:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 12
	zext_int2long r[5:6], r1
	j .LBB0_667
.LBB0_666:                              # %middle.block360
                                        #   in Loop: Header=BB0_667 Depth=2
	.loc	1 893 9                         # parallel-rne.mlir:893:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_700
.LBB0_667:                              # %.preheader101
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_677 Depth 3
                                        #       Child Loop BB0_670 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 894 11 is_stmt 1              # parallel-rne.mlir:894:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_674
# %bb.668:                              # %scalar.ph351.preheader
                                        #   in Loop: Header=BB0_667 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_670
.LBB0_669:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 894 11                        # parallel-rne.mlir:894:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 906 13 is_stmt 1              # parallel-rne.mlir:906:13
	add.s r7, r15, r7
	.loc	1 894 11                        # parallel-rne.mlir:894:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 906 13                        # parallel-rne.mlir:906:13
	stores.w r8, 0(r7)
	.loc	1 894 11                        # parallel-rne.mlir:894:11
	beq r9, zero, .LBB0_666
.LBB0_670:                              # %scalar.ph351
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_667 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 896 19                        # parallel-rne.mlir:896:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	and r8, r10, r19
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r8, zero, .LBB0_672
# %bb.671:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	beq r10, r4, .LBB0_669
	j .LBB0_673
.LBB0_672:                              #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	beq r10, r4, .LBB0_669
.LBB0_673:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_669
.LBB0_674:                              # %vector.body353.preheader
                                        #   in Loop: Header=BB0_667 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_677
.LBB0_675:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r10, 28(r17)
.LBB0_676:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 894 11 is_stmt 1              # parallel-rne.mlir:894:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 906 13                        # parallel-rne.mlir:906:13
	add.s r11, r15, r13
	.loc	1 894 11                        # parallel-rne.mlir:894:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 906 13                        # parallel-rne.mlir:906:13
	stores.w r24, 12(r11)
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 894 11                        # parallel-rne.mlir:894:11
	bneq r13, zero, .LBB0_666
.LBB0_677:                              # %vector.body353
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_667 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r13, r1, 2
	add.s r10, r3, r13
	.loc	1 896 19                        # parallel-rne.mlir:896:19
	add.s r17, r14, r13
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	loads.w r1, 0(r10)
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	and r2, r1, r4
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	and r9, r1, r19
	.loc	1 900 19                        # parallel-rne.mlir:900:19
	seteq r2, r2, r4
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	setneq r9, r9, zero
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	and r2, r2, r9
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r2, zero, .LBB0_679
# %bb.678:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_680
.LBB0_679:                              #   in Loop: Header=BB0_677 Depth=3
	or r9, r1, r28
.LBB0_680:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r2, zero, .LBB0_682
# %bb.681:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_683
.LBB0_682:                              #   in Loop: Header=BB0_677 Depth=3
	or r18, r1, r28
.LBB0_683:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r2, zero, .LBB0_685
# %bb.684:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_686
.LBB0_685:                              #   in Loop: Header=BB0_677 Depth=3
	or r12, r1, r28
.LBB0_686:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r2, zero, .LBB0_688
# %bb.687:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r17)
	j .LBB0_689
.LBB0_688:                              #   in Loop: Header=BB0_677 Depth=3
	or r24, r1, r28
.LBB0_689:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r2, zero, .LBB0_691
# %bb.690:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_692
.LBB0_691:                              #   in Loop: Header=BB0_677 Depth=3
	or r1, r1, r28
.LBB0_692:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r11, zero, .LBB0_694
# %bb.693:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_695
.LBB0_694:                              #   in Loop: Header=BB0_677 Depth=3
	or r2, r2, r28
.LBB0_695:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	bneq r11, zero, .LBB0_697
# %bb.696:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_698
.LBB0_697:                              #   in Loop: Header=BB0_677 Depth=3
	or r16, r16, r28
.LBB0_698:                              # %vector.body353
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	beq r11, zero, .LBB0_675
# %bb.699:                              #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	j .LBB0_676
.LBB0_700:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 885 7 is_stmt 1               # parallel-rne.mlir:885:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 911 7                         # parallel-rne.mlir:911:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_554
.LBB0_701:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 16
	zext_int2long r[5:6], r1
	j .LBB0_703
.LBB0_702:                              # %middle.block346
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 919 9                         # parallel-rne.mlir:919:9
	load.d r[1:2], -288(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_736
.LBB0_703:                              # %.preheader100
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_713 Depth 3
                                        #       Child Loop BB0_706 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 920 11 is_stmt 1              # parallel-rne.mlir:920:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_710
# %bb.704:                              # %scalar.ph337.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_706
.LBB0_705:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 932 13 is_stmt 1              # parallel-rne.mlir:932:13
	add.s r7, r15, r7
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 932 13                        # parallel-rne.mlir:932:13
	stores.w r8, 0(r7)
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	beq r9, zero, .LBB0_702
.LBB0_706:                              # %scalar.ph337
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	and r8, r10, r19
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r8, zero, .LBB0_708
# %bb.707:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	beq r10, r4, .LBB0_705
	j .LBB0_709
.LBB0_708:                              #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	beq r10, r4, .LBB0_705
.LBB0_709:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_705
.LBB0_710:                              # %vector.body339.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_713
.LBB0_711:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r10, 28(r17)
.LBB0_712:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 920 11 is_stmt 1              # parallel-rne.mlir:920:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 932 13                        # parallel-rne.mlir:932:13
	add.s r11, r15, r13
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 932 13                        # parallel-rne.mlir:932:13
	stores.w r24, 12(r11)
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 920 11                        # parallel-rne.mlir:920:11
	bneq r13, zero, .LBB0_702
.LBB0_713:                              # %vector.body339
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r13, r1, 2
	add.s r10, r3, r13
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	add.s r17, r14, r13
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	loads.w r1, 0(r10)
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	and r2, r1, r4
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	and r9, r1, r19
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	seteq r2, r2, r4
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	setneq r9, r9, zero
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	and r2, r2, r9
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r2, zero, .LBB0_715
# %bb.714:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_713 Depth=3
	or r9, r1, r28
.LBB0_716:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r2, zero, .LBB0_718
# %bb.717:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_713 Depth=3
	or r18, r1, r28
.LBB0_719:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r2, zero, .LBB0_721
# %bb.720:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_713 Depth=3
	or r12, r1, r28
.LBB0_722:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r2, zero, .LBB0_724
# %bb.723:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r17)
	j .LBB0_725
.LBB0_724:                              #   in Loop: Header=BB0_713 Depth=3
	or r24, r1, r28
.LBB0_725:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r2, zero, .LBB0_727
# %bb.726:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_728
.LBB0_727:                              #   in Loop: Header=BB0_713 Depth=3
	or r1, r1, r28
.LBB0_728:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r11, zero, .LBB0_730
# %bb.729:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_731
.LBB0_730:                              #   in Loop: Header=BB0_713 Depth=3
	or r2, r2, r28
.LBB0_731:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	bneq r11, zero, .LBB0_733
# %bb.732:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_734
.LBB0_733:                              #   in Loop: Header=BB0_713 Depth=3
	or r16, r16, r28
.LBB0_734:                              # %vector.body339
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	beq r11, zero, .LBB0_711
# %bb.735:                              #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 930 19                        # parallel-rne.mlir:930:19
	j .LBB0_712
.LBB0_736:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 911 7 is_stmt 1               # parallel-rne.mlir:911:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 937 7                         # parallel-rne.mlir:937:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_555
.LBB0_737:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	zext_int2long r[5:6], r1
	j .LBB0_739
.LBB0_738:                              # %middle.block332
                                        #   in Loop: Header=BB0_739 Depth=2
	.loc	1 945 9                         # parallel-rne.mlir:945:9
	load.d r[1:2], -280(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_772
.LBB0_739:                              # %.preheader99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_749 Depth 3
                                        #       Child Loop BB0_742 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 946 11 is_stmt 1              # parallel-rne.mlir:946:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_746
# %bb.740:                              # %scalar.ph323.preheader
                                        #   in Loop: Header=BB0_739 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_742
.LBB0_741:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_742 Depth=3
	.loc	1 946 11                        # parallel-rne.mlir:946:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 958 13 is_stmt 1              # parallel-rne.mlir:958:13
	add.s r7, r15, r7
	.loc	1 946 11                        # parallel-rne.mlir:946:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 958 13                        # parallel-rne.mlir:958:13
	stores.w r8, 0(r7)
	.loc	1 946 11                        # parallel-rne.mlir:946:11
	beq r9, zero, .LBB0_738
.LBB0_742:                              # %scalar.ph323
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_739 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	and r8, r10, r19
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r8, zero, .LBB0_744
# %bb.743:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_742 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	beq r10, r4, .LBB0_741
	j .LBB0_745
.LBB0_744:                              #   in Loop: Header=BB0_742 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	beq r10, r4, .LBB0_741
.LBB0_745:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_742 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_741
.LBB0_746:                              # %vector.body325.preheader
                                        #   in Loop: Header=BB0_739 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_749
.LBB0_747:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r10, 28(r17)
.LBB0_748:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 946 11 is_stmt 1              # parallel-rne.mlir:946:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 958 13                        # parallel-rne.mlir:958:13
	add.s r11, r15, r13
	.loc	1 946 11                        # parallel-rne.mlir:946:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 958 13                        # parallel-rne.mlir:958:13
	stores.w r24, 12(r11)
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 946 11                        # parallel-rne.mlir:946:11
	bneq r13, zero, .LBB0_738
.LBB0_749:                              # %vector.body325
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_739 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r13, r1, 2
	add.s r10, r3, r13
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	add.s r17, r14, r13
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	loads.w r1, 0(r10)
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	and r2, r1, r4
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	and r9, r1, r19
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	seteq r2, r2, r4
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	setneq r9, r9, zero
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	and r2, r2, r9
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r2, zero, .LBB0_751
# %bb.750:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_752
.LBB0_751:                              #   in Loop: Header=BB0_749 Depth=3
	or r9, r1, r28
.LBB0_752:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r2, zero, .LBB0_754
# %bb.753:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_755
.LBB0_754:                              #   in Loop: Header=BB0_749 Depth=3
	or r18, r1, r28
.LBB0_755:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r2, zero, .LBB0_757
# %bb.756:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_758
.LBB0_757:                              #   in Loop: Header=BB0_749 Depth=3
	or r12, r1, r28
.LBB0_758:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r2, zero, .LBB0_760
# %bb.759:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r17)
	j .LBB0_761
.LBB0_760:                              #   in Loop: Header=BB0_749 Depth=3
	or r24, r1, r28
.LBB0_761:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r2, zero, .LBB0_763
# %bb.762:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_764
.LBB0_763:                              #   in Loop: Header=BB0_749 Depth=3
	or r1, r1, r28
.LBB0_764:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r11, zero, .LBB0_766
# %bb.765:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_767
.LBB0_766:                              #   in Loop: Header=BB0_749 Depth=3
	or r2, r2, r28
.LBB0_767:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	bneq r11, zero, .LBB0_769
# %bb.768:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_770
.LBB0_769:                              #   in Loop: Header=BB0_749 Depth=3
	or r16, r16, r28
.LBB0_770:                              # %vector.body325
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	beq r11, zero, .LBB0_747
# %bb.771:                              #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 956 19                        # parallel-rne.mlir:956:19
	j .LBB0_748
.LBB0_772:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 937 7 is_stmt 1               # parallel-rne.mlir:937:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 963 7                         # parallel-rne.mlir:963:7
	addli r1, zero, 6
	bneq r8, r1, .LBB0_556
.LBB0_773:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	zext_int2long r[5:6], r1
	j .LBB0_775
.LBB0_774:                              # %middle.block318
                                        #   in Loop: Header=BB0_775 Depth=2
	.loc	1 971 9                         # parallel-rne.mlir:971:9
	load.d r[1:2], -272(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_808
.LBB0_775:                              # %.preheader98
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_785 Depth 3
                                        #       Child Loop BB0_778 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 972 11 is_stmt 1              # parallel-rne.mlir:972:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_782
# %bb.776:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_775 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_778
.LBB0_777:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 984 13 is_stmt 1              # parallel-rne.mlir:984:13
	add.s r7, r15, r7
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 984 13                        # parallel-rne.mlir:984:13
	stores.w r8, 0(r7)
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	beq r9, zero, .LBB0_774
.LBB0_778:                              # %scalar.ph309
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_775 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 974 19                        # parallel-rne.mlir:974:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	and r8, r10, r19
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r8, zero, .LBB0_780
# %bb.779:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	beq r10, r4, .LBB0_777
	j .LBB0_781
.LBB0_780:                              #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	beq r10, r4, .LBB0_777
.LBB0_781:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_777
.LBB0_782:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_775 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_785
.LBB0_783:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r10, 28(r17)
.LBB0_784:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 972 11 is_stmt 1              # parallel-rne.mlir:972:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 984 13                        # parallel-rne.mlir:984:13
	add.s r11, r15, r13
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 984 13                        # parallel-rne.mlir:984:13
	stores.w r24, 12(r11)
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 972 11                        # parallel-rne.mlir:972:11
	bneq r13, zero, .LBB0_774
.LBB0_785:                              # %vector.body311
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_775 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r13, r1, 2
	add.s r10, r3, r13
	.loc	1 974 19                        # parallel-rne.mlir:974:19
	add.s r17, r14, r13
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	loads.w r1, 0(r10)
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	and r2, r1, r4
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	and r9, r1, r19
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	seteq r2, r2, r4
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	setneq r9, r9, zero
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	and r2, r2, r9
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r2, zero, .LBB0_787
# %bb.786:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_788
.LBB0_787:                              #   in Loop: Header=BB0_785 Depth=3
	or r9, r1, r28
.LBB0_788:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r2, zero, .LBB0_790
# %bb.789:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_791
.LBB0_790:                              #   in Loop: Header=BB0_785 Depth=3
	or r18, r1, r28
.LBB0_791:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r2, zero, .LBB0_793
# %bb.792:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_794
.LBB0_793:                              #   in Loop: Header=BB0_785 Depth=3
	or r12, r1, r28
.LBB0_794:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r2, zero, .LBB0_796
# %bb.795:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r17)
	j .LBB0_797
.LBB0_796:                              #   in Loop: Header=BB0_785 Depth=3
	or r24, r1, r28
.LBB0_797:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r2, zero, .LBB0_799
# %bb.798:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_800
.LBB0_799:                              #   in Loop: Header=BB0_785 Depth=3
	or r1, r1, r28
.LBB0_800:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r11, zero, .LBB0_802
# %bb.801:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_803
.LBB0_802:                              #   in Loop: Header=BB0_785 Depth=3
	or r2, r2, r28
.LBB0_803:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	bneq r11, zero, .LBB0_805
# %bb.804:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_806
.LBB0_805:                              #   in Loop: Header=BB0_785 Depth=3
	or r16, r16, r28
.LBB0_806:                              # %vector.body311
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	beq r11, zero, .LBB0_783
# %bb.807:                              #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 982 19                        # parallel-rne.mlir:982:19
	j .LBB0_784
.LBB0_808:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 963 7 is_stmt 1               # parallel-rne.mlir:963:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 989 7                         # parallel-rne.mlir:989:7
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_845
.LBB0_809:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	addli r1, zero, 28
	zext_int2long r[5:6], r1
	j .LBB0_811
.LBB0_810:                              # %middle.block304
                                        #   in Loop: Header=BB0_811 Depth=2
	.loc	1 997 9                         # parallel-rne.mlir:997:9
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	load.d r[5:6], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_844
.LBB0_811:                              # %.preheader97
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_821 Depth 3
                                        #       Child Loop BB0_814 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -328(r30)               # 8-byte Folded Spill
	sll.d r[5:6], r[5:6], r1
	.loc	1 998 11 is_stmt 1              # parallel-rne.mlir:998:11
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_818
# %bb.812:                              # %scalar.ph295.preheader
                                        #   in Loop: Header=BB0_811 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_814
.LBB0_813:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_814 Depth=3
	.loc	1 998 11                        # parallel-rne.mlir:998:11
	setlt.ul r9, r[1:2], r[20:21]
	.loc	1 1010 13 is_stmt 1             # parallel-rne.mlir:1010:13
	add.s r7, r15, r7
	.loc	1 998 11                        # parallel-rne.mlir:998:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 1010 13                       # parallel-rne.mlir:1010:13
	stores.w r8, 0(r7)
	.loc	1 998 11                        # parallel-rne.mlir:998:11
	beq r9, zero, .LBB0_810
.LBB0_814:                              # %scalar.ph295
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_811 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 999 19                        # parallel-rne.mlir:999:19
	add.ul r[7:8], r[1:2], r[5:6]
	slli r7, r7, 2
	add.s r8, r3, r7
	loads.w r10, 0(r8)
	.loc	1 1000 19                       # parallel-rne.mlir:1000:19
	add.s r8, r14, r7
	loads.w r9, 0(r8)
	.loc	1 1005 19                       # parallel-rne.mlir:1005:19
	and r8, r10, r19
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r8, zero, .LBB0_816
# %bb.815:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_814 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r10, r10, r4
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	beq r10, r4, .LBB0_813
	j .LBB0_817
.LBB0_816:                              #   in Loop: Header=BB0_814 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r10, r28
	and r10, r10, r4
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	beq r10, r4, .LBB0_813
.LBB0_817:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_814 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_813
.LBB0_818:                              # %vector.body297.preheader
                                        #   in Loop: Header=BB0_811 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_821
.LBB0_819:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r10, 28(r17)
.LBB0_820:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 1010 13 is_stmt 1             # parallel-rne.mlir:1010:13
	add.s r11, r15, r24
	.loc	1 998 11                        # parallel-rne.mlir:998:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1010 13                       # parallel-rne.mlir:1010:13
	stores.w r13, 12(r11)
	.loc	1 998 11                        # parallel-rne.mlir:998:11
	seteq.d r13, r[7:8], r[22:23]
	.loc	1 1010 13                       # parallel-rne.mlir:1010:13
	stores.w r12, 8(r11)
	stores.w r18, 4(r11)
	stores.w r9, 0(r11)
	stores.w r10, 28(r11)
	stores.w r16, 24(r11)
	stores.w r2, 20(r11)
	stores.w r1, 16(r11)
	.loc	1 998 11                        # parallel-rne.mlir:998:11
	bneq r13, zero, .LBB0_810
.LBB0_821:                              # %vector.body297
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_811 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 999 19                        # parallel-rne.mlir:999:19
	add.ul r[1:2], r[7:8], r[5:6]
	slli r24, r1, 2
	add.s r10, r3, r24
	.loc	1 1000 19                       # parallel-rne.mlir:1000:19
	add.s r17, r14, r24
	.loc	1 999 19                        # parallel-rne.mlir:999:19
	loads.w r1, 0(r10)
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	and r2, r1, r4
	.loc	1 1005 19                       # parallel-rne.mlir:1005:19
	and r9, r1, r19
	.loc	1 1004 19                       # parallel-rne.mlir:1004:19
	seteq r2, r2, r4
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	setneq r9, r9, zero
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	and r2, r2, r9
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r2, zero, .LBB0_823
# %bb.822:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r17)
	j .LBB0_824
.LBB0_823:                              #   in Loop: Header=BB0_821 Depth=3
	or r9, r1, r28
.LBB0_824:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r1, 4(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r2, zero, .LBB0_826
# %bb.825:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 4(r17)
	j .LBB0_827
.LBB0_826:                              #   in Loop: Header=BB0_821 Depth=3
	or r18, r1, r28
.LBB0_827:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r1, 8(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r2, zero, .LBB0_829
# %bb.828:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 8(r17)
	j .LBB0_830
.LBB0_829:                              #   in Loop: Header=BB0_821 Depth=3
	or r12, r1, r28
.LBB0_830:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r1, 12(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r2, zero, .LBB0_832
# %bb.831:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r17)
	j .LBB0_833
.LBB0_832:                              #   in Loop: Header=BB0_821 Depth=3
	or r13, r1, r28
.LBB0_833:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r1, 16(r10)
	and r2, r1, r4
	and r11, r1, r19
	seteq r2, r2, r4
	setneq r11, r11, zero
	and r2, r2, r11
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r2, zero, .LBB0_835
# %bb.834:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 16(r17)
	j .LBB0_836
.LBB0_835:                              #   in Loop: Header=BB0_821 Depth=3
	or r1, r1, r28
.LBB0_836:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r2, 20(r10)
	and r11, r2, r4
	and r16, r2, r19
	seteq r11, r11, r4
	setneq r16, r16, zero
	and r11, r11, r16
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r11, zero, .LBB0_838
# %bb.837:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 20(r17)
	j .LBB0_839
.LBB0_838:                              #   in Loop: Header=BB0_821 Depth=3
	or r2, r2, r28
.LBB0_839:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r16, 24(r10)
	and r11, r16, r4
	and r25, r16, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	bneq r11, zero, .LBB0_841
# %bb.840:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r17)
	j .LBB0_842
.LBB0_841:                              #   in Loop: Header=BB0_821 Depth=3
	or r16, r16, r28
.LBB0_842:                              # %vector.body297
                                        #   in Loop: Header=BB0_821 Depth=3
	loads.w r10, 28(r10)
	and r11, r10, r4
	and r25, r10, r19
	seteq r11, r11, r4
	setneq r25, r25, zero
	and r11, r11, r25
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	beq r11, zero, .LBB0_819
# %bb.843:                              #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r10, r10, r28
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	j .LBB0_820
.LBB0_844:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 989 7 is_stmt 1               # parallel-rne.mlir:989:7
	mfence { sm }
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r8
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
.LBB0_845:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	addli r1, zero, 255
	addli r2, zero, 3
	csr_set csr5, r1
	sync_core
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	bneq r8, r2, .LBB0_847
# %bb.846:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 31
	.loc	1 1017 7 is_stmt 1              # parallel-rne.mlir:1017:7
	addli r1, zero, 38
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	xsignal r3, 0
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	xsignal r1, 0
	.loc	1 1018 7                        # parallel-rne.mlir:1018:7
	addli r1, zero, 39
	xsignal r1, 0
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	loadli.w r1,  -16(r30)
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -16(r30)
	.loc	1 1024 7                        # parallel-rne.mlir:1024:7
	addli r1, zero, 21
	xwait r1, 0
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	xwait r3, 0
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	slli r1, r2, 14
	loadli.w r2,  -440(r30)                 # 4-byte Folded Reload
	add.s r3, r1, r2
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	addli r1, zero, 40
	xwait r1, 0
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	addli r1, zero, 42
	xwait r1, 0
	j .LBB0_850
.LBB0_847:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1019 7                        # parallel-rne.mlir:1019:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_849
# %bb.848:                              # %.thread87
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 39
	addli r6, zero, 2
	addli r7, zero, 1023
	addli r5, zero, 4
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	addli r3, zero, 3
	.loc	1 1019 7                        # parallel-rne.mlir:1019:7
	xwait r1, 0
	lock zero, r6
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	dsmadd r15, r15, r15, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	loadli.w r1,  -16(r30)
	addli r2, r1, 1
	mod.s r1, r1, r3
	storeli.w r2, -16(r30)
	.loc	1 1022 7                        # parallel-rne.mlir:1022:7
	addli r2, zero, 20
	xwait r2, 0
	addli r2, zero, 43
	xwait r2, 0
	lock zero, r6
	lui r2, 258048
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	slli r1, r1, 14
	.loc	1 1022 7                        # parallel-rne.mlir:1022:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	loadli.w r2,  -440(r30)                 # 4-byte Folded Reload
	.loc	1 1022 7                        # parallel-rne.mlir:1022:7
	ew_cfg zero, r7, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	add.s r3, r1, r2
	.loc	1 1022 7                        # parallel-rne.mlir:1022:7
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	dsmul r3, r1, r15, 0
	addli r1, zero, 19
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r1, 0
	addli r1, zero, 40
	xsignal r1, 0
	addli r1, zero, 42
	xsignal r1, 0
	.loc	1 1024 7                        # parallel-rne.mlir:1024:7
	j .LBB0_850
.LBB0_849:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	loadli.w r1,  -16(r30)
	addli r2, zero, 3
	loadli.w r3,  -440(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -16(r30)
	slli r2, r2, 14
	add.s r3, r2, r3
.LBB0_850:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	seteq r1, r14, r15
	.loc	1 1029 7 is_stmt 1              # parallel-rne.mlir:1029:7
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	addli r1, zero, 255
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	xfence
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	mfence { lm, sm, gm }
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	csr_set csr5, r1
	sub.s r1, r14, r5
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	sub.s r1, r14, r3
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	beq r8, zero, .LBB0_857
# %bb.851:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1068 7                        # parallel-rne.mlir:1068:7
	addli r1, zero, 1
	beq r8, r1, .LBB0_885
.LBB0_852:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1104 7                        # parallel-rne.mlir:1104:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_913
.LBB0_853:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1140 7                        # parallel-rne.mlir:1140:7
	addli r1, zero, 3
	beq r8, r1, .LBB0_941
.LBB0_854:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1176 7                        # parallel-rne.mlir:1176:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_969
.LBB0_855:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1212 7                        # parallel-rne.mlir:1212:7
	addli r1, zero, 5
	beq r8, r1, .LBB0_997
.LBB0_856:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1248 7                        # parallel-rne.mlir:1248:7
	addli r1, zero, 6
	beq r8, r1, .LBB0_1025
	j .LBB0_1053
.LBB0_857:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1032 7 is_stmt 1              # parallel-rne.mlir:1032:7
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	j .LBB0_859
.LBB0_858:                              # %middle.block290
                                        #   in Loop: Header=BB0_859 Depth=2
	.loc	1 1040 9                        # parallel-rne.mlir:1040:9
	load.d r[1:2], -320(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_884
.LBB0_859:                              # %.preheader96
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_876 Depth 3
                                        #       Child Loop BB0_862 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -248(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[5:6], r1
	.loc	1 1041 11 is_stmt 1             # parallel-rne.mlir:1041:11
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_874
# %bb.860:                              # %scalar.ph282.preheader
                                        #   in Loop: Header=BB0_859 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_862
.LBB0_861:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 1041 11                       # parallel-rne.mlir:1041:11
	setlt.ul r1, r[9:10], r[20:21]
	.loc	1 1063 13 is_stmt 1             # parallel-rne.mlir:1063:13
	add.s r2, r14, r2
	.loc	1 1041 11                       # parallel-rne.mlir:1041:11
	addli.d r[9:10], r[9:10], 1
	.loc	1 1063 13                       # parallel-rne.mlir:1063:13
	stores.w r11, 0(r2)
	.loc	1 1041 11                       # parallel-rne.mlir:1041:11
	beq r1, zero, .LBB0_858
.LBB0_862:                              # %scalar.ph282
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_859 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	add.ul r[1:2], r[9:10], r[7:8]
	lui r11, 523264
	lui r16, 523264
	slli r2, r1, 2
	.loc	1 1043 19                       # parallel-rne.mlir:1043:19
	add.s r1, r15, r2
	.loc	1 1044 19                       # parallel-rne.mlir:1044:19
	add.s r5, r3, r2
	.loc	1 1043 19                       # parallel-rne.mlir:1043:19
	loads.w r1, 0(r1)
	.loc	1 1044 19                       # parallel-rne.mlir:1044:19
	loads.w r17, 0(r5)
	.loc	1 1047 19                       # parallel-rne.mlir:1047:19
	and r12, r1, r27
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	beq r12, r4, .LBB0_864
# %bb.863:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
.LBB0_864:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	add.s r1, r1, r2
	loads.w r1, 0(r1)
	and r13, r1, r27
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r13, zero, .LBB0_872
# %bb.865:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r12, zero, .LBB0_873
.LBB0_866:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	beq r13, r4, .LBB0_868
.LBB0_867:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
.LBB0_868:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	setlt.u r1, r4, r12
	lui r12, 523264
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r1, zero, .LBB0_870
# %bb.869:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_870:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	setlt.u r1, r4, r13
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r1, zero, .LBB0_861
# %bb.871:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_861
.LBB0_872:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	beq r12, zero, .LBB0_866
.LBB0_873:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_862 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r13, r4, .LBB0_867
	j .LBB0_868
.LBB0_874:                              # %vector.body284.preheader
                                        #   in Loop: Header=BB0_859 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[9:10], zero
	j .LBB0_876
.LBB0_875:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 1041 11 is_stmt 1             # parallel-rne.mlir:1041:11
	addli.d r[9:10], r[9:10], 4
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1063 13                       # parallel-rne.mlir:1063:13
	add.s r2, r14, r2
	.loc	1 1041 11                       # parallel-rne.mlir:1041:11
	seteq.d r1, r[9:10], r[22:23]
	.loc	1 1063 13                       # parallel-rne.mlir:1063:13
	stores.w r17, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r12, 0(r2)
	.loc	1 1041 11                       # parallel-rne.mlir:1041:11
	bneq r1, zero, .LBB0_858
.LBB0_876:                              # %vector.body284
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_859 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	add.s r18, r5, r2
	.loc	1 1043 19                       # parallel-rne.mlir:1043:19
	add.s r11, r15, r2
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	loads.w r12, 0(r18)
	.loc	1 1043 19                       # parallel-rne.mlir:1043:19
	loads.w r13, 0(r11)
	.loc	1 1049 19                       # parallel-rne.mlir:1049:19
	and r12, r12, r27
	.loc	1 1047 19                       # parallel-rne.mlir:1047:19
	and r13, r13, r27
	.loc	1 1050 19                       # parallel-rne.mlir:1050:19
	seteq r16, r12, r4
	.loc	1 1054 20                       # parallel-rne.mlir:1054:20
	seteq r25, r12, zero
	.loc	1 1051 19                       # parallel-rne.mlir:1051:19
	seteq r17, r13, zero
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	seteq r24, r13, r4
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	max.u r12, r12, r13
	setlt.u r12, r4, r12
	.loc	1 1052 19                       # parallel-rne.mlir:1052:19
	and r13, r16, r17
	.loc	1 1055 20                       # parallel-rne.mlir:1055:20
	and r16, r25, r24
	lui r17, 523264
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	or r16, r13, r16
	.loc	1 1044 19                       # parallel-rne.mlir:1044:19
	add.s r13, r3, r2
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	or r16, r12, r16
	lui r12, 523264
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r16, zero, .LBB0_878
# %bb.877:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r13)
.LBB0_878:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	loads.w r16, 4(r18)
	loads.w r24, 4(r11)
	and r16, r16, r27
	and r24, r24, r27
	seteq r25, r16, r4
	seteq r28, r24, zero
	seteq r1, r24, r4
	seteq r5, r16, zero
	max.u r6, r16, r24
	lui r24, 523264
	setlt.u r6, r4, r6
	and r16, r25, r28
	and r1, r5, r1
	or r1, r16, r1
	or r1, r6, r1
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r1, zero, .LBB0_880
# %bb.879:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r24, 4(r13)
.LBB0_880:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	loads.w r1, 8(r18)
	loads.w r5, 8(r11)
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r28, r1, zero
	seteq r16, r5, zero
	seteq r25, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r16
	and r6, r28, r25
	lui r16, 523264
	or r5, r5, r6
	or r1, r1, r5
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r1, zero, .LBB0_882
# %bb.881:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r13)
.LBB0_882:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	loads.w r1, 12(r18)
	loads.w r5, 12(r11)
	lui r28, 1024
	and r1, r1, r27
	and r5, r5, r27
	seteq r6, r1, r4
	seteq r25, r1, zero
	seteq r11, r5, zero
	seteq r18, r5, r4
	max.u r1, r1, r5
	setlt.u r1, r4, r1
	and r5, r6, r11
	and r6, r25, r18
	or r5, r5, r6
	or r1, r1, r5
	.loc	1 1061 20                       # parallel-rne.mlir:1061:20
	bneq r1, zero, .LBB0_875
# %bb.883:                              # %vector.body284
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r13)
	j .LBB0_875
.LBB0_884:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	mfence { sm }
	.loc	1 1068 7                        # parallel-rne.mlir:1068:7
	addli r1, zero, 1
	bneq r8, r1, .LBB0_852
.LBB0_885:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1068 7                        # parallel-rne.mlir:1068:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r5, r1, r2
	addli r1, zero, 4
	zext_int2long r[6:7], r1
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	or r1, r5, r1
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	j .LBB0_887
.LBB0_886:                              # %middle.block275
                                        #   in Loop: Header=BB0_887 Depth=2
	.loc	1 1076 9 is_stmt 1              # parallel-rne.mlir:1076:9
	load.d r[1:2], -312(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	addli.d r[6:7], r[5:6], 0
	beq r1, zero, .LBB0_912
.LBB0_887:                              # %.preheader95
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_904 Depth 3
                                        #       Child Loop BB0_890 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 1077 11 is_stmt 1             # parallel-rne.mlir:1077:11
	loadli.w r1,  -320(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_902
# %bb.888:                              # %scalar.ph267.preheader
                                        #   in Loop: Header=BB0_887 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_890
.LBB0_889:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	.loc	1 1077 11                       # parallel-rne.mlir:1077:11
	setlt.ul r1, r[8:9], r[20:21]
	.loc	1 1099 13 is_stmt 1             # parallel-rne.mlir:1099:13
	add.s r2, r14, r10
	.loc	1 1077 11                       # parallel-rne.mlir:1077:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1099 13                       # parallel-rne.mlir:1099:13
	stores.w r11, 0(r2)
	.loc	1 1077 11                       # parallel-rne.mlir:1077:11
	beq r1, zero, .LBB0_886
.LBB0_890:                              # %scalar.ph267
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_887 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	add.ul r[1:2], r[8:9], r[6:7]
	lui r11, 523264
	lui r16, 523264
	slli r10, r1, 2
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	add.s r1, r15, r10
	.loc	1 1080 19                       # parallel-rne.mlir:1080:19
	add.s r2, r3, r10
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	loads.w r1, 0(r1)
	.loc	1 1080 19                       # parallel-rne.mlir:1080:19
	loads.w r17, 0(r2)
	.loc	1 1083 19                       # parallel-rne.mlir:1083:19
	and r12, r1, r27
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	beq r12, r4, .LBB0_892
# %bb.891:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
.LBB0_892:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	add.s r1, r5, r10
	loads.w r1, 0(r1)
	and r13, r1, r27
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r13, zero, .LBB0_900
# %bb.893:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r12, zero, .LBB0_901
.LBB0_894:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	beq r13, r4, .LBB0_896
.LBB0_895:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
.LBB0_896:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	setlt.u r1, r4, r12
	lui r12, 523264
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r1, zero, .LBB0_898
# %bb.897:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_898:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	setlt.u r1, r4, r13
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r1, zero, .LBB0_889
# %bb.899:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_889
.LBB0_900:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	beq r12, zero, .LBB0_894
.LBB0_901:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_890 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r13, r4, .LBB0_895
	j .LBB0_896
.LBB0_902:                              # %vector.body269.preheader
                                        #   in Loop: Header=BB0_887 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_904
.LBB0_903:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 1077 11 is_stmt 1             # parallel-rne.mlir:1077:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1099 13                       # parallel-rne.mlir:1099:13
	add.s r2, r14, r10
	.loc	1 1077 11                       # parallel-rne.mlir:1077:11
	seteq.d r1, r[8:9], r[22:23]
	.loc	1 1099 13                       # parallel-rne.mlir:1099:13
	stores.w r17, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r12, 0(r2)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1077 11                       # parallel-rne.mlir:1077:11
	bneq r1, zero, .LBB0_886
.LBB0_904:                              # %vector.body269
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_887 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	add.ul r[10:11], r[8:9], r[6:7]
	slli r10, r10, 2
	add.s r18, r2, r10
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	add.s r11, r15, r10
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	loads.w r12, 0(r18)
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	loads.w r13, 0(r11)
	.loc	1 1085 19                       # parallel-rne.mlir:1085:19
	and r12, r12, r27
	.loc	1 1083 19                       # parallel-rne.mlir:1083:19
	and r13, r13, r27
	.loc	1 1086 19                       # parallel-rne.mlir:1086:19
	seteq r16, r12, r4
	.loc	1 1090 20                       # parallel-rne.mlir:1090:20
	seteq r25, r12, zero
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	seteq r17, r13, zero
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	seteq r24, r13, r4
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	max.u r12, r12, r13
	setlt.u r12, r4, r12
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	and r13, r16, r17
	.loc	1 1091 20                       # parallel-rne.mlir:1091:20
	and r16, r25, r24
	lui r17, 523264
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	or r16, r13, r16
	.loc	1 1080 19                       # parallel-rne.mlir:1080:19
	add.s r13, r3, r10
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	or r16, r12, r16
	lui r12, 523264
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r16, zero, .LBB0_906
# %bb.905:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r13)
.LBB0_906:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	loads.w r16, 4(r18)
	loads.w r24, 4(r11)
	and r16, r16, r27
	and r24, r24, r27
	seteq r25, r16, r4
	seteq r28, r24, zero
	seteq r5, r24, r4
	seteq r1, r16, zero
	max.u r2, r16, r24
	lui r24, 523264
	setlt.u r2, r4, r2
	and r16, r25, r28
	and r1, r1, r5
	or r1, r16, r1
	or r1, r2, r1
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r1, zero, .LBB0_908
# %bb.907:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r24, 4(r13)
.LBB0_908:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	loads.w r1, 8(r18)
	loads.w r2, 8(r11)
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r28, r1, zero
	seteq r16, r2, zero
	seteq r25, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r16
	and r5, r28, r25
	lui r16, 523264
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r1, zero, .LBB0_910
# %bb.909:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r13)
.LBB0_910:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	loads.w r1, 12(r18)
	loads.w r2, 12(r11)
	lui r28, 1024
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r25, r1, zero
	seteq r11, r2, zero
	seteq r18, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r11
	and r5, r25, r18
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1097 20                       # parallel-rne.mlir:1097:20
	bneq r1, zero, .LBB0_903
# %bb.911:                              # %vector.body269
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r13)
	j .LBB0_903
.LBB0_912:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1068 7                        # parallel-rne.mlir:1068:7
	mfence { sm }
	.loc	1 1104 7                        # parallel-rne.mlir:1104:7
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_853
.LBB0_913:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1104 7                        # parallel-rne.mlir:1104:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r5, r1, r2
	addli r1, zero, 8
	zext_int2long r[6:7], r1
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	or r1, r5, r1
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	j .LBB0_915
.LBB0_914:                              # %middle.block260
                                        #   in Loop: Header=BB0_915 Depth=2
	.loc	1 1112 9 is_stmt 1              # parallel-rne.mlir:1112:9
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	addli.d r[6:7], r[5:6], 0
	beq r1, zero, .LBB0_940
.LBB0_915:                              # %.preheader94
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_932 Depth 3
                                        #       Child Loop BB0_918 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 1113 11 is_stmt 1             # parallel-rne.mlir:1113:11
	loadli.w r1,  -312(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_930
# %bb.916:                              # %scalar.ph252.preheader
                                        #   in Loop: Header=BB0_915 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_918
.LBB0_917:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 1113 11                       # parallel-rne.mlir:1113:11
	setlt.ul r1, r[8:9], r[20:21]
	.loc	1 1135 13 is_stmt 1             # parallel-rne.mlir:1135:13
	add.s r2, r14, r10
	.loc	1 1113 11                       # parallel-rne.mlir:1113:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1135 13                       # parallel-rne.mlir:1135:13
	stores.w r11, 0(r2)
	.loc	1 1113 11                       # parallel-rne.mlir:1113:11
	beq r1, zero, .LBB0_914
.LBB0_918:                              # %scalar.ph252
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_915 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	add.ul r[1:2], r[8:9], r[6:7]
	lui r11, 523264
	lui r16, 523264
	slli r10, r1, 2
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	add.s r1, r15, r10
	.loc	1 1116 19                       # parallel-rne.mlir:1116:19
	add.s r2, r3, r10
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	loads.w r1, 0(r1)
	.loc	1 1116 19                       # parallel-rne.mlir:1116:19
	loads.w r17, 0(r2)
	.loc	1 1119 19                       # parallel-rne.mlir:1119:19
	and r12, r1, r27
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	beq r12, r4, .LBB0_920
# %bb.919:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
.LBB0_920:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	add.s r1, r5, r10
	loads.w r1, 0(r1)
	and r13, r1, r27
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r13, zero, .LBB0_928
# %bb.921:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r12, zero, .LBB0_929
.LBB0_922:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	beq r13, r4, .LBB0_924
.LBB0_923:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
.LBB0_924:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	setlt.u r1, r4, r12
	lui r12, 523264
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r1, zero, .LBB0_926
# %bb.925:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_926:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	setlt.u r1, r4, r13
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r1, zero, .LBB0_917
# %bb.927:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_917
.LBB0_928:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	beq r12, zero, .LBB0_922
.LBB0_929:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r13, r4, .LBB0_923
	j .LBB0_924
.LBB0_930:                              # %vector.body254.preheader
                                        #   in Loop: Header=BB0_915 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_932
.LBB0_931:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 1113 11 is_stmt 1             # parallel-rne.mlir:1113:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1135 13                       # parallel-rne.mlir:1135:13
	add.s r2, r14, r10
	.loc	1 1113 11                       # parallel-rne.mlir:1113:11
	seteq.d r1, r[8:9], r[22:23]
	.loc	1 1135 13                       # parallel-rne.mlir:1135:13
	stores.w r17, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r12, 0(r2)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1113 11                       # parallel-rne.mlir:1113:11
	bneq r1, zero, .LBB0_914
.LBB0_932:                              # %vector.body254
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_915 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	add.ul r[10:11], r[8:9], r[6:7]
	slli r10, r10, 2
	add.s r18, r2, r10
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	add.s r11, r15, r10
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	loads.w r12, 0(r18)
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	loads.w r13, 0(r11)
	.loc	1 1121 19                       # parallel-rne.mlir:1121:19
	and r12, r12, r27
	.loc	1 1119 19                       # parallel-rne.mlir:1119:19
	and r13, r13, r27
	.loc	1 1122 19                       # parallel-rne.mlir:1122:19
	seteq r16, r12, r4
	.loc	1 1126 20                       # parallel-rne.mlir:1126:20
	seteq r25, r12, zero
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	seteq r17, r13, zero
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	seteq r24, r13, r4
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	max.u r12, r12, r13
	setlt.u r12, r4, r12
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	and r13, r16, r17
	.loc	1 1127 20                       # parallel-rne.mlir:1127:20
	and r16, r25, r24
	lui r17, 523264
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	or r16, r13, r16
	.loc	1 1116 19                       # parallel-rne.mlir:1116:19
	add.s r13, r3, r10
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	or r16, r12, r16
	lui r12, 523264
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r16, zero, .LBB0_934
# %bb.933:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r13)
.LBB0_934:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	loads.w r16, 4(r18)
	loads.w r24, 4(r11)
	and r16, r16, r27
	and r24, r24, r27
	seteq r25, r16, r4
	seteq r28, r24, zero
	seteq r5, r24, r4
	seteq r1, r16, zero
	max.u r2, r16, r24
	lui r24, 523264
	setlt.u r2, r4, r2
	and r16, r25, r28
	and r1, r1, r5
	or r1, r16, r1
	or r1, r2, r1
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r1, zero, .LBB0_936
# %bb.935:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r24, 4(r13)
.LBB0_936:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	loads.w r1, 8(r18)
	loads.w r2, 8(r11)
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r28, r1, zero
	seteq r16, r2, zero
	seteq r25, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r16
	and r5, r28, r25
	lui r16, 523264
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r1, zero, .LBB0_938
# %bb.937:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r13)
.LBB0_938:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	loads.w r1, 12(r18)
	loads.w r2, 12(r11)
	lui r28, 1024
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r25, r1, zero
	seteq r11, r2, zero
	seteq r18, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r11
	and r5, r25, r18
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1133 20                       # parallel-rne.mlir:1133:20
	bneq r1, zero, .LBB0_931
# %bb.939:                              # %vector.body254
                                        #   in Loop: Header=BB0_932 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r13)
	j .LBB0_931
.LBB0_940:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1104 7                        # parallel-rne.mlir:1104:7
	mfence { sm }
	.loc	1 1140 7                        # parallel-rne.mlir:1140:7
	addli r1, zero, 3
	bneq r8, r1, .LBB0_854
.LBB0_941:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1140 7                        # parallel-rne.mlir:1140:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r5, r1, r2
	addli r1, zero, 12
	zext_int2long r[6:7], r1
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	or r1, r5, r1
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	j .LBB0_943
.LBB0_942:                              # %middle.block245
                                        #   in Loop: Header=BB0_943 Depth=2
	.loc	1 1148 9 is_stmt 1              # parallel-rne.mlir:1148:9
	load.d r[1:2], -296(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	addli.d r[6:7], r[5:6], 0
	beq r1, zero, .LBB0_968
.LBB0_943:                              # %.preheader93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_960 Depth 3
                                        #       Child Loop BB0_946 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 1149 11 is_stmt 1             # parallel-rne.mlir:1149:11
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_958
# %bb.944:                              # %scalar.ph237.preheader
                                        #   in Loop: Header=BB0_943 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_946
.LBB0_945:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 1149 11                       # parallel-rne.mlir:1149:11
	setlt.ul r1, r[8:9], r[20:21]
	.loc	1 1171 13 is_stmt 1             # parallel-rne.mlir:1171:13
	add.s r2, r14, r10
	.loc	1 1149 11                       # parallel-rne.mlir:1149:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1171 13                       # parallel-rne.mlir:1171:13
	stores.w r11, 0(r2)
	.loc	1 1149 11                       # parallel-rne.mlir:1149:11
	beq r1, zero, .LBB0_942
.LBB0_946:                              # %scalar.ph237
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_943 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	add.ul r[1:2], r[8:9], r[6:7]
	lui r11, 523264
	lui r16, 523264
	slli r10, r1, 2
	.loc	1 1151 19                       # parallel-rne.mlir:1151:19
	add.s r1, r15, r10
	.loc	1 1152 19                       # parallel-rne.mlir:1152:19
	add.s r2, r3, r10
	.loc	1 1151 19                       # parallel-rne.mlir:1151:19
	loads.w r1, 0(r1)
	.loc	1 1152 19                       # parallel-rne.mlir:1152:19
	loads.w r17, 0(r2)
	.loc	1 1155 19                       # parallel-rne.mlir:1155:19
	and r12, r1, r27
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	beq r12, r4, .LBB0_948
# %bb.947:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
.LBB0_948:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	add.s r1, r5, r10
	loads.w r1, 0(r1)
	and r13, r1, r27
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r13, zero, .LBB0_956
# %bb.949:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r12, zero, .LBB0_957
.LBB0_950:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	beq r13, r4, .LBB0_952
.LBB0_951:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
.LBB0_952:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	setlt.u r1, r4, r12
	lui r12, 523264
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r1, zero, .LBB0_954
# %bb.953:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_954:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	setlt.u r1, r4, r13
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r1, zero, .LBB0_945
# %bb.955:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_945
.LBB0_956:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	beq r12, zero, .LBB0_950
.LBB0_957:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r13, r4, .LBB0_951
	j .LBB0_952
.LBB0_958:                              # %vector.body239.preheader
                                        #   in Loop: Header=BB0_943 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_960
.LBB0_959:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	.loc	1 1149 11 is_stmt 1             # parallel-rne.mlir:1149:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1171 13                       # parallel-rne.mlir:1171:13
	add.s r2, r14, r10
	.loc	1 1149 11                       # parallel-rne.mlir:1149:11
	seteq.d r1, r[8:9], r[22:23]
	.loc	1 1171 13                       # parallel-rne.mlir:1171:13
	stores.w r17, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r12, 0(r2)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1149 11                       # parallel-rne.mlir:1149:11
	bneq r1, zero, .LBB0_942
.LBB0_960:                              # %vector.body239
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_943 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	add.ul r[10:11], r[8:9], r[6:7]
	slli r10, r10, 2
	add.s r18, r2, r10
	.loc	1 1151 19                       # parallel-rne.mlir:1151:19
	add.s r11, r15, r10
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	loads.w r12, 0(r18)
	.loc	1 1151 19                       # parallel-rne.mlir:1151:19
	loads.w r13, 0(r11)
	.loc	1 1157 19                       # parallel-rne.mlir:1157:19
	and r12, r12, r27
	.loc	1 1155 19                       # parallel-rne.mlir:1155:19
	and r13, r13, r27
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	seteq r16, r12, r4
	.loc	1 1162 20                       # parallel-rne.mlir:1162:20
	seteq r25, r12, zero
	.loc	1 1159 19                       # parallel-rne.mlir:1159:19
	seteq r17, r13, zero
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	seteq r24, r13, r4
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	max.u r12, r12, r13
	setlt.u r12, r4, r12
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	and r13, r16, r17
	.loc	1 1163 20                       # parallel-rne.mlir:1163:20
	and r16, r25, r24
	lui r17, 523264
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	or r16, r13, r16
	.loc	1 1152 19                       # parallel-rne.mlir:1152:19
	add.s r13, r3, r10
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	or r16, r12, r16
	lui r12, 523264
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r16, zero, .LBB0_962
# %bb.961:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r13)
.LBB0_962:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	loads.w r16, 4(r18)
	loads.w r24, 4(r11)
	and r16, r16, r27
	and r24, r24, r27
	seteq r25, r16, r4
	seteq r28, r24, zero
	seteq r5, r24, r4
	seteq r1, r16, zero
	max.u r2, r16, r24
	lui r24, 523264
	setlt.u r2, r4, r2
	and r16, r25, r28
	and r1, r1, r5
	or r1, r16, r1
	or r1, r2, r1
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r1, zero, .LBB0_964
# %bb.963:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r24, 4(r13)
.LBB0_964:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	loads.w r1, 8(r18)
	loads.w r2, 8(r11)
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r28, r1, zero
	seteq r16, r2, zero
	seteq r25, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r16
	and r5, r28, r25
	lui r16, 523264
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r1, zero, .LBB0_966
# %bb.965:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r13)
.LBB0_966:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	loads.w r1, 12(r18)
	loads.w r2, 12(r11)
	lui r28, 1024
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r25, r1, zero
	seteq r11, r2, zero
	seteq r18, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r11
	and r5, r25, r18
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1169 20                       # parallel-rne.mlir:1169:20
	bneq r1, zero, .LBB0_959
# %bb.967:                              # %vector.body239
                                        #   in Loop: Header=BB0_960 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r13)
	j .LBB0_959
.LBB0_968:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1140 7                        # parallel-rne.mlir:1140:7
	mfence { sm }
	.loc	1 1176 7                        # parallel-rne.mlir:1176:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_855
.LBB0_969:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1176 7                        # parallel-rne.mlir:1176:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r5, r1, r2
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	zext_int2long r[6:7], r2
	or r1, r5, r1
	storeli.w r1, -296(r30)                 # 4-byte Folded Spill
	j .LBB0_971
.LBB0_970:                              # %middle.block230
                                        #   in Loop: Header=BB0_971 Depth=2
	.loc	1 1184 9 is_stmt 1              # parallel-rne.mlir:1184:9
	load.d r[1:2], -288(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	addli.d r[6:7], r[5:6], 0
	beq r1, zero, .LBB0_996
.LBB0_971:                              # %.preheader92
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_988 Depth 3
                                        #       Child Loop BB0_974 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 1185 11 is_stmt 1             # parallel-rne.mlir:1185:11
	loadli.w r1,  -296(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_986
# %bb.972:                              # %scalar.ph222.preheader
                                        #   in Loop: Header=BB0_971 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_974
.LBB0_973:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 1185 11                       # parallel-rne.mlir:1185:11
	setlt.ul r1, r[8:9], r[20:21]
	.loc	1 1207 13 is_stmt 1             # parallel-rne.mlir:1207:13
	add.s r2, r14, r10
	.loc	1 1185 11                       # parallel-rne.mlir:1185:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1207 13                       # parallel-rne.mlir:1207:13
	stores.w r11, 0(r2)
	.loc	1 1185 11                       # parallel-rne.mlir:1185:11
	beq r1, zero, .LBB0_970
.LBB0_974:                              # %scalar.ph222
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_971 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	add.ul r[1:2], r[8:9], r[6:7]
	lui r11, 523264
	lui r16, 523264
	slli r10, r1, 2
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	add.s r1, r15, r10
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	add.s r2, r3, r10
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	loads.w r1, 0(r1)
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	loads.w r17, 0(r2)
	.loc	1 1191 19                       # parallel-rne.mlir:1191:19
	and r12, r1, r27
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	beq r12, r4, .LBB0_976
# %bb.975:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
.LBB0_976:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	add.s r1, r5, r10
	loads.w r1, 0(r1)
	and r13, r1, r27
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r13, zero, .LBB0_984
# %bb.977:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r12, zero, .LBB0_985
.LBB0_978:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	beq r13, r4, .LBB0_980
.LBB0_979:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
.LBB0_980:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	setlt.u r1, r4, r12
	lui r12, 523264
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r1, zero, .LBB0_982
# %bb.981:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_982:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	setlt.u r1, r4, r13
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r1, zero, .LBB0_973
# %bb.983:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_973
.LBB0_984:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	beq r12, zero, .LBB0_978
.LBB0_985:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_974 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r13, r4, .LBB0_979
	j .LBB0_980
.LBB0_986:                              # %vector.body224.preheader
                                        #   in Loop: Header=BB0_971 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_988
.LBB0_987:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 1185 11 is_stmt 1             # parallel-rne.mlir:1185:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1207 13                       # parallel-rne.mlir:1207:13
	add.s r2, r14, r10
	.loc	1 1185 11                       # parallel-rne.mlir:1185:11
	seteq.d r1, r[8:9], r[22:23]
	.loc	1 1207 13                       # parallel-rne.mlir:1207:13
	stores.w r17, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r12, 0(r2)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1185 11                       # parallel-rne.mlir:1185:11
	bneq r1, zero, .LBB0_970
.LBB0_988:                              # %vector.body224
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_971 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	add.ul r[10:11], r[8:9], r[6:7]
	slli r10, r10, 2
	add.s r18, r2, r10
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	add.s r11, r15, r10
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	loads.w r12, 0(r18)
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	loads.w r13, 0(r11)
	.loc	1 1193 19                       # parallel-rne.mlir:1193:19
	and r12, r12, r27
	.loc	1 1191 19                       # parallel-rne.mlir:1191:19
	and r13, r13, r27
	.loc	1 1194 19                       # parallel-rne.mlir:1194:19
	seteq r16, r12, r4
	.loc	1 1198 20                       # parallel-rne.mlir:1198:20
	seteq r25, r12, zero
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	seteq r17, r13, zero
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	seteq r24, r13, r4
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	max.u r12, r12, r13
	setlt.u r12, r4, r12
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	and r13, r16, r17
	.loc	1 1199 20                       # parallel-rne.mlir:1199:20
	and r16, r25, r24
	lui r17, 523264
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	or r16, r13, r16
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	add.s r13, r3, r10
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	or r16, r12, r16
	lui r12, 523264
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r16, zero, .LBB0_990
# %bb.989:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r13)
.LBB0_990:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	loads.w r16, 4(r18)
	loads.w r24, 4(r11)
	and r16, r16, r27
	and r24, r24, r27
	seteq r25, r16, r4
	seteq r28, r24, zero
	seteq r5, r24, r4
	seteq r1, r16, zero
	max.u r2, r16, r24
	lui r24, 523264
	setlt.u r2, r4, r2
	and r16, r25, r28
	and r1, r1, r5
	or r1, r16, r1
	or r1, r2, r1
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r1, zero, .LBB0_992
# %bb.991:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r24, 4(r13)
.LBB0_992:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	loads.w r1, 8(r18)
	loads.w r2, 8(r11)
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r28, r1, zero
	seteq r16, r2, zero
	seteq r25, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r16
	and r5, r28, r25
	lui r16, 523264
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r1, zero, .LBB0_994
# %bb.993:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r13)
.LBB0_994:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	loads.w r1, 12(r18)
	loads.w r2, 12(r11)
	lui r28, 1024
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r25, r1, zero
	seteq r11, r2, zero
	seteq r18, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r11
	and r5, r25, r18
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1205 20                       # parallel-rne.mlir:1205:20
	bneq r1, zero, .LBB0_987
# %bb.995:                              # %vector.body224
                                        #   in Loop: Header=BB0_988 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r13)
	j .LBB0_987
.LBB0_996:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1176 7                        # parallel-rne.mlir:1176:7
	mfence { sm }
	.loc	1 1212 7                        # parallel-rne.mlir:1212:7
	addli r1, zero, 5
	bneq r8, r1, .LBB0_856
.LBB0_997:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1212 7                        # parallel-rne.mlir:1212:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r5, r1, r2
	addli r1, zero, 20
	zext_int2long r[6:7], r1
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	or r1, r5, r1
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
	j .LBB0_999
.LBB0_998:                              # %middle.block215
                                        #   in Loop: Header=BB0_999 Depth=2
	.loc	1 1220 9 is_stmt 1              # parallel-rne.mlir:1220:9
	load.d r[1:2], -280(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	addli.d r[6:7], r[5:6], 0
	beq r1, zero, .LBB0_1024
.LBB0_999:                              # %.preheader91
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1016 Depth 3
                                        #       Child Loop BB0_1002 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 1221 11 is_stmt 1             # parallel-rne.mlir:1221:11
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1014
# %bb.1000:                             # %scalar.ph207.preheader
                                        #   in Loop: Header=BB0_999 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_1002
.LBB0_1001:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	.loc	1 1221 11                       # parallel-rne.mlir:1221:11
	setlt.ul r1, r[8:9], r[20:21]
	.loc	1 1243 13 is_stmt 1             # parallel-rne.mlir:1243:13
	add.s r2, r14, r10
	.loc	1 1221 11                       # parallel-rne.mlir:1221:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1243 13                       # parallel-rne.mlir:1243:13
	stores.w r11, 0(r2)
	.loc	1 1221 11                       # parallel-rne.mlir:1221:11
	beq r1, zero, .LBB0_998
.LBB0_1002:                             # %scalar.ph207
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_999 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	add.ul r[1:2], r[8:9], r[6:7]
	lui r11, 523264
	lui r16, 523264
	slli r10, r1, 2
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	add.s r1, r15, r10
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	add.s r2, r3, r10
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	loads.w r1, 0(r1)
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	loads.w r17, 0(r2)
	.loc	1 1227 19                       # parallel-rne.mlir:1227:19
	and r12, r1, r27
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	beq r12, r4, .LBB0_1004
# %bb.1003:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
.LBB0_1004:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	add.s r1, r5, r10
	loads.w r1, 0(r1)
	and r13, r1, r27
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r13, zero, .LBB0_1012
# %bb.1005:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r12, zero, .LBB0_1013
.LBB0_1006:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	beq r13, r4, .LBB0_1008
.LBB0_1007:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
.LBB0_1008:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	setlt.u r1, r4, r12
	lui r12, 523264
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r1, zero, .LBB0_1010
# %bb.1009:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_1010:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	setlt.u r1, r4, r13
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r1, zero, .LBB0_1001
# %bb.1011:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_1001
.LBB0_1012:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	beq r12, zero, .LBB0_1006
.LBB0_1013:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_1002 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r13, r4, .LBB0_1007
	j .LBB0_1008
.LBB0_1014:                             # %vector.body209.preheader
                                        #   in Loop: Header=BB0_999 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_1016
.LBB0_1015:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 1221 11 is_stmt 1             # parallel-rne.mlir:1221:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1243 13                       # parallel-rne.mlir:1243:13
	add.s r2, r14, r10
	.loc	1 1221 11                       # parallel-rne.mlir:1221:11
	seteq.d r1, r[8:9], r[22:23]
	.loc	1 1243 13                       # parallel-rne.mlir:1243:13
	stores.w r17, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r12, 0(r2)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1221 11                       # parallel-rne.mlir:1221:11
	bneq r1, zero, .LBB0_998
.LBB0_1016:                             # %vector.body209
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_999 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	add.ul r[10:11], r[8:9], r[6:7]
	slli r10, r10, 2
	add.s r18, r2, r10
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	add.s r11, r15, r10
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	loads.w r12, 0(r18)
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	loads.w r13, 0(r11)
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	and r12, r12, r27
	.loc	1 1227 19                       # parallel-rne.mlir:1227:19
	and r13, r13, r27
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	seteq r16, r12, r4
	.loc	1 1234 20                       # parallel-rne.mlir:1234:20
	seteq r25, r12, zero
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	seteq r17, r13, zero
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	seteq r24, r13, r4
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	max.u r12, r12, r13
	setlt.u r12, r4, r12
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	and r13, r16, r17
	.loc	1 1235 20                       # parallel-rne.mlir:1235:20
	and r16, r25, r24
	lui r17, 523264
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	or r16, r13, r16
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	add.s r13, r3, r10
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	or r16, r12, r16
	lui r12, 523264
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r16, zero, .LBB0_1018
# %bb.1017:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r13)
.LBB0_1018:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	loads.w r16, 4(r18)
	loads.w r24, 4(r11)
	and r16, r16, r27
	and r24, r24, r27
	seteq r25, r16, r4
	seteq r28, r24, zero
	seteq r5, r24, r4
	seteq r1, r16, zero
	max.u r2, r16, r24
	lui r24, 523264
	setlt.u r2, r4, r2
	and r16, r25, r28
	and r1, r1, r5
	or r1, r16, r1
	or r1, r2, r1
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r1, zero, .LBB0_1020
# %bb.1019:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r24, 4(r13)
.LBB0_1020:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	loads.w r1, 8(r18)
	loads.w r2, 8(r11)
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r28, r1, zero
	seteq r16, r2, zero
	seteq r25, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r16
	and r5, r28, r25
	lui r16, 523264
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r1, zero, .LBB0_1022
# %bb.1021:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r13)
.LBB0_1022:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	loads.w r1, 12(r18)
	loads.w r2, 12(r11)
	lui r28, 1024
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r25, r1, zero
	seteq r11, r2, zero
	seteq r18, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r11
	and r5, r25, r18
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1241 20                       # parallel-rne.mlir:1241:20
	bneq r1, zero, .LBB0_1015
# %bb.1023:                             # %vector.body209
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r13)
	j .LBB0_1015
.LBB0_1024:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1212 7                        # parallel-rne.mlir:1212:7
	mfence { sm }
	.loc	1 1248 7                        # parallel-rne.mlir:1248:7
	addli r1, zero, 6
	bneq r8, r1, .LBB0_1053
.LBB0_1025:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1248 7                        # parallel-rne.mlir:1248:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r5, r1, r2
	addli r1, zero, 24
	zext_int2long r[6:7], r1
	loadli.w r1,  -332(r30)                 # 4-byte Folded Reload
	or r1, r5, r1
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
	j .LBB0_1027
.LBB0_1026:                             # %middle.block200
                                        #   in Loop: Header=BB0_1027 Depth=2
	.loc	1 1256 9 is_stmt 1              # parallel-rne.mlir:1256:9
	load.d r[1:2], -272(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	addli.d r[6:7], r[5:6], 0
	beq r1, zero, .LBB0_1052
.LBB0_1027:                             # %.preheader90
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1044 Depth 3
                                        #       Child Loop BB0_1030 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r1
	.loc	1 1257 11 is_stmt 1             # parallel-rne.mlir:1257:11
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1042
# %bb.1028:                             # %scalar.ph192.preheader
                                        #   in Loop: Header=BB0_1027 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_1030
.LBB0_1029:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	.loc	1 1257 11                       # parallel-rne.mlir:1257:11
	setlt.ul r1, r[8:9], r[20:21]
	.loc	1 1279 13 is_stmt 1             # parallel-rne.mlir:1279:13
	add.s r2, r14, r10
	.loc	1 1257 11                       # parallel-rne.mlir:1257:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 1279 13                       # parallel-rne.mlir:1279:13
	stores.w r11, 0(r2)
	.loc	1 1257 11                       # parallel-rne.mlir:1257:11
	beq r1, zero, .LBB0_1026
.LBB0_1030:                             # %scalar.ph192
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1027 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	add.ul r[1:2], r[8:9], r[6:7]
	lui r11, 523264
	lui r16, 523264
	slli r10, r1, 2
	.loc	1 1259 19                       # parallel-rne.mlir:1259:19
	add.s r1, r15, r10
	.loc	1 1260 19                       # parallel-rne.mlir:1260:19
	add.s r2, r3, r10
	.loc	1 1259 19                       # parallel-rne.mlir:1259:19
	loads.w r1, 0(r1)
	.loc	1 1260 19                       # parallel-rne.mlir:1260:19
	loads.w r17, 0(r2)
	.loc	1 1263 19                       # parallel-rne.mlir:1263:19
	and r12, r1, r27
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	beq r12, r4, .LBB0_1032
# %bb.1031:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r17, 0
.LBB0_1032:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	add.s r1, r5, r10
	loads.w r1, 0(r1)
	and r13, r1, r27
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r13, zero, .LBB0_1040
# %bb.1033:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r12, zero, .LBB0_1041
.LBB0_1034:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	beq r13, r4, .LBB0_1036
.LBB0_1035:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
.LBB0_1036:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	setlt.u r1, r4, r12
	lui r12, 523264
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r1, zero, .LBB0_1038
# %bb.1037:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_1038:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	setlt.u r1, r4, r13
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r1, zero, .LBB0_1029
# %bb.1039:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	j .LBB0_1029
.LBB0_1040:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	addli r16, r17, 0
	lui r17, 523264
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	beq r12, zero, .LBB0_1034
.LBB0_1041:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1030 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r16, 0
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r13, r4, .LBB0_1035
	j .LBB0_1036
.LBB0_1042:                             # %vector.body194.preheader
                                        #   in Loop: Header=BB0_1027 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	j .LBB0_1044
.LBB0_1043:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 1257 11 is_stmt 1             # parallel-rne.mlir:1257:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1279 13                       # parallel-rne.mlir:1279:13
	add.s r2, r14, r10
	.loc	1 1257 11                       # parallel-rne.mlir:1257:11
	seteq.d r1, r[8:9], r[22:23]
	.loc	1 1279 13                       # parallel-rne.mlir:1279:13
	stores.w r17, 12(r2)
	stores.w r16, 8(r2)
	stores.w r24, 4(r2)
	stores.w r12, 0(r2)
	loadli.w r2,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1257 11                       # parallel-rne.mlir:1257:11
	bneq r1, zero, .LBB0_1026
.LBB0_1044:                             # %vector.body194
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1027 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	add.ul r[10:11], r[8:9], r[6:7]
	slli r10, r10, 2
	add.s r18, r2, r10
	.loc	1 1259 19                       # parallel-rne.mlir:1259:19
	add.s r11, r15, r10
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	loads.w r12, 0(r18)
	.loc	1 1259 19                       # parallel-rne.mlir:1259:19
	loads.w r13, 0(r11)
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	and r12, r12, r27
	.loc	1 1263 19                       # parallel-rne.mlir:1263:19
	and r13, r13, r27
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	seteq r16, r12, r4
	.loc	1 1270 20                       # parallel-rne.mlir:1270:20
	seteq r25, r12, zero
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	seteq r17, r13, zero
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	seteq r24, r13, r4
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	max.u r12, r12, r13
	setlt.u r12, r4, r12
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	and r13, r16, r17
	.loc	1 1271 20                       # parallel-rne.mlir:1271:20
	and r16, r25, r24
	lui r17, 523264
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	or r16, r13, r16
	.loc	1 1260 19                       # parallel-rne.mlir:1260:19
	add.s r13, r3, r10
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	or r16, r12, r16
	lui r12, 523264
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r16, zero, .LBB0_1046
# %bb.1045:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r13)
.LBB0_1046:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	loads.w r16, 4(r18)
	loads.w r24, 4(r11)
	and r16, r16, r27
	and r24, r24, r27
	seteq r25, r16, r4
	seteq r28, r24, zero
	seteq r5, r24, r4
	seteq r1, r16, zero
	max.u r2, r16, r24
	lui r24, 523264
	setlt.u r2, r4, r2
	and r16, r25, r28
	and r1, r1, r5
	or r1, r16, r1
	or r1, r2, r1
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r1, zero, .LBB0_1048
# %bb.1047:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r24, 4(r13)
.LBB0_1048:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	loads.w r1, 8(r18)
	loads.w r2, 8(r11)
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r28, r1, zero
	seteq r16, r2, zero
	seteq r25, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r16
	and r5, r28, r25
	lui r16, 523264
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r1, zero, .LBB0_1050
# %bb.1049:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r13)
.LBB0_1050:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	loads.w r1, 12(r18)
	loads.w r2, 12(r11)
	lui r28, 1024
	and r1, r1, r27
	and r2, r2, r27
	seteq r5, r1, r4
	seteq r25, r1, zero
	seteq r11, r2, zero
	seteq r18, r2, r4
	max.u r1, r1, r2
	setlt.u r1, r4, r1
	and r2, r5, r11
	and r5, r25, r18
	or r2, r2, r5
	or r1, r1, r2
	.loc	1 1277 20                       # parallel-rne.mlir:1277:20
	bneq r1, zero, .LBB0_1043
# %bb.1051:                             # %vector.body194
                                        #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r13)
	j .LBB0_1043
.LBB0_1052:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1248 7                        # parallel-rne.mlir:1248:7
	mfence { sm }
.LBB0_1053:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 1284 7 is_stmt 1              # parallel-rne.mlir:1284:7
	store.d r[1:2], -280(r30)               # 8-byte Folded Spill
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1082
# %bb.1054:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -348(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -352(r30)                 # 4-byte Folded Reload
	.loc	1 1284 7                        # parallel-rne.mlir:1284:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	addli r2, zero, 28
	zext_int2long r[5:6], r2
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	j .LBB0_1056
.LBB0_1055:                             # %middle.block
                                        #   in Loop: Header=BB0_1056 Depth=2
	.loc	1 1292 9 is_stmt 1              # parallel-rne.mlir:1292:9
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	load.d r[5:6], -248(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[5:6], r[1:2]
	addli.d r[5:6], r[5:6], 1
	beq r1, zero, .LBB0_1081
.LBB0_1056:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1073 Depth 3
                                        #       Child Loop BB0_1059 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[5:6], -248(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[5:6], r1
	.loc	1 1293 11 is_stmt 1             # parallel-rne.mlir:1293:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1071
# %bb.1057:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1056 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1059
.LBB0_1058:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 1293 11                       # parallel-rne.mlir:1293:11
	setlt.ul r5, r[1:2], r[20:21]
	.loc	1 1315 13 is_stmt 1             # parallel-rne.mlir:1315:13
	add.s r6, r14, r8
	.loc	1 1293 11                       # parallel-rne.mlir:1293:11
	addli.d r[1:2], r[1:2], 1
	.loc	1 1315 13                       # parallel-rne.mlir:1315:13
	stores.w r9, 0(r6)
	.loc	1 1293 11                       # parallel-rne.mlir:1293:11
	beq r5, zero, .LBB0_1055
.LBB0_1059:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1056 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	add.ul r[5:6], r[1:2], r[17:18]
	lui r9, 523264
	lui r12, 523264
	slli r8, r5, 2
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	add.s r5, r15, r8
	.loc	1 1296 19                       # parallel-rne.mlir:1296:19
	add.s r6, r3, r8
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	loads.w r5, 0(r5)
	.loc	1 1296 19                       # parallel-rne.mlir:1296:19
	loads.w r13, 0(r6)
	.loc	1 1299 19                       # parallel-rne.mlir:1299:19
	and r10, r5, r27
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	beq r10, r4, .LBB0_1061
# %bb.1060:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r13, 0
.LBB0_1061:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	loadli.w r5,  -252(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r8
	loads.w r5, 0(r5)
	and r11, r5, r27
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r11, zero, .LBB0_1069
# %bb.1062:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r10, zero, .LBB0_1070
.LBB0_1063:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	beq r11, r4, .LBB0_1065
.LBB0_1064:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
.LBB0_1065:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	setlt.u r5, r4, r10
	lui r10, 523264
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r5, zero, .LBB0_1067
# %bb.1066:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r13, 0
.LBB0_1067:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	setlt.u r5, r4, r11
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r5, zero, .LBB0_1058
# %bb.1068:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r10, 0
	j .LBB0_1058
.LBB0_1069:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	addli r12, r13, 0
	lui r13, 523264
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	beq r10, zero, .LBB0_1063
.LBB0_1070:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1059 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r12, 0
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r11, r4, .LBB0_1064
	j .LBB0_1065
.LBB0_1071:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1056 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	load.d r[8:9], -280(r30)                # 8-byte Folded Reload
	j .LBB0_1073
.LBB0_1072:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	.loc	1 1293 11 is_stmt 1             # parallel-rne.mlir:1293:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 1315 13                       # parallel-rne.mlir:1315:13
	add.s r5, r14, r10
	.loc	1 1293 11                       # parallel-rne.mlir:1293:11
	seteq.d r1, r[8:9], r[22:23]
	.loc	1 1315 13                       # parallel-rne.mlir:1315:13
	stores.w r12, 12(r5)
	stores.w r16, 8(r5)
	stores.w r2, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 1293 11                       # parallel-rne.mlir:1293:11
	bneq r1, zero, .LBB0_1055
.LBB0_1073:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1056 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	add.ul r[1:2], r[8:9], r[17:18]
	slli r10, r1, 2
	loadli.w r1,  -252(r30)                 # 4-byte Folded Reload
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	add.s r24, r15, r10
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	add.s r13, r1, r10
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	loads.w r2, 0(r24)
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	loads.w r1, 0(r13)
	.loc	1 1299 19                       # parallel-rne.mlir:1299:19
	and r2, r2, r27
	.loc	1 1301 19                       # parallel-rne.mlir:1301:19
	and r1, r1, r27
	.loc	1 1303 19                       # parallel-rne.mlir:1303:19
	seteq r12, r2, zero
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	seteq r16, r2, r4
	.loc	1 1302 19                       # parallel-rne.mlir:1302:19
	seteq r11, r1, r4
	.loc	1 1306 20                       # parallel-rne.mlir:1306:20
	seteq r25, r1, zero
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	max.u r1, r1, r2
	setlt.u r2, r4, r1
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	and r1, r11, r12
	.loc	1 1307 20                       # parallel-rne.mlir:1307:20
	and r11, r25, r16
	lui r12, 523264
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	or r11, r1, r11
	.loc	1 1296 19                       # parallel-rne.mlir:1296:19
	add.s r1, r3, r10
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	or r2, r2, r11
	lui r11, 523264
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r2, zero, .LBB0_1075
# %bb.1074:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r1)
.LBB0_1075:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	loads.w r2, 4(r13)
	loads.w r16, 4(r24)
	and r2, r2, r27
	and r16, r16, r27
	seteq r25, r2, r4
	seteq r28, r16, zero
	seteq r5, r2, zero
	seteq r7, r16, r4
	max.u r2, r2, r16
	setlt.u r2, r4, r2
	and r6, r25, r28
	and r5, r5, r7
	or r5, r6, r5
	or r5, r2, r5
	lui r2, 523264
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r5, zero, .LBB0_1077
# %bb.1076:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r2, 4(r1)
.LBB0_1077:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	loads.w r5, 8(r13)
	loads.w r6, 8(r24)
	and r5, r5, r27
	and r6, r6, r27
	seteq r7, r5, r4
	seteq r28, r5, zero
	seteq r16, r6, zero
	seteq r25, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r7, r16
	and r7, r28, r25
	lui r16, 523264
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r5, zero, .LBB0_1079
# %bb.1078:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r1)
.LBB0_1079:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	loads.w r5, 12(r13)
	loads.w r6, 12(r24)
	lui r28, 1024
	and r5, r5, r27
	and r6, r6, r27
	seteq r7, r5, r4
	seteq r25, r5, zero
	seteq r13, r6, zero
	seteq r24, r6, r4
	max.u r5, r5, r6
	setlt.u r5, r4, r5
	and r6, r7, r13
	and r7, r25, r24
	or r6, r6, r7
	or r5, r5, r6
	.loc	1 1313 20                       # parallel-rne.mlir:1313:20
	bneq r5, zero, .LBB0_1072
# %bb.1080:                             # %vector.body
                                        #   in Loop: Header=BB0_1073 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r1)
	j .LBB0_1072
.LBB0_1081:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r8
	.loc	1 1284 7                        # parallel-rne.mlir:1284:7
	mfence { sm }
.LBB0_1082:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1320 7                        # parallel-rne.mlir:1320:7
	addli r1, zero, 255
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r11
	addli r13, zero, 3
	.loc	1 1320 7                        # parallel-rne.mlir:1320:7
	csr_set csr5, r1
	sync_core
	.loc	1 1321 7                        # parallel-rne.mlir:1321:7
	beq r8, r13, .LBB0_5
# %bb.1083:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[15:16], -360(r30)              # 8-byte Folded Reload
	addli r17, zero, 1
	addli r18, zero, 7
	addli r20, zero, 32
	addli r21, zero, 2
	addli r22, zero, 6
	addli r23, zero, 64
	.loc	1 1332 7 is_stmt 1              # parallel-rne.mlir:1332:7
	bneq r8, zero, .LBB0_6
# %bb.1084:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -388(r30)                 # 4-byte Folded Reload
	load.d r[5:6], -280(r30)                # 8-byte Folded Reload
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	load.d r[7:8], -384(r30)                # 8-byte Folded Reload
	addli r3, zero, 14
	load.d r[9:10], -376(r30)               # 8-byte Folded Reload
	load.d r[24:25], 24(r30)
	xwait r20, 0
	slli r1, r1, 5
	sll.d r[7:8], r[7:8], r3
	sll.d r[9:10], r[9:10], r17
	sext_int2long r[1:2], r1
	add.ul r[7:8], r[24:25], r[7:8]
	min.sl r[5:6], r[1:2], r[5:6]
	add.ul r[7:8], r[7:8], r[9:10]
	addli.d r[5:6], r[5:6], 32
	max.sl r[5:6], r[5:6], r[1:2]
	sub.sl r[1:2], r[5:6], r[1:2]
	zext_int2long r[5:6], r20
	.loc	1 1328 13 is_stmt 1             # parallel-rne.mlir:1328:13
	min.sl r[1:2], r[1:2], r[5:6]
	addli r5, zero, 5
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	lock zero, r5
	dma_cfg r17, zero, zero, 0
	dma_cfg zero, r17, zero, 1
	load.d r[9:10], -400(r30)               # 8-byte Folded Reload
	dma_cfg r8, zero, zero, 2
	slli r3, r9, 2
	dma_cfg r7, r14, r3, 3
	addli r3, zero, 512
	dma_cfg r3, r3, r1, 4
	addli r1, zero, 33
	dma_run zero
	unlock r5
	xsignal r1, 0
	j .LBB0_6
.LBB0_1085:                             # %._crit_edge
	.loc	1 1334 5                        # parallel-rne.mlir:1334:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_1087
# %bb.1086:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1334 5                        # parallel-rne.mlir:1334:5
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
.LBB0_1087:
	.loc	1 1335 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1335:5
	addli sp, sp, 456
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
	.long	520                             # 0x208
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-24siyem_" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
