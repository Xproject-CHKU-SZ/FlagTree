	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-vfcmxzr2" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -504
	addli r1, zero, 1
.Ltmp0:
	.loc	1 35 5 prologue_end             # parallel-rne.mlir:35:5
	core_id r12
	addli r30, sp, 440
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
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
	addli r2, zero, 3
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
	addli r1, zero, 5
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 9
	addli r2, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 11
	addli r2, zero, 29
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 15
	addli r2, zero, 18
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 20
	addli r2, zero, 22
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 34
	addli r2, zero, 31
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 37
	addli r2, zero, 39
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
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
	storeli.w zero, -16(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -32(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -48(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -64(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -80(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -96(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -112(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -128(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -144(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -160(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -176(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -192(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -208(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -224(r30)
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
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	storeli.w r3, -20(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -140(r30)
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	storeli.w r3, -180(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -204(r30)
	storeli.w r3, -200(r30)
	storeli.w r3, -196(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -220(r30)
	storeli.w r3, -216(r30)
	storeli.w r3, -212(r30)
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	mul.s r1, r2, r6
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	fmac.s r2, r2, r6
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	min.s r2, r2, r4
	.loc	1 62 5                          # parallel-rne.mlir:62:5
	ble.s r2, r1, .LBB0_1060
# %bb.4:                                # %.lr.ph
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	sext_int2long r[13:14], r1
	lui r1, 60
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r16, zero, 64
	addli r10, zero, 3
	addli r18, zero, 2
	addli r19, zero, 6
	lui r26, 524288
	lui r25, 268288
	lui r24, 8
	ori r1, r1, 1536
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	store.d r[2:3], -392(r30)               # 8-byte Folded Spill
	lui r2, 108
	lui r3, 522240
	storeli.w r1, -396(r30)                 # 4-byte Folded Spill
	lui r1, 84
	ori r1, r1, 1536
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 156
	storeli.w r1, -404(r30)                 # 4-byte Folded Spill
	lui r1, 132
	ori r1, r1, 1536
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1536
	lui r2, 180
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 1536
	lui r2, 2047
	storeli.w r1, -416(r30)                 # 4-byte Folded Spill
	lui r1, 204
	ori r15, r2, 4095
	lui r2, 56
	ori r1, r1, 1536
	storeli.w r1, -420(r30)                 # 4-byte Folded Spill
	lui r1, 228
	ori r1, r1, 1536
	storeli.w r1, -424(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -436(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1316 7 is_stmt 1              # parallel-rne.mlir:1316:7
	addli r1, zero, 18
	addli r16, zero, 64
	addli r18, zero, 2
	addli r19, zero, 6
	lui r24, 8
	xsignal r1, 0
	.loc	1 1317 7                        # parallel-rne.mlir:1317:7
	addli r1, zero, 28
	xsignal r1, 0
	.loc	1 1318 7                        # parallel-rne.mlir:1318:7
	addli r1, zero, 37
	xsignal r1, 0
	.loc	1 1319 7                        # parallel-rne.mlir:1319:7
	addli r1, zero, 39
	xsignal r1, 0
	load.d r[13:14], -344(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 62 5                          # parallel-rne.mlir:62:5
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	addli.d r[13:14], r[13:14], 1
	setlt.sl r1, r[13:14], r[1:2]
	beq r1, zero, .LBB0_1060
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_27 Depth 2
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_36 Depth 3
                                        #     Child Loop BB0_61 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #     Child Loop BB0_88 Depth 2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_90 Depth 3
                                        #     Child Loop BB0_115 Depth 2
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_117 Depth 3
                                        #     Child Loop BB0_142 Depth 2
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_145 Depth 3
                                        #     Child Loop BB0_171 Depth 2
                                        #       Child Loop BB0_188 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_203 Depth 3
                                        #     Child Loop BB0_229 Depth 2
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_232 Depth 3
                                        #     Child Loop BB0_269 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_270 Depth 3
                                        #     Child Loop BB0_275 Depth 2
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #     Child Loop BB0_281 Depth 2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
                                        #     Child Loop BB0_287 Depth 2
                                        #       Child Loop BB0_289 Depth 3
                                        #       Child Loop BB0_288 Depth 3
                                        #     Child Loop BB0_293 Depth 2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_294 Depth 3
                                        #     Child Loop BB0_299 Depth 2
                                        #       Child Loop BB0_301 Depth 3
                                        #       Child Loop BB0_300 Depth 3
                                        #     Child Loop BB0_305 Depth 2
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_306 Depth 3
                                        #     Child Loop BB0_311 Depth 2
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_312 Depth 3
                                        #     Child Loop BB0_327 Depth 2
                                        #       Child Loop BB0_334 Depth 3
                                        #       Child Loop BB0_330 Depth 3
                                        #     Child Loop BB0_353 Depth 2
                                        #       Child Loop BB0_360 Depth 3
                                        #       Child Loop BB0_356 Depth 3
                                        #     Child Loop BB0_379 Depth 2
                                        #       Child Loop BB0_386 Depth 3
                                        #       Child Loop BB0_382 Depth 3
                                        #     Child Loop BB0_405 Depth 2
                                        #       Child Loop BB0_412 Depth 3
                                        #       Child Loop BB0_408 Depth 3
                                        #     Child Loop BB0_431 Depth 2
                                        #       Child Loop BB0_438 Depth 3
                                        #       Child Loop BB0_434 Depth 3
                                        #     Child Loop BB0_457 Depth 2
                                        #       Child Loop BB0_464 Depth 3
                                        #       Child Loop BB0_460 Depth 3
                                        #     Child Loop BB0_483 Depth 2
                                        #       Child Loop BB0_490 Depth 3
                                        #       Child Loop BB0_486 Depth 3
                                        #     Child Loop BB0_509 Depth 2
                                        #       Child Loop BB0_516 Depth 3
                                        #       Child Loop BB0_512 Depth 3
                                        #     Child Loop BB0_548 Depth 2
                                        #       Child Loop BB0_558 Depth 3
                                        #       Child Loop BB0_551 Depth 3
                                        #     Child Loop BB0_584 Depth 2
                                        #       Child Loop BB0_594 Depth 3
                                        #       Child Loop BB0_587 Depth 3
                                        #     Child Loop BB0_620 Depth 2
                                        #       Child Loop BB0_630 Depth 3
                                        #       Child Loop BB0_623 Depth 3
                                        #     Child Loop BB0_656 Depth 2
                                        #       Child Loop BB0_666 Depth 3
                                        #       Child Loop BB0_659 Depth 3
                                        #     Child Loop BB0_692 Depth 2
                                        #       Child Loop BB0_702 Depth 3
                                        #       Child Loop BB0_695 Depth 3
                                        #     Child Loop BB0_728 Depth 2
                                        #       Child Loop BB0_738 Depth 3
                                        #       Child Loop BB0_731 Depth 3
                                        #     Child Loop BB0_764 Depth 2
                                        #       Child Loop BB0_774 Depth 3
                                        #       Child Loop BB0_767 Depth 3
                                        #     Child Loop BB0_800 Depth 2
                                        #       Child Loop BB0_810 Depth 3
                                        #       Child Loop BB0_803 Depth 3
                                        #     Child Loop BB0_848 Depth 2
                                        #       Child Loop BB0_863 Depth 3
                                        #       Child Loop BB0_850 Depth 3
                                        #     Child Loop BB0_874 Depth 2
                                        #       Child Loop BB0_889 Depth 3
                                        #       Child Loop BB0_876 Depth 3
                                        #     Child Loop BB0_900 Depth 2
                                        #       Child Loop BB0_915 Depth 3
                                        #       Child Loop BB0_902 Depth 3
                                        #     Child Loop BB0_926 Depth 2
                                        #       Child Loop BB0_941 Depth 3
                                        #       Child Loop BB0_928 Depth 3
                                        #     Child Loop BB0_952 Depth 2
                                        #       Child Loop BB0_967 Depth 3
                                        #       Child Loop BB0_954 Depth 3
                                        #     Child Loop BB0_978 Depth 2
                                        #       Child Loop BB0_993 Depth 3
                                        #       Child Loop BB0_980 Depth 3
                                        #     Child Loop BB0_1004 Depth 2
                                        #       Child Loop BB0_1019 Depth 3
                                        #       Child Loop BB0_1006 Depth 3
                                        #     Child Loop BB0_1031 Depth 2
                                        #       Child Loop BB0_1048 Depth 3
                                        #       Child Loop BB0_1034 Depth 3
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	loadli.w r1,  48(r30)
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	loadli.w r2,  44(r30)
	addli r11, zero, 1
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	addli r6, zero, 8
	.loc	1 98 13                         # parallel-rne.mlir:98:13
	loadli.w r8,  -208(r30)
	addli r17, zero, 3
	.loc	1 64 13                         # parallel-rne.mlir:64:13
	div.s r1, r13, r1
	.loc	1 65 13                         # parallel-rne.mlir:65:13
	div.s r4, r1, r2
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	div.s r5, r4, r16
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	slli r1, r5, 3
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	sub.s r2, r11, r1
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	min.s r2, r2, r6
	.loc	1 96 13                         # parallel-rne.mlir:96:13
	loadli.w r6,  -224(r30)
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	mod.s r7, r4, r2
	.loc	1 96 13                         # parallel-rne.mlir:96:13
	mod.s r9, r6, r10
	.loc	1 98 13                         # parallel-rne.mlir:98:13
	mod.s r10, r8, r17
	.loc	1 96 13                         # parallel-rne.mlir:96:13
	addli r6, r6, 1
	storeli.w r6, -224(r30)
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	add.s r6, r1, r7
	.loc	1 98 13                         # parallel-rne.mlir:98:13
	addli r7, r8, 1
	.loc	1 96 13                         # parallel-rne.mlir:96:13
	slli r1, r9, 14
	storeli.w r6, -380(r30)                 # 4-byte Folded Spill
	.loc	1 79 13                         # parallel-rne.mlir:79:13
	zext_int2long r[20:21], r6
	.loc	1 98 13                         # parallel-rne.mlir:98:13
	slli r6, r10, 14
	storeli.w r7, -208(r30)
	.loc	1 102 7                         # parallel-rne.mlir:102:7
	bneq r12, r11, .LBB0_9
# %bb.8:                                # %.thread77
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 14
	load.d r[9:10], 0(r30)
	storeli.w zero, -324(r30)               # 4-byte Folded Spill
	xwait r17, 0
	sll.d r[7:8], r[20:21], r7
	add.ul r[7:8], r[9:10], r[7:8]
	addli r9, zero, 4
	addli r10, zero, 256
	lock zero, r9
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r6, r7, r10, 3
	dma_cfg r10, r10, r16, 4
	dma_run zero
	unlock r9
	xsignal r18, 0
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 103 7                         # parallel-rne.mlir:103:7
	bneq r12, r18, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 5
	xwait r18, 0
	addli r10, zero, 3
	addli r11, zero, 7
	xwait r7, 0
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r16, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r1, r6, r16, 1
	addli r6, zero, 1
	unlock zero
	xsignal r10, 0
	storeli.w r6, -324(r30)                 # 4-byte Folded Spill
	addli r6, zero, 4
	xsignal r6, 0
	j .LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -324(r30)               # 4-byte Folded Spill
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	addli r11, zero, 7
	addli r10, zero, 3
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	slli r5, r5, 6
	.loc	1 111 13 is_stmt 1              # parallel-rne.mlir:111:13
	loadli.w r6,  -192(r30)
	.loc	1 117 7                         # parallel-rne.mlir:117:7
	store.d r[13:14], -344(r30)             # 8-byte Folded Spill
	store.d r[20:21], -376(r30)             # 8-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r4, r4, r5
	.loc	1 113 13 is_stmt 1              # parallel-rne.mlir:113:13
	loadli.w r5,  -176(r30)
	.loc	1 111 13                        # parallel-rne.mlir:111:13
	mod.s r7, r6, r10
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r2, r4, r2
	.loc	1 111 13                        # parallel-rne.mlir:111:13
	addli r4, r6, 1
	.loc	1 113 13 is_stmt 1              # parallel-rne.mlir:113:13
	mod.s r8, r5, r10
	.loc	1 111 13                        # parallel-rne.mlir:111:13
	storeli.w r4, -192(r30)
	slli r4, r7, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[6:7], r2
	.loc	1 113 13 is_stmt 1              # parallel-rne.mlir:113:13
	slli r8, r8, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[22:23], r[6:7], r11
	.loc	1 113 13                        # parallel-rne.mlir:113:13
	addli r6, r5, 1
	lui r5, 12
	add.s r5, r8, r5
	storeli.w r6, -176(r30)
	.loc	1 117 7 is_stmt 1               # parallel-rne.mlir:117:7
	store.d r[22:23], -360(r30)             # 8-byte Folded Spill
	bneq r12, r19, .LBB0_15
# %bb.14:                               # %.thread78
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[8:9], 8(r30)
	sll.d r[6:7], r[22:23], r18
	addli r13, zero, 4
	storeli.w zero, -320(r30)               # 4-byte Folded Spill
	xwait r11, 0
	addli r17, zero, 2
	lock zero, r13
	add.ul r[6:7], r[8:9], r[6:7]
	dma_cfg zero, zero, zero, 0
	addli r8, zero, 512
	dma_cfg zero, r7, zero, 2
	dma_cfg r5, r6, r8, 3
	addli r5, zero, 4096
	dma_cfg r8, r5, r16, 4
	dma_run zero
	unlock r13
	xsignal r19, 0
	.loc	1 118 7                         # parallel-rne.mlir:118:7
	j .LBB0_19
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r12, r11, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 9
	xwait r19, 0
	addli r17, zero, 2
	xwait r6, 0
	lock zero, zero
	addli r6, zero, 128
	ds_cfg r18, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r16, zero, 14
	ds_cfg r6, zero, 13
	shuffle_coa r4, r5, r16, 2
	addli r5, zero, 1
	unlock zero
	xsignal r11, 0
	storeli.w r5, -320(r30)                 # 4-byte Folded Spill
	addli r5, zero, 8
	xsignal r5, 0
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r17, zero, 2
	storeli.w zero, -320(r30)               # 4-byte Folded Spill
.LBB0_18:                               #   in Loop: Header=BB0_7 Depth=1
	addli r13, zero, 4
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 896
	slli r2, r2, 7
	.loc	1 125 13 is_stmt 1              # parallel-rne.mlir:125:13
	zext_int2long r[7:8], r2
	zext_int2long r[5:6], r5
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	loadli.w r2,  -160(r30)
	.loc	1 127 13                        # parallel-rne.mlir:127:13
	min.ul r[5:6], r[7:8], r[5:6]
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	mod.s r9, r2, r10
	addli r2, r2, 1
	.loc	1 127 13                        # parallel-rne.mlir:127:13
	addli.d r[5:6], r[5:6], 128
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	storeli.w r2, -160(r30)
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	addli r2, zero, 1
	.loc	1 129 13                        # parallel-rne.mlir:129:13
	max.ul r[5:6], r[5:6], r[7:8]
	sub.sl r[5:6], r[5:6], r[7:8]
	addli r7, zero, 128
	zext_int2long r[22:23], r7
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	slli r7, r9, 9
	.loc	1 130 13                        # parallel-rne.mlir:130:13
	min.ul r[5:6], r[5:6], r[22:23]
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	store.d r[5:6], -368(r30)               # 8-byte Folded Spill
	lui r5, 36
	add.s r5, r7, r5
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	bneq r12, r2, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_7 Depth=1
	load.d r[6:7], -360(r30)                # 8-byte Folded Reload
	addli r2, zero, 11
	load.d r[8:9], 16(r30)
	xwait r2, 0
	lock zero, r13
	sll.d r[6:7], r[6:7], r17
	dma_cfg zero, zero, zero, 0
	add.ul r[6:7], r[8:9], r[6:7]
	load.d r[8:9], -368(r30)                # 8-byte Folded Reload
	dma_cfg zero, r7, zero, 2
	slli r2, r8, 2
	dma_cfg r5, r6, r2, 3
	addli r2, zero, 1
	addli r6, zero, 512
	dma_cfg r6, r6, r2, 4
	addli r2, zero, 10
	dma_run zero
	unlock r13
	xsignal r2, 0
.LBB0_21:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r6,  -128(r30)
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	loadli.w r2,  -144(r30)
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	mod.s r7, r6, r10
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	addli r8, r2, 1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	addli r6, r6, 1
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	storeli.w r8, -144(r30)
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	loadli.w r8,  -396(r30)                 # 4-byte Folded Reload
	storeli.w r6, -128(r30)
	slli r7, r7, 15
	add.s r20, r7, r8
	.loc	1 140 7                         # parallel-rne.mlir:140:7
	bneq r12, r13, .LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 8
	xwait r13, 0
	addli r7, zero, 0
	addli r6, zero, 1
	addli r8, zero, 15
	xwait r5, 0
	addli r5, zero, 1
	xwait r8, 0
.LBB0_23:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r8, r7, 14
	slli r7, r7, 8
	lock zero, r5
	mm_cfg r16, r16, r16, 0
	or r8, r8, r4
	or r7, r7, r20
	mm_cfg r13, r13, r5, 2
	mm r7, r1, r8, 8
	andi r8, r6, 1
	addli r7, zero, 1
	addli r6, zero, 0
	unlock r5
	bneq r8, zero, .LBB0_23
# %bb.24:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 12
	xsignal r1, 0
	j .LBB0_29
.LBB0_25:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r1, zero, 5
	bneq r12, r1, .LBB0_29
# %bb.26:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r1, zero, 0
	xwait r4, 0
	addli r4, zero, 12
	xwait r4, 0
	lock zero, r17
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 1
	ew_cfg r4, zero, zero, 3
.LBB0_27:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r20, r1
	addli r1, r1, 512
	dsmadd r4, r4, r5, 0
	bneq r1, r24, .LBB0_27
# %bb.28:                               # %.thread177
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 141 7                         # parallel-rne.mlir:141:7
	addli r1, zero, 11
	addli r7, zero, 2047
	lui r6, 260096
	unlock r5
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	.loc	1 143 13 is_stmt 1              # parallel-rne.mlir:143:13
	loadli.w r1,  -112(r30)
	mod.s r4, r1, r10
	addli r1, r1, 1
	storeli.w r1, -112(r30)
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	addli r1, zero, 18
	xwait r1, 0
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	slli r1, r4, 15
	loadli.w r4,  -400(r30)                 # 4-byte Folded Reload
	add.s r4, r1, r4
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	lui r1, 258048
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 17
	ew_cfg zero, r7, zero, 2
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, zero, 19
	storeli.w r4, -236(r30)                 # 4-byte Folded Spill
	hp_ssmul r4, r20, r20, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r1, 0
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r1,  -96(r30)
	mod.s r4, r1, r10
	addli r1, r1, 1
	storeli.w r1, -96(r30)
	slli r1, r4, 15
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r4, zero, 20
	xwait r4, 0
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r4,  -404(r30)                 # 4-byte Folded Reload
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	ew_cfg zero, r7, zero, 2
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	add.s r28, r1, r4
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, r13, 19
	dsmul r28, r20, r20, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r1,  -80(r30)
	mod.s r4, r1, r10
	addli r1, r1, 1
	storeli.w r1, -80(r30)
	slli r1, r4, 15
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r4, zero, 22
	xwait r4, 0
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r4,  -408(r30)                 # 4-byte Folded Reload
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	ew_cfg zero, r7, zero, 2
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	add.s r10, r1, r4
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	addli r1, zero, 13
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, r13, 19
	dsmul r10, r28, r20, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r1, 0
	addli r1, zero, 19
	xsignal r1, 0
	addli r1, zero, 21
	xsignal r1, 0
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r1,  -64(r30)
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	addli r1, r1, 1
	storeli.w r1, -64(r30)
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	loadli.w r1,  -112(r30)
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	loadli.w r4,  -96(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r7,  -80(r30)
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	loadli.w r8,  -64(r30)
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	mod.s r5, r1, r10
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	mod.s r6, r4, r10
	addli r4, r4, 1
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	addli r1, r1, 1
	storeli.w r8, -348(r30)                 # 4-byte Folded Spill
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	storeli.w r4, -96(r30)
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	storeli.w r1, -112(r30)
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	mod.s r1, r7, r10
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	slli r4, r5, 15
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	slli r5, r6, 15
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	loadli.w r6,  -400(r30)                 # 4-byte Folded Reload
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	slli r1, r1, 15
	.loc	1 143 13                        # parallel-rne.mlir:143:13
	add.s r4, r4, r6
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	loadli.w r6,  -408(r30)                 # 4-byte Folded Reload
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	storeli.w r4, -236(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -404(r30)                 # 4-byte Folded Reload
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	add.s r10, r1, r6
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	add.s r28, r5, r4
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	addli r4, r7, 1
	addli r5, zero, 3
	storeli.w r4, -80(r30)
	.loc	1 152 13                        # parallel-rne.mlir:152:13
	addli r4, r8, 1
	storeli.w r4, -64(r30)
	bneq r12, r5, .LBB0_31
# %bb.30:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	addli r1, zero, 13
	xwait r1, 0
	.loc	1 155 7                         # parallel-rne.mlir:155:7
	addli r1, zero, 19
	xwait r1, 0
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	addli r1, zero, 21
	xwait r1, 0
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r1, zero, 29
	xwait r1, 0
.LBB0_31:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 159 7 is_stmt 1               # parallel-rne.mlir:159:7
	xfence
	zext_int2long r[4:5], r11
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	mfence { lm, sm, gm }
	mod.s r1, r2, r1
	lui r2, 36
	ori r2, r2, 1536
	slli r1, r1, 15
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r1, r1, r2
	seteq r2, r1, r20
	.loc	1 161 7 is_stmt 1               # parallel-rne.mlir:161:7
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r1, r28
	store.d r[4:5], -304(r30)               # 8-byte Folded Spill
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	sub.s r2, r1, r10
	storeli.w r2, -332(r30)                 # 4-byte Folded Spill
	addli r2, zero, 127
	sync_core
	storeli.w r20, -232(r30)                # 4-byte Folded Spill
	zext_int2long r[4:5], r2
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	bneq r12, zero, .LBB0_58
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	zext_int2long r[6:7], zero
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	j .LBB0_34
.LBB0_33:                               # %middle.block680
                                        #   in Loop: Header=BB0_34 Depth=2
	.loc	1 170 9 is_stmt 1               # parallel-rne.mlir:170:9
	load.d r[6:7], -304(r30)                # 8-byte Folded Reload
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_57
.LBB0_34:                               # %.preheader127
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_36 Depth 3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[6:7], r11
	zext_int2long r[16:17], zero
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_36
	j .LBB0_49
.LBB0_35:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	setlt.ul r7, r[16:17], r[4:5]
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	add.s r2, r1, r2
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	stores.w r6, 0(r2)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	beq r7, zero, .LBB0_33
.LBB0_36:                               # %scalar.ph672
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	slli r2, r6, 2
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r6, r20, r2
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.s r7, r10, r2
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	loads.w r6, 0(r6)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	loads.w r11, 0(r7)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r7, r6, r27
	lui r6, 523264
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	beq r7, r3, .LBB0_38
# %bb.37:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r11, 0
.LBB0_38:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	add.s r8, r28, r2
	loads.w r8, 0(r8)
	and r8, r8, r27
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r8, zero, .LBB0_46
# %bb.39:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r11, 523264
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r7, zero, .LBB0_47
.LBB0_40:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	beq r8, r3, .LBB0_42
.LBB0_41:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
.LBB0_42:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	setlt.u r9, r3, r7
	lui r7, 523264
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r9, zero, .LBB0_44
# %bb.43:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r11, 0
.LBB0_44:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	setlt.u r8, r3, r8
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r8, zero, .LBB0_35
# %bb.45:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r7, 0
	j .LBB0_35
.LBB0_46:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	addli r9, r11, 0
	lui r11, 523264
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	beq r7, zero, .LBB0_40
.LBB0_47:                               # %scalar.ph672
                                        #   in Loop: Header=BB0_36 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r8, r3, .LBB0_41
	j .LBB0_42
.LBB0_48:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	addli.d r[16:17], r[16:17], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	add.s r8, r1, r9
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 193 13                        # parallel-rne.mlir:193:13
	stores.w r18, 12(r8)
	stores.w r7, 8(r8)
	stores.w r6, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	bneq r2, zero, .LBB0_33
.LBB0_49:                               # %vector.body674
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[6:7], r[16:17], r[12:13]
	slli r9, r6, 2
	add.s r19, r28, r9
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.s r14, r20, r9
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	loads.w r2, 0(r19)
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	loads.w r6, 0(r14)
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	and r2, r2, r27
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r6, r6, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	seteq r7, r2, r3
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	seteq r18, r2, zero
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	seteq r8, r6, zero
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	seteq r11, r6, r3
	.loc	1 189 20                        # parallel-rne.mlir:189:20
	max.u r2, r2, r6
	setlt.u r6, r3, r2
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	and r2, r7, r8
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	and r7, r18, r11
	lui r18, 523264
	lui r11, 523264
	.loc	1 186 20                        # parallel-rne.mlir:186:20
	or r7, r2, r7
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	add.s r2, r10, r9
	.loc	1 190 20                        # parallel-rne.mlir:190:20
	or r6, r6, r7
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r6, zero, .LBB0_51
# %bb.50:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r2)
.LBB0_51:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r6, 4(r19)
	loads.w r7, 4(r14)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	or r7, r7, r8
	or r7, r6, r7
	lui r6, 523264
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r7, zero, .LBB0_53
# %bb.52:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 4(r2)
.LBB0_53:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r7, 8(r19)
	loads.w r8, 8(r14)
	and r7, r7, r27
	and r8, r8, r27
	seteq r20, r7, r3
	seteq r21, r7, zero
	seteq r24, r8, zero
	seteq r26, r8, r3
	max.u r7, r7, r8
	setlt.u r7, r3, r7
	and r8, r20, r24
	and r20, r21, r26
	or r8, r8, r20
	or r8, r7, r8
	lui r7, 523264
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r8, zero, .LBB0_55
# %bb.54:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 8(r2)
.LBB0_55:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r8, 12(r19)
	loads.w r14, 12(r14)
	lui r26, 524288
	and r8, r8, r27
	and r14, r14, r27
	seteq r19, r8, r3
	seteq r24, r8, zero
	seteq r20, r14, zero
	seteq r21, r14, r3
	max.u r8, r8, r14
	setlt.u r8, r3, r8
	and r14, r19, r20
	and r19, r24, r21
	or r14, r14, r19
	or r8, r8, r14
	.loc	1 191 20                        # parallel-rne.mlir:191:20
	bneq r8, zero, .LBB0_48
# %bb.56:                               # %vector.body674
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r2)
	j .LBB0_48
.LBB0_57:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	mfence { sm }
.LBB0_58:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	zext_int2long r[6:7], r2
	.loc	1 198 7 is_stmt 1               # parallel-rne.mlir:198:7
	addli r2, zero, 1
	store.d r[6:7], -296(r30)               # 8-byte Folded Spill
	bneq r12, r2, .LBB0_85
# %bb.59:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	zext_int2long r[6:7], r2
	j .LBB0_61
.LBB0_60:                               # %middle.block665
                                        #   in Loop: Header=BB0_61 Depth=2
	.loc	1 206 9 is_stmt 1               # parallel-rne.mlir:206:9
	load.d r[6:7], -296(r30)                # 8-byte Folded Reload
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_84
.LBB0_61:                               # %.preheader126
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_63 Depth 3
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[6:7], r11
	zext_int2long r[16:17], zero
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_63
	j .LBB0_76
.LBB0_62:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	setlt.ul r7, r[16:17], r[4:5]
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r2, r1, r2
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r6, 0(r2)
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	beq r7, zero, .LBB0_60
.LBB0_63:                               # %scalar.ph657
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	slli r2, r6, 2
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r6, r20, r2
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	add.s r7, r10, r2
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	loads.w r6, 0(r6)
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	loads.w r11, 0(r7)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r7, r6, r27
	lui r6, 523264
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	beq r7, r3, .LBB0_65
# %bb.64:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r11, 0
.LBB0_65:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	add.s r8, r28, r2
	loads.w r8, 0(r8)
	and r8, r8, r27
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r8, zero, .LBB0_73
# %bb.66:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r11, 523264
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r7, zero, .LBB0_74
.LBB0_67:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	beq r8, r3, .LBB0_69
.LBB0_68:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
.LBB0_69:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	setlt.u r9, r3, r7
	lui r7, 523264
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r9, zero, .LBB0_71
# %bb.70:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r11, 0
.LBB0_71:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	setlt.u r8, r3, r8
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r8, zero, .LBB0_62
# %bb.72:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r7, 0
	j .LBB0_62
.LBB0_73:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	addli r9, r11, 0
	lui r11, 523264
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	beq r7, zero, .LBB0_67
.LBB0_74:                               # %scalar.ph657
                                        #   in Loop: Header=BB0_63 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r8, r3, .LBB0_68
	j .LBB0_69
.LBB0_75:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 207 11 is_stmt 1              # parallel-rne.mlir:207:11
	addli.d r[16:17], r[16:17], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	add.s r8, r1, r9
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 229 13                        # parallel-rne.mlir:229:13
	stores.w r18, 12(r8)
	stores.w r7, 8(r8)
	stores.w r6, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 207 11                        # parallel-rne.mlir:207:11
	bneq r2, zero, .LBB0_60
.LBB0_76:                               # %vector.body659
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_61 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	add.ul r[6:7], r[16:17], r[12:13]
	slli r9, r6, 2
	add.s r19, r28, r9
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	add.s r2, r20, r9
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	loads.w r6, 0(r19)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	loads.w r7, 0(r2)
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	and r6, r6, r27
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	and r7, r7, r27
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	seteq r8, r6, r3
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	seteq r18, r6, zero
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	seteq r11, r7, zero
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	seteq r14, r7, r3
	.loc	1 225 20                        # parallel-rne.mlir:225:20
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	and r7, r8, r11
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	and r8, r18, r14
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	add.s r14, r10, r9
	lui r18, 523264
	lui r11, 523264
	.loc	1 222 20                        # parallel-rne.mlir:222:20
	or r7, r7, r8
	.loc	1 226 20                        # parallel-rne.mlir:226:20
	or r6, r6, r7
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r6, zero, .LBB0_78
# %bb.77:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_78:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r6, 4(r19)
	loads.w r7, 4(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r24, r6, zero
	seteq r20, r7, zero
	seteq r21, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r24, r21
	or r7, r7, r8
	or r7, r6, r7
	lui r6, 523264
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r7, zero, .LBB0_80
# %bb.79:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 4(r14)
.LBB0_80:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r7, 8(r19)
	loads.w r8, 8(r2)
	and r7, r7, r27
	and r8, r8, r27
	seteq r20, r7, r3
	seteq r26, r7, zero
	seteq r21, r8, zero
	seteq r24, r8, r3
	max.u r7, r7, r8
	setlt.u r7, r3, r7
	and r8, r20, r21
	and r20, r26, r24
	or r8, r8, r20
	or r8, r7, r8
	lui r7, 523264
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r8, zero, .LBB0_82
# %bb.81:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 8(r14)
.LBB0_82:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r8, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r19, r8, r3
	seteq r20, r2, zero
	seteq r21, r2, r3
	seteq r24, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r3, r2
	and r8, r19, r20
	and r19, r24, r21
	or r8, r8, r19
	or r2, r2, r8
	.loc	1 227 20                        # parallel-rne.mlir:227:20
	bneq r2, zero, .LBB0_75
# %bb.83:                               # %vector.body659
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_75
.LBB0_84:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 198 7                         # parallel-rne.mlir:198:7
	mfence { sm }
.LBB0_85:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[6:7], r2
	.loc	1 234 7 is_stmt 1               # parallel-rne.mlir:234:7
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	store.d r[6:7], -288(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_112
# %bb.86:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	xfence
	mfence { lm, sm, gm }
	loadli.w r7,  -316(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	or r2, r2, r7
	zext_int2long r[6:7], r6
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	j .LBB0_88
.LBB0_87:                               # %middle.block650
                                        #   in Loop: Header=BB0_88 Depth=2
	.loc	1 242 9 is_stmt 1               # parallel-rne.mlir:242:9
	load.d r[6:7], -288(r30)                # 8-byte Folded Reload
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_111
.LBB0_88:                               # %.preheader125
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_103 Depth 3
                                        #       Child Loop BB0_90 Depth 3
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[6:7], r11
	zext_int2long r[16:17], zero
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_90
	j .LBB0_103
.LBB0_89:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	setlt.ul r7, r[16:17], r[4:5]
	.loc	1 265 13                        # parallel-rne.mlir:265:13
	add.s r2, r1, r2
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 265 13                        # parallel-rne.mlir:265:13
	stores.w r6, 0(r2)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	beq r7, zero, .LBB0_87
.LBB0_90:                               # %scalar.ph642
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	slli r2, r6, 2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.s r6, r20, r2
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.s r7, r10, r2
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	loads.w r6, 0(r6)
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	loads.w r11, 0(r7)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r7, r6, r27
	lui r6, 523264
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	beq r7, r3, .LBB0_92
# %bb.91:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r11, 0
.LBB0_92:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	add.s r8, r28, r2
	loads.w r8, 0(r8)
	and r8, r8, r27
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r8, zero, .LBB0_100
# %bb.93:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r11, 523264
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r7, zero, .LBB0_101
.LBB0_94:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	beq r8, r3, .LBB0_96
.LBB0_95:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
.LBB0_96:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	setlt.u r9, r3, r7
	lui r7, 523264
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r9, zero, .LBB0_98
# %bb.97:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r11, 0
.LBB0_98:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	setlt.u r8, r3, r8
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r8, zero, .LBB0_89
# %bb.99:                               # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r7, 0
	j .LBB0_89
.LBB0_100:                              # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	addli r9, r11, 0
	lui r11, 523264
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	beq r7, zero, .LBB0_94
.LBB0_101:                              # %scalar.ph642
                                        #   in Loop: Header=BB0_90 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r8, r3, .LBB0_95
	j .LBB0_96
.LBB0_102:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 243 11 is_stmt 1              # parallel-rne.mlir:243:11
	addli.d r[16:17], r[16:17], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 265 13                        # parallel-rne.mlir:265:13
	add.s r8, r1, r9
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 265 13                        # parallel-rne.mlir:265:13
	stores.w r18, 12(r8)
	stores.w r7, 8(r8)
	stores.w r6, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 243 11                        # parallel-rne.mlir:243:11
	bneq r2, zero, .LBB0_87
.LBB0_103:                              # %vector.body644
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_88 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	add.ul r[6:7], r[16:17], r[12:13]
	slli r9, r6, 2
	add.s r19, r28, r9
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.s r2, r20, r9
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	loads.w r6, 0(r19)
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	loads.w r7, 0(r2)
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	and r6, r6, r27
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	and r7, r7, r27
	.loc	1 252 19                        # parallel-rne.mlir:252:19
	seteq r8, r6, r3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	seteq r18, r6, zero
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	seteq r11, r7, zero
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	seteq r14, r7, r3
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	and r7, r8, r11
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	and r8, r18, r14
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	add.s r14, r10, r9
	lui r18, 523264
	lui r11, 523264
	.loc	1 258 20                        # parallel-rne.mlir:258:20
	or r7, r7, r8
	.loc	1 262 20                        # parallel-rne.mlir:262:20
	or r6, r6, r7
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r6, zero, .LBB0_105
# %bb.104:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_105:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r6, 4(r19)
	loads.w r7, 4(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r24, r6, zero
	seteq r20, r7, zero
	seteq r21, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r24, r21
	or r7, r7, r8
	or r7, r6, r7
	lui r6, 523264
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r7, zero, .LBB0_107
# %bb.106:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 4(r14)
.LBB0_107:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r7, 8(r19)
	loads.w r8, 8(r2)
	and r7, r7, r27
	and r8, r8, r27
	seteq r20, r7, r3
	seteq r26, r7, zero
	seteq r21, r8, zero
	seteq r24, r8, r3
	max.u r7, r7, r8
	setlt.u r7, r3, r7
	and r8, r20, r21
	and r20, r26, r24
	or r8, r8, r20
	or r8, r7, r8
	lui r7, 523264
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r8, zero, .LBB0_109
# %bb.108:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 8(r14)
.LBB0_109:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	loads.w r8, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r19, r8, r3
	seteq r20, r2, zero
	seteq r21, r2, r3
	seteq r24, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r3, r2
	and r8, r19, r20
	and r19, r24, r21
	or r8, r8, r19
	or r2, r2, r8
	.loc	1 263 20                        # parallel-rne.mlir:263:20
	bneq r2, zero, .LBB0_102
# %bb.110:                              # %vector.body644
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_102
.LBB0_111:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 234 7                         # parallel-rne.mlir:234:7
	mfence { sm }
.LBB0_112:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[6:7], r2
	.loc	1 270 7 is_stmt 1               # parallel-rne.mlir:270:7
	addli r2, zero, 3
	store.d r[6:7], -280(r30)               # 8-byte Folded Spill
	bneq r12, r2, .LBB0_139
# %bb.113:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 270 7                         # parallel-rne.mlir:270:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	addli r2, zero, 24
	zext_int2long r[6:7], r2
	j .LBB0_115
.LBB0_114:                              # %middle.block635
                                        #   in Loop: Header=BB0_115 Depth=2
	.loc	1 278 9 is_stmt 1               # parallel-rne.mlir:278:9
	load.d r[6:7], -280(r30)                # 8-byte Folded Reload
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_138
.LBB0_115:                              # %.preheader124
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_130 Depth 3
                                        #       Child Loop BB0_117 Depth 3
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[6:7], r11
	zext_int2long r[16:17], zero
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_117
	j .LBB0_130
.LBB0_116:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	setlt.ul r7, r[16:17], r[4:5]
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	add.s r2, r1, r2
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	stores.w r6, 0(r2)
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	beq r7, zero, .LBB0_114
.LBB0_117:                              # %scalar.ph627
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	slli r2, r6, 2
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	add.s r6, r20, r2
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.s r7, r10, r2
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	loads.w r6, 0(r6)
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	loads.w r11, 0(r7)
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r7, r6, r27
	lui r6, 523264
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	beq r7, r3, .LBB0_119
# %bb.118:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r11, 0
.LBB0_119:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	add.s r8, r28, r2
	loads.w r8, 0(r8)
	and r8, r8, r27
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r8, zero, .LBB0_127
# %bb.120:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r11, 523264
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r7, zero, .LBB0_128
.LBB0_121:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	beq r8, r3, .LBB0_123
.LBB0_122:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
.LBB0_123:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	setlt.u r9, r3, r7
	lui r7, 523264
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r9, zero, .LBB0_125
# %bb.124:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r11, 0
.LBB0_125:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	setlt.u r8, r3, r8
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r8, zero, .LBB0_116
# %bb.126:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r7, 0
	j .LBB0_116
.LBB0_127:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	addli r9, r11, 0
	lui r11, 523264
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	beq r7, zero, .LBB0_121
.LBB0_128:                              # %scalar.ph627
                                        #   in Loop: Header=BB0_117 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r9, 0
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r8, r3, .LBB0_122
	j .LBB0_123
.LBB0_129:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 279 11 is_stmt 1              # parallel-rne.mlir:279:11
	addli.d r[16:17], r[16:17], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	add.s r8, r1, r9
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	stores.w r18, 12(r8)
	stores.w r7, 8(r8)
	stores.w r6, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 279 11                        # parallel-rne.mlir:279:11
	bneq r2, zero, .LBB0_114
.LBB0_130:                              # %vector.body629
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_115 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	add.ul r[6:7], r[16:17], r[12:13]
	slli r9, r6, 2
	add.s r19, r28, r9
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	add.s r2, r20, r9
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	loads.w r6, 0(r19)
	.loc	1 281 19                        # parallel-rne.mlir:281:19
	loads.w r7, 0(r2)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r6, r6, r27
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	and r7, r7, r27
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	seteq r8, r6, r3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	seteq r18, r6, zero
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	seteq r11, r7, zero
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	seteq r14, r7, r3
	.loc	1 297 20                        # parallel-rne.mlir:297:20
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r7, r8, r11
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	and r8, r18, r14
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.s r14, r10, r9
	lui r18, 523264
	lui r11, 523264
	.loc	1 294 20                        # parallel-rne.mlir:294:20
	or r7, r7, r8
	.loc	1 298 20                        # parallel-rne.mlir:298:20
	or r6, r6, r7
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r6, zero, .LBB0_132
# %bb.131:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_132:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	loads.w r6, 4(r19)
	loads.w r7, 4(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r24, r6, zero
	seteq r20, r7, zero
	seteq r21, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r24, r21
	or r7, r7, r8
	or r7, r6, r7
	lui r6, 523264
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r7, zero, .LBB0_134
# %bb.133:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 4(r14)
.LBB0_134:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	loads.w r7, 8(r19)
	loads.w r8, 8(r2)
	and r7, r7, r27
	and r8, r8, r27
	seteq r20, r7, r3
	seteq r26, r7, zero
	seteq r21, r8, zero
	seteq r24, r8, r3
	max.u r7, r7, r8
	setlt.u r7, r3, r7
	and r8, r20, r21
	and r20, r26, r24
	or r8, r8, r20
	or r8, r7, r8
	lui r7, 523264
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r8, zero, .LBB0_136
# %bb.135:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 8(r14)
.LBB0_136:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	loads.w r8, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r19, r8, r3
	seteq r20, r2, zero
	seteq r21, r2, r3
	seteq r24, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r3, r2
	and r8, r19, r20
	and r19, r24, r21
	or r8, r8, r19
	or r2, r2, r8
	.loc	1 299 20                        # parallel-rne.mlir:299:20
	bneq r2, zero, .LBB0_129
# %bb.137:                              # %vector.body629
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_129
.LBB0_138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 270 7                         # parallel-rne.mlir:270:7
	mfence { sm }
.LBB0_139:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 39
	zext_int2long r[6:7], r2
	.loc	1 306 7 is_stmt 1               # parallel-rne.mlir:306:7
	store.d r[6:7], -272(r30)               # 8-byte Folded Spill
	bneq r12, r13, .LBB0_168
# %bb.140:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 306 7                         # parallel-rne.mlir:306:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	zext_int2long r[6:7], r2
	j .LBB0_142
.LBB0_141:                              # %middle.block620
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 314 9 is_stmt 1               # parallel-rne.mlir:314:9
	load.d r[6:7], -272(r30)                # 8-byte Folded Reload
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_167
.LBB0_142:                              # %.preheader123
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_145 Depth 3
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	sll.d r[16:17], r[6:7], r11
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_157
# %bb.143:                              # %scalar.ph612.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_145
.LBB0_144:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	setlt.ul r7, r[11:12], r[4:5]
	.loc	1 337 13 is_stmt 1              # parallel-rne.mlir:337:13
	add.s r2, r1, r2
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r6, 0(r2)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	beq r7, zero, .LBB0_141
.LBB0_145:                              # %scalar.ph612
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[6:7], r[11:12], r[16:17]
	lui r9, 523264
	slli r2, r6, 2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	add.s r6, r20, r2
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	add.s r7, r10, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	loads.w r6, 0(r6)
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	loads.w r13, 0(r7)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r7, r6, r27
	lui r6, 523264
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	beq r7, r3, .LBB0_147
# %bb.146:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r13, 0
.LBB0_147:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	add.s r8, r28, r2
	loads.w r8, 0(r8)
	and r8, r8, r27
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r8, zero, .LBB0_155
# %bb.148:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r7, zero, .LBB0_156
.LBB0_149:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	beq r8, r3, .LBB0_151
.LBB0_150:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r9, 0
.LBB0_151:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r9, r3, r7
	lui r7, 523264
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r9, zero, .LBB0_153
# %bb.152:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r13, 0
.LBB0_153:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r8, r3, r8
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r8, zero, .LBB0_144
# %bb.154:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r7, 0
	j .LBB0_144
.LBB0_155:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	addli r9, r13, 0
	lui r13, 523264
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	beq r7, zero, .LBB0_149
.LBB0_156:                              # %scalar.ph612
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r9, 0
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r8, r3, .LBB0_150
	j .LBB0_151
.LBB0_157:                              # %vector.body614.preheader
                                        #   in Loop: Header=BB0_142 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[12:13], zero
	j .LBB0_159
.LBB0_158:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 315 11 is_stmt 1              # parallel-rne.mlir:315:11
	addli.d r[12:13], r[12:13], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r8, r1, r9
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	seteq.d r2, r[12:13], r[22:23]
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r18, 12(r8)
	stores.w r7, 8(r8)
	stores.w r6, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	bneq r2, zero, .LBB0_141
.LBB0_159:                              # %vector.body614
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_142 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[6:7], r[12:13], r[16:17]
	slli r9, r6, 2
	add.s r19, r28, r9
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	add.s r2, r20, r9
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	loads.w r6, 0(r19)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	loads.w r7, 0(r2)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r6, r6, r27
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	and r7, r7, r27
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	seteq r8, r6, r3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	seteq r18, r6, zero
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	seteq r11, r7, zero
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	seteq r14, r7, r3
	.loc	1 333 20                        # parallel-rne.mlir:333:20
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	and r7, r8, r11
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	and r8, r18, r14
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	add.s r14, r10, r9
	lui r18, 523264
	lui r11, 523264
	.loc	1 330 20                        # parallel-rne.mlir:330:20
	or r7, r7, r8
	.loc	1 334 20                        # parallel-rne.mlir:334:20
	or r6, r6, r7
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r6, zero, .LBB0_161
# %bb.160:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_161:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	loads.w r6, 4(r19)
	loads.w r7, 4(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r24, r6, zero
	seteq r20, r7, zero
	seteq r21, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r24, r21
	or r7, r7, r8
	or r7, r6, r7
	lui r6, 523264
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r7, zero, .LBB0_163
# %bb.162:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 4(r14)
.LBB0_163:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	loads.w r7, 8(r19)
	loads.w r8, 8(r2)
	and r7, r7, r27
	and r8, r8, r27
	seteq r20, r7, r3
	seteq r26, r7, zero
	seteq r21, r8, zero
	seteq r24, r8, r3
	max.u r7, r7, r8
	setlt.u r7, r3, r7
	and r8, r20, r21
	and r20, r26, r24
	or r8, r8, r20
	or r8, r7, r8
	lui r7, 523264
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r8, zero, .LBB0_165
# %bb.164:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 8(r14)
.LBB0_165:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	loads.w r8, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r19, r8, r3
	seteq r20, r2, zero
	seteq r21, r2, r3
	seteq r24, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r3, r2
	and r8, r19, r20
	and r19, r24, r21
	or r8, r8, r19
	or r2, r2, r8
	.loc	1 335 20                        # parallel-rne.mlir:335:20
	bneq r2, zero, .LBB0_158
# %bb.166:                              # %vector.body614
                                        #   in Loop: Header=BB0_159 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_158
.LBB0_167:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 306 7                         # parallel-rne.mlir:306:7
	mfence { sm }
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[6:7], r2
	.loc	1 342 7 is_stmt 1               # parallel-rne.mlir:342:7
	addli r2, zero, 5
	store.d r[6:7], -264(r30)               # 8-byte Folded Spill
	bneq r12, r2, .LBB0_197
# %bb.169:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	addli r2, zero, 40
	zext_int2long r[6:7], r2
	j .LBB0_171
.LBB0_170:                              # %middle.block605
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 350 9 is_stmt 1               # parallel-rne.mlir:350:9
	load.d r[6:7], -264(r30)                # 8-byte Folded Reload
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_196
.LBB0_171:                              # %.preheader122
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_188 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	sll.d r[16:17], r[6:7], r11
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_186
# %bb.172:                              # %scalar.ph597.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	setlt.ul r7, r[11:12], r[4:5]
	.loc	1 373 13 is_stmt 1              # parallel-rne.mlir:373:13
	add.s r2, r1, r2
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	stores.w r6, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	beq r7, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph597
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[6:7], r[11:12], r[16:17]
	lui r9, 523264
	slli r2, r6, 2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	add.s r6, r20, r2
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	add.s r7, r10, r2
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	loads.w r6, 0(r6)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	loads.w r13, 0(r7)
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	and r7, r6, r27
	lui r6, 523264
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	beq r7, r3, .LBB0_176
# %bb.175:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r13, 0
.LBB0_176:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	add.s r8, r28, r2
	loads.w r8, 0(r8)
	and r8, r8, r27
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r8, zero, .LBB0_184
# %bb.177:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r7, zero, .LBB0_185
.LBB0_178:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	beq r8, r3, .LBB0_180
.LBB0_179:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r9, 0
.LBB0_180:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	setlt.u r9, r3, r7
	lui r7, 523264
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r9, zero, .LBB0_182
# %bb.181:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r13, 0
.LBB0_182:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	setlt.u r8, r3, r8
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r8, zero, .LBB0_173
# %bb.183:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r7, 0
	j .LBB0_173
.LBB0_184:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	addli r9, r13, 0
	lui r13, 523264
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	beq r7, zero, .LBB0_178
.LBB0_185:                              # %scalar.ph597
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r9, 0
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r8, r3, .LBB0_179
	j .LBB0_180
.LBB0_186:                              # %vector.body599.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[12:13], zero
	j .LBB0_188
.LBB0_187:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	addli.d r[12:13], r[12:13], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	add.s r8, r1, r9
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	seteq.d r2, r[12:13], r[22:23]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	stores.w r18, 12(r8)
	stores.w r7, 8(r8)
	stores.w r6, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	bneq r2, zero, .LBB0_170
.LBB0_188:                              # %vector.body599
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[6:7], r[12:13], r[16:17]
	slli r9, r6, 2
	add.s r19, r28, r9
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	add.s r2, r20, r9
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	loads.w r6, 0(r19)
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	loads.w r7, 0(r2)
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	and r6, r6, r27
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	and r7, r7, r27
	.loc	1 360 19                        # parallel-rne.mlir:360:19
	seteq r8, r6, r3
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	seteq r18, r6, zero
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	seteq r11, r7, zero
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	seteq r14, r7, r3
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	and r7, r8, r11
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	and r8, r18, r14
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	add.s r14, r10, r9
	lui r18, 523264
	lui r11, 523264
	.loc	1 366 20                        # parallel-rne.mlir:366:20
	or r7, r7, r8
	.loc	1 370 20                        # parallel-rne.mlir:370:20
	or r6, r6, r7
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r6, zero, .LBB0_190
# %bb.189:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_190:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	loads.w r6, 4(r19)
	loads.w r7, 4(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r24, r6, zero
	seteq r20, r7, zero
	seteq r21, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r24, r21
	or r7, r7, r8
	or r7, r6, r7
	lui r6, 523264
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r7, zero, .LBB0_192
# %bb.191:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 4(r14)
.LBB0_192:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	loads.w r7, 8(r19)
	loads.w r8, 8(r2)
	and r7, r7, r27
	and r8, r8, r27
	seteq r20, r7, r3
	seteq r26, r7, zero
	seteq r21, r8, zero
	seteq r24, r8, r3
	max.u r7, r7, r8
	setlt.u r7, r3, r7
	and r8, r20, r21
	and r20, r26, r24
	or r8, r8, r20
	or r8, r7, r8
	lui r7, 523264
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r8, zero, .LBB0_194
# %bb.193:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 8(r14)
.LBB0_194:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	loads.w r8, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r19, r8, r3
	seteq r20, r2, zero
	seteq r21, r2, r3
	seteq r24, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r3, r2
	and r8, r19, r20
	and r19, r24, r21
	or r8, r8, r19
	or r2, r2, r8
	.loc	1 371 20                        # parallel-rne.mlir:371:20
	bneq r2, zero, .LBB0_187
# %bb.195:                              # %vector.body599
                                        #   in Loop: Header=BB0_188 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_187
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 342 7                         # parallel-rne.mlir:342:7
	mfence { sm }
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	zext_int2long r[6:7], r2
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	addli r2, zero, 6
	store.d r[6:7], -256(r30)               # 8-byte Folded Spill
	bneq r12, r2, .LBB0_226
# %bb.198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	zext_int2long r[6:7], r2
	j .LBB0_200
.LBB0_199:                              # %middle.block590
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 386 9 is_stmt 1               # parallel-rne.mlir:386:9
	load.d r[6:7], -256(r30)                # 8-byte Folded Reload
	load.d r[8:9], -248(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_225
.LBB0_200:                              # %.preheader121
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_217 Depth 3
                                        #       Child Loop BB0_203 Depth 3
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	sll.d r[16:17], r[6:7], r11
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_215
# %bb.201:                              # %scalar.ph582.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_203
.LBB0_202:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	setlt.ul r7, r[11:12], r[4:5]
	.loc	1 409 13 is_stmt 1              # parallel-rne.mlir:409:13
	add.s r2, r1, r2
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	stores.w r6, 0(r2)
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	beq r7, zero, .LBB0_199
.LBB0_203:                              # %scalar.ph582
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.ul r[6:7], r[11:12], r[16:17]
	lui r9, 523264
	slli r2, r6, 2
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.s r6, r20, r2
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	add.s r7, r10, r2
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	loads.w r6, 0(r6)
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	loads.w r13, 0(r7)
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r7, r6, r27
	lui r6, 523264
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	beq r7, r3, .LBB0_205
# %bb.204:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r13, 0
.LBB0_205:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	add.s r8, r28, r2
	loads.w r8, 0(r8)
	and r8, r8, r27
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r8, zero, .LBB0_213
# %bb.206:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r13, 523264
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r7, zero, .LBB0_214
.LBB0_207:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	beq r8, r3, .LBB0_209
.LBB0_208:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r9, 0
.LBB0_209:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	setlt.u r9, r3, r7
	lui r7, 523264
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r9, zero, .LBB0_211
# %bb.210:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r13, 0
.LBB0_211:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	setlt.u r8, r3, r8
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r8, zero, .LBB0_202
# %bb.212:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r7, 0
	j .LBB0_202
.LBB0_213:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	addli r9, r13, 0
	lui r13, 523264
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	beq r7, zero, .LBB0_207
.LBB0_214:                              # %scalar.ph582
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r9, 0
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r8, r3, .LBB0_208
	j .LBB0_209
.LBB0_215:                              # %vector.body584.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[12:13], zero
	j .LBB0_217
.LBB0_216:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 387 11 is_stmt 1              # parallel-rne.mlir:387:11
	addli.d r[12:13], r[12:13], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	add.s r8, r1, r9
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	seteq.d r2, r[12:13], r[22:23]
	.loc	1 409 13                        # parallel-rne.mlir:409:13
	stores.w r18, 12(r8)
	stores.w r7, 8(r8)
	stores.w r6, 4(r8)
	stores.w r11, 0(r8)
	.loc	1 387 11                        # parallel-rne.mlir:387:11
	bneq r2, zero, .LBB0_199
.LBB0_217:                              # %vector.body584
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	add.ul r[6:7], r[12:13], r[16:17]
	slli r9, r6, 2
	add.s r19, r28, r9
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	add.s r2, r20, r9
	.loc	1 388 19                        # parallel-rne.mlir:388:19
	loads.w r6, 0(r19)
	.loc	1 389 19                        # parallel-rne.mlir:389:19
	loads.w r7, 0(r2)
	.loc	1 395 19                        # parallel-rne.mlir:395:19
	and r6, r6, r27
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	and r7, r7, r27
	.loc	1 396 19                        # parallel-rne.mlir:396:19
	seteq r8, r6, r3
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	seteq r18, r6, zero
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	seteq r11, r7, zero
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	seteq r14, r7, r3
	.loc	1 405 20                        # parallel-rne.mlir:405:20
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	.loc	1 398 19                        # parallel-rne.mlir:398:19
	and r7, r8, r11
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	and r8, r18, r14
	.loc	1 390 19                        # parallel-rne.mlir:390:19
	add.s r14, r10, r9
	lui r18, 523264
	lui r11, 523264
	.loc	1 402 20                        # parallel-rne.mlir:402:20
	or r7, r7, r8
	.loc	1 406 20                        # parallel-rne.mlir:406:20
	or r6, r6, r7
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r6, zero, .LBB0_219
# %bb.218:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_219:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	loads.w r6, 4(r19)
	loads.w r7, 4(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r24, r6, zero
	seteq r20, r7, zero
	seteq r21, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r24, r21
	or r7, r7, r8
	or r7, r6, r7
	lui r6, 523264
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r7, zero, .LBB0_221
# %bb.220:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 4(r14)
.LBB0_221:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	loads.w r7, 8(r19)
	loads.w r8, 8(r2)
	and r7, r7, r27
	and r8, r8, r27
	seteq r20, r7, r3
	seteq r26, r7, zero
	seteq r21, r8, zero
	seteq r24, r8, r3
	max.u r7, r7, r8
	setlt.u r7, r3, r7
	and r8, r20, r21
	and r20, r26, r24
	or r8, r8, r20
	or r8, r7, r8
	lui r7, 523264
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r8, zero, .LBB0_223
# %bb.222:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 8(r14)
.LBB0_223:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	loads.w r8, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r19, r8, r3
	seteq r20, r2, zero
	seteq r21, r2, r3
	seteq r24, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r3, r2
	and r8, r19, r20
	and r19, r24, r21
	or r8, r8, r19
	or r2, r2, r8
	.loc	1 407 20                        # parallel-rne.mlir:407:20
	bneq r2, zero, .LBB0_216
# %bb.224:                              # %vector.body584
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_216
.LBB0_225:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	mfence { sm }
.LBB0_226:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[6:7], r2
	.loc	1 414 7 is_stmt 1               # parallel-rne.mlir:414:7
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	store.d r[6:7], -248(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_255
# %bb.227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 56
	zext_int2long r[6:7], r2
	j .LBB0_229
.LBB0_228:                              # %middle.block575
                                        #   in Loop: Header=BB0_229 Depth=2
	.loc	1 422 9 is_stmt 1               # parallel-rne.mlir:422:9
	load.d r[6:7], -248(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_254
.LBB0_229:                              # %.preheader120
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_246 Depth 3
                                        #       Child Loop BB0_232 Depth 3
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_244
# %bb.230:                              # %scalar.ph567.preheader
                                        #   in Loop: Header=BB0_229 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_232
.LBB0_231:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	setlt.ul r6, r[11:12], r[4:5]
	.loc	1 445 13 is_stmt 1              # parallel-rne.mlir:445:13
	add.s r2, r1, r2
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	stores.w r13, 0(r2)
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	beq r6, zero, .LBB0_228
.LBB0_232:                              # %scalar.ph567
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_229 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.ul r[6:7], r[11:12], r[8:9]
	lui r13, 523264
	lui r14, 523264
	slli r2, r6, 2
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.s r6, r20, r2
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	add.s r7, r10, r2
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	loads.w r6, 0(r6)
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	loads.w r16, 0(r7)
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	and r6, r6, r27
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	beq r6, r3, .LBB0_234
# %bb.233:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r16, 0
.LBB0_234:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	add.s r7, r28, r2
	loads.w r7, 0(r7)
	and r7, r7, r27
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r7, zero, .LBB0_242
# %bb.235:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r16, 523264
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r6, zero, .LBB0_243
.LBB0_236:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	beq r7, r3, .LBB0_238
.LBB0_237:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r16, r14, 0
.LBB0_238:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	setlt.u r14, r3, r6
	lui r6, 523264
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r14, zero, .LBB0_240
# %bb.239:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r16, 0
.LBB0_240:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	setlt.u r7, r3, r7
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r7, zero, .LBB0_231
# %bb.241:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r13, r6, 0
	j .LBB0_231
.LBB0_242:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	addli r14, r16, 0
	lui r16, 523264
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	beq r6, zero, .LBB0_236
.LBB0_243:                              # %scalar.ph567
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r16, r14, 0
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r7, r3, .LBB0_237
	j .LBB0_238
.LBB0_244:                              # %vector.body569.preheader
                                        #   in Loop: Header=BB0_229 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[12:13], zero
	j .LBB0_246
.LBB0_245:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 423 11 is_stmt 1              # parallel-rne.mlir:423:11
	addli.d r[12:13], r[12:13], 4
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	add.s r14, r1, r14
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	seteq.d r7, r[12:13], r[22:23]
	.loc	1 445 13                        # parallel-rne.mlir:445:13
	stores.w r16, 12(r14)
	stores.w r6, 8(r14)
	stores.w r2, 4(r14)
	stores.w r11, 0(r14)
	.loc	1 423 11                        # parallel-rne.mlir:423:11
	bneq r7, zero, .LBB0_228
.LBB0_246:                              # %vector.body569
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_229 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r17, r28, r14
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	add.s r18, r20, r14
	.loc	1 424 19                        # parallel-rne.mlir:424:19
	loads.w r2, 0(r17)
	.loc	1 425 19                        # parallel-rne.mlir:425:19
	loads.w r6, 0(r18)
	.loc	1 431 19                        # parallel-rne.mlir:431:19
	and r2, r2, r27
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	and r6, r6, r27
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	seteq r7, r2, r3
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	seteq r19, r2, zero
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	seteq r11, r6, zero
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	seteq r16, r6, r3
	.loc	1 441 20                        # parallel-rne.mlir:441:20
	max.u r2, r2, r6
	setlt.u r2, r3, r2
	.loc	1 434 19                        # parallel-rne.mlir:434:19
	and r6, r7, r11
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	and r7, r19, r16
	.loc	1 426 19                        # parallel-rne.mlir:426:19
	add.s r19, r10, r14
	lui r16, 523264
	lui r11, 523264
	.loc	1 438 20                        # parallel-rne.mlir:438:20
	or r6, r6, r7
	.loc	1 442 20                        # parallel-rne.mlir:442:20
	or r2, r2, r6
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r2, zero, .LBB0_248
# %bb.247:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r19)
.LBB0_248:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	loads.w r2, 4(r17)
	loads.w r6, 4(r18)
	and r2, r2, r27
	and r6, r6, r27
	seteq r7, r2, r3
	seteq r24, r2, zero
	seteq r20, r6, zero
	seteq r21, r6, r3
	max.u r2, r2, r6
	setlt.u r2, r3, r2
	and r6, r7, r20
	and r7, r24, r21
	or r6, r6, r7
	or r6, r2, r6
	lui r2, 523264
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r6, zero, .LBB0_250
# %bb.249:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r2, 4(r19)
.LBB0_250:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	loads.w r6, 8(r17)
	loads.w r7, 8(r18)
	and r6, r6, r27
	and r7, r7, r27
	seteq r20, r6, r3
	seteq r26, r6, zero
	seteq r21, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r20, r21
	and r20, r26, r24
	or r7, r7, r20
	or r7, r6, r7
	lui r6, 523264
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r7, zero, .LBB0_252
# %bb.251:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r6, 8(r19)
.LBB0_252:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	loads.w r7, 12(r17)
	loads.w r17, 12(r18)
	lui r26, 524288
	and r7, r7, r27
	and r17, r17, r27
	seteq r18, r7, r3
	seteq r24, r7, zero
	seteq r20, r17, zero
	seteq r21, r17, r3
	max.u r7, r7, r17
	setlt.u r7, r3, r7
	and r17, r18, r20
	and r18, r24, r21
	or r17, r17, r18
	or r7, r7, r17
	.loc	1 443 20                        # parallel-rne.mlir:443:20
	bneq r7, zero, .LBB0_245
# %bb.253:                              # %vector.body569
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 12(r19)
	j .LBB0_245
.LBB0_254:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 414 7                         # parallel-rne.mlir:414:7
	mfence { sm }
.LBB0_255:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 450 7                         # parallel-rne.mlir:450:7
	addli r2, zero, 255
	addli r8, zero, 3
	csr_set csr5, r2
	sync_core
	.loc	1 451 7                         # parallel-rne.mlir:451:7
	bneq r12, r8, .LBB0_257
# %bb.256:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	xsignal r2, 0
	.loc	1 452 7                         # parallel-rne.mlir:452:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 453 7                         # parallel-rne.mlir:453:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 454 7                         # parallel-rne.mlir:454:7
	addli r2, zero, 23
	xsignal r2, 0
	.loc	1 456 13                        # parallel-rne.mlir:456:13
	loadli.w r2,  -48(r30)
	mod.s r6, r2, r8
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	slli r6, r6, 15
	add.s r2, r6, r2
	.loc	1 460 7                         # parallel-rne.mlir:460:7
	addli r6, zero, 30
	xwait r6, 0
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	addli r6, zero, 34
	xwait r6, 0
	j .LBB0_259
.LBB0_257:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 456 13                        # parallel-rne.mlir:456:13
	loadli.w r2,  -48(r30)
	mod.s r6, r2, r8
	addli r7, r2, 1
	loadli.w r2,  -416(r30)                 # 4-byte Folded Reload
	storeli.w r7, -48(r30)
	slli r6, r6, 15
	add.s r2, r6, r2
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	addli r6, zero, 5
	bneq r12, r6, .LBB0_259
# %bb.258:                              #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 14
	lui r9, 260096
	xwait r6, 0
	addli r6, zero, 23
	xwait r6, 0
	addli r6, zero, 31
	xwait r6, 0
	addli r6, zero, 2
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	loadli.w r7,  -432(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r9, r7, zero, 0
	addli r9, zero, 2047
	addli r7, zero, 24
	ew_cfg zero, r9, zero, 2
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, r13, 19
	dsmadd r2, r20, r1, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r7, 0
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	loadli.w r7,  -436(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r7, zero, zero, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, zero, 19
	hp_ssmul r2, r2, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	addli r6, zero, 30
	xsignal r6, 0
.LBB0_259:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r6,  -348(r30)                 # 4-byte Folded Reload
	.loc	1 463 7 is_stmt 1               # parallel-rne.mlir:463:7
	xfence
	loadli.w r7,  -412(r30)                 # 4-byte Folded Reload
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	mfence { lm, sm, gm }
	mod.s r6, r6, r8
	slli r6, r6, 15
	add.s r10, r6, r7
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	addli r6, zero, 255
	csr_set csr5, r6
	sub.s r6, r10, r2
	storeli.w r6, -312(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	beq r12, zero, .LBB0_267
# %bb.260:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	addli r6, zero, 1
	beq r12, r6, .LBB0_273
.LBB0_261:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	bneq r6, zero, .LBB0_279
.LBB0_262:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r6, zero, 3
	beq r12, r6, .LBB0_285
.LBB0_263:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	beq r12, r13, .LBB0_291
.LBB0_264:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	addli r6, zero, 5
	beq r12, r6, .LBB0_297
.LBB0_265:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	addli r6, zero, 6
	beq r12, r6, .LBB0_303
.LBB0_266:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	loadli.w r6,  -320(r30)                 # 4-byte Folded Reload
	bneq r6, zero, .LBB0_309
	j .LBB0_315
.LBB0_267:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	.loc	1 466 7 is_stmt 1               # parallel-rne.mlir:466:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r7, r6
	zext_int2long r[7:8], zero
	j .LBB0_269
.LBB0_268:                              # %middle.block560
                                        #   in Loop: Header=BB0_269 Depth=2
	.loc	1 474 9                         # parallel-rne.mlir:474:9
	load.d r[11:12], -304(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_272
.LBB0_269:                              # %.preheader119
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_270 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 475 11 is_stmt 1              # parallel-rne.mlir:475:11
	beq r6, zero, .LBB0_271
.LBB0_270:                              # %scalar.ph553
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_269 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	add.ul r[13:14], r[16:17], r[11:12]
	slli r9, r13, 2
	.loc	1 475 11                        # parallel-rne.mlir:475:11
	setlt.ul r14, r[16:17], r[4:5]
	addli.d r[16:17], r[16:17], 1
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	add.s r13, r2, r9
	.loc	1 478 13                        # parallel-rne.mlir:478:13
	add.s r9, r10, r9
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	loads.w r13, 0(r13)
	.loc	1 478 13                        # parallel-rne.mlir:478:13
	stores.w r13, 0(r9)
	.loc	1 475 11                        # parallel-rne.mlir:475:11
	bneq r14, zero, .LBB0_270
	j .LBB0_268
.LBB0_271:                              # %vector.body555
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_269 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	add.ul r[18:19], r[16:17], r[11:12]
	.loc	1 475 11                        # parallel-rne.mlir:475:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	slli r9, r18, 2
	.loc	1 475 11                        # parallel-rne.mlir:475:11
	seteq.d r13, r[16:17], r[22:23]
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	add.s r18, r2, r9
	.loc	1 478 13                        # parallel-rne.mlir:478:13
	add.s r9, r10, r9
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	loads.w r19, 12(r18)
	loads.w r20, 8(r18)
	loads.w r21, 4(r18)
	loads.w r24, 0(r18)
	loads.w r26, 28(r18)
	loads.w r28, 24(r18)
	loads.w r14, 20(r18)
	loads.w r18, 16(r18)
	.loc	1 478 13                        # parallel-rne.mlir:478:13
	stores.w r19, 12(r9)
	stores.w r20, 8(r9)
	stores.w r21, 4(r9)
	stores.w r24, 0(r9)
	stores.w r26, 28(r9)
	stores.w r28, 24(r9)
	stores.w r14, 20(r9)
	stores.w r18, 16(r9)
	.loc	1 475 11                        # parallel-rne.mlir:475:11
	beq r13, zero, .LBB0_271
	j .LBB0_268
.LBB0_272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	addli r6, zero, 1
	bneq r12, r6, .LBB0_261
.LBB0_273:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r7, r6
	addli r7, zero, 8
	zext_int2long r[7:8], r7
	j .LBB0_275
.LBB0_274:                              # %middle.block550
                                        #   in Loop: Header=BB0_275 Depth=2
	.loc	1 491 9 is_stmt 1               # parallel-rne.mlir:491:9
	load.d r[11:12], -296(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_278
.LBB0_275:                              # %.preheader118
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_276 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 492 11 is_stmt 1              # parallel-rne.mlir:492:11
	beq r6, zero, .LBB0_277
.LBB0_276:                              # %scalar.ph543
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.ul r[13:14], r[16:17], r[11:12]
	slli r9, r13, 2
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	setlt.ul r14, r[16:17], r[4:5]
	addli.d r[16:17], r[16:17], 1
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.s r13, r2, r9
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r9, r10, r9
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	loads.w r13, 0(r13)
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r13, 0(r9)
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	bneq r14, zero, .LBB0_276
	j .LBB0_274
.LBB0_277:                              # %vector.body545
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.ul r[13:14], r[16:17], r[11:12]
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	slli r9, r13, 2
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	seteq.d r13, r[16:17], r[22:23]
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	add.s r14, r2, r9
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	add.s r9, r10, r9
	.loc	1 493 19                        # parallel-rne.mlir:493:19
	loads.w r18, 12(r14)
	loads.w r19, 8(r14)
	loads.w r20, 4(r14)
	loads.w r21, 0(r14)
	loads.w r24, 28(r14)
	loads.w r26, 24(r14)
	loads.w r28, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 495 13                        # parallel-rne.mlir:495:13
	stores.w r18, 12(r9)
	stores.w r19, 8(r9)
	stores.w r20, 4(r9)
	stores.w r21, 0(r9)
	stores.w r24, 28(r9)
	stores.w r26, 24(r9)
	stores.w r28, 20(r9)
	stores.w r14, 16(r9)
	.loc	1 492 11                        # parallel-rne.mlir:492:11
	beq r13, zero, .LBB0_277
	j .LBB0_274
.LBB0_278:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 483 7                         # parallel-rne.mlir:483:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	loadli.w r6,  -324(r30)                 # 4-byte Folded Reload
	beq r6, zero, .LBB0_262
.LBB0_279:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r7, r6
	addli r7, zero, 16
	zext_int2long r[7:8], r7
	j .LBB0_281
.LBB0_280:                              # %middle.block540
                                        #   in Loop: Header=BB0_281 Depth=2
	.loc	1 508 9 is_stmt 1               # parallel-rne.mlir:508:9
	load.d r[11:12], -288(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_284
.LBB0_281:                              # %.preheader117
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 509 11 is_stmt 1              # parallel-rne.mlir:509:11
	beq r6, zero, .LBB0_283
.LBB0_282:                              # %scalar.ph533
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.ul r[13:14], r[16:17], r[11:12]
	slli r9, r13, 2
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	setlt.ul r14, r[16:17], r[4:5]
	addli.d r[16:17], r[16:17], 1
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.s r13, r2, r9
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	add.s r9, r10, r9
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	loads.w r13, 0(r13)
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	stores.w r13, 0(r9)
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	bneq r14, zero, .LBB0_282
	j .LBB0_280
.LBB0_283:                              # %vector.body535
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.ul r[13:14], r[16:17], r[11:12]
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	slli r9, r13, 2
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	seteq.d r13, r[16:17], r[22:23]
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	add.s r14, r2, r9
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	add.s r9, r10, r9
	.loc	1 510 19                        # parallel-rne.mlir:510:19
	loads.w r18, 12(r14)
	loads.w r19, 8(r14)
	loads.w r20, 4(r14)
	loads.w r21, 0(r14)
	loads.w r24, 28(r14)
	loads.w r26, 24(r14)
	loads.w r28, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 512 13                        # parallel-rne.mlir:512:13
	stores.w r18, 12(r9)
	stores.w r19, 8(r9)
	stores.w r20, 4(r9)
	stores.w r21, 0(r9)
	stores.w r24, 28(r9)
	stores.w r26, 24(r9)
	stores.w r28, 20(r9)
	stores.w r14, 16(r9)
	.loc	1 509 11                        # parallel-rne.mlir:509:11
	beq r13, zero, .LBB0_283
	j .LBB0_280
.LBB0_284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 500 7                         # parallel-rne.mlir:500:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	addli r6, zero, 3
	bneq r12, r6, .LBB0_263
.LBB0_285:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r7, r6
	addli r7, zero, 24
	zext_int2long r[7:8], r7
	j .LBB0_287
.LBB0_286:                              # %middle.block530
                                        #   in Loop: Header=BB0_287 Depth=2
	.loc	1 525 9 is_stmt 1               # parallel-rne.mlir:525:9
	load.d r[11:12], -280(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_290
.LBB0_287:                              # %.preheader116
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_289 Depth 3
                                        #       Child Loop BB0_288 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 526 11 is_stmt 1              # parallel-rne.mlir:526:11
	beq r6, zero, .LBB0_289
.LBB0_288:                              # %scalar.ph523
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_287 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[13:14], r[16:17], r[11:12]
	slli r9, r13, 2
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	setlt.ul r14, r[16:17], r[4:5]
	addli.d r[16:17], r[16:17], 1
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.s r13, r2, r9
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	add.s r9, r10, r9
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	loads.w r13, 0(r13)
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r13, 0(r9)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	bneq r14, zero, .LBB0_288
	j .LBB0_286
.LBB0_289:                              # %vector.body525
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_287 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[13:14], r[16:17], r[11:12]
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	slli r9, r13, 2
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	seteq.d r13, r[16:17], r[22:23]
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.s r14, r2, r9
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	add.s r9, r10, r9
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	loads.w r18, 12(r14)
	loads.w r19, 8(r14)
	loads.w r20, 4(r14)
	loads.w r21, 0(r14)
	loads.w r24, 28(r14)
	loads.w r26, 24(r14)
	loads.w r28, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 529 13                        # parallel-rne.mlir:529:13
	stores.w r18, 12(r9)
	stores.w r19, 8(r9)
	stores.w r20, 4(r9)
	stores.w r21, 0(r9)
	stores.w r24, 28(r9)
	stores.w r26, 24(r9)
	stores.w r28, 20(r9)
	stores.w r14, 16(r9)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	beq r13, zero, .LBB0_289
	j .LBB0_286
.LBB0_290:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 517 7                         # parallel-rne.mlir:517:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	bneq r12, r13, .LBB0_264
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r6,  -312(r30)                 # 4-byte Folded Reload
	addli r7, zero, 32
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r6, r7
	zext_int2long r[7:8], r7
	j .LBB0_293
.LBB0_292:                              # %middle.block520
                                        #   in Loop: Header=BB0_293 Depth=2
	.loc	1 542 9 is_stmt 1               # parallel-rne.mlir:542:9
	load.d r[11:12], -272(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_296
.LBB0_293:                              # %.preheader115
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_295 Depth 3
                                        #       Child Loop BB0_294 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 543 11 is_stmt 1              # parallel-rne.mlir:543:11
	beq r6, zero, .LBB0_295
.LBB0_294:                              # %scalar.ph513
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_293 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.ul r[13:14], r[16:17], r[11:12]
	slli r9, r13, 2
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	setlt.ul r14, r[16:17], r[4:5]
	addli.d r[16:17], r[16:17], 1
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.s r13, r2, r9
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	add.s r9, r10, r9
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	loads.w r13, 0(r13)
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	stores.w r13, 0(r9)
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	bneq r14, zero, .LBB0_294
	j .LBB0_292
.LBB0_295:                              # %vector.body515
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_293 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.ul r[13:14], r[16:17], r[11:12]
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	slli r9, r13, 2
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	seteq.d r13, r[16:17], r[22:23]
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	add.s r14, r2, r9
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	add.s r9, r10, r9
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	loads.w r18, 12(r14)
	loads.w r19, 8(r14)
	loads.w r20, 4(r14)
	loads.w r21, 0(r14)
	loads.w r24, 28(r14)
	loads.w r26, 24(r14)
	loads.w r28, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 546 13                        # parallel-rne.mlir:546:13
	stores.w r18, 12(r9)
	stores.w r19, 8(r9)
	stores.w r20, 4(r9)
	stores.w r21, 0(r9)
	stores.w r24, 28(r9)
	stores.w r26, 24(r9)
	stores.w r28, 20(r9)
	stores.w r14, 16(r9)
	.loc	1 543 11                        # parallel-rne.mlir:543:11
	beq r13, zero, .LBB0_295
	j .LBB0_292
.LBB0_296:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 534 7                         # parallel-rne.mlir:534:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	addli r6, zero, 5
	bneq r12, r6, .LBB0_265
.LBB0_297:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r7, r6
	addli r7, zero, 40
	zext_int2long r[7:8], r7
	j .LBB0_299
.LBB0_298:                              # %middle.block510
                                        #   in Loop: Header=BB0_299 Depth=2
	.loc	1 559 9 is_stmt 1               # parallel-rne.mlir:559:9
	load.d r[11:12], -264(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_302
.LBB0_299:                              # %.preheader114
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_301 Depth 3
                                        #       Child Loop BB0_300 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 560 11 is_stmt 1              # parallel-rne.mlir:560:11
	beq r6, zero, .LBB0_301
.LBB0_300:                              # %scalar.ph503
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_299 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.ul r[13:14], r[16:17], r[11:12]
	slli r9, r13, 2
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	setlt.ul r14, r[16:17], r[4:5]
	addli.d r[16:17], r[16:17], 1
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.s r13, r2, r9
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	add.s r9, r10, r9
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	loads.w r13, 0(r13)
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	stores.w r13, 0(r9)
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	bneq r14, zero, .LBB0_300
	j .LBB0_298
.LBB0_301:                              # %vector.body505
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_299 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.ul r[13:14], r[16:17], r[11:12]
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	slli r9, r13, 2
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	seteq.d r13, r[16:17], r[22:23]
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	add.s r14, r2, r9
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	add.s r9, r10, r9
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	loads.w r18, 12(r14)
	loads.w r19, 8(r14)
	loads.w r20, 4(r14)
	loads.w r21, 0(r14)
	loads.w r24, 28(r14)
	loads.w r26, 24(r14)
	loads.w r28, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 563 13                        # parallel-rne.mlir:563:13
	stores.w r18, 12(r9)
	stores.w r19, 8(r9)
	stores.w r20, 4(r9)
	stores.w r21, 0(r9)
	stores.w r24, 28(r9)
	stores.w r26, 24(r9)
	stores.w r28, 20(r9)
	stores.w r14, 16(r9)
	.loc	1 560 11                        # parallel-rne.mlir:560:11
	beq r13, zero, .LBB0_301
	j .LBB0_298
.LBB0_302:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 551 7                         # parallel-rne.mlir:551:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	addli r6, zero, 6
	bneq r12, r6, .LBB0_266
.LBB0_303:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r7, r6
	addli r7, zero, 48
	zext_int2long r[7:8], r7
	j .LBB0_305
.LBB0_304:                              # %middle.block500
                                        #   in Loop: Header=BB0_305 Depth=2
	.loc	1 576 9 is_stmt 1               # parallel-rne.mlir:576:9
	load.d r[11:12], -256(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_308
.LBB0_305:                              # %.preheader113
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_306 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[16:17], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 577 11 is_stmt 1              # parallel-rne.mlir:577:11
	beq r6, zero, .LBB0_307
.LBB0_306:                              # %scalar.ph493
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.ul r[13:14], r[16:17], r[11:12]
	slli r9, r13, 2
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	setlt.ul r14, r[16:17], r[4:5]
	addli.d r[16:17], r[16:17], 1
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.s r13, r2, r9
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	add.s r9, r10, r9
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	loads.w r13, 0(r13)
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r13, 0(r9)
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	bneq r14, zero, .LBB0_306
	j .LBB0_304
.LBB0_307:                              # %vector.body495
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.ul r[13:14], r[16:17], r[11:12]
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	addli.d r[16:17], r[16:17], 8
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	slli r9, r13, 2
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	seteq.d r13, r[16:17], r[22:23]
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	add.s r14, r2, r9
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	add.s r9, r10, r9
	.loc	1 578 19                        # parallel-rne.mlir:578:19
	loads.w r18, 12(r14)
	loads.w r19, 8(r14)
	loads.w r20, 4(r14)
	loads.w r21, 0(r14)
	loads.w r24, 28(r14)
	loads.w r26, 24(r14)
	loads.w r28, 20(r14)
	loads.w r14, 16(r14)
	.loc	1 580 13                        # parallel-rne.mlir:580:13
	stores.w r18, 12(r9)
	stores.w r19, 8(r9)
	stores.w r20, 4(r9)
	stores.w r21, 0(r9)
	stores.w r24, 28(r9)
	stores.w r26, 24(r9)
	stores.w r28, 20(r9)
	stores.w r14, 16(r9)
	.loc	1 577 11                        # parallel-rne.mlir:577:11
	beq r13, zero, .LBB0_307
	j .LBB0_304
.LBB0_308:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 568 7                         # parallel-rne.mlir:568:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	loadli.w r6,  -320(r30)                 # 4-byte Folded Reload
	beq r6, zero, .LBB0_315
.LBB0_309:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -312(r30)                 # 4-byte Folded Reload
	addli r6, zero, 32
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r6, r7, r6
	addli r7, zero, 56
	zext_int2long r[7:8], r7
	j .LBB0_311
.LBB0_310:                              # %middle.block490
                                        #   in Loop: Header=BB0_311 Depth=2
	.loc	1 593 9 is_stmt 1               # parallel-rne.mlir:593:9
	load.d r[11:12], -248(r30)              # 8-byte Folded Reload
	setlt.ul r9, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	addli r11, zero, 7
	beq r9, zero, .LBB0_314
.LBB0_311:                              # %.preheader112
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_313 Depth 3
                                        #       Child Loop BB0_312 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 7
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[7:8], r9
	.loc	1 594 11 is_stmt 1              # parallel-rne.mlir:594:11
	beq r6, zero, .LBB0_313
.LBB0_312:                              # %scalar.ph483
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_311 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[16:17], r[13:14], r[11:12]
	slli r9, r16, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	setlt.ul r17, r[13:14], r[4:5]
	addli.d r[13:14], r[13:14], 1
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r16, r2, r9
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r9, r10, r9
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r16, 0(r16)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r16, 0(r9)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	bneq r17, zero, .LBB0_312
	j .LBB0_310
.LBB0_313:                              # %vector.body485
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_311 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.ul r[16:17], r[13:14], r[11:12]
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	slli r9, r16, 2
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	seteq.d r16, r[13:14], r[22:23]
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	add.s r17, r2, r9
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r9, r10, r9
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	loads.w r18, 12(r17)
	loads.w r19, 8(r17)
	loads.w r20, 4(r17)
	loads.w r21, 0(r17)
	loads.w r24, 28(r17)
	loads.w r26, 24(r17)
	loads.w r28, 20(r17)
	loads.w r17, 16(r17)
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	stores.w r18, 12(r9)
	stores.w r19, 8(r9)
	stores.w r20, 4(r9)
	stores.w r21, 0(r9)
	stores.w r24, 28(r9)
	stores.w r26, 24(r9)
	stores.w r28, 20(r9)
	stores.w r17, 16(r9)
	.loc	1 594 11                        # parallel-rne.mlir:594:11
	beq r16, zero, .LBB0_313
	j .LBB0_310
.LBB0_314:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 585 7                         # parallel-rne.mlir:585:7
	mfence { sm }
	.loc	1 35 5                          # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	lui r26, 524288
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
.LBB0_315:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	addli r2, zero, 3
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	sync_core
	.loc	1 603 7                         # parallel-rne.mlir:603:7
	bneq r12, r2, .LBB0_317
# %bb.316:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 31
	addli r6, zero, 32
	xsignal r2, 0
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	addli r2, zero, 24
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	xsignal r6, 0
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	xwait r2, 0
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	xwait r6, 0
.LBB0_317:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 609 7                         # parallel-rne.mlir:609:7
	xfence
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	addli r2, zero, 255
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	mfence { lm, sm, gm }
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	csr_set csr5, r2
	sync_core
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	beq r12, zero, .LBB0_325
# %bb.318:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r2, zero, 1
	beq r12, r2, .LBB0_351
.LBB0_319:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_377
.LBB0_320:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 678 7                         # parallel-rne.mlir:678:7
	addli r2, zero, 3
	beq r12, r2, .LBB0_403
.LBB0_321:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 700 7                         # parallel-rne.mlir:700:7
	beq r12, r13, .LBB0_429
.LBB0_322:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 722 7                         # parallel-rne.mlir:722:7
	addli r2, zero, 5
	beq r12, r2, .LBB0_455
.LBB0_323:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	addli r2, zero, 6
	beq r12, r2, .LBB0_481
.LBB0_324:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 766 7                         # parallel-rne.mlir:766:7
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_507
	j .LBB0_533
.LBB0_325:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_327
.LBB0_326:                              # %middle.block480
                                        #   in Loop: Header=BB0_327 Depth=2
	.loc	1 620 9                         # parallel-rne.mlir:620:9
	load.d r[6:7], -304(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_350
.LBB0_327:                              # %.preheader111
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_334 Depth 3
                                        #       Child Loop BB0_330 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 621 11 is_stmt 1              # parallel-rne.mlir:621:11
	bneq r1, r10, .LBB0_332
# %bb.328:                              # %scalar.ph473.preheader
                                        #   in Loop: Header=BB0_327 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_330
.LBB0_329:                              # %scalar.ph473
                                        #   in Loop: Header=BB0_330 Depth=3
	.loc	1 621 11                        # parallel-rne.mlir:621:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 629 13 is_stmt 1              # parallel-rne.mlir:629:13
	add.s r2, r1, r2
	.loc	1 621 11                        # parallel-rne.mlir:621:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	stores.w r11, 0(r2)
	.loc	1 621 11                        # parallel-rne.mlir:621:11
	beq r12, zero, .LBB0_326
.LBB0_330:                              # %scalar.ph473
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 622 19                        # parallel-rne.mlir:622:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	and r12, r11, r27
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	setlt.u r12, r25, r12
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r12, zero, .LBB0_329
# %bb.331:                              #   in Loop: Header=BB0_330 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_329
.LBB0_332:                              # %vector.body475.preheader
                                        #   in Loop: Header=BB0_327 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_334
.LBB0_333:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 621 11 is_stmt 1              # parallel-rne.mlir:621:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	add.s r14, r1, r14
	.loc	1 621 11                        # parallel-rne.mlir:621:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 629 13                        # parallel-rne.mlir:629:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 621 11                        # parallel-rne.mlir:621:11
	bneq r16, zero, .LBB0_326
.LBB0_334:                              # %vector.body475
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_327 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 622 19                        # parallel-rne.mlir:622:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	and r6, r2, r27
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	setlt.u r6, r25, r6
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r6, zero, .LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_336:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r6, zero, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_338:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r6, zero, .LBB0_340
# %bb.339:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_340:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r6, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_342:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r6, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_344:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r6, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_346:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r7, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_348:                              # %vector.body475
                                        #   in Loop: Header=BB0_334 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 627 19                        # parallel-rne.mlir:627:19
	beq r16, zero, .LBB0_333
# %bb.349:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_333
.LBB0_350:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 612 7                         # parallel-rne.mlir:612:7
	mfence { sm }
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r2, zero, 1
	bneq r12, r2, .LBB0_319
.LBB0_351:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_353
.LBB0_352:                              # %middle.block470
                                        #   in Loop: Header=BB0_353 Depth=2
	.loc	1 642 9 is_stmt 1               # parallel-rne.mlir:642:9
	load.d r[6:7], -296(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_376
.LBB0_353:                              # %.preheader110
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_360 Depth 3
                                        #       Child Loop BB0_356 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 643 11 is_stmt 1              # parallel-rne.mlir:643:11
	bneq r1, r10, .LBB0_358
# %bb.354:                              # %scalar.ph463.preheader
                                        #   in Loop: Header=BB0_353 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_356
.LBB0_355:                              # %scalar.ph463
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 643 11                        # parallel-rne.mlir:643:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 651 13 is_stmt 1              # parallel-rne.mlir:651:13
	add.s r2, r1, r2
	.loc	1 643 11                        # parallel-rne.mlir:643:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 651 13                        # parallel-rne.mlir:651:13
	stores.w r11, 0(r2)
	.loc	1 643 11                        # parallel-rne.mlir:643:11
	beq r12, zero, .LBB0_352
.LBB0_356:                              # %scalar.ph463
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_353 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	and r12, r11, r27
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	setlt.u r12, r25, r12
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r12, zero, .LBB0_355
# %bb.357:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_355
.LBB0_358:                              # %vector.body465.preheader
                                        #   in Loop: Header=BB0_353 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_360
.LBB0_359:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	.loc	1 643 11 is_stmt 1              # parallel-rne.mlir:643:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 651 13                        # parallel-rne.mlir:651:13
	add.s r14, r1, r14
	.loc	1 643 11                        # parallel-rne.mlir:643:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 651 13                        # parallel-rne.mlir:651:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 643 11                        # parallel-rne.mlir:643:11
	bneq r16, zero, .LBB0_352
.LBB0_360:                              # %vector.body465
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_353 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 644 19                        # parallel-rne.mlir:644:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 647 19                        # parallel-rne.mlir:647:19
	and r6, r2, r27
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	setlt.u r6, r25, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r6, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_362:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r6, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_364:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r6, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_366:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r6, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_368:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r6, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_370:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r6, zero, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_372:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r7, zero, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_374:                              # %vector.body465
                                        #   in Loop: Header=BB0_360 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	beq r16, zero, .LBB0_359
# %bb.375:                              #   in Loop: Header=BB0_360 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_359
.LBB0_376:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	mfence { sm }
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_320
.LBB0_377:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_379
.LBB0_378:                              # %middle.block460
                                        #   in Loop: Header=BB0_379 Depth=2
	.loc	1 664 9 is_stmt 1               # parallel-rne.mlir:664:9
	load.d r[6:7], -288(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_402
.LBB0_379:                              # %.preheader109
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_386 Depth 3
                                        #       Child Loop BB0_382 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 665 11 is_stmt 1              # parallel-rne.mlir:665:11
	bneq r1, r10, .LBB0_384
# %bb.380:                              # %scalar.ph453.preheader
                                        #   in Loop: Header=BB0_379 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_382
.LBB0_381:                              # %scalar.ph453
                                        #   in Loop: Header=BB0_382 Depth=3
	.loc	1 665 11                        # parallel-rne.mlir:665:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 673 13 is_stmt 1              # parallel-rne.mlir:673:13
	add.s r2, r1, r2
	.loc	1 665 11                        # parallel-rne.mlir:665:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 673 13                        # parallel-rne.mlir:673:13
	stores.w r11, 0(r2)
	.loc	1 665 11                        # parallel-rne.mlir:665:11
	beq r12, zero, .LBB0_378
.LBB0_382:                              # %scalar.ph453
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_379 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	and r12, r11, r27
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	setlt.u r12, r25, r12
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r12, zero, .LBB0_381
# %bb.383:                              #   in Loop: Header=BB0_382 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_381
.LBB0_384:                              # %vector.body455.preheader
                                        #   in Loop: Header=BB0_379 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_386
.LBB0_385:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 665 11 is_stmt 1              # parallel-rne.mlir:665:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 673 13                        # parallel-rne.mlir:673:13
	add.s r14, r1, r14
	.loc	1 665 11                        # parallel-rne.mlir:665:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 673 13                        # parallel-rne.mlir:673:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 665 11                        # parallel-rne.mlir:665:11
	bneq r16, zero, .LBB0_378
.LBB0_386:                              # %vector.body455
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_379 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 669 19                        # parallel-rne.mlir:669:19
	and r6, r2, r27
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	setlt.u r6, r25, r6
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r6, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_388:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r6, zero, .LBB0_390
# %bb.389:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_390:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r6, zero, .LBB0_392
# %bb.391:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_392:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r6, zero, .LBB0_394
# %bb.393:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_394:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r6, zero, .LBB0_396
# %bb.395:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_396:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r6, zero, .LBB0_398
# %bb.397:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_398:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r7, zero, .LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_400:                              # %vector.body455
                                        #   in Loop: Header=BB0_386 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	beq r16, zero, .LBB0_385
# %bb.401:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_385
.LBB0_402:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	mfence { sm }
	.loc	1 678 7                         # parallel-rne.mlir:678:7
	addli r2, zero, 3
	bneq r12, r2, .LBB0_321
.LBB0_403:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 678 7                         # parallel-rne.mlir:678:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_405
.LBB0_404:                              # %middle.block450
                                        #   in Loop: Header=BB0_405 Depth=2
	.loc	1 686 9 is_stmt 1               # parallel-rne.mlir:686:9
	load.d r[6:7], -280(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_428
.LBB0_405:                              # %.preheader108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_412 Depth 3
                                        #       Child Loop BB0_408 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 687 11 is_stmt 1              # parallel-rne.mlir:687:11
	bneq r1, r10, .LBB0_410
# %bb.406:                              # %scalar.ph443.preheader
                                        #   in Loop: Header=BB0_405 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_408
.LBB0_407:                              # %scalar.ph443
                                        #   in Loop: Header=BB0_408 Depth=3
	.loc	1 687 11                        # parallel-rne.mlir:687:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 695 13 is_stmt 1              # parallel-rne.mlir:695:13
	add.s r2, r1, r2
	.loc	1 687 11                        # parallel-rne.mlir:687:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 695 13                        # parallel-rne.mlir:695:13
	stores.w r11, 0(r2)
	.loc	1 687 11                        # parallel-rne.mlir:687:11
	beq r12, zero, .LBB0_404
.LBB0_408:                              # %scalar.ph443
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_405 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	and r12, r11, r27
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	setlt.u r12, r25, r12
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r12, zero, .LBB0_407
# %bb.409:                              #   in Loop: Header=BB0_408 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_407
.LBB0_410:                              # %vector.body445.preheader
                                        #   in Loop: Header=BB0_405 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_412
.LBB0_411:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 687 11 is_stmt 1              # parallel-rne.mlir:687:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 695 13                        # parallel-rne.mlir:695:13
	add.s r14, r1, r14
	.loc	1 687 11                        # parallel-rne.mlir:687:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 695 13                        # parallel-rne.mlir:695:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 687 11                        # parallel-rne.mlir:687:11
	bneq r16, zero, .LBB0_404
.LBB0_412:                              # %vector.body445
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_405 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	and r6, r2, r27
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	setlt.u r6, r25, r6
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r6, zero, .LBB0_414
# %bb.413:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_414:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r6, zero, .LBB0_416
# %bb.415:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_416:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r6, zero, .LBB0_418
# %bb.417:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_418:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r6, zero, .LBB0_420
# %bb.419:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_420:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r6, zero, .LBB0_422
# %bb.421:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_422:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r6, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_424:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r7, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_426:                              # %vector.body445
                                        #   in Loop: Header=BB0_412 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	beq r16, zero, .LBB0_411
# %bb.427:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_411
.LBB0_428:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 678 7                         # parallel-rne.mlir:678:7
	mfence { sm }
	.loc	1 700 7                         # parallel-rne.mlir:700:7
	bneq r12, r13, .LBB0_322
.LBB0_429:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 700 7                         # parallel-rne.mlir:700:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_431
.LBB0_430:                              # %middle.block440
                                        #   in Loop: Header=BB0_431 Depth=2
	.loc	1 708 9 is_stmt 1               # parallel-rne.mlir:708:9
	load.d r[6:7], -272(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_454
.LBB0_431:                              # %.preheader107
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_438 Depth 3
                                        #       Child Loop BB0_434 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 709 11 is_stmt 1              # parallel-rne.mlir:709:11
	bneq r1, r10, .LBB0_436
# %bb.432:                              # %scalar.ph433.preheader
                                        #   in Loop: Header=BB0_431 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_434
.LBB0_433:                              # %scalar.ph433
                                        #   in Loop: Header=BB0_434 Depth=3
	.loc	1 709 11                        # parallel-rne.mlir:709:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 717 13 is_stmt 1              # parallel-rne.mlir:717:13
	add.s r2, r1, r2
	.loc	1 709 11                        # parallel-rne.mlir:709:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 717 13                        # parallel-rne.mlir:717:13
	stores.w r11, 0(r2)
	.loc	1 709 11                        # parallel-rne.mlir:709:11
	beq r12, zero, .LBB0_430
.LBB0_434:                              # %scalar.ph433
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_431 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	and r12, r11, r27
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	setlt.u r12, r25, r12
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r12, zero, .LBB0_433
# %bb.435:                              #   in Loop: Header=BB0_434 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_433
.LBB0_436:                              # %vector.body435.preheader
                                        #   in Loop: Header=BB0_431 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_438
.LBB0_437:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	.loc	1 709 11 is_stmt 1              # parallel-rne.mlir:709:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 717 13                        # parallel-rne.mlir:717:13
	add.s r14, r1, r14
	.loc	1 709 11                        # parallel-rne.mlir:709:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 717 13                        # parallel-rne.mlir:717:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 709 11                        # parallel-rne.mlir:709:11
	bneq r16, zero, .LBB0_430
.LBB0_438:                              # %vector.body435
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_431 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	and r6, r2, r27
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	setlt.u r6, r25, r6
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r6, zero, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_440:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r6, zero, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_442:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r6, zero, .LBB0_444
# %bb.443:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_444:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r6, zero, .LBB0_446
# %bb.445:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_446:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r6, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_448:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r6, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_450:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r7, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_452:                              # %vector.body435
                                        #   in Loop: Header=BB0_438 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	beq r16, zero, .LBB0_437
# %bb.453:                              #   in Loop: Header=BB0_438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_437
.LBB0_454:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 700 7                         # parallel-rne.mlir:700:7
	mfence { sm }
	.loc	1 722 7                         # parallel-rne.mlir:722:7
	addli r2, zero, 5
	bneq r12, r2, .LBB0_323
.LBB0_455:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 722 7                         # parallel-rne.mlir:722:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_457
.LBB0_456:                              # %middle.block430
                                        #   in Loop: Header=BB0_457 Depth=2
	.loc	1 730 9 is_stmt 1               # parallel-rne.mlir:730:9
	load.d r[6:7], -264(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_480
.LBB0_457:                              # %.preheader106
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_464 Depth 3
                                        #       Child Loop BB0_460 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 731 11 is_stmt 1              # parallel-rne.mlir:731:11
	bneq r1, r10, .LBB0_462
# %bb.458:                              # %scalar.ph423.preheader
                                        #   in Loop: Header=BB0_457 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_460
.LBB0_459:                              # %scalar.ph423
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 739 13 is_stmt 1              # parallel-rne.mlir:739:13
	add.s r2, r1, r2
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 739 13                        # parallel-rne.mlir:739:13
	stores.w r11, 0(r2)
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	beq r12, zero, .LBB0_456
.LBB0_460:                              # %scalar.ph423
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_457 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	and r12, r11, r27
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	setlt.u r12, r25, r12
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r12, zero, .LBB0_459
# %bb.461:                              #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_459
.LBB0_462:                              # %vector.body425.preheader
                                        #   in Loop: Header=BB0_457 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_464
.LBB0_463:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	.loc	1 731 11 is_stmt 1              # parallel-rne.mlir:731:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 739 13                        # parallel-rne.mlir:739:13
	add.s r14, r1, r14
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 739 13                        # parallel-rne.mlir:739:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 731 11                        # parallel-rne.mlir:731:11
	bneq r16, zero, .LBB0_456
.LBB0_464:                              # %vector.body425
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_457 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 732 19                        # parallel-rne.mlir:732:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	and r6, r2, r27
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	setlt.u r6, r25, r6
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r6, zero, .LBB0_466
# %bb.465:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_466:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r6, zero, .LBB0_468
# %bb.467:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_468:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r6, zero, .LBB0_470
# %bb.469:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_470:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r6, zero, .LBB0_472
# %bb.471:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_472:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r6, zero, .LBB0_474
# %bb.473:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_474:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r6, zero, .LBB0_476
# %bb.475:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_476:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r7, zero, .LBB0_478
# %bb.477:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_478:                              # %vector.body425
                                        #   in Loop: Header=BB0_464 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	beq r16, zero, .LBB0_463
# %bb.479:                              #   in Loop: Header=BB0_464 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_463
.LBB0_480:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 722 7                         # parallel-rne.mlir:722:7
	mfence { sm }
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	addli r2, zero, 6
	bneq r12, r2, .LBB0_324
.LBB0_481:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_483
.LBB0_482:                              # %middle.block420
                                        #   in Loop: Header=BB0_483 Depth=2
	.loc	1 752 9 is_stmt 1               # parallel-rne.mlir:752:9
	load.d r[6:7], -256(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_506
.LBB0_483:                              # %.preheader105
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_490 Depth 3
                                        #       Child Loop BB0_486 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 753 11 is_stmt 1              # parallel-rne.mlir:753:11
	bneq r1, r10, .LBB0_488
# %bb.484:                              # %scalar.ph413.preheader
                                        #   in Loop: Header=BB0_483 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_486
.LBB0_485:                              # %scalar.ph413
                                        #   in Loop: Header=BB0_486 Depth=3
	.loc	1 753 11                        # parallel-rne.mlir:753:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 761 13 is_stmt 1              # parallel-rne.mlir:761:13
	add.s r2, r1, r2
	.loc	1 753 11                        # parallel-rne.mlir:753:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 761 13                        # parallel-rne.mlir:761:13
	stores.w r11, 0(r2)
	.loc	1 753 11                        # parallel-rne.mlir:753:11
	beq r12, zero, .LBB0_482
.LBB0_486:                              # %scalar.ph413
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_483 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	and r12, r11, r27
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	setlt.u r12, r25, r12
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r12, zero, .LBB0_485
# %bb.487:                              #   in Loop: Header=BB0_486 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_485
.LBB0_488:                              # %vector.body415.preheader
                                        #   in Loop: Header=BB0_483 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_490
.LBB0_489:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 753 11 is_stmt 1              # parallel-rne.mlir:753:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 761 13                        # parallel-rne.mlir:761:13
	add.s r14, r1, r14
	.loc	1 753 11                        # parallel-rne.mlir:753:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 761 13                        # parallel-rne.mlir:761:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 753 11                        # parallel-rne.mlir:753:11
	bneq r16, zero, .LBB0_482
.LBB0_490:                              # %vector.body415
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_483 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 757 19                        # parallel-rne.mlir:757:19
	and r6, r2, r27
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	setlt.u r6, r25, r6
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r6, zero, .LBB0_492
# %bb.491:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_492:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r6, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_494:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r6, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_496:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r6, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_498:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r6, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_500:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r6, zero, .LBB0_502
# %bb.501:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_502:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r7, zero, .LBB0_504
# %bb.503:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_504:                              # %vector.body415
                                        #   in Loop: Header=BB0_490 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 759 19                        # parallel-rne.mlir:759:19
	beq r16, zero, .LBB0_489
# %bb.505:                              #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_489
.LBB0_506:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	mfence { sm }
	.loc	1 766 7                         # parallel-rne.mlir:766:7
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_533
.LBB0_507:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 766 7                         # parallel-rne.mlir:766:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_509
.LBB0_508:                              # %middle.block410
                                        #   in Loop: Header=BB0_509 Depth=2
	.loc	1 774 9 is_stmt 1               # parallel-rne.mlir:774:9
	load.d r[6:7], -248(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_532
.LBB0_509:                              # %.preheader104
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_516 Depth 3
                                        #       Child Loop BB0_512 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	.loc	1 775 11 is_stmt 1              # parallel-rne.mlir:775:11
	bneq r1, r10, .LBB0_514
# %bb.510:                              # %scalar.ph403.preheader
                                        #   in Loop: Header=BB0_509 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_512
.LBB0_511:                              # %scalar.ph403
                                        #   in Loop: Header=BB0_512 Depth=3
	.loc	1 775 11                        # parallel-rne.mlir:775:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 783 13 is_stmt 1              # parallel-rne.mlir:783:13
	add.s r2, r1, r2
	.loc	1 775 11                        # parallel-rne.mlir:775:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 783 13                        # parallel-rne.mlir:783:13
	stores.w r11, 0(r2)
	.loc	1 775 11                        # parallel-rne.mlir:775:11
	beq r12, zero, .LBB0_508
.LBB0_512:                              # %scalar.ph403
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_509 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r11, 0(r11)
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	and r12, r11, r27
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	setlt.u r12, r25, r12
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r12, zero, .LBB0_511
# %bb.513:                              #   in Loop: Header=BB0_512 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r11, r11, r26
	or r11, r11, r25
	j .LBB0_511
.LBB0_514:                              # %vector.body405.preheader
                                        #   in Loop: Header=BB0_509 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_516
.LBB0_515:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	.loc	1 775 11 is_stmt 1              # parallel-rne.mlir:775:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 783 13                        # parallel-rne.mlir:783:13
	add.s r14, r1, r14
	.loc	1 775 11                        # parallel-rne.mlir:775:11
	seteq.d r16, r[12:13], r[22:23]
	.loc	1 783 13                        # parallel-rne.mlir:783:13
	stores.w r18, 12(r14)
	stores.w r17, 8(r14)
	stores.w r11, 4(r14)
	stores.w r2, 0(r14)
	stores.w r7, 28(r14)
	stores.w r6, 24(r14)
	stores.w r28, 20(r14)
	stores.w r19, 16(r14)
	.loc	1 775 11                        # parallel-rne.mlir:775:11
	bneq r16, zero, .LBB0_508
.LBB0_516:                              # %vector.body405
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_509 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r16, r10, r14
	loads.w r2, 0(r16)
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	and r6, r2, r27
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	setlt.u r6, r25, r6
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r6, zero, .LBB0_518
# %bb.517:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r26
	or r2, r2, r25
.LBB0_518:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	loads.w r11, 4(r16)
	and r6, r11, r27
	setlt.u r6, r25, r6
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r6, zero, .LBB0_520
# %bb.519:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r26
	or r11, r6, r25
.LBB0_520:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	loads.w r17, 8(r16)
	and r6, r17, r27
	setlt.u r6, r25, r6
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r6, zero, .LBB0_522
# %bb.521:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r17, r26
	or r17, r6, r25
.LBB0_522:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	loads.w r18, 12(r16)
	and r6, r18, r27
	setlt.u r6, r25, r6
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r6, zero, .LBB0_524
# %bb.523:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r18, r26
	or r18, r6, r25
.LBB0_524:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	loads.w r19, 16(r16)
	and r6, r19, r27
	setlt.u r6, r25, r6
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r6, zero, .LBB0_526
# %bb.525:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r19, r26
	or r19, r6, r25
.LBB0_526:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	loads.w r28, 20(r16)
	and r6, r28, r27
	setlt.u r6, r25, r6
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r6, zero, .LBB0_528
# %bb.527:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r26
	or r28, r6, r25
.LBB0_528:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	loads.w r6, 24(r16)
	and r7, r6, r27
	setlt.u r7, r25, r7
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r7, zero, .LBB0_530
# %bb.529:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r6, r26
	or r6, r6, r25
.LBB0_530:                              # %vector.body405
                                        #   in Loop: Header=BB0_516 Depth=3
	loads.w r7, 28(r16)
	and r16, r7, r27
	setlt.u r16, r25, r16
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	beq r16, zero, .LBB0_515
# %bb.531:                              #   in Loop: Header=BB0_516 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r7, r7, r26
	or r7, r7, r25
	j .LBB0_515
.LBB0_532:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 766 7                         # parallel-rne.mlir:766:7
	mfence { sm }
.LBB0_533:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 788 7                         # parallel-rne.mlir:788:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 789 7                         # parallel-rne.mlir:789:7
	addli r2, zero, 3
	.loc	1 788 7                         # parallel-rne.mlir:788:7
	sync_core
	.loc	1 789 7                         # parallel-rne.mlir:789:7
	bneq r12, r2, .LBB0_535
# %bb.534:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 25
	addli r7, zero, 33
	xsignal r2, 0
	.loc	1 790 7                         # parallel-rne.mlir:790:7
	xsignal r7, 0
	.loc	1 793 13                        # parallel-rne.mlir:793:13
	loadli.w r2,  -32(r30)
	addli r6, r2, 1
	storeli.w r6, -32(r30)
	.loc	1 795 7                         # parallel-rne.mlir:795:7
	addli r6, zero, 26
	xwait r6, 0
	.loc	1 797 7                         # parallel-rne.mlir:797:7
	addli r6, zero, 37
	.loc	1 796 7                         # parallel-rne.mlir:796:7
	xwait r7, 0
	.loc	1 797 7                         # parallel-rne.mlir:797:7
	xwait r6, 0
	j .LBB0_538
.LBB0_535:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 791 7                         # parallel-rne.mlir:791:7
	addli r2, zero, 5
	bneq r12, r2, .LBB0_537
# %bb.536:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 25
	addli r6, zero, 2
	xwait r2, 0
	lock zero, r6
	addli r2, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 3
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, zero, 19
	ew_cfg r2, zero, zero, 10
	addli r2, zero, 1
	loadli.w r7,  -428(r30)                 # 4-byte Folded Reload
	ew_cfg r6, r2, r7, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r13, r2, 14
	addli r2, zero, 26
	ew_cfg zero, zero, zero, 15
	sslut r1, r1, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r2, 0
.LBB0_537:                              # %.thread83
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 793 13                        # parallel-rne.mlir:793:13
	loadli.w r2,  -32(r30)
	addli r6, r2, 1
	storeli.w r6, -32(r30)
.LBB0_538:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r6, zero, 3
	mod.s r2, r2, r6
	loadli.w r6,  -420(r30)                 # 4-byte Folded Reload
	slli r2, r2, 15
	add.s r28, r2, r6
	seteq r2, r28, r10
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	seteq r2, r28, r1
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	storeli.w r2, -332(r30)                 # 4-byte Folded Spill
	.loc	1 801 7                         # parallel-rne.mlir:801:7
	addli r2, zero, 255
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	xfence
	.loc	1 800 7                         # parallel-rne.mlir:800:7
	mfence { lm, sm, gm }
	.loc	1 801 7                         # parallel-rne.mlir:801:7
	csr_set csr5, r2
	sync_core
	.loc	1 802 7                         # parallel-rne.mlir:802:7
	beq r12, zero, .LBB0_546
# %bb.539:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r2, zero, 1
	beq r12, r2, .LBB0_582
.LBB0_540:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 854 7                         # parallel-rne.mlir:854:7
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_618
.LBB0_541:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 880 7                         # parallel-rne.mlir:880:7
	addli r2, zero, 3
	beq r12, r2, .LBB0_654
.LBB0_542:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 906 7                         # parallel-rne.mlir:906:7
	beq r12, r13, .LBB0_690
.LBB0_543:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 932 7                         # parallel-rne.mlir:932:7
	addli r2, zero, 5
	beq r12, r2, .LBB0_726
.LBB0_544:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	addli r2, zero, 6
	beq r12, r2, .LBB0_762
.LBB0_545:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 984 7                         # parallel-rne.mlir:984:7
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_798
	j .LBB0_834
.LBB0_546:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 802 7                         # parallel-rne.mlir:802:7
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	zext_int2long r[6:7], zero
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	j .LBB0_548
.LBB0_547:                              # %middle.block400
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 810 9                         # parallel-rne.mlir:810:9
	load.d r[6:7], -304(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_581
.LBB0_548:                              # %.preheader103
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_558 Depth 3
                                        #       Child Loop BB0_551 Depth 3
	.loc	1 811 11                        # parallel-rne.mlir:811:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_555
# %bb.549:                              # %scalar.ph391.preheader
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_551
.LBB0_550:                              # %scalar.ph391
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 811 11                        # parallel-rne.mlir:811:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 823 13 is_stmt 1              # parallel-rne.mlir:823:13
	add.s r2, r28, r2
	.loc	1 811 11                        # parallel-rne.mlir:811:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 823 13                        # parallel-rne.mlir:823:13
	stores.w r11, 0(r2)
	.loc	1 811 11                        # parallel-rne.mlir:811:11
	beq r12, zero, .LBB0_547
.LBB0_551:                              # %scalar.ph391
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_548 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	and r11, r13, r15
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r11, zero, .LBB0_553
# %bb.552:                              # %scalar.ph391
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r13, r3, .LBB0_550
	j .LBB0_554
.LBB0_553:                              #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r13, r3, .LBB0_550
.LBB0_554:                              # %scalar.ph391
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_550
.LBB0_555:                              # %vector.body393.preheader
                                        #   in Loop: Header=BB0_548 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_558
.LBB0_556:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r17, 28(r18)
.LBB0_557:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 823 13 is_stmt 1              # parallel-rne.mlir:823:13
	add.s r2, r28, r2
	.loc	1 811 11                        # parallel-rne.mlir:811:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 823 13                        # parallel-rne.mlir:823:13
	stores.w r14, 12(r2)
	.loc	1 811 11                        # parallel-rne.mlir:811:11
	seteq.d r14, r[12:13], r[22:23]
	.loc	1 823 13                        # parallel-rne.mlir:823:13
	stores.w r20, 24(r2)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r2)
	stores.w r19, 4(r2)
	stores.w r16, 0(r2)
	stores.w r17, 28(r2)
	stores.w r7, 20(r2)
	stores.w r6, 16(r2)
	.loc	1 811 11                        # parallel-rne.mlir:811:11
	bneq r14, zero, .LBB0_547
.LBB0_558:                              # %vector.body393
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_548 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r2, r6, 2
	add.s r17, r10, r2
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	add.s r18, r1, r2
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	loads.w r6, 0(r17)
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	and r7, r6, r3
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	and r11, r6, r15
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	seteq r7, r7, r3
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	setneq r11, r11, zero
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	and r7, r7, r11
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_560
# %bb.559:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_561
.LBB0_560:                              #   in Loop: Header=BB0_558 Depth=3
	lui r7, 1024
	or r16, r6, r7
.LBB0_561:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r6, 4(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_563
# %bb.562:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_564
.LBB0_563:                              #   in Loop: Header=BB0_558 Depth=3
	lui r7, 1024
	or r19, r6, r7
.LBB0_564:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r6, 8(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_566
# %bb.565:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_567
.LBB0_566:                              #   in Loop: Header=BB0_558 Depth=3
	lui r7, 1024
	or r11, r6, r7
.LBB0_567:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r6, 12(r17)
	and r7, r6, r3
	and r14, r6, r15
	seteq r7, r7, r3
	setneq r14, r14, zero
	and r7, r7, r14
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_569
# %bb.568:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_570
.LBB0_569:                              #   in Loop: Header=BB0_558 Depth=3
	lui r7, 1024
	or r14, r6, r7
.LBB0_570:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r7, zero, .LBB0_572
# %bb.571:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_573
.LBB0_572:                              #   in Loop: Header=BB0_558 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_573:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r20, zero, .LBB0_575
# %bb.574:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_576
.LBB0_575:                              #   in Loop: Header=BB0_558 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_576:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	bneq r21, zero, .LBB0_578
# %bb.577:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_579
.LBB0_578:                              #   in Loop: Header=BB0_558 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_579:                              # %vector.body393
                                        #   in Loop: Header=BB0_558 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	beq r21, zero, .LBB0_556
# %bb.580:                              #   in Loop: Header=BB0_558 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	j .LBB0_557
.LBB0_581:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 802 7                         # parallel-rne.mlir:802:7
	mfence { sm }
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	addli r2, zero, 1
	bneq r12, r2, .LBB0_540
.LBB0_582:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	zext_int2long r[6:7], r2
	j .LBB0_584
.LBB0_583:                              # %middle.block386
                                        #   in Loop: Header=BB0_584 Depth=2
	.loc	1 836 9                         # parallel-rne.mlir:836:9
	load.d r[6:7], -296(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_617
.LBB0_584:                              # %.preheader102
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_594 Depth 3
                                        #       Child Loop BB0_587 Depth 3
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_591
# %bb.585:                              # %scalar.ph377.preheader
                                        #   in Loop: Header=BB0_584 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_587
.LBB0_586:                              # %scalar.ph377
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 849 13 is_stmt 1              # parallel-rne.mlir:849:13
	add.s r2, r28, r2
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 849 13                        # parallel-rne.mlir:849:13
	stores.w r11, 0(r2)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	beq r12, zero, .LBB0_583
.LBB0_587:                              # %scalar.ph377
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_584 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	and r11, r13, r15
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r11, zero, .LBB0_589
# %bb.588:                              # %scalar.ph377
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	beq r13, r3, .LBB0_586
	j .LBB0_590
.LBB0_589:                              #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	beq r13, r3, .LBB0_586
.LBB0_590:                              # %scalar.ph377
                                        #   in Loop: Header=BB0_587 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_586
.LBB0_591:                              # %vector.body379.preheader
                                        #   in Loop: Header=BB0_584 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_594
.LBB0_592:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r17, 28(r18)
.LBB0_593:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 849 13 is_stmt 1              # parallel-rne.mlir:849:13
	add.s r2, r28, r2
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 849 13                        # parallel-rne.mlir:849:13
	stores.w r14, 12(r2)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	seteq.d r14, r[12:13], r[22:23]
	.loc	1 849 13                        # parallel-rne.mlir:849:13
	stores.w r20, 24(r2)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r2)
	stores.w r19, 4(r2)
	stores.w r16, 0(r2)
	stores.w r17, 28(r2)
	stores.w r7, 20(r2)
	stores.w r6, 16(r2)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	bneq r14, zero, .LBB0_583
.LBB0_594:                              # %vector.body379
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_584 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r2, r6, 2
	add.s r17, r10, r2
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	add.s r18, r1, r2
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	loads.w r6, 0(r17)
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	and r7, r6, r3
	.loc	1 844 19                        # parallel-rne.mlir:844:19
	and r11, r6, r15
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	seteq r7, r7, r3
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	setneq r11, r11, zero
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	and r7, r7, r11
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r7, zero, .LBB0_596
# %bb.595:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_597
.LBB0_596:                              #   in Loop: Header=BB0_594 Depth=3
	lui r7, 1024
	or r16, r6, r7
.LBB0_597:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r6, 4(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r7, zero, .LBB0_599
# %bb.598:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_600
.LBB0_599:                              #   in Loop: Header=BB0_594 Depth=3
	lui r7, 1024
	or r19, r6, r7
.LBB0_600:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r6, 8(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r7, zero, .LBB0_602
# %bb.601:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_603
.LBB0_602:                              #   in Loop: Header=BB0_594 Depth=3
	lui r7, 1024
	or r11, r6, r7
.LBB0_603:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r6, 12(r17)
	and r7, r6, r3
	and r14, r6, r15
	seteq r7, r7, r3
	setneq r14, r14, zero
	and r7, r7, r14
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r7, zero, .LBB0_605
# %bb.604:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_606
.LBB0_605:                              #   in Loop: Header=BB0_594 Depth=3
	lui r7, 1024
	or r14, r6, r7
.LBB0_606:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r7, zero, .LBB0_608
# %bb.607:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_609
.LBB0_608:                              #   in Loop: Header=BB0_594 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_609:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r20, zero, .LBB0_611
# %bb.610:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_612
.LBB0_611:                              #   in Loop: Header=BB0_594 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_612:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	bneq r21, zero, .LBB0_614
# %bb.613:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_615
.LBB0_614:                              #   in Loop: Header=BB0_594 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_615:                              # %vector.body379
                                        #   in Loop: Header=BB0_594 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	beq r21, zero, .LBB0_592
# %bb.616:                              #   in Loop: Header=BB0_594 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	j .LBB0_593
.LBB0_617:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 828 7                         # parallel-rne.mlir:828:7
	mfence { sm }
	.loc	1 854 7                         # parallel-rne.mlir:854:7
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_541
.LBB0_618:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 16
	zext_int2long r[6:7], r2
	j .LBB0_620
.LBB0_619:                              # %middle.block372
                                        #   in Loop: Header=BB0_620 Depth=2
	.loc	1 862 9                         # parallel-rne.mlir:862:9
	load.d r[6:7], -288(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_653
.LBB0_620:                              # %.preheader101
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_630 Depth 3
                                        #       Child Loop BB0_623 Depth 3
	.loc	1 863 11                        # parallel-rne.mlir:863:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_627
# %bb.621:                              # %scalar.ph363.preheader
                                        #   in Loop: Header=BB0_620 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_623
.LBB0_622:                              # %scalar.ph363
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 863 11                        # parallel-rne.mlir:863:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 875 13 is_stmt 1              # parallel-rne.mlir:875:13
	add.s r2, r28, r2
	.loc	1 863 11                        # parallel-rne.mlir:863:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 875 13                        # parallel-rne.mlir:875:13
	stores.w r11, 0(r2)
	.loc	1 863 11                        # parallel-rne.mlir:863:11
	beq r12, zero, .LBB0_619
.LBB0_623:                              # %scalar.ph363
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_620 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	and r11, r13, r15
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r11, zero, .LBB0_625
# %bb.624:                              # %scalar.ph363
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	beq r13, r3, .LBB0_622
	j .LBB0_626
.LBB0_625:                              #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	beq r13, r3, .LBB0_622
.LBB0_626:                              # %scalar.ph363
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_622
.LBB0_627:                              # %vector.body365.preheader
                                        #   in Loop: Header=BB0_620 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_630
.LBB0_628:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r17, 28(r18)
.LBB0_629:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 875 13 is_stmt 1              # parallel-rne.mlir:875:13
	add.s r2, r28, r2
	.loc	1 863 11                        # parallel-rne.mlir:863:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 875 13                        # parallel-rne.mlir:875:13
	stores.w r14, 12(r2)
	.loc	1 863 11                        # parallel-rne.mlir:863:11
	seteq.d r14, r[12:13], r[22:23]
	.loc	1 875 13                        # parallel-rne.mlir:875:13
	stores.w r20, 24(r2)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r2)
	stores.w r19, 4(r2)
	stores.w r16, 0(r2)
	stores.w r17, 28(r2)
	stores.w r7, 20(r2)
	stores.w r6, 16(r2)
	.loc	1 863 11                        # parallel-rne.mlir:863:11
	bneq r14, zero, .LBB0_619
.LBB0_630:                              # %vector.body365
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_620 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r2, r6, 2
	add.s r17, r10, r2
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	add.s r18, r1, r2
	.loc	1 864 19                        # parallel-rne.mlir:864:19
	loads.w r6, 0(r17)
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	and r7, r6, r3
	.loc	1 870 19                        # parallel-rne.mlir:870:19
	and r11, r6, r15
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	seteq r7, r7, r3
	.loc	1 871 19                        # parallel-rne.mlir:871:19
	setneq r11, r11, zero
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	and r7, r7, r11
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r7, zero, .LBB0_632
# %bb.631:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_633
.LBB0_632:                              #   in Loop: Header=BB0_630 Depth=3
	lui r7, 1024
	or r16, r6, r7
.LBB0_633:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r6, 4(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r7, zero, .LBB0_635
# %bb.634:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_636
.LBB0_635:                              #   in Loop: Header=BB0_630 Depth=3
	lui r7, 1024
	or r19, r6, r7
.LBB0_636:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r6, 8(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r7, zero, .LBB0_638
# %bb.637:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_639
.LBB0_638:                              #   in Loop: Header=BB0_630 Depth=3
	lui r7, 1024
	or r11, r6, r7
.LBB0_639:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r6, 12(r17)
	and r7, r6, r3
	and r14, r6, r15
	seteq r7, r7, r3
	setneq r14, r14, zero
	and r7, r7, r14
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r7, zero, .LBB0_641
# %bb.640:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_630 Depth=3
	lui r7, 1024
	or r14, r6, r7
.LBB0_642:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r7, zero, .LBB0_644
# %bb.643:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_630 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_645:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r20, zero, .LBB0_647
# %bb.646:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_630 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_648:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	bneq r21, zero, .LBB0_650
# %bb.649:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_651
.LBB0_650:                              #   in Loop: Header=BB0_630 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_651:                              # %vector.body365
                                        #   in Loop: Header=BB0_630 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	beq r21, zero, .LBB0_628
# %bb.652:                              #   in Loop: Header=BB0_630 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	j .LBB0_629
.LBB0_653:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 854 7                         # parallel-rne.mlir:854:7
	mfence { sm }
	.loc	1 880 7                         # parallel-rne.mlir:880:7
	addli r2, zero, 3
	bneq r12, r2, .LBB0_542
.LBB0_654:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 24
	zext_int2long r[6:7], r2
	j .LBB0_656
.LBB0_655:                              # %middle.block358
                                        #   in Loop: Header=BB0_656 Depth=2
	.loc	1 888 9                         # parallel-rne.mlir:888:9
	load.d r[6:7], -280(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_689
.LBB0_656:                              # %.preheader100
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_666 Depth 3
                                        #       Child Loop BB0_659 Depth 3
	.loc	1 889 11                        # parallel-rne.mlir:889:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_663
# %bb.657:                              # %scalar.ph349.preheader
                                        #   in Loop: Header=BB0_656 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_659
.LBB0_658:                              # %scalar.ph349
                                        #   in Loop: Header=BB0_659 Depth=3
	.loc	1 889 11                        # parallel-rne.mlir:889:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 901 13 is_stmt 1              # parallel-rne.mlir:901:13
	add.s r2, r28, r2
	.loc	1 889 11                        # parallel-rne.mlir:889:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 901 13                        # parallel-rne.mlir:901:13
	stores.w r11, 0(r2)
	.loc	1 889 11                        # parallel-rne.mlir:889:11
	beq r12, zero, .LBB0_655
.LBB0_659:                              # %scalar.ph349
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_656 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 896 19                        # parallel-rne.mlir:896:19
	and r11, r13, r15
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r11, zero, .LBB0_661
# %bb.660:                              # %scalar.ph349
                                        #   in Loop: Header=BB0_659 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	beq r13, r3, .LBB0_658
	j .LBB0_662
.LBB0_661:                              #   in Loop: Header=BB0_659 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	beq r13, r3, .LBB0_658
.LBB0_662:                              # %scalar.ph349
                                        #   in Loop: Header=BB0_659 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_658
.LBB0_663:                              # %vector.body351.preheader
                                        #   in Loop: Header=BB0_656 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_666
.LBB0_664:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r17, 28(r18)
.LBB0_665:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 901 13 is_stmt 1              # parallel-rne.mlir:901:13
	add.s r2, r28, r2
	.loc	1 889 11                        # parallel-rne.mlir:889:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 901 13                        # parallel-rne.mlir:901:13
	stores.w r14, 12(r2)
	.loc	1 889 11                        # parallel-rne.mlir:889:11
	seteq.d r14, r[12:13], r[22:23]
	.loc	1 901 13                        # parallel-rne.mlir:901:13
	stores.w r20, 24(r2)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r2)
	stores.w r19, 4(r2)
	stores.w r16, 0(r2)
	stores.w r17, 28(r2)
	stores.w r7, 20(r2)
	stores.w r6, 16(r2)
	.loc	1 889 11                        # parallel-rne.mlir:889:11
	bneq r14, zero, .LBB0_655
.LBB0_666:                              # %vector.body351
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_656 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r2, r6, 2
	add.s r17, r10, r2
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	add.s r18, r1, r2
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	loads.w r6, 0(r17)
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	and r7, r6, r3
	.loc	1 896 19                        # parallel-rne.mlir:896:19
	and r11, r6, r15
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	seteq r7, r7, r3
	.loc	1 897 19                        # parallel-rne.mlir:897:19
	setneq r11, r11, zero
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	and r7, r7, r11
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r7, zero, .LBB0_668
# %bb.667:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_669
.LBB0_668:                              #   in Loop: Header=BB0_666 Depth=3
	lui r7, 1024
	or r16, r6, r7
.LBB0_669:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r6, 4(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r7, zero, .LBB0_671
# %bb.670:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_672
.LBB0_671:                              #   in Loop: Header=BB0_666 Depth=3
	lui r7, 1024
	or r19, r6, r7
.LBB0_672:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r6, 8(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r7, zero, .LBB0_674
# %bb.673:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_675
.LBB0_674:                              #   in Loop: Header=BB0_666 Depth=3
	lui r7, 1024
	or r11, r6, r7
.LBB0_675:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r6, 12(r17)
	and r7, r6, r3
	and r14, r6, r15
	seteq r7, r7, r3
	setneq r14, r14, zero
	and r7, r7, r14
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r7, zero, .LBB0_677
# %bb.676:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_678
.LBB0_677:                              #   in Loop: Header=BB0_666 Depth=3
	lui r7, 1024
	or r14, r6, r7
.LBB0_678:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r7, zero, .LBB0_680
# %bb.679:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_681
.LBB0_680:                              #   in Loop: Header=BB0_666 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_681:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r20, zero, .LBB0_683
# %bb.682:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_684
.LBB0_683:                              #   in Loop: Header=BB0_666 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_684:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	bneq r21, zero, .LBB0_686
# %bb.685:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_687
.LBB0_686:                              #   in Loop: Header=BB0_666 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_687:                              # %vector.body351
                                        #   in Loop: Header=BB0_666 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	beq r21, zero, .LBB0_664
# %bb.688:                              #   in Loop: Header=BB0_666 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	j .LBB0_665
.LBB0_689:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 880 7                         # parallel-rne.mlir:880:7
	mfence { sm }
	.loc	1 906 7                         # parallel-rne.mlir:906:7
	bneq r12, r13, .LBB0_543
.LBB0_690:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	zext_int2long r[6:7], r2
	j .LBB0_692
.LBB0_691:                              # %middle.block344
                                        #   in Loop: Header=BB0_692 Depth=2
	.loc	1 914 9                         # parallel-rne.mlir:914:9
	load.d r[6:7], -272(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_725
.LBB0_692:                              # %.preheader99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_702 Depth 3
                                        #       Child Loop BB0_695 Depth 3
	.loc	1 915 11                        # parallel-rne.mlir:915:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_699
# %bb.693:                              # %scalar.ph335.preheader
                                        #   in Loop: Header=BB0_692 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_695
.LBB0_694:                              # %scalar.ph335
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 915 11                        # parallel-rne.mlir:915:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 927 13 is_stmt 1              # parallel-rne.mlir:927:13
	add.s r2, r28, r2
	.loc	1 915 11                        # parallel-rne.mlir:915:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 927 13                        # parallel-rne.mlir:927:13
	stores.w r11, 0(r2)
	.loc	1 915 11                        # parallel-rne.mlir:915:11
	beq r12, zero, .LBB0_691
.LBB0_695:                              # %scalar.ph335
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_692 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	and r11, r13, r15
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r11, zero, .LBB0_697
# %bb.696:                              # %scalar.ph335
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	beq r13, r3, .LBB0_694
	j .LBB0_698
.LBB0_697:                              #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	beq r13, r3, .LBB0_694
.LBB0_698:                              # %scalar.ph335
                                        #   in Loop: Header=BB0_695 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_694
.LBB0_699:                              # %vector.body337.preheader
                                        #   in Loop: Header=BB0_692 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_702
.LBB0_700:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r17, 28(r18)
.LBB0_701:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 927 13 is_stmt 1              # parallel-rne.mlir:927:13
	add.s r2, r28, r2
	.loc	1 915 11                        # parallel-rne.mlir:915:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 927 13                        # parallel-rne.mlir:927:13
	stores.w r14, 12(r2)
	.loc	1 915 11                        # parallel-rne.mlir:915:11
	seteq.d r14, r[12:13], r[22:23]
	.loc	1 927 13                        # parallel-rne.mlir:927:13
	stores.w r20, 24(r2)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r2)
	stores.w r19, 4(r2)
	stores.w r16, 0(r2)
	stores.w r17, 28(r2)
	stores.w r7, 20(r2)
	stores.w r6, 16(r2)
	.loc	1 915 11                        # parallel-rne.mlir:915:11
	bneq r14, zero, .LBB0_691
.LBB0_702:                              # %vector.body337
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_692 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r2, r6, 2
	add.s r17, r10, r2
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	add.s r18, r1, r2
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	loads.w r6, 0(r17)
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	and r7, r6, r3
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	and r11, r6, r15
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	seteq r7, r7, r3
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	setneq r11, r11, zero
	.loc	1 924 19                        # parallel-rne.mlir:924:19
	and r7, r7, r11
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_704
# %bb.703:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_705
.LBB0_704:                              #   in Loop: Header=BB0_702 Depth=3
	lui r7, 1024
	or r16, r6, r7
.LBB0_705:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r6, 4(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_707
# %bb.706:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_708
.LBB0_707:                              #   in Loop: Header=BB0_702 Depth=3
	lui r7, 1024
	or r19, r6, r7
.LBB0_708:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r6, 8(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_710
# %bb.709:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_711
.LBB0_710:                              #   in Loop: Header=BB0_702 Depth=3
	lui r7, 1024
	or r11, r6, r7
.LBB0_711:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r6, 12(r17)
	and r7, r6, r3
	and r14, r6, r15
	seteq r7, r7, r3
	setneq r14, r14, zero
	and r7, r7, r14
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_713
# %bb.712:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_714
.LBB0_713:                              #   in Loop: Header=BB0_702 Depth=3
	lui r7, 1024
	or r14, r6, r7
.LBB0_714:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r7, zero, .LBB0_716
# %bb.715:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_717
.LBB0_716:                              #   in Loop: Header=BB0_702 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_717:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r20, zero, .LBB0_719
# %bb.718:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_720
.LBB0_719:                              #   in Loop: Header=BB0_702 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_720:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	bneq r21, zero, .LBB0_722
# %bb.721:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_723
.LBB0_722:                              #   in Loop: Header=BB0_702 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_723:                              # %vector.body337
                                        #   in Loop: Header=BB0_702 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	beq r21, zero, .LBB0_700
# %bb.724:                              #   in Loop: Header=BB0_702 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	j .LBB0_701
.LBB0_725:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 906 7                         # parallel-rne.mlir:906:7
	mfence { sm }
	.loc	1 932 7                         # parallel-rne.mlir:932:7
	addli r2, zero, 5
	bneq r12, r2, .LBB0_544
.LBB0_726:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 40
	zext_int2long r[6:7], r2
	j .LBB0_728
.LBB0_727:                              # %middle.block330
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 940 9                         # parallel-rne.mlir:940:9
	load.d r[6:7], -264(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_761
.LBB0_728:                              # %.preheader98
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_738 Depth 3
                                        #       Child Loop BB0_731 Depth 3
	.loc	1 941 11                        # parallel-rne.mlir:941:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_735
# %bb.729:                              # %scalar.ph321.preheader
                                        #   in Loop: Header=BB0_728 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_731
.LBB0_730:                              # %scalar.ph321
                                        #   in Loop: Header=BB0_731 Depth=3
	.loc	1 941 11                        # parallel-rne.mlir:941:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 953 13 is_stmt 1              # parallel-rne.mlir:953:13
	add.s r2, r28, r2
	.loc	1 941 11                        # parallel-rne.mlir:941:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 953 13                        # parallel-rne.mlir:953:13
	stores.w r11, 0(r2)
	.loc	1 941 11                        # parallel-rne.mlir:941:11
	beq r12, zero, .LBB0_727
.LBB0_731:                              # %scalar.ph321
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_728 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	and r11, r13, r15
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r11, zero, .LBB0_733
# %bb.732:                              # %scalar.ph321
                                        #   in Loop: Header=BB0_731 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	beq r13, r3, .LBB0_730
	j .LBB0_734
.LBB0_733:                              #   in Loop: Header=BB0_731 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	beq r13, r3, .LBB0_730
.LBB0_734:                              # %scalar.ph321
                                        #   in Loop: Header=BB0_731 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_730
.LBB0_735:                              # %vector.body323.preheader
                                        #   in Loop: Header=BB0_728 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_738
.LBB0_736:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r17, 28(r18)
.LBB0_737:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 953 13 is_stmt 1              # parallel-rne.mlir:953:13
	add.s r2, r28, r2
	.loc	1 941 11                        # parallel-rne.mlir:941:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 953 13                        # parallel-rne.mlir:953:13
	stores.w r14, 12(r2)
	.loc	1 941 11                        # parallel-rne.mlir:941:11
	seteq.d r14, r[12:13], r[22:23]
	.loc	1 953 13                        # parallel-rne.mlir:953:13
	stores.w r20, 24(r2)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r2)
	stores.w r19, 4(r2)
	stores.w r16, 0(r2)
	stores.w r17, 28(r2)
	stores.w r7, 20(r2)
	stores.w r6, 16(r2)
	.loc	1 941 11                        # parallel-rne.mlir:941:11
	bneq r14, zero, .LBB0_727
.LBB0_738:                              # %vector.body323
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_728 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r2, r6, 2
	add.s r17, r10, r2
	.loc	1 943 19                        # parallel-rne.mlir:943:19
	add.s r18, r1, r2
	.loc	1 942 19                        # parallel-rne.mlir:942:19
	loads.w r6, 0(r17)
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	and r7, r6, r3
	.loc	1 948 19                        # parallel-rne.mlir:948:19
	and r11, r6, r15
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	seteq r7, r7, r3
	.loc	1 949 19                        # parallel-rne.mlir:949:19
	setneq r11, r11, zero
	.loc	1 950 19                        # parallel-rne.mlir:950:19
	and r7, r7, r11
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r7, zero, .LBB0_740
# %bb.739:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_741
.LBB0_740:                              #   in Loop: Header=BB0_738 Depth=3
	lui r7, 1024
	or r16, r6, r7
.LBB0_741:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r6, 4(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r7, zero, .LBB0_743
# %bb.742:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_744
.LBB0_743:                              #   in Loop: Header=BB0_738 Depth=3
	lui r7, 1024
	or r19, r6, r7
.LBB0_744:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r6, 8(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r7, zero, .LBB0_746
# %bb.745:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_747
.LBB0_746:                              #   in Loop: Header=BB0_738 Depth=3
	lui r7, 1024
	or r11, r6, r7
.LBB0_747:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r6, 12(r17)
	and r7, r6, r3
	and r14, r6, r15
	seteq r7, r7, r3
	setneq r14, r14, zero
	and r7, r7, r14
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r7, zero, .LBB0_749
# %bb.748:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_750
.LBB0_749:                              #   in Loop: Header=BB0_738 Depth=3
	lui r7, 1024
	or r14, r6, r7
.LBB0_750:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r7, zero, .LBB0_752
# %bb.751:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_753
.LBB0_752:                              #   in Loop: Header=BB0_738 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_753:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r20, zero, .LBB0_755
# %bb.754:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_756
.LBB0_755:                              #   in Loop: Header=BB0_738 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_756:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	bneq r21, zero, .LBB0_758
# %bb.757:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_759
.LBB0_758:                              #   in Loop: Header=BB0_738 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_759:                              # %vector.body323
                                        #   in Loop: Header=BB0_738 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	beq r21, zero, .LBB0_736
# %bb.760:                              #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	j .LBB0_737
.LBB0_761:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 932 7                         # parallel-rne.mlir:932:7
	mfence { sm }
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	addli r2, zero, 6
	bneq r12, r2, .LBB0_545
.LBB0_762:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	zext_int2long r[6:7], r2
	j .LBB0_764
.LBB0_763:                              # %middle.block316
                                        #   in Loop: Header=BB0_764 Depth=2
	.loc	1 966 9                         # parallel-rne.mlir:966:9
	load.d r[6:7], -256(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_797
.LBB0_764:                              # %.preheader97
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_774 Depth 3
                                        #       Child Loop BB0_767 Depth 3
	.loc	1 967 11                        # parallel-rne.mlir:967:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_771
# %bb.765:                              # %scalar.ph307.preheader
                                        #   in Loop: Header=BB0_764 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_767
.LBB0_766:                              # %scalar.ph307
                                        #   in Loop: Header=BB0_767 Depth=3
	.loc	1 967 11                        # parallel-rne.mlir:967:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 979 13 is_stmt 1              # parallel-rne.mlir:979:13
	add.s r2, r28, r2
	.loc	1 967 11                        # parallel-rne.mlir:967:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 979 13                        # parallel-rne.mlir:979:13
	stores.w r11, 0(r2)
	.loc	1 967 11                        # parallel-rne.mlir:967:11
	beq r12, zero, .LBB0_763
.LBB0_767:                              # %scalar.ph307
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_764 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 974 19                        # parallel-rne.mlir:974:19
	and r11, r13, r15
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r11, zero, .LBB0_769
# %bb.768:                              # %scalar.ph307
                                        #   in Loop: Header=BB0_767 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	beq r13, r3, .LBB0_766
	j .LBB0_770
.LBB0_769:                              #   in Loop: Header=BB0_767 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	beq r13, r3, .LBB0_766
.LBB0_770:                              # %scalar.ph307
                                        #   in Loop: Header=BB0_767 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_766
.LBB0_771:                              # %vector.body309.preheader
                                        #   in Loop: Header=BB0_764 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_774
.LBB0_772:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r17, 28(r18)
.LBB0_773:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 979 13 is_stmt 1              # parallel-rne.mlir:979:13
	add.s r2, r28, r2
	.loc	1 967 11                        # parallel-rne.mlir:967:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 979 13                        # parallel-rne.mlir:979:13
	stores.w r14, 12(r2)
	.loc	1 967 11                        # parallel-rne.mlir:967:11
	seteq.d r14, r[12:13], r[22:23]
	.loc	1 979 13                        # parallel-rne.mlir:979:13
	stores.w r20, 24(r2)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r2)
	stores.w r19, 4(r2)
	stores.w r16, 0(r2)
	stores.w r17, 28(r2)
	stores.w r7, 20(r2)
	stores.w r6, 16(r2)
	.loc	1 967 11                        # parallel-rne.mlir:967:11
	bneq r14, zero, .LBB0_763
.LBB0_774:                              # %vector.body309
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_764 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r2, r6, 2
	add.s r17, r10, r2
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.s r18, r1, r2
	.loc	1 968 19                        # parallel-rne.mlir:968:19
	loads.w r6, 0(r17)
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	and r7, r6, r3
	.loc	1 974 19                        # parallel-rne.mlir:974:19
	and r11, r6, r15
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	seteq r7, r7, r3
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	setneq r11, r11, zero
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	and r7, r7, r11
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r7, zero, .LBB0_776
# %bb.775:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_777
.LBB0_776:                              #   in Loop: Header=BB0_774 Depth=3
	lui r7, 1024
	or r16, r6, r7
.LBB0_777:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r6, 4(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r7, zero, .LBB0_779
# %bb.778:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_780
.LBB0_779:                              #   in Loop: Header=BB0_774 Depth=3
	lui r7, 1024
	or r19, r6, r7
.LBB0_780:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r6, 8(r17)
	and r7, r6, r3
	and r11, r6, r15
	seteq r7, r7, r3
	setneq r11, r11, zero
	and r7, r7, r11
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r7, zero, .LBB0_782
# %bb.781:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_783
.LBB0_782:                              #   in Loop: Header=BB0_774 Depth=3
	lui r7, 1024
	or r11, r6, r7
.LBB0_783:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r6, 12(r17)
	and r7, r6, r3
	and r14, r6, r15
	seteq r7, r7, r3
	setneq r14, r14, zero
	and r7, r7, r14
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r7, zero, .LBB0_785
# %bb.784:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_786
.LBB0_785:                              #   in Loop: Header=BB0_774 Depth=3
	lui r7, 1024
	or r14, r6, r7
.LBB0_786:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r7, zero, .LBB0_788
# %bb.787:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_789
.LBB0_788:                              #   in Loop: Header=BB0_774 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_789:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r20, zero, .LBB0_791
# %bb.790:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_792
.LBB0_791:                              #   in Loop: Header=BB0_774 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_792:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	bneq r21, zero, .LBB0_794
# %bb.793:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_795
.LBB0_794:                              #   in Loop: Header=BB0_774 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_795:                              # %vector.body309
                                        #   in Loop: Header=BB0_774 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	beq r21, zero, .LBB0_772
# %bb.796:                              #   in Loop: Header=BB0_774 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	j .LBB0_773
.LBB0_797:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	mfence { sm }
	.loc	1 984 7                         # parallel-rne.mlir:984:7
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_834
.LBB0_798:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	addli r2, zero, 56
	zext_int2long r[6:7], r2
	j .LBB0_800
.LBB0_799:                              # %middle.block302
                                        #   in Loop: Header=BB0_800 Depth=2
	.loc	1 992 9                         # parallel-rne.mlir:992:9
	load.d r[6:7], -248(r30)                # 8-byte Folded Reload
	load.d r[8:9], -312(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_833
.LBB0_800:                              # %.preheader96
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_810 Depth 3
                                        #       Child Loop BB0_803 Depth 3
	.loc	1 993 11                        # parallel-rne.mlir:993:11
	loadli.w r2,  -316(r30)                 # 4-byte Folded Reload
	sll.d r[8:9], r[6:7], r11
	store.d r[6:7], -312(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_807
# %bb.801:                              # %scalar.ph293.preheader
                                        #   in Loop: Header=BB0_800 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_803
.LBB0_802:                              # %scalar.ph293
                                        #   in Loop: Header=BB0_803 Depth=3
	.loc	1 993 11                        # parallel-rne.mlir:993:11
	setlt.ul r12, r[6:7], r[4:5]
	.loc	1 1005 13 is_stmt 1             # parallel-rne.mlir:1005:13
	add.s r2, r28, r2
	.loc	1 993 11                        # parallel-rne.mlir:993:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1005 13                       # parallel-rne.mlir:1005:13
	stores.w r11, 0(r2)
	.loc	1 993 11                        # parallel-rne.mlir:993:11
	beq r12, zero, .LBB0_799
.LBB0_803:                              # %scalar.ph293
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_800 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	add.ul r[11:12], r[6:7], r[8:9]
	slli r2, r11, 2
	add.s r11, r10, r2
	loads.w r13, 0(r11)
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	add.s r11, r1, r2
	loads.w r12, 0(r11)
	.loc	1 1000 19                       # parallel-rne.mlir:1000:19
	and r11, r13, r15
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r11, zero, .LBB0_805
# %bb.804:                              # %scalar.ph293
                                        #   in Loop: Header=BB0_803 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r12, 0
	and r13, r13, r3
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	beq r13, r3, .LBB0_802
	j .LBB0_806
.LBB0_805:                              #   in Loop: Header=BB0_803 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r13, r11
	and r13, r13, r3
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	beq r13, r3, .LBB0_802
.LBB0_806:                              # %scalar.ph293
                                        #   in Loop: Header=BB0_803 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_802
.LBB0_807:                              # %vector.body295.preheader
                                        #   in Loop: Header=BB0_800 Depth=2
	zext_int2long r[12:13], zero
	j .LBB0_810
.LBB0_808:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r17, 28(r18)
.LBB0_809:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 1005 13 is_stmt 1             # parallel-rne.mlir:1005:13
	add.s r14, r28, r14
	.loc	1 993 11                        # parallel-rne.mlir:993:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 1005 13                       # parallel-rne.mlir:1005:13
	stores.w r2, 12(r14)
	.loc	1 993 11                        # parallel-rne.mlir:993:11
	seteq.d r2, r[12:13], r[22:23]
	.loc	1 1005 13                       # parallel-rne.mlir:1005:13
	stores.w r20, 24(r14)
	loadli.w r20,  -232(r30)                # 4-byte Folded Reload
	stores.w r11, 8(r14)
	stores.w r19, 4(r14)
	stores.w r16, 0(r14)
	stores.w r17, 28(r14)
	stores.w r7, 20(r14)
	stores.w r6, 16(r14)
	.loc	1 993 11                        # parallel-rne.mlir:993:11
	bneq r2, zero, .LBB0_799
.LBB0_810:                              # %vector.body295
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_800 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	add.ul r[6:7], r[12:13], r[8:9]
	slli r14, r6, 2
	add.s r17, r10, r14
	.loc	1 995 19                        # parallel-rne.mlir:995:19
	add.s r18, r1, r14
	.loc	1 994 19                        # parallel-rne.mlir:994:19
	loads.w r2, 0(r17)
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	and r6, r2, r3
	.loc	1 1000 19                       # parallel-rne.mlir:1000:19
	and r7, r2, r15
	.loc	1 999 19                        # parallel-rne.mlir:999:19
	seteq r6, r6, r3
	.loc	1 1001 19                       # parallel-rne.mlir:1001:19
	setneq r7, r7, zero
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	and r6, r6, r7
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r6, zero, .LBB0_812
# %bb.811:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r16, 0(r18)
	j .LBB0_813
.LBB0_812:                              #   in Loop: Header=BB0_810 Depth=3
	lui r6, 1024
	or r16, r2, r6
.LBB0_813:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r2, 4(r17)
	and r6, r2, r3
	and r7, r2, r15
	seteq r6, r6, r3
	setneq r7, r7, zero
	and r6, r6, r7
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r6, zero, .LBB0_815
# %bb.814:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
	j .LBB0_816
.LBB0_815:                              #   in Loop: Header=BB0_810 Depth=3
	lui r6, 1024
	or r19, r2, r6
.LBB0_816:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r2, 8(r17)
	and r6, r2, r3
	and r7, r2, r15
	seteq r6, r6, r3
	setneq r7, r7, zero
	and r6, r6, r7
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r6, zero, .LBB0_818
# %bb.817:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r18)
	j .LBB0_819
.LBB0_818:                              #   in Loop: Header=BB0_810 Depth=3
	lui r6, 1024
	or r11, r2, r6
.LBB0_819:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r2, 12(r17)
	and r6, r2, r3
	and r7, r2, r15
	seteq r6, r6, r3
	setneq r7, r7, zero
	and r6, r6, r7
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r6, zero, .LBB0_821
# %bb.820:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r18)
	j .LBB0_822
.LBB0_821:                              #   in Loop: Header=BB0_810 Depth=3
	lui r6, 1024
	or r2, r2, r6
.LBB0_822:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r6, 16(r17)
	and r7, r6, r3
	and r20, r6, r15
	seteq r7, r7, r3
	setneq r20, r20, zero
	and r7, r7, r20
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r7, zero, .LBB0_824
# %bb.823:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 16(r18)
	j .LBB0_825
.LBB0_824:                              #   in Loop: Header=BB0_810 Depth=3
	lui r7, 1024
	or r6, r6, r7
.LBB0_825:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r7, 20(r17)
	and r20, r7, r3
	and r21, r7, r15
	seteq r20, r20, r3
	setneq r21, r21, zero
	and r20, r20, r21
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r20, zero, .LBB0_827
# %bb.826:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r18)
	j .LBB0_828
.LBB0_827:                              #   in Loop: Header=BB0_810 Depth=3
	lui r20, 1024
	or r7, r7, r20
.LBB0_828:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r20, 24(r17)
	and r21, r20, r3
	and r24, r20, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	bneq r21, zero, .LBB0_830
# %bb.829:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r18)
	j .LBB0_831
.LBB0_830:                              #   in Loop: Header=BB0_810 Depth=3
	lui r21, 1024
	or r20, r20, r21
.LBB0_831:                              # %vector.body295
                                        #   in Loop: Header=BB0_810 Depth=3
	loads.w r17, 28(r17)
	and r21, r17, r3
	and r24, r17, r15
	seteq r21, r21, r3
	setneq r24, r24, zero
	and r21, r21, r24
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	beq r21, zero, .LBB0_808
# %bb.832:                              #   in Loop: Header=BB0_810 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r17, r17, r18
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	j .LBB0_809
.LBB0_833:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 984 7                         # parallel-rne.mlir:984:7
	mfence { sm }
.LBB0_834:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	addli r2, zero, 255
	addli r7, zero, 3
	csr_set csr5, r2
	sync_core
	.loc	1 1011 7                        # parallel-rne.mlir:1011:7
	bneq r12, r7, .LBB0_836
# %bb.835:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, zero, 27
	.loc	1 1012 7 is_stmt 1              # parallel-rne.mlir:1012:7
	addli r2, zero, 34
	.loc	1 1011 7                        # parallel-rne.mlir:1011:7
	xsignal r8, 0
	.loc	1 1012 7                        # parallel-rne.mlir:1012:7
	xsignal r2, 0
	.loc	1 1013 7                        # parallel-rne.mlir:1013:7
	addli r2, zero, 35
	xsignal r2, 0
	.loc	1 1016 13                       # parallel-rne.mlir:1016:13
	loadli.w r2,  -16(r30)
	mod.s r6, r2, r7
	addli r2, r2, 1
	storeli.w r2, -16(r30)
	.loc	1 1019 7                        # parallel-rne.mlir:1019:7
	addli r2, zero, 17
	xwait r2, 0
	.loc	1 1020 7                        # parallel-rne.mlir:1020:7
	xwait r8, 0
	.loc	1 1016 13                       # parallel-rne.mlir:1016:13
	slli r2, r6, 15
	loadli.w r6,  -424(r30)                 # 4-byte Folded Reload
	add.s r10, r2, r6
	.loc	1 1021 7                        # parallel-rne.mlir:1021:7
	addli r2, zero, 36
	xwait r2, 0
	.loc	1 1022 7                        # parallel-rne.mlir:1022:7
	addli r2, zero, 38
	xwait r2, 0
	j .LBB0_839
.LBB0_836:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	addli r2, zero, 5
	bneq r12, r2, .LBB0_838
# %bb.837:                              # %.thread87
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 35
	addli r8, zero, 2
	addli r9, zero, 2047
	xwait r2, 0
	lock zero, r8
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, zero, 19
	dsmadd r28, r28, r28, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 1016 13                       # parallel-rne.mlir:1016:13
	loadli.w r2,  -16(r30)
	addli r6, r2, 1
	mod.s r2, r2, r7
	storeli.w r6, -16(r30)
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	addli r6, zero, 16
	xwait r6, 0
	addli r6, zero, 39
	xwait r6, 0
	lock zero, r8
	lui r6, 258048
	.loc	1 1016 13                       # parallel-rne.mlir:1016:13
	slli r2, r2, 15
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	.loc	1 1016 13                       # parallel-rne.mlir:1016:13
	loadli.w r6,  -424(r30)                 # 4-byte Folded Reload
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	ew_cfg zero, r9, zero, 2
	ew_cfg r13, zero, zero, 3
	ew_cfg r13, r13, r13, 19
	.loc	1 1016 13                       # parallel-rne.mlir:1016:13
	add.s r10, r2, r6
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	addli r2, zero, 15
	dsmul r10, r20, r28, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r2, 0
	addli r2, zero, 36
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r2, 0
	.loc	1 1019 7                        # parallel-rne.mlir:1019:7
	j .LBB0_839
.LBB0_838:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1016 13                       # parallel-rne.mlir:1016:13
	loadli.w r2,  -16(r30)
	mod.s r6, r2, r7
	loadli.w r7,  -424(r30)                 # 4-byte Folded Reload
	addli r2, r2, 1
	storeli.w r2, -16(r30)
	slli r6, r6, 15
	add.s r10, r6, r7
.LBB0_839:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	seteq r2, r1, r28
	.loc	1 1024 7 is_stmt 1              # parallel-rne.mlir:1024:7
	storeli.w r2, -316(r30)                 # 4-byte Folded Spill
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	addli r2, zero, 255
	.loc	1 1024 7                        # parallel-rne.mlir:1024:7
	xfence
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	mfence { lm, sm, gm }
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	csr_set csr5, r2
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	sub.s r2, r1, r2
	storeli.w r2, -328(r30)                 # 4-byte Folded Spill
	sub.s r2, r1, r10
	storeli.w r2, -332(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	beq r12, zero, .LBB0_846
# %bb.840:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1063 7                        # parallel-rne.mlir:1063:7
	addli r2, zero, 1
	beq r12, r2, .LBB0_872
.LBB0_841:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1099 7                        # parallel-rne.mlir:1099:7
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_898
.LBB0_842:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1135 7                        # parallel-rne.mlir:1135:7
	addli r2, zero, 3
	beq r12, r2, .LBB0_924
.LBB0_843:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	beq r12, r13, .LBB0_950
.LBB0_844:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1207 7                        # parallel-rne.mlir:1207:7
	addli r2, zero, 5
	beq r12, r2, .LBB0_976
.LBB0_845:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1243 7                        # parallel-rne.mlir:1243:7
	addli r2, zero, 6
	beq r12, r2, .LBB0_1002
	j .LBB0_1028
.LBB0_846:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1027 7 is_stmt 1              # parallel-rne.mlir:1027:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	zext_int2long r[6:7], zero
	storeli.w r2, -312(r30)                 # 4-byte Folded Spill
	j .LBB0_848
.LBB0_847:                              # %middle.block288
                                        #   in Loop: Header=BB0_848 Depth=2
	.loc	1 1035 9                        # parallel-rne.mlir:1035:9
	load.d r[6:7], -304(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_871
.LBB0_848:                              # %.preheader95
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_863 Depth 3
                                        #       Child Loop BB0_850 Depth 3
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	loadli.w r2,  -312(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[6:7], r11
	zext_int2long r[16:17], zero
	store.d r[6:7], -232(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_850
	j .LBB0_863
.LBB0_849:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	setlt.ul r6, r[16:17], r[4:5]
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	add.s r2, r1, r2
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	stores.w r9, 0(r2)
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	beq r6, zero, .LBB0_847
.LBB0_850:                              # %scalar.ph280
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_848 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	lui r18, 523264
	slli r2, r6, 2
	.loc	1 1038 19                       # parallel-rne.mlir:1038:19
	add.s r6, r28, r2
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	add.s r7, r10, r2
	.loc	1 1038 19                       # parallel-rne.mlir:1038:19
	loads.w r6, 0(r6)
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	loads.w r19, 0(r7)
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	and r11, r6, r27
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	beq r11, r3, .LBB0_852
# %bb.851:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_852:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r2
	loads.w r6, 0(r6)
	and r14, r6, r27
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r14, zero, .LBB0_860
# %bb.853:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r11, zero, .LBB0_861
.LBB0_854:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	beq r14, r3, .LBB0_856
.LBB0_855:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_856:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	setlt.u r6, r3, r11
	lui r11, 523264
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r6, zero, .LBB0_858
# %bb.857:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r19, 0
.LBB0_858:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	setlt.u r6, r3, r14
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r6, zero, .LBB0_849
# %bb.859:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r11, 0
	j .LBB0_849
.LBB0_860:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	beq r11, zero, .LBB0_854
.LBB0_861:                              # %scalar.ph280
                                        #   in Loop: Header=BB0_850 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r14, r3, .LBB0_855
	j .LBB0_856
.LBB0_862:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 1036 11 is_stmt 1             # parallel-rne.mlir:1036:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	add.s r6, r1, r9
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r21, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	bneq r2, zero, .LBB0_847
.LBB0_863:                              # %vector.body282
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_848 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	add.ul r[18:19], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r19, r2, r9
	.loc	1 1038 19                       # parallel-rne.mlir:1038:19
	add.s r2, r28, r9
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	loads.w r11, 0(r19)
	.loc	1 1038 19                       # parallel-rne.mlir:1038:19
	loads.w r14, 0(r2)
	.loc	1 1044 19                       # parallel-rne.mlir:1044:19
	and r11, r11, r27
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	and r14, r14, r27
	.loc	1 1045 19                       # parallel-rne.mlir:1045:19
	seteq r18, r11, r3
	.loc	1 1049 19                       # parallel-rne.mlir:1049:19
	seteq r24, r11, zero
	.loc	1 1046 19                       # parallel-rne.mlir:1046:19
	seteq r20, r14, zero
	.loc	1 1048 19                       # parallel-rne.mlir:1048:19
	seteq r21, r14, r3
	.loc	1 1054 20                       # parallel-rne.mlir:1054:20
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	.loc	1 1047 19                       # parallel-rne.mlir:1047:19
	and r14, r18, r20
	.loc	1 1050 19                       # parallel-rne.mlir:1050:19
	and r18, r24, r21
	.loc	1 1051 20                       # parallel-rne.mlir:1051:20
	or r18, r14, r18
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	add.s r14, r10, r9
	.loc	1 1055 20                       # parallel-rne.mlir:1055:20
	or r20, r11, r18
	lui r18, 523264
	lui r11, 523264
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r20, zero, .LBB0_865
# %bb.864:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_865:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r20, 4(r19)
	loads.w r21, 4(r2)
	and r20, r20, r27
	and r21, r21, r27
	seteq r24, r20, r3
	seteq r26, r21, zero
	seteq r6, r21, r3
	seteq r7, r20, zero
	max.u r8, r20, r21
	lui r21, 523264
	setlt.u r8, r3, r8
	and r20, r24, r26
	and r6, r7, r6
	or r6, r20, r6
	or r6, r8, r6
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r6, zero, .LBB0_867
# %bb.866:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r21, 4(r14)
.LBB0_867:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r6, 8(r19)
	loads.w r7, 8(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	lui r20, 523264
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r6, zero, .LBB0_869
# %bb.868:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r14)
.LBB0_869:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r6, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r6, r6, r27
	and r2, r2, r27
	seteq r7, r6, r3
	seteq r8, r2, zero
	seteq r19, r2, r3
	seteq r24, r6, zero
	max.u r2, r6, r2
	setlt.u r2, r3, r2
	and r6, r7, r8
	and r7, r24, r19
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 1056 20                       # parallel-rne.mlir:1056:20
	bneq r2, zero, .LBB0_862
# %bb.870:                              # %vector.body282
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_862
.LBB0_871:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	mfence { sm }
	.loc	1 1063 7                        # parallel-rne.mlir:1063:7
	addli r2, zero, 1
	bneq r12, r2, .LBB0_841
.LBB0_872:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1063 7                        # parallel-rne.mlir:1063:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 8
	zext_int2long r[7:8], r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -304(r30)                 # 4-byte Folded Spill
	j .LBB0_874
.LBB0_873:                              # %middle.block273
                                        #   in Loop: Header=BB0_874 Depth=2
	.loc	1 1071 9 is_stmt 1              # parallel-rne.mlir:1071:9
	load.d r[6:7], -296(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_897
.LBB0_874:                              # %.preheader94
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_889 Depth 3
                                        #       Child Loop BB0_876 Depth 3
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	loadli.w r2,  -304(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[7:8], r11
	zext_int2long r[16:17], zero
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_876
	j .LBB0_889
.LBB0_875:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	setlt.ul r6, r[16:17], r[4:5]
	.loc	1 1094 13                       # parallel-rne.mlir:1094:13
	add.s r2, r1, r2
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 1094 13                       # parallel-rne.mlir:1094:13
	stores.w r9, 0(r2)
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	beq r6, zero, .LBB0_873
.LBB0_876:                              # %scalar.ph265
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_874 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	lui r18, 523264
	slli r2, r6, 2
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	add.s r6, r28, r2
	.loc	1 1075 19                       # parallel-rne.mlir:1075:19
	add.s r7, r10, r2
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	loads.w r6, 0(r6)
	.loc	1 1075 19                       # parallel-rne.mlir:1075:19
	loads.w r19, 0(r7)
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	and r11, r6, r27
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	beq r11, r3, .LBB0_878
# %bb.877:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_878:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r2
	loads.w r6, 0(r6)
	and r14, r6, r27
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r14, zero, .LBB0_886
# %bb.879:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r11, zero, .LBB0_887
.LBB0_880:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	beq r14, r3, .LBB0_882
.LBB0_881:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_882:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	setlt.u r6, r3, r11
	lui r11, 523264
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r6, zero, .LBB0_884
# %bb.883:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r19, 0
.LBB0_884:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	setlt.u r6, r3, r14
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r6, zero, .LBB0_875
# %bb.885:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r11, 0
	j .LBB0_875
.LBB0_886:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	beq r11, zero, .LBB0_880
.LBB0_887:                              # %scalar.ph265
                                        #   in Loop: Header=BB0_876 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r14, r3, .LBB0_881
	j .LBB0_882
.LBB0_888:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 1072 11 is_stmt 1             # parallel-rne.mlir:1072:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1094 13                       # parallel-rne.mlir:1094:13
	add.s r6, r1, r9
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1094 13                       # parallel-rne.mlir:1094:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r21, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	bneq r2, zero, .LBB0_873
.LBB0_889:                              # %vector.body267
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_874 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	add.ul r[18:19], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r19, r2, r9
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	add.s r2, r28, r9
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	loads.w r11, 0(r19)
	.loc	1 1074 19                       # parallel-rne.mlir:1074:19
	loads.w r14, 0(r2)
	.loc	1 1080 19                       # parallel-rne.mlir:1080:19
	and r11, r11, r27
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	and r14, r14, r27
	.loc	1 1081 19                       # parallel-rne.mlir:1081:19
	seteq r18, r11, r3
	.loc	1 1085 19                       # parallel-rne.mlir:1085:19
	seteq r24, r11, zero
	.loc	1 1082 19                       # parallel-rne.mlir:1082:19
	seteq r20, r14, zero
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	seteq r21, r14, r3
	.loc	1 1090 20                       # parallel-rne.mlir:1090:20
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	.loc	1 1083 19                       # parallel-rne.mlir:1083:19
	and r14, r18, r20
	.loc	1 1086 19                       # parallel-rne.mlir:1086:19
	and r18, r24, r21
	.loc	1 1087 20                       # parallel-rne.mlir:1087:20
	or r18, r14, r18
	.loc	1 1075 19                       # parallel-rne.mlir:1075:19
	add.s r14, r10, r9
	.loc	1 1091 20                       # parallel-rne.mlir:1091:20
	or r20, r11, r18
	lui r18, 523264
	lui r11, 523264
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r20, zero, .LBB0_891
# %bb.890:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_891:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r20, 4(r19)
	loads.w r21, 4(r2)
	and r20, r20, r27
	and r21, r21, r27
	seteq r24, r20, r3
	seteq r26, r21, zero
	seteq r8, r21, r3
	seteq r6, r20, zero
	max.u r7, r20, r21
	lui r21, 523264
	setlt.u r7, r3, r7
	and r20, r24, r26
	and r6, r6, r8
	or r6, r20, r6
	or r6, r7, r6
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r6, zero, .LBB0_893
# %bb.892:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r21, 4(r14)
.LBB0_893:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r6, 8(r19)
	loads.w r7, 8(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	lui r20, 523264
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r6, zero, .LBB0_895
# %bb.894:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r14)
.LBB0_895:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r6, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r6, r6, r27
	and r2, r2, r27
	seteq r7, r6, r3
	seteq r8, r2, zero
	seteq r19, r2, r3
	seteq r24, r6, zero
	max.u r2, r6, r2
	setlt.u r2, r3, r2
	and r6, r7, r8
	and r7, r24, r19
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 1092 20                       # parallel-rne.mlir:1092:20
	bneq r2, zero, .LBB0_888
# %bb.896:                              # %vector.body267
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_888
.LBB0_897:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 1063 7                        # parallel-rne.mlir:1063:7
	mfence { sm }
	.loc	1 1099 7                        # parallel-rne.mlir:1099:7
	loadli.w r2,  -324(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_842
.LBB0_898:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1099 7                        # parallel-rne.mlir:1099:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	zext_int2long r[7:8], r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -296(r30)                 # 4-byte Folded Spill
	j .LBB0_900
.LBB0_899:                              # %middle.block258
                                        #   in Loop: Header=BB0_900 Depth=2
	.loc	1 1107 9 is_stmt 1              # parallel-rne.mlir:1107:9
	load.d r[6:7], -288(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_923
.LBB0_900:                              # %.preheader93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_915 Depth 3
                                        #       Child Loop BB0_902 Depth 3
	.loc	1 1108 11                       # parallel-rne.mlir:1108:11
	loadli.w r2,  -296(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[7:8], r11
	zext_int2long r[16:17], zero
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_902
	j .LBB0_915
.LBB0_901:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	setlt.ul r6, r[16:17], r[4:5]
	.loc	1 1130 13                       # parallel-rne.mlir:1130:13
	add.s r2, r1, r2
	.loc	1 1108 11                       # parallel-rne.mlir:1108:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 1130 13                       # parallel-rne.mlir:1130:13
	stores.w r9, 0(r2)
	.loc	1 1108 11                       # parallel-rne.mlir:1108:11
	beq r6, zero, .LBB0_899
.LBB0_902:                              # %scalar.ph250
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_900 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	lui r18, 523264
	slli r2, r6, 2
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	add.s r6, r28, r2
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	add.s r7, r10, r2
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	loads.w r6, 0(r6)
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	loads.w r19, 0(r7)
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	and r11, r6, r27
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	beq r11, r3, .LBB0_904
# %bb.903:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_904:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r2
	loads.w r6, 0(r6)
	and r14, r6, r27
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r14, zero, .LBB0_912
# %bb.905:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r11, zero, .LBB0_913
.LBB0_906:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	beq r14, r3, .LBB0_908
.LBB0_907:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_908:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	setlt.u r6, r3, r11
	lui r11, 523264
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r6, zero, .LBB0_910
# %bb.909:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r19, 0
.LBB0_910:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	setlt.u r6, r3, r14
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r6, zero, .LBB0_901
# %bb.911:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r11, 0
	j .LBB0_901
.LBB0_912:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	beq r11, zero, .LBB0_906
.LBB0_913:                              # %scalar.ph250
                                        #   in Loop: Header=BB0_902 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r14, r3, .LBB0_907
	j .LBB0_908
.LBB0_914:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 1108 11 is_stmt 1             # parallel-rne.mlir:1108:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1130 13                       # parallel-rne.mlir:1130:13
	add.s r6, r1, r9
	.loc	1 1108 11                       # parallel-rne.mlir:1108:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1130 13                       # parallel-rne.mlir:1130:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r21, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1108 11                       # parallel-rne.mlir:1108:11
	bneq r2, zero, .LBB0_899
.LBB0_915:                              # %vector.body252
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_900 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	add.ul r[18:19], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r19, r2, r9
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	add.s r2, r28, r9
	.loc	1 1109 19                       # parallel-rne.mlir:1109:19
	loads.w r11, 0(r19)
	.loc	1 1110 19                       # parallel-rne.mlir:1110:19
	loads.w r14, 0(r2)
	.loc	1 1116 19                       # parallel-rne.mlir:1116:19
	and r11, r11, r27
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	and r14, r14, r27
	.loc	1 1117 19                       # parallel-rne.mlir:1117:19
	seteq r18, r11, r3
	.loc	1 1121 19                       # parallel-rne.mlir:1121:19
	seteq r24, r11, zero
	.loc	1 1118 19                       # parallel-rne.mlir:1118:19
	seteq r20, r14, zero
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	seteq r21, r14, r3
	.loc	1 1126 20                       # parallel-rne.mlir:1126:20
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	.loc	1 1119 19                       # parallel-rne.mlir:1119:19
	and r14, r18, r20
	.loc	1 1122 19                       # parallel-rne.mlir:1122:19
	and r18, r24, r21
	.loc	1 1123 20                       # parallel-rne.mlir:1123:20
	or r18, r14, r18
	.loc	1 1111 19                       # parallel-rne.mlir:1111:19
	add.s r14, r10, r9
	.loc	1 1127 20                       # parallel-rne.mlir:1127:20
	or r20, r11, r18
	lui r18, 523264
	lui r11, 523264
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r20, zero, .LBB0_917
# %bb.916:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_917:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	loads.w r20, 4(r19)
	loads.w r21, 4(r2)
	and r20, r20, r27
	and r21, r21, r27
	seteq r24, r20, r3
	seteq r26, r21, zero
	seteq r8, r21, r3
	seteq r6, r20, zero
	max.u r7, r20, r21
	lui r21, 523264
	setlt.u r7, r3, r7
	and r20, r24, r26
	and r6, r6, r8
	or r6, r20, r6
	or r6, r7, r6
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r6, zero, .LBB0_919
# %bb.918:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r21, 4(r14)
.LBB0_919:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	loads.w r6, 8(r19)
	loads.w r7, 8(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	lui r20, 523264
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r6, zero, .LBB0_921
# %bb.920:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r14)
.LBB0_921:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	loads.w r6, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r6, r6, r27
	and r2, r2, r27
	seteq r7, r6, r3
	seteq r8, r2, zero
	seteq r19, r2, r3
	seteq r24, r6, zero
	max.u r2, r6, r2
	setlt.u r2, r3, r2
	and r6, r7, r8
	and r7, r24, r19
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 1128 20                       # parallel-rne.mlir:1128:20
	bneq r2, zero, .LBB0_914
# %bb.922:                              # %vector.body252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_914
.LBB0_923:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 1099 7                        # parallel-rne.mlir:1099:7
	mfence { sm }
	.loc	1 1135 7                        # parallel-rne.mlir:1135:7
	addli r2, zero, 3
	bneq r12, r2, .LBB0_843
.LBB0_924:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1135 7                        # parallel-rne.mlir:1135:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 24
	zext_int2long r[7:8], r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -288(r30)                 # 4-byte Folded Spill
	j .LBB0_926
.LBB0_925:                              # %middle.block243
                                        #   in Loop: Header=BB0_926 Depth=2
	.loc	1 1143 9 is_stmt 1              # parallel-rne.mlir:1143:9
	load.d r[6:7], -280(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_949
.LBB0_926:                              # %.preheader92
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_941 Depth 3
                                        #       Child Loop BB0_928 Depth 3
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	loadli.w r2,  -288(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[7:8], r11
	zext_int2long r[16:17], zero
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_928
	j .LBB0_941
.LBB0_927:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	setlt.ul r6, r[16:17], r[4:5]
	.loc	1 1166 13                       # parallel-rne.mlir:1166:13
	add.s r2, r1, r2
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 1166 13                       # parallel-rne.mlir:1166:13
	stores.w r9, 0(r2)
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	beq r6, zero, .LBB0_925
.LBB0_928:                              # %scalar.ph235
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_926 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	lui r18, 523264
	slli r2, r6, 2
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	add.s r6, r28, r2
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	add.s r7, r10, r2
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	loads.w r6, 0(r6)
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	loads.w r19, 0(r7)
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	and r11, r6, r27
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	beq r11, r3, .LBB0_930
# %bb.929:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_930:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r2
	loads.w r6, 0(r6)
	and r14, r6, r27
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r14, zero, .LBB0_938
# %bb.931:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r11, zero, .LBB0_939
.LBB0_932:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	beq r14, r3, .LBB0_934
.LBB0_933:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_934:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	setlt.u r6, r3, r11
	lui r11, 523264
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r6, zero, .LBB0_936
# %bb.935:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r19, 0
.LBB0_936:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	setlt.u r6, r3, r14
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r6, zero, .LBB0_927
# %bb.937:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r11, 0
	j .LBB0_927
.LBB0_938:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	beq r11, zero, .LBB0_932
.LBB0_939:                              # %scalar.ph235
                                        #   in Loop: Header=BB0_928 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r14, r3, .LBB0_933
	j .LBB0_934
.LBB0_940:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 1144 11 is_stmt 1             # parallel-rne.mlir:1144:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1166 13                       # parallel-rne.mlir:1166:13
	add.s r6, r1, r9
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1166 13                       # parallel-rne.mlir:1166:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r21, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	bneq r2, zero, .LBB0_925
.LBB0_941:                              # %vector.body237
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_926 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	add.ul r[18:19], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r19, r2, r9
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	add.s r2, r28, r9
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	loads.w r11, 0(r19)
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	loads.w r14, 0(r2)
	.loc	1 1152 19                       # parallel-rne.mlir:1152:19
	and r11, r11, r27
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	and r14, r14, r27
	.loc	1 1153 19                       # parallel-rne.mlir:1153:19
	seteq r18, r11, r3
	.loc	1 1157 19                       # parallel-rne.mlir:1157:19
	seteq r24, r11, zero
	.loc	1 1154 19                       # parallel-rne.mlir:1154:19
	seteq r20, r14, zero
	.loc	1 1156 19                       # parallel-rne.mlir:1156:19
	seteq r21, r14, r3
	.loc	1 1162 20                       # parallel-rne.mlir:1162:20
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	.loc	1 1155 19                       # parallel-rne.mlir:1155:19
	and r14, r18, r20
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	and r18, r24, r21
	.loc	1 1159 20                       # parallel-rne.mlir:1159:20
	or r18, r14, r18
	.loc	1 1147 19                       # parallel-rne.mlir:1147:19
	add.s r14, r10, r9
	.loc	1 1163 20                       # parallel-rne.mlir:1163:20
	or r20, r11, r18
	lui r18, 523264
	lui r11, 523264
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r20, zero, .LBB0_943
# %bb.942:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_943:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	loads.w r20, 4(r19)
	loads.w r21, 4(r2)
	and r20, r20, r27
	and r21, r21, r27
	seteq r24, r20, r3
	seteq r26, r21, zero
	seteq r8, r21, r3
	seteq r6, r20, zero
	max.u r7, r20, r21
	lui r21, 523264
	setlt.u r7, r3, r7
	and r20, r24, r26
	and r6, r6, r8
	or r6, r20, r6
	or r6, r7, r6
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r6, zero, .LBB0_945
# %bb.944:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r21, 4(r14)
.LBB0_945:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	loads.w r6, 8(r19)
	loads.w r7, 8(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	lui r20, 523264
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r6, zero, .LBB0_947
# %bb.946:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r14)
.LBB0_947:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	loads.w r6, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r6, r6, r27
	and r2, r2, r27
	seteq r7, r6, r3
	seteq r8, r2, zero
	seteq r19, r2, r3
	seteq r24, r6, zero
	max.u r2, r6, r2
	setlt.u r2, r3, r2
	and r6, r7, r8
	and r7, r24, r19
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 1164 20                       # parallel-rne.mlir:1164:20
	bneq r2, zero, .LBB0_940
# %bb.948:                              # %vector.body237
                                        #   in Loop: Header=BB0_941 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_940
.LBB0_949:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	addli r13, zero, 4
	.loc	1 1135 7                        # parallel-rne.mlir:1135:7
	mfence { sm }
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	bneq r12, r13, .LBB0_844
.LBB0_950:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 32
	zext_int2long r[7:8], r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -280(r30)                 # 4-byte Folded Spill
	j .LBB0_952
.LBB0_951:                              # %middle.block228
                                        #   in Loop: Header=BB0_952 Depth=2
	.loc	1 1179 9 is_stmt 1              # parallel-rne.mlir:1179:9
	load.d r[6:7], -272(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_975
.LBB0_952:                              # %.preheader91
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_967 Depth 3
                                        #       Child Loop BB0_954 Depth 3
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	loadli.w r2,  -280(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[7:8], r11
	zext_int2long r[16:17], zero
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_954
	j .LBB0_967
.LBB0_953:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	setlt.ul r6, r[16:17], r[4:5]
	.loc	1 1202 13                       # parallel-rne.mlir:1202:13
	add.s r2, r1, r2
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 1202 13                       # parallel-rne.mlir:1202:13
	stores.w r9, 0(r2)
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	beq r6, zero, .LBB0_951
.LBB0_954:                              # %scalar.ph220
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_952 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	lui r18, 523264
	slli r2, r6, 2
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	add.s r6, r28, r2
	.loc	1 1183 19                       # parallel-rne.mlir:1183:19
	add.s r7, r10, r2
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	loads.w r6, 0(r6)
	.loc	1 1183 19                       # parallel-rne.mlir:1183:19
	loads.w r19, 0(r7)
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	and r11, r6, r27
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	beq r11, r3, .LBB0_956
# %bb.955:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_956:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r2
	loads.w r6, 0(r6)
	and r14, r6, r27
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r14, zero, .LBB0_964
# %bb.957:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r11, zero, .LBB0_965
.LBB0_958:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	beq r14, r3, .LBB0_960
.LBB0_959:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_960:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	setlt.u r6, r3, r11
	lui r11, 523264
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r6, zero, .LBB0_962
# %bb.961:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r19, 0
.LBB0_962:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	setlt.u r6, r3, r14
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r6, zero, .LBB0_953
# %bb.963:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r11, 0
	j .LBB0_953
.LBB0_964:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	beq r11, zero, .LBB0_958
.LBB0_965:                              # %scalar.ph220
                                        #   in Loop: Header=BB0_954 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r14, r3, .LBB0_959
	j .LBB0_960
.LBB0_966:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 1180 11 is_stmt 1             # parallel-rne.mlir:1180:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1202 13                       # parallel-rne.mlir:1202:13
	add.s r6, r1, r9
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1202 13                       # parallel-rne.mlir:1202:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r21, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	bneq r2, zero, .LBB0_951
.LBB0_967:                              # %vector.body222
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_952 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	add.ul r[18:19], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r19, r2, r9
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	add.s r2, r28, r9
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	loads.w r11, 0(r19)
	.loc	1 1182 19                       # parallel-rne.mlir:1182:19
	loads.w r14, 0(r2)
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	and r11, r11, r27
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	and r14, r14, r27
	.loc	1 1189 19                       # parallel-rne.mlir:1189:19
	seteq r18, r11, r3
	.loc	1 1193 19                       # parallel-rne.mlir:1193:19
	seteq r24, r11, zero
	.loc	1 1190 19                       # parallel-rne.mlir:1190:19
	seteq r20, r14, zero
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	seteq r21, r14, r3
	.loc	1 1198 20                       # parallel-rne.mlir:1198:20
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	.loc	1 1191 19                       # parallel-rne.mlir:1191:19
	and r14, r18, r20
	.loc	1 1194 19                       # parallel-rne.mlir:1194:19
	and r18, r24, r21
	.loc	1 1195 20                       # parallel-rne.mlir:1195:20
	or r18, r14, r18
	.loc	1 1183 19                       # parallel-rne.mlir:1183:19
	add.s r14, r10, r9
	.loc	1 1199 20                       # parallel-rne.mlir:1199:20
	or r20, r11, r18
	lui r18, 523264
	lui r11, 523264
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r20, zero, .LBB0_969
# %bb.968:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_969:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	loads.w r20, 4(r19)
	loads.w r21, 4(r2)
	and r20, r20, r27
	and r21, r21, r27
	seteq r24, r20, r3
	seteq r26, r21, zero
	seteq r8, r21, r3
	seteq r6, r20, zero
	max.u r7, r20, r21
	lui r21, 523264
	setlt.u r7, r3, r7
	and r20, r24, r26
	and r6, r6, r8
	or r6, r20, r6
	or r6, r7, r6
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r6, zero, .LBB0_971
# %bb.970:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r21, 4(r14)
.LBB0_971:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	loads.w r6, 8(r19)
	loads.w r7, 8(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	lui r20, 523264
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r6, zero, .LBB0_973
# %bb.972:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r14)
.LBB0_973:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	loads.w r6, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r6, r6, r27
	and r2, r2, r27
	seteq r7, r6, r3
	seteq r8, r2, zero
	seteq r19, r2, r3
	seteq r24, r6, zero
	max.u r2, r6, r2
	setlt.u r2, r3, r2
	and r6, r7, r8
	and r7, r24, r19
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 1200 20                       # parallel-rne.mlir:1200:20
	bneq r2, zero, .LBB0_966
# %bb.974:                              # %vector.body222
                                        #   in Loop: Header=BB0_967 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_966
.LBB0_975:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	mfence { sm }
	.loc	1 1207 7                        # parallel-rne.mlir:1207:7
	addli r2, zero, 5
	bneq r12, r2, .LBB0_845
.LBB0_976:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1207 7                        # parallel-rne.mlir:1207:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 40
	zext_int2long r[7:8], r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -272(r30)                 # 4-byte Folded Spill
	j .LBB0_978
.LBB0_977:                              # %middle.block213
                                        #   in Loop: Header=BB0_978 Depth=2
	.loc	1 1215 9 is_stmt 1              # parallel-rne.mlir:1215:9
	load.d r[6:7], -264(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_1001
.LBB0_978:                              # %.preheader90
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_993 Depth 3
                                        #       Child Loop BB0_980 Depth 3
	.loc	1 1216 11                       # parallel-rne.mlir:1216:11
	loadli.w r2,  -272(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[7:8], r11
	zext_int2long r[16:17], zero
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_980
	j .LBB0_993
.LBB0_979:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	setlt.ul r6, r[16:17], r[4:5]
	.loc	1 1238 13                       # parallel-rne.mlir:1238:13
	add.s r2, r1, r2
	.loc	1 1216 11                       # parallel-rne.mlir:1216:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 1238 13                       # parallel-rne.mlir:1238:13
	stores.w r9, 0(r2)
	.loc	1 1216 11                       # parallel-rne.mlir:1216:11
	beq r6, zero, .LBB0_977
.LBB0_980:                              # %scalar.ph205
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_978 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	lui r18, 523264
	slli r2, r6, 2
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	add.s r6, r28, r2
	.loc	1 1219 19                       # parallel-rne.mlir:1219:19
	add.s r7, r10, r2
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	loads.w r6, 0(r6)
	.loc	1 1219 19                       # parallel-rne.mlir:1219:19
	loads.w r19, 0(r7)
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	and r11, r6, r27
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	beq r11, r3, .LBB0_982
# %bb.981:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_982:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r2
	loads.w r6, 0(r6)
	and r14, r6, r27
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r14, zero, .LBB0_990
# %bb.983:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r11, zero, .LBB0_991
.LBB0_984:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	beq r14, r3, .LBB0_986
.LBB0_985:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_986:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	setlt.u r6, r3, r11
	lui r11, 523264
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r6, zero, .LBB0_988
# %bb.987:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r19, 0
.LBB0_988:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	setlt.u r6, r3, r14
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r6, zero, .LBB0_979
# %bb.989:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r11, 0
	j .LBB0_979
.LBB0_990:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	beq r11, zero, .LBB0_984
.LBB0_991:                              # %scalar.ph205
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r14, r3, .LBB0_985
	j .LBB0_986
.LBB0_992:                              # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	.loc	1 1216 11 is_stmt 1             # parallel-rne.mlir:1216:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1238 13                       # parallel-rne.mlir:1238:13
	add.s r6, r1, r9
	.loc	1 1216 11                       # parallel-rne.mlir:1216:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1238 13                       # parallel-rne.mlir:1238:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r21, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1216 11                       # parallel-rne.mlir:1216:11
	bneq r2, zero, .LBB0_977
.LBB0_993:                              # %vector.body207
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_978 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	add.ul r[18:19], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r19, r2, r9
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	add.s r2, r28, r9
	.loc	1 1217 19                       # parallel-rne.mlir:1217:19
	loads.w r11, 0(r19)
	.loc	1 1218 19                       # parallel-rne.mlir:1218:19
	loads.w r14, 0(r2)
	.loc	1 1224 19                       # parallel-rne.mlir:1224:19
	and r11, r11, r27
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	and r14, r14, r27
	.loc	1 1225 19                       # parallel-rne.mlir:1225:19
	seteq r18, r11, r3
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	seteq r24, r11, zero
	.loc	1 1226 19                       # parallel-rne.mlir:1226:19
	seteq r20, r14, zero
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	seteq r21, r14, r3
	.loc	1 1234 20                       # parallel-rne.mlir:1234:20
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	.loc	1 1227 19                       # parallel-rne.mlir:1227:19
	and r14, r18, r20
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	and r18, r24, r21
	.loc	1 1231 20                       # parallel-rne.mlir:1231:20
	or r18, r14, r18
	.loc	1 1219 19                       # parallel-rne.mlir:1219:19
	add.s r14, r10, r9
	.loc	1 1235 20                       # parallel-rne.mlir:1235:20
	or r20, r11, r18
	lui r18, 523264
	lui r11, 523264
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r20, zero, .LBB0_995
# %bb.994:                              # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_995:                              # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	loads.w r20, 4(r19)
	loads.w r21, 4(r2)
	and r20, r20, r27
	and r21, r21, r27
	seteq r24, r20, r3
	seteq r26, r21, zero
	seteq r8, r21, r3
	seteq r6, r20, zero
	max.u r7, r20, r21
	lui r21, 523264
	setlt.u r7, r3, r7
	and r20, r24, r26
	and r6, r6, r8
	or r6, r20, r6
	or r6, r7, r6
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r6, zero, .LBB0_997
# %bb.996:                              # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r21, 4(r14)
.LBB0_997:                              # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	loads.w r6, 8(r19)
	loads.w r7, 8(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	lui r20, 523264
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r6, zero, .LBB0_999
# %bb.998:                              # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r14)
.LBB0_999:                              # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	loads.w r6, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r6, r6, r27
	and r2, r2, r27
	seteq r7, r6, r3
	seteq r8, r2, zero
	seteq r19, r2, r3
	seteq r24, r6, zero
	max.u r2, r6, r2
	setlt.u r2, r3, r2
	and r6, r7, r8
	and r7, r24, r19
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 1236 20                       # parallel-rne.mlir:1236:20
	bneq r2, zero, .LBB0_992
# %bb.1000:                             # %vector.body207
                                        #   in Loop: Header=BB0_993 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_992
.LBB0_1001:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	.loc	1 1207 7                        # parallel-rne.mlir:1207:7
	mfence { sm }
	.loc	1 1243 7                        # parallel-rne.mlir:1243:7
	addli r2, zero, 6
	bneq r12, r2, .LBB0_1028
.LBB0_1002:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1243 7                        # parallel-rne.mlir:1243:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 48
	zext_int2long r[7:8], r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -264(r30)                 # 4-byte Folded Spill
	j .LBB0_1004
.LBB0_1003:                             # %middle.block198
                                        #   in Loop: Header=BB0_1004 Depth=2
	.loc	1 1251 9 is_stmt 1              # parallel-rne.mlir:1251:9
	load.d r[6:7], -256(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_1027
.LBB0_1004:                             # %.preheader89
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1019 Depth 3
                                        #       Child Loop BB0_1006 Depth 3
	.loc	1 1252 11                       # parallel-rne.mlir:1252:11
	loadli.w r2,  -264(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[7:8], r11
	zext_int2long r[16:17], zero
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_1006
	j .LBB0_1019
.LBB0_1005:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	setlt.ul r6, r[16:17], r[4:5]
	.loc	1 1274 13                       # parallel-rne.mlir:1274:13
	add.s r2, r1, r2
	.loc	1 1252 11                       # parallel-rne.mlir:1252:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 1274 13                       # parallel-rne.mlir:1274:13
	stores.w r9, 0(r2)
	.loc	1 1252 11                       # parallel-rne.mlir:1252:11
	beq r6, zero, .LBB0_1003
.LBB0_1006:                             # %scalar.ph190
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1004 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	add.ul r[6:7], r[16:17], r[12:13]
	lui r9, 523264
	lui r18, 523264
	slli r2, r6, 2
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	add.s r6, r28, r2
	.loc	1 1255 19                       # parallel-rne.mlir:1255:19
	add.s r7, r10, r2
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	loads.w r6, 0(r6)
	.loc	1 1255 19                       # parallel-rne.mlir:1255:19
	loads.w r19, 0(r7)
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	and r11, r6, r27
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	beq r11, r3, .LBB0_1008
# %bb.1007:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_1008:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	loadli.w r6,  -236(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r2
	loads.w r6, 0(r6)
	and r14, r6, r27
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r14, zero, .LBB0_1016
# %bb.1009:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r11, zero, .LBB0_1017
.LBB0_1010:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	beq r14, r3, .LBB0_1012
.LBB0_1011:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_1012:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	setlt.u r6, r3, r11
	lui r11, 523264
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r6, zero, .LBB0_1014
# %bb.1013:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r19, 0
.LBB0_1014:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	setlt.u r6, r3, r14
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r6, zero, .LBB0_1005
# %bb.1015:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r11, 0
	j .LBB0_1005
.LBB0_1016:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	beq r11, zero, .LBB0_1010
.LBB0_1017:                             # %scalar.ph190
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r14, r3, .LBB0_1011
	j .LBB0_1012
.LBB0_1018:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 1252 11 is_stmt 1             # parallel-rne.mlir:1252:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1274 13                       # parallel-rne.mlir:1274:13
	add.s r6, r1, r9
	.loc	1 1252 11                       # parallel-rne.mlir:1252:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1274 13                       # parallel-rne.mlir:1274:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r21, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1252 11                       # parallel-rne.mlir:1252:11
	bneq r2, zero, .LBB0_1003
.LBB0_1019:                             # %vector.body192
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1004 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	add.ul r[18:19], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r9, r18, 2
	add.s r19, r2, r9
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	add.s r2, r28, r9
	.loc	1 1253 19                       # parallel-rne.mlir:1253:19
	loads.w r11, 0(r19)
	.loc	1 1254 19                       # parallel-rne.mlir:1254:19
	loads.w r14, 0(r2)
	.loc	1 1260 19                       # parallel-rne.mlir:1260:19
	and r11, r11, r27
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	and r14, r14, r27
	.loc	1 1261 19                       # parallel-rne.mlir:1261:19
	seteq r18, r11, r3
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	seteq r24, r11, zero
	.loc	1 1262 19                       # parallel-rne.mlir:1262:19
	seteq r20, r14, zero
	.loc	1 1264 19                       # parallel-rne.mlir:1264:19
	seteq r21, r14, r3
	.loc	1 1270 20                       # parallel-rne.mlir:1270:20
	max.u r11, r11, r14
	setlt.u r11, r3, r11
	.loc	1 1263 19                       # parallel-rne.mlir:1263:19
	and r14, r18, r20
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	and r18, r24, r21
	.loc	1 1267 20                       # parallel-rne.mlir:1267:20
	or r18, r14, r18
	.loc	1 1255 19                       # parallel-rne.mlir:1255:19
	add.s r14, r10, r9
	.loc	1 1271 20                       # parallel-rne.mlir:1271:20
	or r20, r11, r18
	lui r18, 523264
	lui r11, 523264
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r20, zero, .LBB0_1021
# %bb.1020:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r14)
.LBB0_1021:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	loads.w r20, 4(r19)
	loads.w r21, 4(r2)
	and r20, r20, r27
	and r21, r21, r27
	seteq r24, r20, r3
	seteq r26, r21, zero
	seteq r8, r21, r3
	seteq r6, r20, zero
	max.u r7, r20, r21
	lui r21, 523264
	setlt.u r7, r3, r7
	and r20, r24, r26
	and r6, r6, r8
	or r6, r20, r6
	or r6, r7, r6
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r6, zero, .LBB0_1023
# %bb.1022:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r21, 4(r14)
.LBB0_1023:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	loads.w r6, 8(r19)
	loads.w r7, 8(r2)
	and r6, r6, r27
	and r7, r7, r27
	seteq r8, r6, r3
	seteq r26, r6, zero
	seteq r20, r7, zero
	seteq r24, r7, r3
	max.u r6, r6, r7
	setlt.u r6, r3, r6
	and r7, r8, r20
	and r8, r26, r24
	lui r20, 523264
	or r7, r7, r8
	or r6, r6, r7
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r6, zero, .LBB0_1025
# %bb.1024:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r14)
.LBB0_1025:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	loads.w r6, 12(r19)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r6, r6, r27
	and r2, r2, r27
	seteq r7, r6, r3
	seteq r8, r2, zero
	seteq r19, r2, r3
	seteq r24, r6, zero
	max.u r2, r6, r2
	setlt.u r2, r3, r2
	and r6, r7, r8
	and r7, r24, r19
	or r6, r6, r7
	or r2, r2, r6
	.loc	1 1272 20                       # parallel-rne.mlir:1272:20
	bneq r2, zero, .LBB0_1018
# %bb.1026:                             # %vector.body192
                                        #   in Loop: Header=BB0_1019 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r14)
	j .LBB0_1018
.LBB0_1027:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	.loc	1 1243 7                        # parallel-rne.mlir:1243:7
	mfence { sm }
.LBB0_1028:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1279 7                        # parallel-rne.mlir:1279:7
	loadli.w r2,  -320(r30)                 # 4-byte Folded Reload
	zext_int2long r[6:7], zero
	store.d r[6:7], -264(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_1057
# %bb.1029:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	loadli.w r6,  -332(r30)                 # 4-byte Folded Reload
	.loc	1 1279 7                        # parallel-rne.mlir:1279:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r6
	addli r6, zero, 16
	setlt.u r2, r2, r6
	addli r6, zero, 56
	zext_int2long r[7:8], r6
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	or r2, r2, r6
	storeli.w r2, -256(r30)                 # 4-byte Folded Spill
	j .LBB0_1031
.LBB0_1030:                             # %middle.block
                                        #   in Loop: Header=BB0_1031 Depth=2
	.loc	1 1287 9 is_stmt 1              # parallel-rne.mlir:1287:9
	load.d r[6:7], -248(r30)                # 8-byte Folded Reload
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	addli r11, zero, 7
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	addli.d r[7:8], r[6:7], 0
	beq r2, zero, .LBB0_1056
.LBB0_1031:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1048 Depth 3
                                        #       Child Loop BB0_1034 Depth 3
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	loadli.w r2,  -256(r30)                 # 4-byte Folded Reload
	sll.d r[12:13], r[7:8], r11
	store.d r[7:8], -232(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_1046
# %bb.1032:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1031 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_1034
.LBB0_1033:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	setlt.ul r2, r[6:7], r[4:5]
	.loc	1 1310 13 is_stmt 1             # parallel-rne.mlir:1310:13
	add.s r8, r1, r11
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 1310 13                       # parallel-rne.mlir:1310:13
	stores.w r14, 0(r8)
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	beq r2, zero, .LBB0_1030
.LBB0_1034:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1031 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	add.ul r[8:9], r[6:7], r[12:13]
	lui r14, 523264
	lui r18, 523264
	slli r11, r8, 2
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	add.s r2, r28, r11
	.loc	1 1291 19                       # parallel-rne.mlir:1291:19
	add.s r8, r10, r11
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	loads.w r2, 0(r2)
	.loc	1 1291 19                       # parallel-rne.mlir:1291:19
	loads.w r19, 0(r8)
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	and r16, r2, r27
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	beq r16, r3, .LBB0_1036
# %bb.1035:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r19, 0
.LBB0_1036:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r11
	loads.w r2, 0(r2)
	and r17, r2, r27
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r17, zero, .LBB0_1044
# %bb.1037:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r19, 523264
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r16, zero, .LBB0_1045
.LBB0_1038:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	beq r17, r3, .LBB0_1040
.LBB0_1039:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
.LBB0_1040:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	setlt.u r2, r3, r16
	lui r16, 523264
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r2, zero, .LBB0_1042
# %bb.1041:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r16, r19, 0
.LBB0_1042:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	setlt.u r2, r3, r17
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r2, zero, .LBB0_1033
# %bb.1043:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r16, 0
	j .LBB0_1033
.LBB0_1044:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	beq r16, zero, .LBB0_1038
.LBB0_1045:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r19, r18, 0
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r17, r3, .LBB0_1039
	j .LBB0_1040
.LBB0_1046:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1031 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	load.d r[16:17], -264(r30)              # 8-byte Folded Reload
	j .LBB0_1048
.LBB0_1047:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	.loc	1 1288 11 is_stmt 1             # parallel-rne.mlir:1288:11
	addli.d r[16:17], r[16:17], 4
	.loc	1 1310 13                       # parallel-rne.mlir:1310:13
	add.s r6, r1, r14
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	seteq.d r2, r[16:17], r[22:23]
	.loc	1 1310 13                       # parallel-rne.mlir:1310:13
	stores.w r18, 12(r6)
	stores.w r20, 8(r6)
	stores.w r7, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	bneq r2, zero, .LBB0_1030
.LBB0_1048:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1031 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	add.ul r[6:7], r[16:17], r[12:13]
	loadli.w r2,  -236(r30)                 # 4-byte Folded Reload
	slli r14, r6, 2
	add.s r19, r2, r14
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	add.s r21, r28, r14
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	loads.w r6, 0(r19)
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	loads.w r7, 0(r21)
	.loc	1 1296 19                       # parallel-rne.mlir:1296:19
	and r6, r6, r27
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	and r7, r7, r27
	.loc	1 1297 19                       # parallel-rne.mlir:1297:19
	seteq r11, r6, r3
	.loc	1 1301 19                       # parallel-rne.mlir:1301:19
	seteq r24, r6, zero
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	seteq r18, r7, zero
	.loc	1 1300 19                       # parallel-rne.mlir:1300:19
	seteq r20, r7, r3
	.loc	1 1306 20                       # parallel-rne.mlir:1306:20
	max.u r6, r6, r7
	setlt.u r7, r3, r6
	.loc	1 1299 19                       # parallel-rne.mlir:1299:19
	and r6, r11, r18
	.loc	1 1302 19                       # parallel-rne.mlir:1302:19
	and r11, r24, r20
	lui r18, 523264
	.loc	1 1303 20                       # parallel-rne.mlir:1303:20
	or r11, r6, r11
	.loc	1 1291 19                       # parallel-rne.mlir:1291:19
	add.s r6, r10, r14
	.loc	1 1307 20                       # parallel-rne.mlir:1307:20
	or r7, r7, r11
	lui r11, 523264
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r7, zero, .LBB0_1050
# %bb.1049:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r11, 0(r6)
.LBB0_1050:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	loads.w r7, 4(r19)
	loads.w r20, 4(r21)
	and r7, r7, r27
	and r20, r20, r27
	seteq r24, r7, r3
	seteq r26, r20, zero
	seteq r8, r7, zero
	seteq r2, r20, r3
	max.u r7, r7, r20
	setlt.u r7, r3, r7
	and r9, r24, r26
	and r2, r8, r2
	or r2, r9, r2
	or r2, r7, r2
	lui r7, 523264
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r2, zero, .LBB0_1052
# %bb.1051:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_1052:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	loads.w r2, 8(r19)
	loads.w r8, 8(r21)
	and r2, r2, r27
	and r8, r8, r27
	seteq r9, r2, r3
	seteq r26, r2, zero
	seteq r20, r8, zero
	seteq r24, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r20
	and r9, r26, r24
	lui r20, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r2, zero, .LBB0_1054
# %bb.1053:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 8(r6)
.LBB0_1054:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	loads.w r2, 12(r19)
	loads.w r8, 12(r21)
	lui r26, 524288
	and r2, r2, r27
	and r8, r8, r27
	seteq r9, r2, r3
	seteq r24, r2, zero
	seteq r19, r8, zero
	seteq r21, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r19
	and r9, r24, r21
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1308 20                       # parallel-rne.mlir:1308:20
	bneq r2, zero, .LBB0_1047
# %bb.1055:                             # %vector.body
                                        #   in Loop: Header=BB0_1048 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r6)
	j .LBB0_1047
.LBB0_1056:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 35 5 is_stmt 1                # parallel-rne.mlir:35:5
	core_id r12
	.loc	1 1279 7                        # parallel-rne.mlir:1279:7
	mfence { sm }
.LBB0_1057:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1315 7                        # parallel-rne.mlir:1315:7
	addli r2, zero, 255
	addli r10, zero, 3
	csr_set csr5, r2
	sync_core
	.loc	1 1316 7                        # parallel-rne.mlir:1316:7
	beq r12, r10, .LBB0_5
# %bb.1058:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[13:14], -344(r30)              # 8-byte Folded Reload
	addli r16, zero, 64
	addli r18, zero, 2
	addli r19, zero, 6
	lui r24, 8
	.loc	1 1327 7 is_stmt 1              # parallel-rne.mlir:1327:7
	bneq r12, zero, .LBB0_6
# %bb.1059:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -380(r30)                 # 4-byte Folded Reload
	load.d r[6:7], -264(r30)                # 8-byte Folded Reload
	.loc	1 1327 7                        # parallel-rne.mlir:1327:7
	load.d r[8:9], -376(r30)                # 8-byte Folded Reload
	load.d r[10:11], -360(r30)              # 8-byte Folded Reload
	load.d r[20:21], 24(r30)
	slli r2, r2, 6
	sll.d r[10:11], r[10:11], r18
	sext_int2long r[4:5], r2
	addli r2, zero, 18
	min.sl r[6:7], r[4:5], r[6:7]
	sll.d r[8:9], r[8:9], r2
	addli r2, zero, 28
	addli.d r[6:7], r[6:7], 64
	xwait r2, 0
	addli r2, zero, 1
	add.ul r[8:9], r[20:21], r[8:9]
	max.sl r[6:7], r[6:7], r[4:5]
	add.ul r[8:9], r[8:9], r[10:11]
	addli r10, zero, 3
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r16
	.loc	1 1323 13 is_stmt 1             # parallel-rne.mlir:1323:13
	min.sl r[4:5], r[4:5], r[6:7]
	addli r6, zero, 5
	.loc	1 1327 7                        # parallel-rne.mlir:1327:7
	lock zero, r6
	dma_cfg zero, zero, zero, 0
	dma_cfg zero, r2, zero, 1
	load.d r[20:21], -368(r30)              # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r2, r20, 2
	dma_cfg r8, r1, r2, 3
	addli r1, zero, 512
	addli r2, zero, 4096
	dma_cfg r2, r1, r4, 4
	addli r1, zero, 29
	dma_run zero
	unlock r6
	xsignal r1, 0
	j .LBB0_6
.LBB0_1060:                             # %._crit_edge
	.loc	1 1329 5                        # parallel-rne.mlir:1329:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_1062
# %bb.1061:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1329 5                        # parallel-rne.mlir:1329:5
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
.LBB0_1062:
	.loc	1 1330 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1330:5
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
	.long	52                              # 0x34
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-vfcmxzr2" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
