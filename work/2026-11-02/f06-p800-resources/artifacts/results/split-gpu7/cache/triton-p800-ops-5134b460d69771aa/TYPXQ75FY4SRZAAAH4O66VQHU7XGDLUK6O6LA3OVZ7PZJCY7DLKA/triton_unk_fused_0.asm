	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-a6lsx7a6" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -416
	addli r1, zero, 1
.Ltmp0:
	.loc	1 36 5 prologue_end             # parallel-rne.mlir:36:5
	core_id r2
	addli r30, sp, 352
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r2, 1048575
	.loc	1 36 5                          # parallel-rne.mlir:36:5
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
	.loc	1 36 5                          # parallel-rne.mlir:36:5
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
	addli r1, zero, 3
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 7
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 13
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 33
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 19
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 22
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 26
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 35
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 41
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 38 10 is_stmt 1               # parallel-rne.mlir:38:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	lui r5, 1048575
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -12(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -24(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -36(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -48(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -60(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -72(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -84(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -96(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -108(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -120(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -132(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -144(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -156(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -168(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -180(r30)
	ori r5, r5, 4095
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r1
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	addli r2, r4, 0
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r5, -8(r30)
	storeli.w r5, -4(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r5, -20(r30)
	storeli.w r5, -16(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r5, -32(r30)
	storeli.w r5, -28(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r5, -44(r30)
	storeli.w r5, -40(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r5, -56(r30)
	storeli.w r5, -52(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r5, -68(r30)
	storeli.w r5, -64(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r5, -80(r30)
	storeli.w r5, -76(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r5, -92(r30)
	storeli.w r5, -88(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r5, -104(r30)
	storeli.w r5, -100(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r5, -116(r30)
	storeli.w r5, -112(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r5, -128(r30)
	storeli.w r5, -124(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r5, -140(r30)
	storeli.w r5, -136(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r5, -152(r30)
	storeli.w r5, -148(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r5, -164(r30)
	storeli.w r5, -160(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r5, -176(r30)
	storeli.w r5, -172(r30)
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r1, r3
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r3, r1, r3
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	addli r2, r2, -1
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	div.s r2, r2, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	load_param_i r4, 0
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	mul.s r1, r2, r4
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	fmac.s r2, r2, r4
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	min.s r2, r2, r3
	.loc	1 64 5                          # parallel-rne.mlir:64:5
	ble.s r2, r1, .LBB0_1082
# %bb.4:                                # %.lr.ph
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	sext_int2long r[11:12], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	addli r9, zero, 2
	addli r14, zero, 32
	addli r16, zero, 1
	addli r17, zero, 4
	addli r18, zero, 6
	addli r20, zero, 7
	lui r21, 6
	lui r4, 522240
	lui r26, 524288
	lui r13, 268288
	ori r1, r1, 256
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	store.d r[2:3], -304(r30)               # 8-byte Folded Spill
	lui r2, 9
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	lui r1, 8
	ori r1, r1, 256
	storeli.w r1, -312(r30)                 # 4-byte Folded Spill
	ori r1, r2, 256
	lui r2, 11
	storeli.w r1, -316(r30)                 # 4-byte Folded Spill
	lui r1, 10
	ori r1, r1, 256
	storeli.w r1, -320(r30)                 # 4-byte Folded Spill
	ori r1, r2, 256
	lui r2, 12
	storeli.w r1, -324(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r27, r1, 4095
	ori r1, r2, 256
	lui r2, 2047
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	lui r1, 13
	ori r19, r2, 4095
	lui r2, 56
	ori r1, r1, 256
	storeli.w r1, -332(r30)                 # 4-byte Folded Spill
	lui r1, 14
	ori r1, r1, 256
	storeli.w r1, -336(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -340(r30)                 # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -344(r30)                 # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -348(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1320 7 is_stmt 1              # parallel-rne.mlir:1320:7
	addli r1, zero, 22
	addli r14, zero, 32
	xsignal r1, 0
	.loc	1 1322 7                        # parallel-rne.mlir:1322:7
	addli r1, zero, 41
	.loc	1 1321 7                        # parallel-rne.mlir:1321:7
	xsignal r11, 0
	.loc	1 1322 7                        # parallel-rne.mlir:1322:7
	xsignal r1, 0
	.loc	1 1323 7                        # parallel-rne.mlir:1323:7
	addli r1, zero, 43
	xsignal r1, 0
	load.d r[11:12], -256(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 64 5                          # parallel-rne.mlir:64:5
	load.d r[1:2], -304(r30)                # 8-byte Folded Reload
	addli.d r[11:12], r[11:12], 1
	addli r9, zero, 2
	addli r16, zero, 1
	addli r17, zero, 4
	addli r18, zero, 6
	addli r20, zero, 7
	lui r21, 6
	setlt.sl r1, r[11:12], r[1:2]
	beq r1, zero, .LBB0_1082
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #     Child Loop BB0_97 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_100 Depth 3
                                        #     Child Loop BB0_125 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_128 Depth 3
                                        #     Child Loop BB0_153 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #     Child Loop BB0_181 Depth 2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
                                        #     Child Loop BB0_209 Depth 2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_212 Depth 3
                                        #     Child Loop BB0_237 Depth 2
                                        #       Child Loop BB0_254 Depth 3
                                        #       Child Loop BB0_240 Depth 3
                                        #     Child Loop BB0_277 Depth 2
                                        #       Child Loop BB0_279 Depth 3
                                        #       Child Loop BB0_278 Depth 3
                                        #     Child Loop BB0_283 Depth 2
                                        #       Child Loop BB0_285 Depth 3
                                        #       Child Loop BB0_284 Depth 3
                                        #     Child Loop BB0_289 Depth 2
                                        #       Child Loop BB0_291 Depth 3
                                        #       Child Loop BB0_290 Depth 3
                                        #     Child Loop BB0_295 Depth 2
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_296 Depth 3
                                        #     Child Loop BB0_301 Depth 2
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_302 Depth 3
                                        #     Child Loop BB0_307 Depth 2
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_308 Depth 3
                                        #     Child Loop BB0_313 Depth 2
                                        #       Child Loop BB0_315 Depth 3
                                        #       Child Loop BB0_314 Depth 3
                                        #     Child Loop BB0_319 Depth 2
                                        #       Child Loop BB0_321 Depth 3
                                        #       Child Loop BB0_320 Depth 3
                                        #     Child Loop BB0_335 Depth 2
                                        #       Child Loop BB0_342 Depth 3
                                        #       Child Loop BB0_338 Depth 3
                                        #     Child Loop BB0_361 Depth 2
                                        #       Child Loop BB0_368 Depth 3
                                        #       Child Loop BB0_364 Depth 3
                                        #     Child Loop BB0_387 Depth 2
                                        #       Child Loop BB0_394 Depth 3
                                        #       Child Loop BB0_390 Depth 3
                                        #     Child Loop BB0_413 Depth 2
                                        #       Child Loop BB0_420 Depth 3
                                        #       Child Loop BB0_416 Depth 3
                                        #     Child Loop BB0_439 Depth 2
                                        #       Child Loop BB0_446 Depth 3
                                        #       Child Loop BB0_442 Depth 3
                                        #     Child Loop BB0_465 Depth 2
                                        #       Child Loop BB0_472 Depth 3
                                        #       Child Loop BB0_468 Depth 3
                                        #     Child Loop BB0_491 Depth 2
                                        #       Child Loop BB0_498 Depth 3
                                        #       Child Loop BB0_494 Depth 3
                                        #     Child Loop BB0_517 Depth 2
                                        #       Child Loop BB0_524 Depth 3
                                        #       Child Loop BB0_520 Depth 3
                                        #     Child Loop BB0_556 Depth 2
                                        #       Child Loop BB0_566 Depth 3
                                        #       Child Loop BB0_559 Depth 3
                                        #     Child Loop BB0_592 Depth 2
                                        #       Child Loop BB0_602 Depth 3
                                        #       Child Loop BB0_595 Depth 3
                                        #     Child Loop BB0_628 Depth 2
                                        #       Child Loop BB0_638 Depth 3
                                        #       Child Loop BB0_631 Depth 3
                                        #     Child Loop BB0_664 Depth 2
                                        #       Child Loop BB0_674 Depth 3
                                        #       Child Loop BB0_667 Depth 3
                                        #     Child Loop BB0_700 Depth 2
                                        #       Child Loop BB0_710 Depth 3
                                        #       Child Loop BB0_703 Depth 3
                                        #     Child Loop BB0_736 Depth 2
                                        #       Child Loop BB0_746 Depth 3
                                        #       Child Loop BB0_739 Depth 3
                                        #     Child Loop BB0_772 Depth 2
                                        #       Child Loop BB0_782 Depth 3
                                        #       Child Loop BB0_775 Depth 3
                                        #     Child Loop BB0_808 Depth 2
                                        #       Child Loop BB0_818 Depth 3
                                        #       Child Loop BB0_811 Depth 3
                                        #     Child Loop BB0_856 Depth 2
                                        #       Child Loop BB0_873 Depth 3
                                        #       Child Loop BB0_859 Depth 3
                                        #     Child Loop BB0_884 Depth 2
                                        #       Child Loop BB0_901 Depth 3
                                        #       Child Loop BB0_887 Depth 3
                                        #     Child Loop BB0_912 Depth 2
                                        #       Child Loop BB0_929 Depth 3
                                        #       Child Loop BB0_915 Depth 3
                                        #     Child Loop BB0_940 Depth 2
                                        #       Child Loop BB0_957 Depth 3
                                        #       Child Loop BB0_943 Depth 3
                                        #     Child Loop BB0_968 Depth 2
                                        #       Child Loop BB0_985 Depth 3
                                        #       Child Loop BB0_971 Depth 3
                                        #     Child Loop BB0_996 Depth 2
                                        #       Child Loop BB0_1013 Depth 3
                                        #       Child Loop BB0_999 Depth 3
                                        #     Child Loop BB0_1024 Depth 2
                                        #       Child Loop BB0_1041 Depth 3
                                        #       Child Loop BB0_1027 Depth 3
                                        #     Child Loop BB0_1053 Depth 2
                                        #       Child Loop BB0_1070 Depth 3
                                        #       Child Loop BB0_1056 Depth 3
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	loadli.w r1,  48(r30)
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	loadli.w r2,  44(r30)
	store.d r[11:12], -256(r30)             # 8-byte Folded Spill
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	loadli.w r10,  -156(r30)
	.loc	1 100 13                        # parallel-rne.mlir:100:13
	loadli.w r8,  -168(r30)
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	loadli.w r3,  -180(r30)
	.loc	1 66 13                         # parallel-rne.mlir:66:13
	div.s r1, r11, r1
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	addli r11, zero, 8
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	mod.s r15, r10, r9
	addli r10, r10, 1
	storeli.w r10, -156(r30)
	.loc	1 67 13                         # parallel-rne.mlir:67:13
	div.s r2, r1, r2
	.loc	1 70 13                         # parallel-rne.mlir:70:13
	div.s r6, r2, r14
	.loc	1 100 13                        # parallel-rne.mlir:100:13
	mod.s r14, r8, r9
	addli r8, r8, 1
	storeli.w r8, -168(r30)
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	slli r8, r15, 11
	addli r8, r8, 4096
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	slli r1, r6, 3
	.loc	1 72 13                         # parallel-rne.mlir:72:13
	sub.s r7, r16, r1
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	min.s r7, r7, r11
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	addli r11, r3, 1
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	mod.s r12, r2, r7
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	storeli.w r11, -180(r30)
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	add.s r11, r12, r1
	.loc	1 100 13                        # parallel-rne.mlir:100:13
	slli r1, r14, 11
	storeli.w r11, -284(r30)                # 4-byte Folded Spill
	.loc	1 83 13                         # parallel-rne.mlir:83:13
	zext_int2long r[11:12], r11
	.loc	1 106 7                         # parallel-rne.mlir:106:7
	store.d r[11:12], -280(r30)             # 8-byte Folded Spill
	bneq r5, r16, .LBB0_9
# %bb.8:                                # %.thread76
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r10, zero, 11
	load.d r[14:15], 0(r30)
	storeli.w zero, -240(r30)               # 4-byte Folded Spill
	sll.d r[10:11], r[11:12], r10
	addli r12, zero, 3
	xwait r12, 0
	lock zero, r17
	add.ul r[10:11], r[14:15], r[10:11]
	addli r12, zero, 128
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r8, r10, r12, 3
	addli r8, zero, 16
	dma_cfg r12, r12, r8, 4
	dma_run zero
	unlock r17
	xsignal r9, 0
	.loc	1 107 7                         # parallel-rne.mlir:107:7
	j .LBB0_12
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	bneq r5, r9, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	addli r10, zero, 5
	xwait r9, 0
	addli r12, zero, 64
	addli r11, zero, 16
	xwait r10, 0
	addli r10, zero, 3
	lock zero, zero
	ds_cfg r10, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r11, zero, 13
	shuffle_batch r1, r8, r12, 1
	addli r8, zero, 1
	unlock zero
	xsignal r10, 0
	storeli.w r8, -240(r30)                 # 4-byte Folded Spill
	xsignal r17, 0
	j .LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -240(r30)               # 4-byte Folded Spill
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	slli r6, r6, 5
	.loc	1 117 13 is_stmt 1              # parallel-rne.mlir:117:13
	loadli.w r10,  -132(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mod.s r3, r3, r9
	.loc	1 115 13 is_stmt 1              # parallel-rne.mlir:115:13
	loadli.w r8,  -144(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r2, r2, r6
	.loc	1 115 13                        # parallel-rne.mlir:115:13
	addli r6, r8, 1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.s r2, r2, r7
	.loc	1 117 13 is_stmt 1              # parallel-rne.mlir:117:13
	mod.s r7, r10, r9
	.loc	1 115 13                        # parallel-rne.mlir:115:13
	storeli.w r6, -144(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r6, r3, 11
	.loc	1 117 13 is_stmt 1              # parallel-rne.mlir:117:13
	slli r3, r7, 13
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[11:12], r2
	addli r7, zero, 5
	sll.d r[14:15], r[11:12], r7
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	addli r7, r10, 1
	addli r3, r3, 8192
	storeli.w r7, -132(r30)
	.loc	1 121 7 is_stmt 1               # parallel-rne.mlir:121:7
	bneq r5, r18, .LBB0_14
# %bb.13:                               # %.thread77
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[10:11], 8(r30)
	sll.d r[7:8], r[14:15], r16
	storeli.w zero, -236(r30)               # 4-byte Folded Spill
	storeli.w zero, -232(r30)               # 4-byte Folded Spill
	xwait r20, 0
	lock zero, r17
	addli r1, zero, 128
	addli r12, zero, 2048
	dma_cfg r16, r16, zero, 0
	add.ul r[7:8], r[10:11], r[7:8]
	addli r10, zero, 64
	addli r11, zero, 32
	dma_cfg zero, r8, zero, 2
	dma_cfg r3, r7, r10, 3
	addli r3, zero, 256
	dma_cfg r1, r3, r10, 4
	dma_run zero
	unlock r17
	xsignal r18, 0
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	j .LBB0_20
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r7, r8, r9
	addli r11, zero, 32
	addli r12, zero, 2048
	slli r7, r7, 12
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	beq r5, r17, .LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r5, r20, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 9
	storeli.w zero, -236(r30)               # 4-byte Folded Spill
	xwait r18, 0
	xwait r1, 0
	addli r1, zero, 3
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 64
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r11, zero, 13
	shuffle_coa r7, r3, r1, 2
	addli r1, zero, 1
	unlock zero
	xsignal r20, 0
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	j .LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 123 7 is_stmt 1               # parallel-rne.mlir:123:7
	addli r3, zero, 8
	storeli.w zero, -232(r30)               # 4-byte Folded Spill
	xwait r17, 0
	addli r10, zero, 1
	addli r8, zero, 64
	xwait r3, 0
	addli r3, zero, 11
	xwait r3, 0
	addli r3, zero, 16
	lock zero, r10
	mm_cfg r11, r8, r3, 0
	mm_cfg r9, r10, r10, 2
	mm r6, r1, r7, 5
	addli r1, zero, 1
	storeli.w r1, -236(r30)                 # 4-byte Folded Spill
	addli r1, zero, 5
	unlock r10
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	addli r1, zero, 10
.LBB0_18:                               # %.thread78
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
	j .LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	storeli.w zero, -236(r30)               # 4-byte Folded Spill
	storeli.w zero, -232(r30)               # 4-byte Folded Spill
.LBB0_20:                               # %.thread78
                                        #   in Loop: Header=BB0_7 Depth=1
	slli r1, r2, 5
	addli r2, zero, 96
	.loc	1 137 13 is_stmt 1              # parallel-rne.mlir:137:13
	loadli.w r3,  -120(r30)
	zext_int2long r[22:23], r11
	lui r20, 1024
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	store.d r[14:15], -296(r30)             # 8-byte Folded Spill
	zext_int2long r[7:8], r2
	.loc	1 130 13                        # parallel-rne.mlir:130:13
	zext_int2long r[1:2], r1
	store.d r[22:23], -200(r30)             # 8-byte Folded Spill
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	mod.s r10, r3, r9
	store.d r[7:8], -224(r30)               # 8-byte Folded Spill
	.loc	1 132 13                        # parallel-rne.mlir:132:13
	min.ul r[7:8], r[1:2], r[7:8]
	addli.d r[7:8], r[7:8], 32
	.loc	1 134 13                        # parallel-rne.mlir:134:13
	max.ul r[7:8], r[7:8], r[1:2]
	sub.sl r[7:8], r[7:8], r[1:2]
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	loadli.w r2,  -108(r30)
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	addli r1, r3, 1
	slli r3, r10, 7
	.loc	1 135 13                        # parallel-rne.mlir:135:13
	min.ul r[22:23], r[7:8], r[22:23]
	.loc	1 137 13                        # parallel-rne.mlir:137:13
	storeli.w r1, -120(r30)
	add.s r1, r3, r21
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	addli r7, r2, 1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	store.d r[22:23], -264(r30)             # 8-byte Folded Spill
	.loc	1 140 13                        # parallel-rne.mlir:140:13
	storeli.w r7, -108(r30)
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	bneq r5, r16, .LBB0_22
# %bb.21:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	sll.d r[6:7], r[14:15], r16
	load.d r[14:15], 16(r30)
	addli r3, zero, 13
	xwait r3, 0
	lock zero, r17
	slli r3, r22, 1
	add.ul r[6:7], r[14:15], r[6:7]
	dma_cfg zero, r16, zero, 0
	dma_cfg zero, r7, zero, 2
	dma_cfg r1, r6, r3, 3
	addli r1, zero, 128
	addli r3, zero, 64
	dma_cfg r1, r3, r16, 4
	addli r1, zero, 12
	dma_run zero
	unlock r17
	xsignal r1, 0
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r1,  -96(r30)
	loadli.w r6,  -308(r30)                 # 4-byte Folded Reload
	mod.s r3, r1, r9
	addli r1, r1, 1
	storeli.w r1, -96(r30)
	slli r3, r3, 11
	add.s r14, r3, r6
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	j .LBB0_26
.LBB0_22:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r3,  -96(r30)
	loadli.w r8,  -308(r30)                 # 4-byte Folded Reload
	mod.s r7, r3, r9
	addli r3, r3, 1
	storeli.w r3, -96(r30)
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	addli r3, zero, 3
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	slli r7, r7, 11
	add.s r14, r7, r8
	.loc	1 145 7                         # parallel-rne.mlir:145:7
	bneq r5, r3, .LBB0_29
# %bb.23:                               #   in Loop: Header=BB0_7 Depth=1
	addli r7, zero, 10
	addli r3, zero, 0
	xwait r7, 0
	addli r7, zero, 12
	xwait r7, 0
	addli r7, zero, 19
	xwait r7, 0
	lock zero, r9
	lui r7, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r7, r7, zero, 0
	addli r7, zero, 31
	ew_cfg zero, r7, zero, 2
	ew_cfg r16, zero, zero, 3
.LBB0_24:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r14, r3
	add.s r8, r6, r3
	addli r3, r3, 128
	dsmadd r7, r8, r1, 0
	bneq r3, r12, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	unlock r9
	xsignal r1, 0
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 16
	xsignal r1, 0
	addli r1, zero, 17
	xsignal r1, 0
	addli r1, zero, 20
	xsignal r1, 0
	addli r1, zero, 14
	xsignal r1, 0
.LBB0_26:                               # %.thread180
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	loadli.w r1,  -84(r30)
	loadli.w r6,  -312(r30)                 # 4-byte Folded Reload
	mod.s r3, r1, r9
	addli r1, r1, 1
	storeli.w r1, -84(r30)
	slli r3, r3, 11
	add.s r3, r3, r6
	storeli.w r3, -204(r30)                 # 4-byte Folded Spill
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r1,  -72(r30)
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	loadli.w r3,  -60(r30)
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	loadli.w r8,  -48(r30)
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	mod.s r6, r1, r9
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	mod.s r7, r3, r9
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	addli r1, r1, 1
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	addli r3, r3, 1
	storeli.w r8, -268(r30)                 # 4-byte Folded Spill
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	storeli.w r1, -72(r30)
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	storeli.w r3, -60(r30)
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r6, 11
	loadli.w r6,  -316(r30)                 # 4-byte Folded Reload
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	slli r3, r7, 11
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	add.s r7, r1, r6
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	loadli.w r6,  -320(r30)                 # 4-byte Folded Reload
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	addli r1, r8, 1
	storeli.w r1, -48(r30)
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	addli r1, zero, 3
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	add.s r10, r3, r6
	bneq r5, r1, .LBB0_31
# %bb.28:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 158 7                         # parallel-rne.mlir:158:7
	addli r1, zero, 15
	xwait r1, 0
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r1, zero, 23
	xwait r1, 0
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r1, zero, 25
	xwait r1, 0
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r1, zero, 33
	xwait r1, 0
	j .LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	loadli.w r1,  -84(r30)
	loadli.w r6,  -312(r30)                 # 4-byte Folded Reload
	mod.s r3, r1, r9
	addli r1, r1, 1
	storeli.w r1, -84(r30)
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	addli r1, zero, 5
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	slli r3, r3, 11
	add.s r3, r3, r6
	.loc	1 148 7                         # parallel-rne.mlir:148:7
	storeli.w r3, -204(r30)                 # 4-byte Folded Spill
	bneq r5, r1, .LBB0_27
# %bb.30:                               # %.thread81
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 14
	addli r8, zero, 511
	lui r6, 260096
	xwait r1, 0
	addli r1, zero, 22
	xwait r1, 0
	lock zero, r9
	lui r1, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 21
	ew_cfg zero, r8, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, zero, 19
	hp_ssmul r3, r14, r14, 0
	ew_cfg zero, zero, zero, 19
	unlock r9
	xsignal r1, 0
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r1,  -72(r30)
	mod.s r3, r1, r9
	addli r1, r1, 1
	storeli.w r1, -72(r30)
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r1, zero, 16
	xwait r1, 0
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r1, r3, 11
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r3, zero, 24
	xwait r3, 0
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r3,  -316(r30)                 # 4-byte Folded Reload
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	lock zero, r9
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	ew_cfg zero, r8, zero, 2
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	add.s r7, r1, r3
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, r16, 19
	dsmul r7, r14, r14, 0
	ew_cfg zero, zero, zero, 19
	unlock r9
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	loadli.w r1,  -60(r30)
	mod.s r3, r1, r9
	addli r1, r1, 1
	storeli.w r1, -60(r30)
	slli r1, r3, 11
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	addli r3, zero, 17
	xwait r3, 0
	.loc	1 153 13                        # parallel-rne.mlir:153:13
	loadli.w r3,  -320(r30)                 # 4-byte Folded Reload
	add.s r10, r1, r3
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	addli r1, zero, 26
	xwait r1, 0
	lock zero, r9
	addli r1, zero, 15
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r16, zero, zero, 3
	ew_cfg r16, r16, r16, 19
	dsmul r10, r7, r14, 0
	ew_cfg zero, zero, zero, 19
	unlock r9
	xsignal r1, 0
	addli r1, zero, 23
	xsignal r1, 0
	addli r1, zero, 25
	xsignal r1, 0
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	loadli.w r1,  -48(r30)
	storeli.w r1, -268(r30)                 # 4-byte Folded Spill
	addli r1, r1, 1
	storeli.w r1, -48(r30)
.LBB0_31:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	mod.s r1, r2, r9
	ori r2, r21, 256
	.loc	1 163 7 is_stmt 1               # parallel-rne.mlir:163:7
	xfence
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	mfence { lm, sm, gm }
	slli r1, r1, 11
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r21, r1, r2
	.loc	1 165 7 is_stmt 1               # parallel-rne.mlir:165:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r21, r7
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	sub.s r1, r21, r14
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
	sub.s r1, r21, r10
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	store.d r[1:2], -192(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	beq r5, zero, .LBB0_39
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 202 7                         # parallel-rne.mlir:202:7
	addli r1, zero, 1
	beq r5, r1, .LBB0_67
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 238 7                         # parallel-rne.mlir:238:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_95
.LBB0_34:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 274 7                         # parallel-rne.mlir:274:7
	addli r1, zero, 3
	beq r5, r1, .LBB0_123
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 310 7                         # parallel-rne.mlir:310:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_151
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 346 7                         # parallel-rne.mlir:346:7
	addli r1, zero, 5
	beq r5, r1, .LBB0_179
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	addli r1, zero, 6
	beq r5, r1, .LBB0_207
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 418 7                         # parallel-rne.mlir:418:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_235
	j .LBB0_263
.LBB0_39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	zext_int2long r[22:23], zero
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 166 7 is_stmt 1               # parallel-rne.mlir:166:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block682
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 174 9                         # parallel-rne.mlir:174:9
	andi r1, r12, 1
	zext_int2long r[22:23], r11
	addli r12, zero, 0
	beq r1, zero, .LBB0_66
.LBB0_41:                               # %vector.memcheck668
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_56
# %bb.42:                               # %scalar.ph674.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 197 13 is_stmt 1              # parallel-rne.mlir:197:13
	add.s r3, r21, r3
	stores.w r6, 0(r3)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph674
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[8:9], r[1:2], r[22:23]
	lui r16, 523264
	slli r3, r8, 2
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.s r6, r14, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.s r8, r10, r3
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	loads.w r6, 0(r6)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	loads.w r24, 0(r8)
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	and r8, r6, r27
	lui r6, 523264
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	beq r8, r4, .LBB0_46
# %bb.45:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r24, 0
.LBB0_46:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	add.s r9, r7, r3
	loads.w r9, 0(r9)
	and r15, r9, r27
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r15, zero, .LBB0_54
# %bb.47:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r8, zero, .LBB0_55
.LBB0_48:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	beq r15, r4, .LBB0_50
.LBB0_49:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
.LBB0_50:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	setlt.u r9, r4, r8
	lui r8, 523264
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r9, zero, .LBB0_52
# %bb.51:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_52:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	setlt.u r9, r4, r15
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r9, zero, .LBB0_43
# %bb.53:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r8, 0
	j .LBB0_43
.LBB0_54:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	addli r16, r24, 0
	lui r24, 523264
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	beq r8, zero, .LBB0_48
.LBB0_55:                               # %scalar.ph674
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r15, r4, .LBB0_49
	j .LBB0_50
.LBB0_56:                               # %vector.body676.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_58
.LBB0_57:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[8:9], r11
	.loc	1 197 13                        # parallel-rne.mlir:197:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	seteq.d r2, r[24:25], r[8:9]
	.loc	1 197 13                        # parallel-rne.mlir:197:13
	stores.w r28, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	bneq r2, zero, .LBB0_40
.LBB0_58:                               # %vector.body676
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[1:2], r[24:25], r[22:23]
	slli r1, r1, 2
	add.s r8, r7, r1
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	add.s r2, r14, r1
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	loads.w r3, 0(r8)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	loads.w r6, 0(r2)
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	and r3, r3, r27
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	and r6, r6, r27
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	seteq r15, r3, r4
	.loc	1 188 20                        # parallel-rne.mlir:188:20
	seteq r17, r3, zero
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	seteq r16, r6, zero
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	seteq r28, r6, r4
	.loc	1 193 20                        # parallel-rne.mlir:193:20
	max.u r3, r3, r6
	setlt.u r3, r4, r3
	.loc	1 186 19                        # parallel-rne.mlir:186:19
	and r6, r15, r16
	.loc	1 189 20                        # parallel-rne.mlir:189:20
	and r15, r17, r28
	lui r28, 523264
	.loc	1 190 20                        # parallel-rne.mlir:190:20
	or r15, r6, r15
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.s r6, r10, r1
	.loc	1 194 20                        # parallel-rne.mlir:194:20
	or r15, r3, r15
	lui r3, 523264
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r15, zero, .LBB0_60
# %bb.59:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r6)
.LBB0_60:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r15, 4(r8)
	loads.w r16, 4(r2)
	and r15, r15, r27
	and r16, r16, r27
	seteq r17, r15, r4
	seteq r20, r15, zero
	seteq r9, r16, r4
	seteq r18, r16, zero
	max.u r15, r15, r16
	setlt.u r15, r4, r15
	and r16, r17, r18
	and r9, r20, r9
	or r9, r16, r9
	or r9, r15, r9
	lui r15, 523264
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r9, zero, .LBB0_62
# %bb.61:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r6)
.LBB0_62:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r9, 8(r8)
	loads.w r16, 8(r2)
	and r9, r9, r27
	and r16, r16, r27
	seteq r17, r9, r4
	seteq r26, r9, zero
	seteq r18, r16, zero
	seteq r20, r16, r4
	max.u r9, r9, r16
	setlt.u r9, r4, r9
	and r16, r17, r18
	and r17, r26, r20
	or r16, r16, r17
	or r9, r9, r16
	lui r16, 523264
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r9, zero, .LBB0_64
# %bb.63:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r6)
.LBB0_64:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r9, r8, r4
	seteq r17, r2, zero
	seteq r18, r2, r4
	seteq r20, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r4, r2
	and r8, r9, r17
	and r9, r20, r18
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 195 20                        # parallel-rne.mlir:195:20
	bneq r2, zero, .LBB0_57
# %bb.65:                               # %vector.body676
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r28, 12(r6)
	j .LBB0_57
.LBB0_66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 166 7 is_stmt 1               # parallel-rne.mlir:166:7
	mfence { sm }
	.loc	1 202 7                         # parallel-rne.mlir:202:7
	addli r1, zero, 1
	bneq r5, r1, .LBB0_33
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 202 7                         # parallel-rne.mlir:202:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 64
	xfence
	zext_int2long r[22:23], r1
	mfence { lm, sm, gm }
	j .LBB0_69
.LBB0_68:                               # %middle.block667
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 210 9 is_stmt 1               # parallel-rne.mlir:210:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[22:23], r2
	beq r1, zero, .LBB0_94
.LBB0_69:                               # %vector.memcheck653
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	.loc	1 211 11                        # parallel-rne.mlir:211:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_84
# %bb.70:                               # %scalar.ph659.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_72
.LBB0_71:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 211 11                        # parallel-rne.mlir:211:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 233 13 is_stmt 1              # parallel-rne.mlir:233:13
	add.s r3, r21, r3
	stores.w r6, 0(r3)
	.loc	1 211 11                        # parallel-rne.mlir:211:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_68
.LBB0_72:                               # %scalar.ph659
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	add.ul r[8:9], r[1:2], r[22:23]
	lui r16, 523264
	slli r3, r8, 2
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.s r6, r14, r3
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	add.s r8, r10, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	loads.w r6, 0(r6)
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	loads.w r24, 0(r8)
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r8, r6, r27
	lui r6, 523264
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	beq r8, r4, .LBB0_74
# %bb.73:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r24, 0
.LBB0_74:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	add.s r9, r7, r3
	loads.w r9, 0(r9)
	and r15, r9, r27
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r15, zero, .LBB0_82
# %bb.75:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r8, zero, .LBB0_83
.LBB0_76:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	beq r15, r4, .LBB0_78
.LBB0_77:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
.LBB0_78:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r9, r4, r8
	lui r8, 523264
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r9, zero, .LBB0_80
# %bb.79:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_80:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r9, r4, r15
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r9, zero, .LBB0_71
# %bb.81:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r8, 0
	j .LBB0_71
.LBB0_82:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	addli r16, r24, 0
	lui r24, 523264
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	beq r8, zero, .LBB0_76
.LBB0_83:                               # %scalar.ph659
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r15, r4, .LBB0_77
	j .LBB0_78
.LBB0_84:                               # %vector.body661.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_86
.LBB0_85:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 211 11 is_stmt 1              # parallel-rne.mlir:211:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[8:9], r11
	.loc	1 233 13                        # parallel-rne.mlir:233:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 211 11                        # parallel-rne.mlir:211:11
	seteq.d r2, r[24:25], r[8:9]
	.loc	1 233 13                        # parallel-rne.mlir:233:13
	stores.w r28, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 211 11                        # parallel-rne.mlir:211:11
	bneq r2, zero, .LBB0_68
.LBB0_86:                               # %vector.body661
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	add.ul r[1:2], r[24:25], r[22:23]
	lui r28, 523264
	slli r1, r1, 2
	add.s r8, r7, r1
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	add.s r2, r14, r1
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	loads.w r3, 0(r8)
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	loads.w r6, 0(r2)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r3, r3, r27
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	and r6, r6, r27
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	seteq r9, r3, r4
	.loc	1 224 20                        # parallel-rne.mlir:224:20
	seteq r20, r3, zero
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	seteq r15, r6, zero
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	seteq r16, r6, r4
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	max.u r3, r3, r6
	setlt.u r3, r4, r3
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	and r6, r9, r15
	.loc	1 225 20                        # parallel-rne.mlir:225:20
	and r9, r20, r16
	.loc	1 226 20                        # parallel-rne.mlir:226:20
	or r9, r6, r9
	.loc	1 214 19                        # parallel-rne.mlir:214:19
	add.s r6, r10, r1
	.loc	1 230 20                        # parallel-rne.mlir:230:20
	or r9, r3, r9
	lui r3, 523264
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r9, zero, .LBB0_88
# %bb.87:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r6)
.LBB0_88:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r9, 4(r8)
	loads.w r15, 4(r2)
	and r9, r9, r27
	and r15, r15, r27
	seteq r16, r9, r4
	seteq r17, r9, zero
	seteq r20, r15, zero
	seteq r26, r15, r4
	max.u r9, r9, r15
	setlt.u r9, r4, r9
	and r15, r16, r20
	and r16, r17, r26
	or r15, r15, r16
	or r9, r9, r15
	lui r15, 523264
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r9, zero, .LBB0_90
# %bb.89:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r6)
.LBB0_90:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r9, 8(r8)
	loads.w r16, 8(r2)
	and r9, r9, r27
	and r16, r16, r27
	seteq r17, r9, r4
	seteq r18, r9, zero
	seteq r20, r16, zero
	seteq r26, r16, r4
	max.u r9, r9, r16
	setlt.u r9, r4, r9
	and r16, r17, r20
	and r17, r18, r26
	or r16, r16, r17
	or r9, r9, r16
	lui r16, 523264
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r9, zero, .LBB0_92
# %bb.91:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r6)
.LBB0_92:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r9, r8, r4
	seteq r17, r2, zero
	seteq r18, r2, r4
	seteq r20, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r4, r2
	and r8, r9, r17
	and r9, r20, r18
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 231 20                        # parallel-rne.mlir:231:20
	bneq r2, zero, .LBB0_85
# %bb.93:                               # %vector.body661
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r28, 12(r6)
	j .LBB0_85
.LBB0_94:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 202 7 is_stmt 1               # parallel-rne.mlir:202:7
	mfence { sm }
	.loc	1 238 7                         # parallel-rne.mlir:238:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_34
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 238 7                         # parallel-rne.mlir:238:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 128
	xfence
	zext_int2long r[22:23], r1
	mfence { lm, sm, gm }
	j .LBB0_97
.LBB0_96:                               # %middle.block652
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 160
	.loc	1 246 9 is_stmt 1               # parallel-rne.mlir:246:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[22:23], r2
	beq r1, zero, .LBB0_122
.LBB0_97:                               # %vector.memcheck638
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_100 Depth 3
	.loc	1 247 11                        # parallel-rne.mlir:247:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_112
# %bb.98:                               # %scalar.ph644.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_100
.LBB0_99:                               # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 247 11                        # parallel-rne.mlir:247:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 269 13 is_stmt 1              # parallel-rne.mlir:269:13
	add.s r3, r21, r3
	stores.w r6, 0(r3)
	.loc	1 247 11                        # parallel-rne.mlir:247:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_96
.LBB0_100:                              # %scalar.ph644
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	add.ul r[8:9], r[1:2], r[22:23]
	lui r16, 523264
	slli r3, r8, 2
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.s r6, r14, r3
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	add.s r8, r10, r3
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	loads.w r6, 0(r6)
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	loads.w r24, 0(r8)
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	and r8, r6, r27
	lui r6, 523264
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	beq r8, r4, .LBB0_102
# %bb.101:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r24, 0
.LBB0_102:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	add.s r9, r7, r3
	loads.w r9, 0(r9)
	and r15, r9, r27
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r15, zero, .LBB0_110
# %bb.103:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r8, zero, .LBB0_111
.LBB0_104:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	beq r15, r4, .LBB0_106
.LBB0_105:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
.LBB0_106:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	setlt.u r9, r4, r8
	lui r8, 523264
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r9, zero, .LBB0_108
# %bb.107:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_108:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	setlt.u r9, r4, r15
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r9, zero, .LBB0_99
# %bb.109:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r8, 0
	j .LBB0_99
.LBB0_110:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	addli r16, r24, 0
	lui r24, 523264
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	beq r8, zero, .LBB0_104
.LBB0_111:                              # %scalar.ph644
                                        #   in Loop: Header=BB0_100 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r15, r4, .LBB0_105
	j .LBB0_106
.LBB0_112:                              # %vector.body646.preheader
                                        #   in Loop: Header=BB0_97 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 247 11 is_stmt 1              # parallel-rne.mlir:247:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[8:9], r11
	.loc	1 269 13                        # parallel-rne.mlir:269:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 247 11                        # parallel-rne.mlir:247:11
	seteq.d r2, r[24:25], r[8:9]
	.loc	1 269 13                        # parallel-rne.mlir:269:13
	stores.w r28, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 247 11                        # parallel-rne.mlir:247:11
	bneq r2, zero, .LBB0_96
.LBB0_114:                              # %vector.body646
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_97 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	add.ul r[1:2], r[24:25], r[22:23]
	lui r28, 523264
	slli r1, r1, 2
	add.s r8, r7, r1
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.s r2, r14, r1
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	loads.w r3, 0(r8)
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	loads.w r6, 0(r2)
	.loc	1 255 19                        # parallel-rne.mlir:255:19
	and r3, r3, r27
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	and r6, r6, r27
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	seteq r9, r3, r4
	.loc	1 260 20                        # parallel-rne.mlir:260:20
	seteq r20, r3, zero
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	seteq r15, r6, zero
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	seteq r16, r6, r4
	.loc	1 265 20                        # parallel-rne.mlir:265:20
	max.u r3, r3, r6
	setlt.u r3, r4, r3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r6, r9, r15
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	and r9, r20, r16
	.loc	1 262 20                        # parallel-rne.mlir:262:20
	or r9, r6, r9
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	add.s r6, r10, r1
	.loc	1 266 20                        # parallel-rne.mlir:266:20
	or r9, r3, r9
	lui r3, 523264
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r9, zero, .LBB0_116
# %bb.115:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r6)
.LBB0_116:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r9, 4(r8)
	loads.w r15, 4(r2)
	and r9, r9, r27
	and r15, r15, r27
	seteq r16, r9, r4
	seteq r17, r9, zero
	seteq r20, r15, zero
	seteq r26, r15, r4
	max.u r9, r9, r15
	setlt.u r9, r4, r9
	and r15, r16, r20
	and r16, r17, r26
	or r15, r15, r16
	or r9, r9, r15
	lui r15, 523264
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r9, zero, .LBB0_118
# %bb.117:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r6)
.LBB0_118:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r9, 8(r8)
	loads.w r16, 8(r2)
	and r9, r9, r27
	and r16, r16, r27
	seteq r17, r9, r4
	seteq r18, r9, zero
	seteq r20, r16, zero
	seteq r26, r16, r4
	max.u r9, r9, r16
	setlt.u r9, r4, r9
	and r16, r17, r20
	and r17, r18, r26
	or r16, r16, r17
	or r9, r9, r16
	lui r16, 523264
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r9, zero, .LBB0_120
# %bb.119:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r6)
.LBB0_120:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r9, r8, r4
	seteq r17, r2, zero
	seteq r18, r2, r4
	seteq r20, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r4, r2
	and r8, r9, r17
	and r9, r20, r18
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 267 20                        # parallel-rne.mlir:267:20
	bneq r2, zero, .LBB0_113
# %bb.121:                              # %vector.body646
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r28, 12(r6)
	j .LBB0_113
.LBB0_122:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 238 7 is_stmt 1               # parallel-rne.mlir:238:7
	mfence { sm }
	.loc	1 274 7                         # parallel-rne.mlir:274:7
	addli r1, zero, 3
	bneq r5, r1, .LBB0_35
.LBB0_123:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 274 7                         # parallel-rne.mlir:274:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 192
	xfence
	zext_int2long r[22:23], r1
	mfence { lm, sm, gm }
	j .LBB0_125
.LBB0_124:                              # %middle.block637
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 224
	.loc	1 282 9 is_stmt 1               # parallel-rne.mlir:282:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[22:23], r2
	beq r1, zero, .LBB0_150
.LBB0_125:                              # %vector.memcheck623
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_128 Depth 3
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_140
# %bb.126:                              # %scalar.ph629.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_128
.LBB0_127:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 305 13 is_stmt 1              # parallel-rne.mlir:305:13
	add.s r3, r21, r3
	stores.w r6, 0(r3)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_124
.LBB0_128:                              # %scalar.ph629
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[8:9], r[1:2], r[22:23]
	lui r16, 523264
	slli r3, r8, 2
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.s r6, r14, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.s r8, r10, r3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	loads.w r6, 0(r6)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	loads.w r24, 0(r8)
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	and r8, r6, r27
	lui r6, 523264
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	beq r8, r4, .LBB0_130
# %bb.129:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r24, 0
.LBB0_130:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	add.s r9, r7, r3
	loads.w r9, 0(r9)
	and r15, r9, r27
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r15, zero, .LBB0_138
# %bb.131:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r8, zero, .LBB0_139
.LBB0_132:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	beq r15, r4, .LBB0_134
.LBB0_133:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
.LBB0_134:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	setlt.u r9, r4, r8
	lui r8, 523264
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r9, zero, .LBB0_136
# %bb.135:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_136:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	setlt.u r9, r4, r15
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r9, zero, .LBB0_127
# %bb.137:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r8, 0
	j .LBB0_127
.LBB0_138:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	addli r16, r24, 0
	lui r24, 523264
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	beq r8, zero, .LBB0_132
.LBB0_139:                              # %scalar.ph629
                                        #   in Loop: Header=BB0_128 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r15, r4, .LBB0_133
	j .LBB0_134
.LBB0_140:                              # %vector.body631.preheader
                                        #   in Loop: Header=BB0_125 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_142
.LBB0_141:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[8:9], r11
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	seteq.d r2, r[24:25], r[8:9]
	.loc	1 305 13                        # parallel-rne.mlir:305:13
	stores.w r28, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	bneq r2, zero, .LBB0_124
.LBB0_142:                              # %vector.body631
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_125 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[1:2], r[24:25], r[22:23]
	lui r28, 523264
	slli r1, r1, 2
	add.s r8, r7, r1
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.s r2, r14, r1
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	loads.w r3, 0(r8)
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	loads.w r6, 0(r2)
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	and r3, r3, r27
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	and r6, r6, r27
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	seteq r9, r3, r4
	.loc	1 296 20                        # parallel-rne.mlir:296:20
	seteq r20, r3, zero
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	seteq r15, r6, zero
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	seteq r16, r6, r4
	.loc	1 301 20                        # parallel-rne.mlir:301:20
	max.u r3, r3, r6
	setlt.u r3, r4, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r6, r9, r15
	.loc	1 297 20                        # parallel-rne.mlir:297:20
	and r9, r20, r16
	.loc	1 298 20                        # parallel-rne.mlir:298:20
	or r9, r6, r9
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	add.s r6, r10, r1
	.loc	1 302 20                        # parallel-rne.mlir:302:20
	or r9, r3, r9
	lui r3, 523264
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r9, zero, .LBB0_144
# %bb.143:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r6)
.LBB0_144:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r9, 4(r8)
	loads.w r15, 4(r2)
	and r9, r9, r27
	and r15, r15, r27
	seteq r16, r9, r4
	seteq r17, r9, zero
	seteq r20, r15, zero
	seteq r26, r15, r4
	max.u r9, r9, r15
	setlt.u r9, r4, r9
	and r15, r16, r20
	and r16, r17, r26
	or r15, r15, r16
	or r9, r9, r15
	lui r15, 523264
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r9, zero, .LBB0_146
# %bb.145:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r6)
.LBB0_146:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r9, 8(r8)
	loads.w r16, 8(r2)
	and r9, r9, r27
	and r16, r16, r27
	seteq r17, r9, r4
	seteq r18, r9, zero
	seteq r20, r16, zero
	seteq r26, r16, r4
	max.u r9, r9, r16
	setlt.u r9, r4, r9
	and r16, r17, r20
	and r17, r18, r26
	or r16, r16, r17
	or r9, r9, r16
	lui r16, 523264
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r9, zero, .LBB0_148
# %bb.147:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r6)
.LBB0_148:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r9, r8, r4
	seteq r17, r2, zero
	seteq r18, r2, r4
	seteq r20, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r4, r2
	and r8, r9, r17
	and r9, r20, r18
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 303 20                        # parallel-rne.mlir:303:20
	bneq r2, zero, .LBB0_141
# %bb.149:                              # %vector.body631
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r28, 12(r6)
	j .LBB0_141
.LBB0_150:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 274 7 is_stmt 1               # parallel-rne.mlir:274:7
	mfence { sm }
	.loc	1 310 7                         # parallel-rne.mlir:310:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_36
.LBB0_151:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 310 7                         # parallel-rne.mlir:310:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 256
	xfence
	zext_int2long r[22:23], r1
	mfence { lm, sm, gm }
	j .LBB0_153
.LBB0_152:                              # %middle.block622
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 288
	.loc	1 318 9 is_stmt 1               # parallel-rne.mlir:318:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[22:23], r2
	beq r1, zero, .LBB0_178
.LBB0_153:                              # %vector.memcheck608
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_156 Depth 3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_168
# %bb.154:                              # %scalar.ph614.preheader
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_156
.LBB0_155:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 341 13 is_stmt 1              # parallel-rne.mlir:341:13
	add.s r3, r21, r3
	stores.w r6, 0(r3)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_152
.LBB0_156:                              # %scalar.ph614
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[8:9], r[1:2], r[22:23]
	lui r16, 523264
	slli r3, r8, 2
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.s r6, r14, r3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.s r8, r10, r3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	loads.w r6, 0(r6)
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	loads.w r24, 0(r8)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r8, r6, r27
	lui r6, 523264
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	beq r8, r4, .LBB0_158
# %bb.157:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r24, 0
.LBB0_158:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	add.s r9, r7, r3
	loads.w r9, 0(r9)
	and r15, r9, r27
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r15, zero, .LBB0_166
# %bb.159:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r8, zero, .LBB0_167
.LBB0_160:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	beq r15, r4, .LBB0_162
.LBB0_161:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
.LBB0_162:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r9, r4, r8
	lui r8, 523264
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r9, zero, .LBB0_164
# %bb.163:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_164:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r9, r4, r15
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r9, zero, .LBB0_155
# %bb.165:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r8, 0
	j .LBB0_155
.LBB0_166:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	addli r16, r24, 0
	lui r24, 523264
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	beq r8, zero, .LBB0_160
.LBB0_167:                              # %scalar.ph614
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r15, r4, .LBB0_161
	j .LBB0_162
.LBB0_168:                              # %vector.body616.preheader
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_170
.LBB0_169:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 319 11 is_stmt 1              # parallel-rne.mlir:319:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[8:9], r11
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	seteq.d r2, r[24:25], r[8:9]
	.loc	1 341 13                        # parallel-rne.mlir:341:13
	stores.w r28, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 319 11                        # parallel-rne.mlir:319:11
	bneq r2, zero, .LBB0_152
.LBB0_170:                              # %vector.body616
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	add.ul r[1:2], r[24:25], r[22:23]
	lui r28, 523264
	slli r1, r1, 2
	add.s r8, r7, r1
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.s r2, r14, r1
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	loads.w r3, 0(r8)
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	loads.w r6, 0(r2)
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	and r3, r3, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r6, r6, r27
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	seteq r9, r3, r4
	.loc	1 332 20                        # parallel-rne.mlir:332:20
	seteq r20, r3, zero
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	seteq r15, r6, zero
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	seteq r16, r6, r4
	.loc	1 337 20                        # parallel-rne.mlir:337:20
	max.u r3, r3, r6
	setlt.u r3, r4, r3
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	and r6, r9, r15
	.loc	1 333 20                        # parallel-rne.mlir:333:20
	and r9, r20, r16
	.loc	1 334 20                        # parallel-rne.mlir:334:20
	or r9, r6, r9
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	add.s r6, r10, r1
	.loc	1 338 20                        # parallel-rne.mlir:338:20
	or r9, r3, r9
	lui r3, 523264
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r9, zero, .LBB0_172
# %bb.171:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r6)
.LBB0_172:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r9, 4(r8)
	loads.w r15, 4(r2)
	and r9, r9, r27
	and r15, r15, r27
	seteq r16, r9, r4
	seteq r17, r9, zero
	seteq r20, r15, zero
	seteq r26, r15, r4
	max.u r9, r9, r15
	setlt.u r9, r4, r9
	and r15, r16, r20
	and r16, r17, r26
	or r15, r15, r16
	or r9, r9, r15
	lui r15, 523264
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r9, zero, .LBB0_174
# %bb.173:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r6)
.LBB0_174:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r9, 8(r8)
	loads.w r16, 8(r2)
	and r9, r9, r27
	and r16, r16, r27
	seteq r17, r9, r4
	seteq r18, r9, zero
	seteq r20, r16, zero
	seteq r26, r16, r4
	max.u r9, r9, r16
	setlt.u r9, r4, r9
	and r16, r17, r20
	and r17, r18, r26
	or r16, r16, r17
	or r9, r9, r16
	lui r16, 523264
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r9, zero, .LBB0_176
# %bb.175:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r6)
.LBB0_176:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r9, r8, r4
	seteq r17, r2, zero
	seteq r18, r2, r4
	seteq r20, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r4, r2
	and r8, r9, r17
	and r9, r20, r18
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 339 20                        # parallel-rne.mlir:339:20
	bneq r2, zero, .LBB0_169
# %bb.177:                              # %vector.body616
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r28, 12(r6)
	j .LBB0_169
.LBB0_178:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 310 7 is_stmt 1               # parallel-rne.mlir:310:7
	mfence { sm }
	.loc	1 346 7                         # parallel-rne.mlir:346:7
	addli r1, zero, 5
	bneq r5, r1, .LBB0_37
.LBB0_179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 346 7                         # parallel-rne.mlir:346:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 320
	xfence
	zext_int2long r[22:23], r1
	mfence { lm, sm, gm }
	j .LBB0_181
.LBB0_180:                              # %middle.block607
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 352
	.loc	1 354 9 is_stmt 1               # parallel-rne.mlir:354:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[22:23], r2
	beq r1, zero, .LBB0_206
.LBB0_181:                              # %vector.memcheck593
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_198 Depth 3
                                        #       Child Loop BB0_184 Depth 3
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_196
# %bb.182:                              # %scalar.ph599.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_184
.LBB0_183:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 377 13 is_stmt 1              # parallel-rne.mlir:377:13
	add.s r3, r21, r3
	stores.w r6, 0(r3)
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_180
.LBB0_184:                              # %scalar.ph599
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	add.ul r[8:9], r[1:2], r[22:23]
	lui r16, 523264
	slli r3, r8, 2
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.s r6, r14, r3
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	add.s r8, r10, r3
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	loads.w r6, 0(r6)
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	loads.w r24, 0(r8)
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	and r8, r6, r27
	lui r6, 523264
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	beq r8, r4, .LBB0_186
# %bb.185:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r24, 0
.LBB0_186:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	add.s r9, r7, r3
	loads.w r9, 0(r9)
	and r15, r9, r27
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r15, zero, .LBB0_194
# %bb.187:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r8, zero, .LBB0_195
.LBB0_188:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	beq r15, r4, .LBB0_190
.LBB0_189:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
.LBB0_190:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r9, r4, r8
	lui r8, 523264
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r9, zero, .LBB0_192
# %bb.191:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_192:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	setlt.u r9, r4, r15
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r9, zero, .LBB0_183
# %bb.193:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r8, 0
	j .LBB0_183
.LBB0_194:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	addli r16, r24, 0
	lui r24, 523264
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	beq r8, zero, .LBB0_188
.LBB0_195:                              # %scalar.ph599
                                        #   in Loop: Header=BB0_184 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r15, r4, .LBB0_189
	j .LBB0_190
.LBB0_196:                              # %vector.body601.preheader
                                        #   in Loop: Header=BB0_181 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_198
.LBB0_197:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 355 11 is_stmt 1              # parallel-rne.mlir:355:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[8:9], r11
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	seteq.d r2, r[24:25], r[8:9]
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	stores.w r28, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 355 11                        # parallel-rne.mlir:355:11
	bneq r2, zero, .LBB0_180
.LBB0_198:                              # %vector.body601
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_181 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	add.ul r[1:2], r[24:25], r[22:23]
	lui r28, 523264
	slli r1, r1, 2
	add.s r8, r7, r1
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.s r2, r14, r1
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	loads.w r3, 0(r8)
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	loads.w r6, 0(r2)
	.loc	1 363 19                        # parallel-rne.mlir:363:19
	and r3, r3, r27
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	and r6, r6, r27
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	seteq r9, r3, r4
	.loc	1 368 20                        # parallel-rne.mlir:368:20
	seteq r20, r3, zero
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	seteq r15, r6, zero
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	seteq r16, r6, r4
	.loc	1 373 20                        # parallel-rne.mlir:373:20
	max.u r3, r3, r6
	setlt.u r3, r4, r3
	.loc	1 366 19                        # parallel-rne.mlir:366:19
	and r6, r9, r15
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	and r9, r20, r16
	.loc	1 370 20                        # parallel-rne.mlir:370:20
	or r9, r6, r9
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	add.s r6, r10, r1
	.loc	1 374 20                        # parallel-rne.mlir:374:20
	or r9, r3, r9
	lui r3, 523264
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r9, zero, .LBB0_200
# %bb.199:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r6)
.LBB0_200:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r9, 4(r8)
	loads.w r15, 4(r2)
	and r9, r9, r27
	and r15, r15, r27
	seteq r16, r9, r4
	seteq r17, r9, zero
	seteq r20, r15, zero
	seteq r26, r15, r4
	max.u r9, r9, r15
	setlt.u r9, r4, r9
	and r15, r16, r20
	and r16, r17, r26
	or r15, r15, r16
	or r9, r9, r15
	lui r15, 523264
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r9, zero, .LBB0_202
# %bb.201:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r6)
.LBB0_202:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r9, 8(r8)
	loads.w r16, 8(r2)
	and r9, r9, r27
	and r16, r16, r27
	seteq r17, r9, r4
	seteq r18, r9, zero
	seteq r20, r16, zero
	seteq r26, r16, r4
	max.u r9, r9, r16
	setlt.u r9, r4, r9
	and r16, r17, r20
	and r17, r18, r26
	or r16, r16, r17
	or r9, r9, r16
	lui r16, 523264
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r9, zero, .LBB0_204
# %bb.203:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r6)
.LBB0_204:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r9, r8, r4
	seteq r17, r2, zero
	seteq r18, r2, r4
	seteq r20, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r4, r2
	and r8, r9, r17
	and r9, r20, r18
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 375 20                        # parallel-rne.mlir:375:20
	bneq r2, zero, .LBB0_197
# %bb.205:                              # %vector.body601
                                        #   in Loop: Header=BB0_198 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r28, 12(r6)
	j .LBB0_197
.LBB0_206:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 346 7 is_stmt 1               # parallel-rne.mlir:346:7
	mfence { sm }
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	addli r1, zero, 6
	bneq r5, r1, .LBB0_38
.LBB0_207:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 382 7                         # parallel-rne.mlir:382:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 384
	xfence
	zext_int2long r[22:23], r1
	mfence { lm, sm, gm }
	j .LBB0_209
.LBB0_208:                              # %middle.block592
                                        #   in Loop: Header=BB0_209 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 416
	.loc	1 390 9 is_stmt 1               # parallel-rne.mlir:390:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[22:23], r2
	beq r1, zero, .LBB0_234
.LBB0_209:                              # %vector.memcheck578
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_226 Depth 3
                                        #       Child Loop BB0_212 Depth 3
	.loc	1 391 11                        # parallel-rne.mlir:391:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_224
# %bb.210:                              # %scalar.ph584.preheader
                                        #   in Loop: Header=BB0_209 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_212
.LBB0_211:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 391 11                        # parallel-rne.mlir:391:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 413 13 is_stmt 1              # parallel-rne.mlir:413:13
	add.s r3, r21, r3
	stores.w r6, 0(r3)
	.loc	1 391 11                        # parallel-rne.mlir:391:11
	setlt.ul r8, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r8, zero, .LBB0_208
.LBB0_212:                              # %scalar.ph584
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	add.ul r[8:9], r[1:2], r[22:23]
	lui r16, 523264
	slli r3, r8, 2
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	add.s r6, r14, r3
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	add.s r8, r10, r3
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	loads.w r6, 0(r6)
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	loads.w r24, 0(r8)
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	and r8, r6, r27
	lui r6, 523264
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	beq r8, r4, .LBB0_214
# %bb.213:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r16, r24, 0
.LBB0_214:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	add.s r9, r7, r3
	loads.w r9, 0(r9)
	and r15, r9, r27
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r15, zero, .LBB0_222
# %bb.215:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r8, zero, .LBB0_223
.LBB0_216:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	beq r15, r4, .LBB0_218
.LBB0_217:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
.LBB0_218:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	setlt.u r9, r4, r8
	lui r8, 523264
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r9, zero, .LBB0_220
# %bb.219:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_220:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	setlt.u r9, r4, r15
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r9, zero, .LBB0_211
# %bb.221:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r8, 0
	j .LBB0_211
.LBB0_222:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	addli r16, r24, 0
	lui r24, 523264
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	beq r8, zero, .LBB0_216
.LBB0_223:                              # %scalar.ph584
                                        #   in Loop: Header=BB0_212 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r16, 0
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r15, r4, .LBB0_217
	j .LBB0_218
.LBB0_224:                              # %vector.body586.preheader
                                        #   in Loop: Header=BB0_209 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_226
.LBB0_225:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 391 11 is_stmt 1              # parallel-rne.mlir:391:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[8:9], r11
	.loc	1 413 13                        # parallel-rne.mlir:413:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 391 11                        # parallel-rne.mlir:391:11
	seteq.d r2, r[24:25], r[8:9]
	.loc	1 413 13                        # parallel-rne.mlir:413:13
	stores.w r28, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 391 11                        # parallel-rne.mlir:391:11
	bneq r2, zero, .LBB0_208
.LBB0_226:                              # %vector.body586
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_209 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	add.ul r[1:2], r[24:25], r[22:23]
	lui r28, 523264
	slli r1, r1, 2
	add.s r8, r7, r1
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	add.s r2, r14, r1
	.loc	1 392 19                        # parallel-rne.mlir:392:19
	loads.w r3, 0(r8)
	.loc	1 393 19                        # parallel-rne.mlir:393:19
	loads.w r6, 0(r2)
	.loc	1 399 19                        # parallel-rne.mlir:399:19
	and r3, r3, r27
	.loc	1 397 19                        # parallel-rne.mlir:397:19
	and r6, r6, r27
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	seteq r9, r3, r4
	.loc	1 404 20                        # parallel-rne.mlir:404:20
	seteq r20, r3, zero
	.loc	1 401 19                        # parallel-rne.mlir:401:19
	seteq r15, r6, zero
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	seteq r16, r6, r4
	.loc	1 409 20                        # parallel-rne.mlir:409:20
	max.u r3, r3, r6
	setlt.u r3, r4, r3
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	and r6, r9, r15
	.loc	1 405 20                        # parallel-rne.mlir:405:20
	and r9, r20, r16
	.loc	1 406 20                        # parallel-rne.mlir:406:20
	or r9, r6, r9
	.loc	1 394 19                        # parallel-rne.mlir:394:19
	add.s r6, r10, r1
	.loc	1 410 20                        # parallel-rne.mlir:410:20
	or r9, r3, r9
	lui r3, 523264
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r9, zero, .LBB0_228
# %bb.227:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r6)
.LBB0_228:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r9, 4(r8)
	loads.w r15, 4(r2)
	and r9, r9, r27
	and r15, r15, r27
	seteq r16, r9, r4
	seteq r17, r9, zero
	seteq r20, r15, zero
	seteq r26, r15, r4
	max.u r9, r9, r15
	setlt.u r9, r4, r9
	and r15, r16, r20
	and r16, r17, r26
	or r15, r15, r16
	or r9, r9, r15
	lui r15, 523264
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r9, zero, .LBB0_230
# %bb.229:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r6)
.LBB0_230:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r9, 8(r8)
	loads.w r16, 8(r2)
	and r9, r9, r27
	and r16, r16, r27
	seteq r17, r9, r4
	seteq r18, r9, zero
	seteq r20, r16, zero
	seteq r26, r16, r4
	max.u r9, r9, r16
	setlt.u r9, r4, r9
	and r16, r17, r20
	and r17, r18, r26
	or r16, r16, r17
	or r9, r9, r16
	lui r16, 523264
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r9, zero, .LBB0_232
# %bb.231:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r6)
.LBB0_232:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	loads.w r8, 12(r8)
	loads.w r2, 12(r2)
	lui r26, 524288
	and r8, r8, r27
	and r2, r2, r27
	seteq r9, r8, r4
	seteq r17, r2, zero
	seteq r18, r2, r4
	seteq r20, r8, zero
	max.u r2, r8, r2
	setlt.u r2, r4, r2
	and r8, r9, r17
	and r9, r20, r18
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 411 20                        # parallel-rne.mlir:411:20
	bneq r2, zero, .LBB0_225
# %bb.233:                              # %vector.body586
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r28, 12(r6)
	j .LBB0_225
.LBB0_234:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 382 7 is_stmt 1               # parallel-rne.mlir:382:7
	mfence { sm }
	.loc	1 418 7                         # parallel-rne.mlir:418:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_263
.LBB0_235:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -244(r30)                 # 4-byte Folded Reload
	addli r12, zero, 1
	min.u r1, r1, r2
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 418 7                         # parallel-rne.mlir:418:7
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 448
	xfence
	zext_int2long r[17:18], r1
	mfence { lm, sm, gm }
	j .LBB0_237
.LBB0_236:                              # %middle.block577
                                        #   in Loop: Header=BB0_237 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 480
	.loc	1 426 9 is_stmt 1               # parallel-rne.mlir:426:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[17:18], r2
	beq r1, zero, .LBB0_262
.LBB0_237:                              # %vector.memcheck563
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_254 Depth 3
                                        #       Child Loop BB0_240 Depth 3
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_252
# %bb.238:                              # %scalar.ph569.preheader
                                        #   in Loop: Header=BB0_237 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_240
.LBB0_239:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 449 13 is_stmt 1              # parallel-rne.mlir:449:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	setlt.ul r2, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r2, zero, .LBB0_236
.LBB0_240:                              # %scalar.ph569
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_237 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	add.ul r[1:2], r[15:16], r[17:18]
	lui r23, 523264
	slli r1, r1, 2
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.s r2, r14, r1
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	add.s r3, r10, r1
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	loads.w r2, 0(r2)
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	loads.w r24, 0(r3)
	lui r3, 523264
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	and r8, r2, r27
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	beq r8, r4, .LBB0_242
# %bb.241:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r23, r24, 0
.LBB0_242:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	add.s r2, r7, r1
	loads.w r2, 0(r2)
	and r22, r2, r27
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r22, zero, .LBB0_250
# %bb.243:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r8, zero, .LBB0_251
.LBB0_244:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	beq r22, r4, .LBB0_246
.LBB0_245:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r23, 0
.LBB0_246:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	setlt.u r2, r4, r8
	lui r8, 523264
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r2, zero, .LBB0_248
# %bb.247:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_248:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	setlt.u r2, r4, r22
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r2, zero, .LBB0_239
# %bb.249:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_239
.LBB0_250:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	addli r23, r24, 0
	lui r24, 523264
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	beq r8, zero, .LBB0_244
.LBB0_251:                              # %scalar.ph569
                                        #   in Loop: Header=BB0_240 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r23, 0
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r22, r4, .LBB0_245
	j .LBB0_246
.LBB0_252:                              # %vector.body571.preheader
                                        #   in Loop: Header=BB0_237 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[22:23], zero
	j .LBB0_254
.LBB0_253:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 427 11 is_stmt 1              # parallel-rne.mlir:427:11
	addli.d r[22:23], r[22:23], 4
	zext_int2long r[24:25], r11
	.loc	1 449 13                        # parallel-rne.mlir:449:13
	add.s r1, r21, r1
	lui r20, 1024
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	seteq.d r2, r[22:23], r[24:25]
	.loc	1 449 13                        # parallel-rne.mlir:449:13
	stores.w r8, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	bneq r2, zero, .LBB0_236
.LBB0_254:                              # %vector.body571
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_237 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	add.ul r[8:9], r[22:23], r[17:18]
	slli r1, r8, 2
	add.s r24, r7, r1
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	add.s r25, r14, r1
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	add.s r28, r10, r1
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	loads.w r3, 0(r24)
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	loads.w r8, 0(r25)
	.loc	1 435 19                        # parallel-rne.mlir:435:19
	and r3, r3, r27
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	and r8, r8, r27
	.loc	1 436 19                        # parallel-rne.mlir:436:19
	seteq r9, r3, r4
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	seteq r20, r3, zero
	.loc	1 437 19                        # parallel-rne.mlir:437:19
	seteq r15, r8, zero
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	seteq r16, r8, r4
	.loc	1 445 20                        # parallel-rne.mlir:445:20
	max.u r3, r3, r8
	setlt.u r3, r4, r3
	.loc	1 438 19                        # parallel-rne.mlir:438:19
	and r8, r9, r15
	.loc	1 441 20                        # parallel-rne.mlir:441:20
	and r9, r20, r16
	.loc	1 442 20                        # parallel-rne.mlir:442:20
	or r8, r8, r9
	.loc	1 446 20                        # parallel-rne.mlir:446:20
	or r9, r3, r8
	lui r8, 523264
	lui r3, 523264
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r9, zero, .LBB0_256
# %bb.255:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r28)
.LBB0_256:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	loads.w r9, 4(r24)
	loads.w r15, 4(r25)
	and r9, r9, r27
	and r15, r15, r27
	seteq r16, r9, r4
	seteq r2, r9, zero
	seteq r26, r15, r4
	seteq r20, r15, zero
	max.u r9, r9, r15
	setlt.u r9, r4, r9
	and r15, r16, r20
	and r2, r2, r26
	or r2, r15, r2
	lui r15, 523264
	or r2, r9, r2
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r2, zero, .LBB0_258
# %bb.257:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r28)
.LBB0_258:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	loads.w r2, 8(r24)
	loads.w r9, 8(r25)
	and r2, r2, r27
	and r9, r9, r27
	seteq r16, r2, r4
	seteq r6, r2, zero
	seteq r26, r9, r4
	seteq r20, r9, zero
	max.u r2, r2, r9
	setlt.u r2, r4, r2
	and r9, r16, r20
	and r6, r6, r26
	lui r16, 523264
	or r6, r9, r6
	or r2, r2, r6
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r2, zero, .LBB0_260
# %bb.259:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r28)
.LBB0_260:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	loads.w r2, 12(r24)
	loads.w r6, 12(r25)
	lui r26, 524288
	and r2, r2, r27
	and r6, r6, r27
	seteq r9, r2, r4
	seteq r25, r2, zero
	seteq r20, r6, zero
	seteq r24, r6, r4
	max.u r2, r2, r6
	setlt.u r2, r4, r2
	and r6, r9, r20
	and r9, r25, r24
	or r6, r6, r9
	or r2, r2, r6
	.loc	1 447 20                        # parallel-rne.mlir:447:20
	bneq r2, zero, .LBB0_253
# %bb.261:                              # %vector.body571
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 12(r28)
	j .LBB0_253
.LBB0_262:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 418 7 is_stmt 1               # parallel-rne.mlir:418:7
	mfence { sm }
.LBB0_263:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 454 7                         # parallel-rne.mlir:454:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 455 7                         # parallel-rne.mlir:455:7
	addli r1, zero, 3
	.loc	1 454 7                         # parallel-rne.mlir:454:7
	sync_core
	.loc	1 455 7                         # parallel-rne.mlir:455:7
	bneq r5, r1, .LBB0_265
# %bb.264:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 18
	addli r3, zero, 2
	xsignal r1, 0
	.loc	1 456 7                         # parallel-rne.mlir:456:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	addli r1, zero, 26
	xsignal r1, 0
	.loc	1 458 7                         # parallel-rne.mlir:458:7
	addli r1, zero, 27
	xsignal r1, 0
	.loc	1 460 13                        # parallel-rne.mlir:460:13
	loadli.w r1,  -36(r30)
	mod.s r2, r1, r3
	addli r1, r1, 1
	storeli.w r1, -36(r30)
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	slli r2, r2, 11
	add.s r2, r2, r1
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	addli r1, zero, 34
	xwait r1, 0
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	addli r1, zero, 38
	xwait r1, 0
	j .LBB0_267
.LBB0_265:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 460 13                        # parallel-rne.mlir:460:13
	loadli.w r1,  -36(r30)
	addli r3, zero, 2
	loadli.w r6,  -328(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r3
	addli r1, r1, 1
	storeli.w r1, -36(r30)
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	addli r1, zero, 5
	.loc	1 460 13                        # parallel-rne.mlir:460:13
	slli r2, r2, 11
	add.s r2, r2, r6
	.loc	1 461 7                         # parallel-rne.mlir:461:7
	bneq r5, r1, .LBB0_267
# %bb.266:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 18
	lui r6, 260096
	addli r7, zero, 511
	xwait r1, 0
	addli r1, zero, 27
	xwait r1, 0
	addli r1, zero, 35
	xwait r1, 0
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -344(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r6, r1, zero, 0
	addli r1, zero, 1
	addli r6, zero, 28
	ew_cfg zero, r7, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	dsmadd r2, r14, r21, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r6, 0
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	lock zero, r3
	ew_cfg zero, zero, zero, 1
	loadli.w r6,  -348(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r6, zero, zero, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	addli r1, zero, 34
	hp_ssmul r2, r2, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
.LBB0_267:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -268(r30)                 # 4-byte Folded Reload
	.loc	1 467 7 is_stmt 1               # parallel-rne.mlir:467:7
	xfence
	mod.s r1, r1, r3
	loadli.w r3,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	mfence { lm, sm, gm }
	slli r1, r1, 11
	add.s r10, r1, r3
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r1, zero, 255
	sub.s r28, r10, r2
	csr_set csr5, r1
	sync_core
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	beq r5, zero, .LBB0_275
# %bb.268:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 487 7                         # parallel-rne.mlir:487:7
	addli r1, zero, 1
	beq r5, r1, .LBB0_281
.LBB0_269:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_287
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 521 7                         # parallel-rne.mlir:521:7
	addli r1, zero, 3
	beq r5, r1, .LBB0_293
.LBB0_271:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_299
.LBB0_272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 555 7                         # parallel-rne.mlir:555:7
	addli r1, zero, 5
	beq r5, r1, .LBB0_305
.LBB0_273:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 572 7                         # parallel-rne.mlir:572:7
	addli r1, zero, 6
	beq r5, r1, .LBB0_311
.LBB0_274:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_317
	j .LBB0_323
.LBB0_275:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	.loc	1 470 7 is_stmt 1               # parallel-rne.mlir:470:7
	xfence
	addli r3, zero, 1
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_277
.LBB0_276:                              # %middle.block562
                                        #   in Loop: Header=BB0_277 Depth=2
	.loc	1 478 9                         # parallel-rne.mlir:478:9
	andi r5, r3, 1
	zext_int2long r[7:8], r11
	addli r3, zero, 0
	beq r5, zero, .LBB0_280
.LBB0_277:                              # %vector.memcheck553
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_279 Depth 3
                                        #       Child Loop BB0_278 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 479 11 is_stmt 1              # parallel-rne.mlir:479:11
	beq r1, zero, .LBB0_279
.LBB0_278:                              # %scalar.ph555
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 479 11                        # parallel-rne.mlir:479:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	slli r5, r5, 2
	.loc	1 479 11                        # parallel-rne.mlir:479:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	add.s r6, r2, r5
	.loc	1 482 13                        # parallel-rne.mlir:482:13
	add.s r5, r10, r5
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	loads.w r6, 0(r6)
	.loc	1 482 13                        # parallel-rne.mlir:482:13
	stores.w r6, 0(r5)
	.loc	1 479 11                        # parallel-rne.mlir:479:11
	bneq r9, zero, .LBB0_278
	j .LBB0_276
.LBB0_279:                              # %vector.body557
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_277 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	add.ul r[17:18], r[15:16], r[7:8]
	.loc	1 479 11                        # parallel-rne.mlir:479:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[5:6], r11
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	slli r9, r17, 2
	.loc	1 479 11                        # parallel-rne.mlir:479:11
	seteq.d r5, r[15:16], r[5:6]
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	add.s r17, r2, r9
	.loc	1 482 13                        # parallel-rne.mlir:482:13
	add.s r9, r10, r9
	.loc	1 480 19                        # parallel-rne.mlir:480:19
	loads.w r18, 12(r17)
	loads.w r20, 8(r17)
	loads.w r22, 4(r17)
	loads.w r23, 0(r17)
	loads.w r24, 28(r17)
	loads.w r25, 24(r17)
	loads.w r26, 20(r17)
	loads.w r17, 16(r17)
	.loc	1 482 13                        # parallel-rne.mlir:482:13
	stores.w r18, 12(r9)
	stores.w r20, 8(r9)
	stores.w r22, 4(r9)
	stores.w r23, 0(r9)
	stores.w r24, 28(r9)
	stores.w r25, 24(r9)
	stores.w r26, 20(r9)
	stores.w r17, 16(r9)
	.loc	1 479 11                        # parallel-rne.mlir:479:11
	beq r5, zero, .LBB0_279
	j .LBB0_276
.LBB0_280:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	mfence { sm }
	.loc	1 487 7                         # parallel-rne.mlir:487:7
	addli r1, zero, 1
	bneq r5, r1, .LBB0_269
.LBB0_281:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	addli r5, zero, 64
	.loc	1 487 7                         # parallel-rne.mlir:487:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r5
	j .LBB0_283
.LBB0_282:                              # %middle.block552
                                        #   in Loop: Header=BB0_283 Depth=2
	.loc	1 495 9 is_stmt 1               # parallel-rne.mlir:495:9
	andi r5, r3, 1
	addli r3, zero, 96
	zext_int2long r[7:8], r3
	addli r3, zero, 0
	beq r5, zero, .LBB0_286
.LBB0_283:                              # %vector.memcheck543
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_285 Depth 3
                                        #       Child Loop BB0_284 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 496 11 is_stmt 1              # parallel-rne.mlir:496:11
	beq r1, zero, .LBB0_285
.LBB0_284:                              # %scalar.ph545
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_283 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 496 11                        # parallel-rne.mlir:496:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	slli r5, r5, 2
	.loc	1 496 11                        # parallel-rne.mlir:496:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	add.s r6, r2, r5
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	add.s r5, r10, r5
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	loads.w r6, 0(r6)
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	stores.w r6, 0(r5)
	.loc	1 496 11                        # parallel-rne.mlir:496:11
	bneq r9, zero, .LBB0_284
	j .LBB0_282
.LBB0_285:                              # %vector.body547
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_283 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 496 11                        # parallel-rne.mlir:496:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[25:26], r11
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	slli r5, r5, 2
	add.s r6, r2, r5
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	add.s r5, r10, r5
	.loc	1 497 19                        # parallel-rne.mlir:497:19
	loads.w r9, 12(r6)
	loads.w r17, 8(r6)
	loads.w r18, 4(r6)
	loads.w r20, 0(r6)
	loads.w r22, 28(r6)
	loads.w r23, 24(r6)
	loads.w r24, 20(r6)
	loads.w r6, 16(r6)
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	stores.w r9, 12(r5)
	.loc	1 496 11                        # parallel-rne.mlir:496:11
	seteq.d r9, r[15:16], r[25:26]
	.loc	1 499 13                        # parallel-rne.mlir:499:13
	stores.w r17, 8(r5)
	stores.w r18, 4(r5)
	stores.w r20, 0(r5)
	stores.w r22, 28(r5)
	stores.w r23, 24(r5)
	stores.w r24, 20(r5)
	stores.w r6, 16(r5)
	.loc	1 496 11                        # parallel-rne.mlir:496:11
	beq r9, zero, .LBB0_285
	j .LBB0_282
.LBB0_286:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 487 7                         # parallel-rne.mlir:487:7
	mfence { sm }
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_270
.LBB0_287:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	addli r5, zero, 128
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r5
	j .LBB0_289
.LBB0_288:                              # %middle.block542
                                        #   in Loop: Header=BB0_289 Depth=2
	.loc	1 512 9 is_stmt 1               # parallel-rne.mlir:512:9
	andi r5, r3, 1
	addli r3, zero, 160
	zext_int2long r[7:8], r3
	addli r3, zero, 0
	beq r5, zero, .LBB0_292
.LBB0_289:                              # %vector.memcheck533
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_291 Depth 3
                                        #       Child Loop BB0_290 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 513 11 is_stmt 1              # parallel-rne.mlir:513:11
	beq r1, zero, .LBB0_291
.LBB0_290:                              # %scalar.ph535
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	slli r5, r5, 2
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	add.s r6, r2, r5
	.loc	1 516 13                        # parallel-rne.mlir:516:13
	add.s r5, r10, r5
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	loads.w r6, 0(r6)
	.loc	1 516 13                        # parallel-rne.mlir:516:13
	stores.w r6, 0(r5)
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	bneq r9, zero, .LBB0_290
	j .LBB0_288
.LBB0_291:                              # %vector.body537
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_289 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[25:26], r11
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	slli r5, r5, 2
	add.s r6, r2, r5
	.loc	1 516 13                        # parallel-rne.mlir:516:13
	add.s r5, r10, r5
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	loads.w r9, 12(r6)
	loads.w r17, 8(r6)
	loads.w r18, 4(r6)
	loads.w r20, 0(r6)
	loads.w r22, 28(r6)
	loads.w r23, 24(r6)
	loads.w r24, 20(r6)
	loads.w r6, 16(r6)
	.loc	1 516 13                        # parallel-rne.mlir:516:13
	stores.w r9, 12(r5)
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	seteq.d r9, r[15:16], r[25:26]
	.loc	1 516 13                        # parallel-rne.mlir:516:13
	stores.w r17, 8(r5)
	stores.w r18, 4(r5)
	stores.w r20, 0(r5)
	stores.w r22, 28(r5)
	stores.w r23, 24(r5)
	stores.w r24, 20(r5)
	stores.w r6, 16(r5)
	.loc	1 513 11                        # parallel-rne.mlir:513:11
	beq r9, zero, .LBB0_291
	j .LBB0_288
.LBB0_292:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 504 7                         # parallel-rne.mlir:504:7
	mfence { sm }
	.loc	1 521 7                         # parallel-rne.mlir:521:7
	addli r1, zero, 3
	bneq r5, r1, .LBB0_271
.LBB0_293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	addli r5, zero, 192
	.loc	1 521 7                         # parallel-rne.mlir:521:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r5
	j .LBB0_295
.LBB0_294:                              # %middle.block532
                                        #   in Loop: Header=BB0_295 Depth=2
	.loc	1 529 9 is_stmt 1               # parallel-rne.mlir:529:9
	andi r5, r3, 1
	addli r3, zero, 224
	zext_int2long r[7:8], r3
	addli r3, zero, 0
	beq r5, zero, .LBB0_298
.LBB0_295:                              # %vector.memcheck523
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_296 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 530 11 is_stmt 1              # parallel-rne.mlir:530:11
	beq r1, zero, .LBB0_297
.LBB0_296:                              # %scalar.ph525
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	slli r5, r5, 2
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.s r6, r2, r5
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	add.s r5, r10, r5
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	loads.w r6, 0(r6)
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	stores.w r6, 0(r5)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	bneq r9, zero, .LBB0_296
	j .LBB0_294
.LBB0_297:                              # %vector.body527
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[25:26], r11
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	slli r5, r5, 2
	add.s r6, r2, r5
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	add.s r5, r10, r5
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	loads.w r9, 12(r6)
	loads.w r17, 8(r6)
	loads.w r18, 4(r6)
	loads.w r20, 0(r6)
	loads.w r22, 28(r6)
	loads.w r23, 24(r6)
	loads.w r24, 20(r6)
	loads.w r6, 16(r6)
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	stores.w r9, 12(r5)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	seteq.d r9, r[15:16], r[25:26]
	.loc	1 533 13                        # parallel-rne.mlir:533:13
	stores.w r17, 8(r5)
	stores.w r18, 4(r5)
	stores.w r20, 0(r5)
	stores.w r22, 28(r5)
	stores.w r23, 24(r5)
	stores.w r24, 20(r5)
	stores.w r6, 16(r5)
	.loc	1 530 11                        # parallel-rne.mlir:530:11
	beq r9, zero, .LBB0_297
	j .LBB0_294
.LBB0_298:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 521 7                         # parallel-rne.mlir:521:7
	mfence { sm }
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_272
.LBB0_299:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	addli r5, zero, 256
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r5
	j .LBB0_301
.LBB0_300:                              # %middle.block522
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 546 9 is_stmt 1               # parallel-rne.mlir:546:9
	andi r5, r3, 1
	addli r3, zero, 288
	zext_int2long r[7:8], r3
	addli r3, zero, 0
	beq r5, zero, .LBB0_304
.LBB0_301:                              # %vector.memcheck513
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_302 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 547 11 is_stmt 1              # parallel-rne.mlir:547:11
	beq r1, zero, .LBB0_303
.LBB0_302:                              # %scalar.ph515
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 547 11                        # parallel-rne.mlir:547:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	slli r5, r5, 2
	.loc	1 547 11                        # parallel-rne.mlir:547:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	add.s r6, r2, r5
	.loc	1 550 13                        # parallel-rne.mlir:550:13
	add.s r5, r10, r5
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	loads.w r6, 0(r6)
	.loc	1 550 13                        # parallel-rne.mlir:550:13
	stores.w r6, 0(r5)
	.loc	1 547 11                        # parallel-rne.mlir:547:11
	bneq r9, zero, .LBB0_302
	j .LBB0_300
.LBB0_303:                              # %vector.body517
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 547 11                        # parallel-rne.mlir:547:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[25:26], r11
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	slli r5, r5, 2
	add.s r6, r2, r5
	.loc	1 550 13                        # parallel-rne.mlir:550:13
	add.s r5, r10, r5
	.loc	1 548 19                        # parallel-rne.mlir:548:19
	loads.w r9, 12(r6)
	loads.w r17, 8(r6)
	loads.w r18, 4(r6)
	loads.w r20, 0(r6)
	loads.w r22, 28(r6)
	loads.w r23, 24(r6)
	loads.w r24, 20(r6)
	loads.w r6, 16(r6)
	.loc	1 550 13                        # parallel-rne.mlir:550:13
	stores.w r9, 12(r5)
	.loc	1 547 11                        # parallel-rne.mlir:547:11
	seteq.d r9, r[15:16], r[25:26]
	.loc	1 550 13                        # parallel-rne.mlir:550:13
	stores.w r17, 8(r5)
	stores.w r18, 4(r5)
	stores.w r20, 0(r5)
	stores.w r22, 28(r5)
	stores.w r23, 24(r5)
	stores.w r24, 20(r5)
	stores.w r6, 16(r5)
	.loc	1 547 11                        # parallel-rne.mlir:547:11
	beq r9, zero, .LBB0_303
	j .LBB0_300
.LBB0_304:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 538 7                         # parallel-rne.mlir:538:7
	mfence { sm }
	.loc	1 555 7                         # parallel-rne.mlir:555:7
	addli r1, zero, 5
	bneq r5, r1, .LBB0_273
.LBB0_305:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	addli r5, zero, 320
	.loc	1 555 7                         # parallel-rne.mlir:555:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r5
	j .LBB0_307
.LBB0_306:                              # %middle.block512
                                        #   in Loop: Header=BB0_307 Depth=2
	.loc	1 563 9 is_stmt 1               # parallel-rne.mlir:563:9
	andi r5, r3, 1
	addli r3, zero, 352
	zext_int2long r[7:8], r3
	addli r3, zero, 0
	beq r5, zero, .LBB0_310
.LBB0_307:                              # %vector.memcheck503
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_308 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 564 11 is_stmt 1              # parallel-rne.mlir:564:11
	beq r1, zero, .LBB0_309
.LBB0_308:                              # %scalar.ph505
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	slli r5, r5, 2
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.s r6, r2, r5
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	add.s r5, r10, r5
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	loads.w r6, 0(r6)
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	stores.w r6, 0(r5)
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	bneq r9, zero, .LBB0_308
	j .LBB0_306
.LBB0_309:                              # %vector.body507
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_307 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[25:26], r11
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	slli r5, r5, 2
	add.s r6, r2, r5
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	add.s r5, r10, r5
	.loc	1 565 19                        # parallel-rne.mlir:565:19
	loads.w r9, 12(r6)
	loads.w r17, 8(r6)
	loads.w r18, 4(r6)
	loads.w r20, 0(r6)
	loads.w r22, 28(r6)
	loads.w r23, 24(r6)
	loads.w r24, 20(r6)
	loads.w r6, 16(r6)
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	stores.w r9, 12(r5)
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	seteq.d r9, r[15:16], r[25:26]
	.loc	1 567 13                        # parallel-rne.mlir:567:13
	stores.w r17, 8(r5)
	stores.w r18, 4(r5)
	stores.w r20, 0(r5)
	stores.w r22, 28(r5)
	stores.w r23, 24(r5)
	stores.w r24, 20(r5)
	stores.w r6, 16(r5)
	.loc	1 564 11                        # parallel-rne.mlir:564:11
	beq r9, zero, .LBB0_309
	j .LBB0_306
.LBB0_310:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 555 7                         # parallel-rne.mlir:555:7
	mfence { sm }
	.loc	1 572 7                         # parallel-rne.mlir:572:7
	addli r1, zero, 6
	bneq r5, r1, .LBB0_274
.LBB0_311:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	addli r5, zero, 384
	.loc	1 572 7                         # parallel-rne.mlir:572:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r5
	j .LBB0_313
.LBB0_312:                              # %middle.block502
                                        #   in Loop: Header=BB0_313 Depth=2
	.loc	1 580 9 is_stmt 1               # parallel-rne.mlir:580:9
	andi r5, r3, 1
	addli r3, zero, 416
	zext_int2long r[7:8], r3
	addli r3, zero, 0
	beq r5, zero, .LBB0_316
.LBB0_313:                              # %vector.memcheck493
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_315 Depth 3
                                        #       Child Loop BB0_314 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 581 11 is_stmt 1              # parallel-rne.mlir:581:11
	beq r1, zero, .LBB0_315
.LBB0_314:                              # %scalar.ph495
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 581 11                        # parallel-rne.mlir:581:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	slli r5, r5, 2
	.loc	1 581 11                        # parallel-rne.mlir:581:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	add.s r6, r2, r5
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	add.s r5, r10, r5
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	loads.w r6, 0(r6)
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	stores.w r6, 0(r5)
	.loc	1 581 11                        # parallel-rne.mlir:581:11
	bneq r9, zero, .LBB0_314
	j .LBB0_312
.LBB0_315:                              # %vector.body497
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_313 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	add.ul r[5:6], r[15:16], r[7:8]
	.loc	1 581 11                        # parallel-rne.mlir:581:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[25:26], r11
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	slli r5, r5, 2
	add.s r6, r2, r5
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	add.s r5, r10, r5
	.loc	1 582 19                        # parallel-rne.mlir:582:19
	loads.w r9, 12(r6)
	loads.w r17, 8(r6)
	loads.w r18, 4(r6)
	loads.w r20, 0(r6)
	loads.w r22, 28(r6)
	loads.w r23, 24(r6)
	loads.w r24, 20(r6)
	loads.w r6, 16(r6)
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	stores.w r9, 12(r5)
	.loc	1 581 11                        # parallel-rne.mlir:581:11
	seteq.d r9, r[15:16], r[25:26]
	.loc	1 584 13                        # parallel-rne.mlir:584:13
	stores.w r17, 8(r5)
	stores.w r18, 4(r5)
	stores.w r20, 0(r5)
	stores.w r22, 28(r5)
	stores.w r23, 24(r5)
	stores.w r24, 20(r5)
	stores.w r6, 16(r5)
	.loc	1 581 11                        # parallel-rne.mlir:581:11
	beq r9, zero, .LBB0_315
	j .LBB0_312
.LBB0_316:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 572 7                         # parallel-rne.mlir:572:7
	mfence { sm }
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_323
.LBB0_317:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	setlt.u r1, r28, r11
	addli r5, zero, 448
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	xfence
	addli r3, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r5
	j .LBB0_319
.LBB0_318:                              # %middle.block492
                                        #   in Loop: Header=BB0_319 Depth=2
	.loc	1 597 9 is_stmt 1               # parallel-rne.mlir:597:9
	andi r5, r3, 1
	addli r3, zero, 480
	zext_int2long r[6:7], r3
	addli r3, zero, 0
	beq r5, zero, .LBB0_322
.LBB0_319:                              # %vector.memcheck483
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_321 Depth 3
                                        #       Child Loop BB0_320 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[15:16], zero
	.loc	1 598 11 is_stmt 1              # parallel-rne.mlir:598:11
	beq r1, zero, .LBB0_321
.LBB0_320:                              # %scalar.ph485
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	add.ul r[8:9], r[15:16], r[6:7]
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	load.d r[17:18], -192(r30)              # 8-byte Folded Reload
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	slli r5, r8, 2
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	setlt.ul r9, r[15:16], r[17:18]
	addli.d r[15:16], r[15:16], 1
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	add.s r8, r2, r5
	.loc	1 601 13                        # parallel-rne.mlir:601:13
	add.s r5, r10, r5
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	loads.w r8, 0(r8)
	.loc	1 601 13                        # parallel-rne.mlir:601:13
	stores.w r8, 0(r5)
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	bneq r9, zero, .LBB0_320
	j .LBB0_318
.LBB0_321:                              # %vector.body487
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	add.ul r[8:9], r[15:16], r[6:7]
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	addli.d r[15:16], r[15:16], 8
	zext_int2long r[25:26], r11
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	slli r5, r8, 2
	add.s r8, r2, r5
	.loc	1 601 13                        # parallel-rne.mlir:601:13
	add.s r5, r10, r5
	.loc	1 599 19                        # parallel-rne.mlir:599:19
	loads.w r9, 12(r8)
	loads.w r17, 8(r8)
	loads.w r18, 4(r8)
	loads.w r20, 0(r8)
	loads.w r22, 28(r8)
	loads.w r23, 24(r8)
	loads.w r24, 20(r8)
	loads.w r8, 16(r8)
	.loc	1 601 13                        # parallel-rne.mlir:601:13
	stores.w r9, 12(r5)
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	seteq.d r9, r[15:16], r[25:26]
	.loc	1 601 13                        # parallel-rne.mlir:601:13
	stores.w r17, 8(r5)
	stores.w r18, 4(r5)
	stores.w r20, 0(r5)
	stores.w r22, 28(r5)
	stores.w r23, 24(r5)
	stores.w r24, 20(r5)
	stores.w r8, 16(r5)
	.loc	1 598 11                        # parallel-rne.mlir:598:11
	beq r9, zero, .LBB0_321
	j .LBB0_318
.LBB0_322:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	lui r26, 524288
	lui r20, 1024
	.loc	1 589 7                         # parallel-rne.mlir:589:7
	mfence { sm }
.LBB0_323:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	addli r1, zero, 3
	.loc	1 606 7                         # parallel-rne.mlir:606:7
	sync_core
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	bneq r5, r1, .LBB0_325
# %bb.324:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 35
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	addli r2, zero, 28
	.loc	1 607 7                         # parallel-rne.mlir:607:7
	xsignal r1, 0
	addli r1, zero, 36
	.loc	1 608 7                         # parallel-rne.mlir:608:7
	xsignal r1, 0
	.loc	1 610 7                         # parallel-rne.mlir:610:7
	xwait r2, 0
	.loc	1 611 7                         # parallel-rne.mlir:611:7
	xwait r1, 0
.LBB0_325:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 613 7                         # parallel-rne.mlir:613:7
	xfence
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	addli r1, zero, 255
	.loc	1 614 7                         # parallel-rne.mlir:614:7
	mfence { lm, sm, gm }
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	csr_set csr5, r1
	sync_core
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	beq r5, zero, .LBB0_333
# %bb.326:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	addli r1, zero, 1
	beq r5, r1, .LBB0_359
.LBB0_327:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 660 7                         # parallel-rne.mlir:660:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_385
.LBB0_328:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	addli r1, zero, 3
	beq r5, r1, .LBB0_411
.LBB0_329:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 704 7                         # parallel-rne.mlir:704:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_437
.LBB0_330:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	addli r1, zero, 5
	beq r5, r1, .LBB0_463
.LBB0_331:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 748 7                         # parallel-rne.mlir:748:7
	addli r1, zero, 6
	beq r5, r1, .LBB0_489
.LBB0_332:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_515
	j .LBB0_541
.LBB0_333:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	xfence
	addli r2, zero, 1
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_335
.LBB0_334:                              # %middle.block482
                                        #   in Loop: Header=BB0_335 Depth=2
	.loc	1 624 9                         # parallel-rne.mlir:624:9
	andi r1, r2, 1
	zext_int2long r[6:7], r11
	addli r2, zero, 0
	beq r1, zero, .LBB0_358
.LBB0_335:                              # %vector.memcheck473
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_342 Depth 3
                                        #       Child Loop BB0_338 Depth 3
	.loc	1 625 11                        # parallel-rne.mlir:625:11
	bneq r21, r10, .LBB0_340
# %bb.336:                              # %scalar.ph475.preheader
                                        #   in Loop: Header=BB0_335 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_338
.LBB0_337:                              # %scalar.ph475
                                        #   in Loop: Header=BB0_338 Depth=3
	.loc	1 625 11                        # parallel-rne.mlir:625:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 633 13 is_stmt 1              # parallel-rne.mlir:633:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 625 11                        # parallel-rne.mlir:625:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_334
.LBB0_338:                              # %scalar.ph475
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_335 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 629 19                        # parallel-rne.mlir:629:19
	and r5, r3, r27
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_337
# %bb.339:                              #   in Loop: Header=BB0_338 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_337
.LBB0_340:                              # %vector.body477.preheader
                                        #   in Loop: Header=BB0_335 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_342
.LBB0_341:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	.loc	1 633 13 is_stmt 1              # parallel-rne.mlir:633:13
	add.s r5, r21, r8
	.loc	1 625 11                        # parallel-rne.mlir:625:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 633 13                        # parallel-rne.mlir:633:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 625 11                        # parallel-rne.mlir:625:11
	bneq r8, zero, .LBB0_334
.LBB0_342:                              # %vector.body477
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_335 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 626 19                        # parallel-rne.mlir:626:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 629 19                        # parallel-rne.mlir:629:19
	and r3, r1, r27
	.loc	1 630 19                        # parallel-rne.mlir:630:19
	setlt.u r3, r13, r3
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r3, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_344:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_346:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_348:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_350:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_352:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_354
# %bb.353:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_354:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_356
# %bb.355:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_356:                              # %vector.body477
                                        #   in Loop: Header=BB0_342 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 631 19                        # parallel-rne.mlir:631:19
	beq r5, zero, .LBB0_341
# %bb.357:                              #   in Loop: Header=BB0_342 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_341
.LBB0_358:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	mfence { sm }
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	addli r1, zero, 1
	bneq r5, r1, .LBB0_327
.LBB0_359:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 64
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_361
.LBB0_360:                              # %middle.block472
                                        #   in Loop: Header=BB0_361 Depth=2
	.loc	1 646 9 is_stmt 1               # parallel-rne.mlir:646:9
	andi r1, r2, 1
	addli r2, zero, 96
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	beq r1, zero, .LBB0_384
.LBB0_361:                              # %vector.memcheck463
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_368 Depth 3
                                        #       Child Loop BB0_364 Depth 3
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	bneq r21, r10, .LBB0_366
# %bb.362:                              # %scalar.ph465.preheader
                                        #   in Loop: Header=BB0_361 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_364
.LBB0_363:                              # %scalar.ph465
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 655 13 is_stmt 1              # parallel-rne.mlir:655:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_360
.LBB0_364:                              # %scalar.ph465
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	and r5, r3, r27
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_363
# %bb.365:                              #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_363
.LBB0_366:                              # %vector.body467.preheader
                                        #   in Loop: Header=BB0_361 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_368
.LBB0_367:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	.loc	1 655 13 is_stmt 1              # parallel-rne.mlir:655:13
	add.s r5, r21, r8
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 655 13                        # parallel-rne.mlir:655:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	bneq r8, zero, .LBB0_360
.LBB0_368:                              # %vector.body467
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 651 19                        # parallel-rne.mlir:651:19
	and r3, r1, r27
	.loc	1 652 19                        # parallel-rne.mlir:652:19
	setlt.u r3, r13, r3
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r3, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_370:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_372
# %bb.371:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_372:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_374
# %bb.373:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_374:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_376
# %bb.375:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_376:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_378
# %bb.377:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_378:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_380
# %bb.379:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_380:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_382
# %bb.381:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_382:                              # %vector.body467
                                        #   in Loop: Header=BB0_368 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	beq r5, zero, .LBB0_367
# %bb.383:                              #   in Loop: Header=BB0_368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_367
.LBB0_384:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	mfence { sm }
	.loc	1 660 7                         # parallel-rne.mlir:660:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_328
.LBB0_385:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 128
	.loc	1 660 7                         # parallel-rne.mlir:660:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_387
.LBB0_386:                              # %middle.block462
                                        #   in Loop: Header=BB0_387 Depth=2
	.loc	1 668 9 is_stmt 1               # parallel-rne.mlir:668:9
	andi r1, r2, 1
	addli r2, zero, 160
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	beq r1, zero, .LBB0_410
.LBB0_387:                              # %vector.memcheck453
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_394 Depth 3
                                        #       Child Loop BB0_390 Depth 3
	.loc	1 669 11                        # parallel-rne.mlir:669:11
	bneq r21, r10, .LBB0_392
# %bb.388:                              # %scalar.ph455.preheader
                                        #   in Loop: Header=BB0_387 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_390
.LBB0_389:                              # %scalar.ph455
                                        #   in Loop: Header=BB0_390 Depth=3
	.loc	1 669 11                        # parallel-rne.mlir:669:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 677 13 is_stmt 1              # parallel-rne.mlir:677:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 669 11                        # parallel-rne.mlir:669:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_386
.LBB0_390:                              # %scalar.ph455
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_387 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	and r5, r3, r27
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_389
# %bb.391:                              #   in Loop: Header=BB0_390 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_389
.LBB0_392:                              # %vector.body457.preheader
                                        #   in Loop: Header=BB0_387 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_394
.LBB0_393:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	.loc	1 677 13 is_stmt 1              # parallel-rne.mlir:677:13
	add.s r5, r21, r8
	.loc	1 669 11                        # parallel-rne.mlir:669:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 677 13                        # parallel-rne.mlir:677:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 669 11                        # parallel-rne.mlir:669:11
	bneq r8, zero, .LBB0_386
.LBB0_394:                              # %vector.body457
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_387 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	and r3, r1, r27
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	setlt.u r3, r13, r3
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r3, zero, .LBB0_396
# %bb.395:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_396:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_398
# %bb.397:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_398:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_400:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_402
# %bb.401:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_402:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_404
# %bb.403:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_404:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_406
# %bb.405:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_406:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_408
# %bb.407:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_408:                              # %vector.body457
                                        #   in Loop: Header=BB0_394 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	beq r5, zero, .LBB0_393
# %bb.409:                              #   in Loop: Header=BB0_394 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_393
.LBB0_410:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 660 7                         # parallel-rne.mlir:660:7
	mfence { sm }
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	addli r1, zero, 3
	bneq r5, r1, .LBB0_329
.LBB0_411:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 192
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_413
.LBB0_412:                              # %middle.block452
                                        #   in Loop: Header=BB0_413 Depth=2
	.loc	1 690 9 is_stmt 1               # parallel-rne.mlir:690:9
	andi r1, r2, 1
	addli r2, zero, 224
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	beq r1, zero, .LBB0_436
.LBB0_413:                              # %vector.memcheck443
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_420 Depth 3
                                        #       Child Loop BB0_416 Depth 3
	.loc	1 691 11                        # parallel-rne.mlir:691:11
	bneq r21, r10, .LBB0_418
# %bb.414:                              # %scalar.ph445.preheader
                                        #   in Loop: Header=BB0_413 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_416
.LBB0_415:                              # %scalar.ph445
                                        #   in Loop: Header=BB0_416 Depth=3
	.loc	1 691 11                        # parallel-rne.mlir:691:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 699 13 is_stmt 1              # parallel-rne.mlir:699:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 691 11                        # parallel-rne.mlir:691:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_412
.LBB0_416:                              # %scalar.ph445
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_413 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	and r5, r3, r27
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_415
# %bb.417:                              #   in Loop: Header=BB0_416 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_415
.LBB0_418:                              # %vector.body447.preheader
                                        #   in Loop: Header=BB0_413 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_420
.LBB0_419:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	.loc	1 699 13 is_stmt 1              # parallel-rne.mlir:699:13
	add.s r5, r21, r8
	.loc	1 691 11                        # parallel-rne.mlir:691:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 699 13                        # parallel-rne.mlir:699:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 691 11                        # parallel-rne.mlir:691:11
	bneq r8, zero, .LBB0_412
.LBB0_420:                              # %vector.body447
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_413 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 695 19                        # parallel-rne.mlir:695:19
	and r3, r1, r27
	.loc	1 696 19                        # parallel-rne.mlir:696:19
	setlt.u r3, r13, r3
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r3, zero, .LBB0_422
# %bb.421:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_422:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_424
# %bb.423:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_424:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_426
# %bb.425:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_426:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_428
# %bb.427:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_428:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_430:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_432:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_434:                              # %vector.body447
                                        #   in Loop: Header=BB0_420 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 697 19                        # parallel-rne.mlir:697:19
	beq r5, zero, .LBB0_419
# %bb.435:                              #   in Loop: Header=BB0_420 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_419
.LBB0_436:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 682 7                         # parallel-rne.mlir:682:7
	mfence { sm }
	.loc	1 704 7                         # parallel-rne.mlir:704:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_330
.LBB0_437:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 256
	.loc	1 704 7                         # parallel-rne.mlir:704:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_439
.LBB0_438:                              # %middle.block442
                                        #   in Loop: Header=BB0_439 Depth=2
	.loc	1 712 9 is_stmt 1               # parallel-rne.mlir:712:9
	andi r1, r2, 1
	addli r2, zero, 288
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	beq r1, zero, .LBB0_462
.LBB0_439:                              # %vector.memcheck433
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_446 Depth 3
                                        #       Child Loop BB0_442 Depth 3
	.loc	1 713 11                        # parallel-rne.mlir:713:11
	bneq r21, r10, .LBB0_444
# %bb.440:                              # %scalar.ph435.preheader
                                        #   in Loop: Header=BB0_439 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_442
.LBB0_441:                              # %scalar.ph435
                                        #   in Loop: Header=BB0_442 Depth=3
	.loc	1 713 11                        # parallel-rne.mlir:713:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 721 13 is_stmt 1              # parallel-rne.mlir:721:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 713 11                        # parallel-rne.mlir:713:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_438
.LBB0_442:                              # %scalar.ph435
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_439 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	and r5, r3, r27
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_441
# %bb.443:                              #   in Loop: Header=BB0_442 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_441
.LBB0_444:                              # %vector.body437.preheader
                                        #   in Loop: Header=BB0_439 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_446
.LBB0_445:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	.loc	1 721 13 is_stmt 1              # parallel-rne.mlir:721:13
	add.s r5, r21, r8
	.loc	1 713 11                        # parallel-rne.mlir:713:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 721 13                        # parallel-rne.mlir:721:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 713 11                        # parallel-rne.mlir:713:11
	bneq r8, zero, .LBB0_438
.LBB0_446:                              # %vector.body437
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_439 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	and r3, r1, r27
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	setlt.u r3, r13, r3
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r3, zero, .LBB0_448
# %bb.447:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_448:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_450
# %bb.449:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_450:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_452
# %bb.451:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_452:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_454
# %bb.453:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_454:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_456
# %bb.455:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_456:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_458
# %bb.457:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_458:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_460
# %bb.459:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_460:                              # %vector.body437
                                        #   in Loop: Header=BB0_446 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r5, zero, .LBB0_445
# %bb.461:                              #   in Loop: Header=BB0_446 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_445
.LBB0_462:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 704 7                         # parallel-rne.mlir:704:7
	mfence { sm }
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	addli r1, zero, 5
	bneq r5, r1, .LBB0_331
.LBB0_463:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 320
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_465
.LBB0_464:                              # %middle.block432
                                        #   in Loop: Header=BB0_465 Depth=2
	.loc	1 734 9 is_stmt 1               # parallel-rne.mlir:734:9
	andi r1, r2, 1
	addli r2, zero, 352
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	beq r1, zero, .LBB0_488
.LBB0_465:                              # %vector.memcheck423
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_472 Depth 3
                                        #       Child Loop BB0_468 Depth 3
	.loc	1 735 11                        # parallel-rne.mlir:735:11
	bneq r21, r10, .LBB0_470
# %bb.466:                              # %scalar.ph425.preheader
                                        #   in Loop: Header=BB0_465 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_468
.LBB0_467:                              # %scalar.ph425
                                        #   in Loop: Header=BB0_468 Depth=3
	.loc	1 735 11                        # parallel-rne.mlir:735:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 743 13 is_stmt 1              # parallel-rne.mlir:743:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 735 11                        # parallel-rne.mlir:735:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_464
.LBB0_468:                              # %scalar.ph425
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_465 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	and r5, r3, r27
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_467
# %bb.469:                              #   in Loop: Header=BB0_468 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_467
.LBB0_470:                              # %vector.body427.preheader
                                        #   in Loop: Header=BB0_465 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_472
.LBB0_471:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 743 13 is_stmt 1              # parallel-rne.mlir:743:13
	add.s r5, r21, r8
	.loc	1 735 11                        # parallel-rne.mlir:735:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 743 13                        # parallel-rne.mlir:743:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 735 11                        # parallel-rne.mlir:735:11
	bneq r8, zero, .LBB0_464
.LBB0_472:                              # %vector.body427
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_465 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	and r3, r1, r27
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	setlt.u r3, r13, r3
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r3, zero, .LBB0_474
# %bb.473:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_474:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_476
# %bb.475:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_476:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_478
# %bb.477:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_478:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_480
# %bb.479:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_480:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_482
# %bb.481:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_482:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_484
# %bb.483:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_484:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_486
# %bb.485:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_486:                              # %vector.body427
                                        #   in Loop: Header=BB0_472 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	beq r5, zero, .LBB0_471
# %bb.487:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_471
.LBB0_488:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	mfence { sm }
	.loc	1 748 7                         # parallel-rne.mlir:748:7
	addli r1, zero, 6
	bneq r5, r1, .LBB0_332
.LBB0_489:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 384
	.loc	1 748 7                         # parallel-rne.mlir:748:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_491
.LBB0_490:                              # %middle.block422
                                        #   in Loop: Header=BB0_491 Depth=2
	.loc	1 756 9 is_stmt 1               # parallel-rne.mlir:756:9
	andi r1, r2, 1
	addli r2, zero, 416
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	beq r1, zero, .LBB0_514
.LBB0_491:                              # %vector.memcheck413
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_498 Depth 3
                                        #       Child Loop BB0_494 Depth 3
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	bneq r21, r10, .LBB0_496
# %bb.492:                              # %scalar.ph415.preheader
                                        #   in Loop: Header=BB0_491 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_494
.LBB0_493:                              # %scalar.ph415
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 765 13 is_stmt 1              # parallel-rne.mlir:765:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_490
.LBB0_494:                              # %scalar.ph415
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	and r5, r3, r27
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_493
# %bb.495:                              #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_493
.LBB0_496:                              # %vector.body417.preheader
                                        #   in Loop: Header=BB0_491 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_498
.LBB0_497:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	.loc	1 765 13 is_stmt 1              # parallel-rne.mlir:765:13
	add.s r5, r21, r8
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 765 13                        # parallel-rne.mlir:765:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 757 11                        # parallel-rne.mlir:757:11
	bneq r8, zero, .LBB0_490
.LBB0_498:                              # %vector.body417
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	and r3, r1, r27
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	setlt.u r3, r13, r3
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r3, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_500:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_502
# %bb.501:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_502:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_504
# %bb.503:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_504:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_506
# %bb.505:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_506:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_508
# %bb.507:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_508:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_510
# %bb.509:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_510:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_512
# %bb.511:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_512:                              # %vector.body417
                                        #   in Loop: Header=BB0_498 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	beq r5, zero, .LBB0_497
# %bb.513:                              #   in Loop: Header=BB0_498 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_497
.LBB0_514:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 748 7                         # parallel-rne.mlir:748:7
	mfence { sm }
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_541
.LBB0_515:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 448
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	xfence
	addli r2, zero, 1
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_517
.LBB0_516:                              # %middle.block412
                                        #   in Loop: Header=BB0_517 Depth=2
	.loc	1 778 9 is_stmt 1               # parallel-rne.mlir:778:9
	andi r1, r2, 1
	addli r2, zero, 480
	zext_int2long r[6:7], r2
	addli r2, zero, 0
	beq r1, zero, .LBB0_540
.LBB0_517:                              # %vector.memcheck403
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_524 Depth 3
                                        #       Child Loop BB0_520 Depth 3
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	bneq r21, r10, .LBB0_522
# %bb.518:                              # %scalar.ph405.preheader
                                        #   in Loop: Header=BB0_517 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_520
.LBB0_519:                              # %scalar.ph405
                                        #   in Loop: Header=BB0_520 Depth=3
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 787 13 is_stmt 1              # parallel-rne.mlir:787:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_516
.LBB0_520:                              # %scalar.ph405
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_517 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	add.ul r[8:9], r[15:16], r[6:7]
	slli r1, r8, 2
	add.s r3, r10, r1
	loads.w r3, 0(r3)
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	and r5, r3, r27
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_519
# %bb.521:                              #   in Loop: Header=BB0_520 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
	j .LBB0_519
.LBB0_522:                              # %vector.body407.preheader
                                        #   in Loop: Header=BB0_517 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_524
.LBB0_523:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	.loc	1 787 13 is_stmt 1              # parallel-rne.mlir:787:13
	add.s r5, r21, r8
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	addli.d r[17:18], r[17:18], 8
	zext_int2long r[8:9], r11
	seteq.d r8, r[17:18], r[8:9]
	.loc	1 787 13                        # parallel-rne.mlir:787:13
	stores.w r15, 12(r5)
	stores.w r23, 8(r5)
	stores.w r3, 4(r5)
	stores.w r1, 0(r5)
	stores.w r22, 28(r5)
	stores.w r25, 24(r5)
	stores.w r24, 20(r5)
	stores.w r16, 16(r5)
	.loc	1 779 11                        # parallel-rne.mlir:779:11
	bneq r8, zero, .LBB0_516
.LBB0_524:                              # %vector.body407
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_517 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	add.ul r[8:9], r[17:18], r[6:7]
	slli r8, r8, 2
	add.s r22, r10, r8
	loads.w r1, 0(r22)
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	and r3, r1, r27
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	setlt.u r3, r13, r3
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r3, zero, .LBB0_526
# %bb.525:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r1, r26
	or r1, r1, r13
.LBB0_526:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	loads.w r3, 4(r22)
	and r5, r3, r27
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_528
# %bb.527:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r26
	or r3, r3, r13
.LBB0_528:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	loads.w r23, 8(r22)
	and r5, r23, r27
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_530
# %bb.529:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r23, r26
	or r23, r5, r13
.LBB0_530:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	loads.w r15, 12(r22)
	and r5, r15, r27
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_532
# %bb.531:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r26
	or r15, r5, r13
.LBB0_532:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	loads.w r16, 16(r22)
	and r5, r16, r27
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_534
# %bb.533:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r16, r26
	or r16, r5, r13
.LBB0_534:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	loads.w r24, 20(r22)
	and r5, r24, r27
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_536
# %bb.535:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r24, r26
	or r24, r5, r13
.LBB0_536:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	loads.w r25, 24(r22)
	and r5, r25, r27
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_538
# %bb.537:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r25, r26
	or r25, r5, r13
.LBB0_538:                              # %vector.body407
                                        #   in Loop: Header=BB0_524 Depth=3
	loads.w r22, 28(r22)
	and r5, r22, r27
	setlt.u r5, r13, r5
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	beq r5, zero, .LBB0_523
# %bb.539:                              #   in Loop: Header=BB0_524 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r22, r26
	or r22, r5, r13
	j .LBB0_523
.LBB0_540:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 770 7                         # parallel-rne.mlir:770:7
	mfence { sm }
.LBB0_541:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 792 7                         # parallel-rne.mlir:792:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	addli r1, zero, 3
	.loc	1 792 7                         # parallel-rne.mlir:792:7
	sync_core
	.loc	1 793 7                         # parallel-rne.mlir:793:7
	bneq r5, r1, .LBB0_543
# %bb.542:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 29
	addli r3, zero, 37
	xsignal r1, 0
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	xsignal r3, 0
	.loc	1 797 13                        # parallel-rne.mlir:797:13
	loadli.w r1,  -24(r30)
	addli r2, r1, 1
	storeli.w r2, -24(r30)
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	addli r2, zero, 30
	xwait r2, 0
	.loc	1 801 7                         # parallel-rne.mlir:801:7
	addli r2, zero, 41
	.loc	1 800 7                         # parallel-rne.mlir:800:7
	xwait r3, 0
	.loc	1 801 7                         # parallel-rne.mlir:801:7
	xwait r2, 0
	j .LBB0_546
.LBB0_543:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 795 7                         # parallel-rne.mlir:795:7
	addli r1, zero, 5
	bneq r5, r1, .LBB0_545
# %bb.544:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 29
	addli r2, zero, 511
	addli r3, zero, 3
	xwait r1, 0
	addli r1, zero, 2
	lock zero, r1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 1
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r3, zero, zero, 10
	loadli.w r3,  -340(r30)                 # 4-byte Folded Reload
	ew_cfg r1, r2, r3, 11
	lui r2, 268284
	addli r3, zero, 4
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r3, r2, 14
	ew_cfg zero, zero, zero, 15
	sslut r21, r21, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r1
	addli r1, zero, 30
	xsignal r1, 0
.LBB0_545:                              # %.thread83
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 797 13                        # parallel-rne.mlir:797:13
	loadli.w r1,  -24(r30)
	addli r2, r1, 1
	storeli.w r2, -24(r30)
.LBB0_546:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	mod.s r1, r1, r2
	loadli.w r2,  -332(r30)                 # 4-byte Folded Reload
	slli r1, r1, 11
	add.s r6, r1, r2
	seteq r1, r6, r10
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
	seteq r1, r6, r21
	.loc	1 803 7                         # parallel-rne.mlir:803:7
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	addli r1, zero, 255
	.loc	1 803 7                         # parallel-rne.mlir:803:7
	xfence
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	mfence { lm, sm, gm }
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	csr_set csr5, r1
	sync_core
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	beq r5, zero, .LBB0_554
# %bb.547:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 832 7                         # parallel-rne.mlir:832:7
	addli r1, zero, 1
	beq r5, r1, .LBB0_590
.LBB0_548:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 858 7                         # parallel-rne.mlir:858:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_626
.LBB0_549:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 884 7                         # parallel-rne.mlir:884:7
	addli r1, zero, 3
	beq r5, r1, .LBB0_662
.LBB0_550:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 910 7                         # parallel-rne.mlir:910:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_698
.LBB0_551:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 936 7                         # parallel-rne.mlir:936:7
	addli r1, zero, 5
	beq r5, r1, .LBB0_734
.LBB0_552:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 962 7                         # parallel-rne.mlir:962:7
	addli r1, zero, 6
	beq r5, r1, .LBB0_770
.LBB0_553:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 988 7                         # parallel-rne.mlir:988:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_806
	j .LBB0_842
.LBB0_554:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	addli r2, zero, 1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	j .LBB0_556
.LBB0_555:                              # %middle.block402
                                        #   in Loop: Header=BB0_556 Depth=2
	.loc	1 814 9                         # parallel-rne.mlir:814:9
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r11, zero, 32
	addli r2, zero, 0
	zext_int2long r[7:8], r11
	andi r1, r1, 1
	beq r1, zero, .LBB0_589
.LBB0_556:                              # %vector.memcheck389
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_566 Depth 3
                                        #       Child Loop BB0_559 Depth 3
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_563
# %bb.557:                              # %scalar.ph393.preheader
                                        #   in Loop: Header=BB0_556 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_559
.LBB0_558:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 827 13 is_stmt 1              # parallel-rne.mlir:827:13
	add.s r3, r6, r3
	stores.w r15, 0(r3)
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	setlt.ul r5, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_555
.LBB0_559:                              # %scalar.ph393
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_556 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.ul r[11:12], r[1:2], r[7:8]
	slli r3, r11, 2
	add.s r5, r10, r3
	loads.w r17, 0(r5)
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	add.s r5, r21, r3
	loads.w r16, 0(r5)
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	and r5, r17, r19
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r5, zero, .LBB0_561
# %bb.560:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	and r5, r17, r4
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	beq r5, r4, .LBB0_558
	j .LBB0_562
.LBB0_561:                              #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r15, r17, r20
	and r5, r17, r4
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	beq r5, r4, .LBB0_558
.LBB0_562:                              # %scalar.ph393
                                        #   in Loop: Header=BB0_559 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_558
.LBB0_563:                              # %vector.body395.preheader
                                        #   in Loop: Header=BB0_556 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_566
.LBB0_564:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r18, 28(r28)
.LBB0_565:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	addli r9, zero, 32
	.loc	1 827 13 is_stmt 1              # parallel-rne.mlir:827:13
	add.s r5, r6, r24
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[11:12], r9
	.loc	1 827 13                        # parallel-rne.mlir:827:13
	stores.w r2, 12(r5)
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r25, 0(r5)
	stores.w r18, 28(r5)
	stores.w r16, 24(r5)
	stores.w r15, 20(r5)
	stores.w r17, 16(r5)
	.loc	1 815 11                        # parallel-rne.mlir:815:11
	seteq.d r2, r[22:23], r[11:12]
	bneq r2, zero, .LBB0_555
.LBB0_566:                              # %vector.body395
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_556 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	add.ul r[1:2], r[22:23], r[7:8]
	slli r24, r1, 2
	add.s r18, r10, r24
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	add.s r28, r21, r24
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	loads.w r1, 0(r18)
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	and r2, r1, r4
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	and r3, r1, r19
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	seteq r2, r2, r4
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	setneq r3, r3, zero
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	and r2, r2, r3
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r2, zero, .LBB0_568
# %bb.567:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r28)
	j .LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_566 Depth=3
	or r25, r1, r20
.LBB0_569:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r1, 4(r18)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r2, zero, .LBB0_571
# %bb.570:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_566 Depth=3
	or r1, r1, r20
.LBB0_572:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r2, 8(r18)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r3, zero, .LBB0_574
# %bb.573:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_566 Depth=3
	or r3, r2, r20
.LBB0_575:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r2, 12(r18)
	and r5, r2, r4
	and r9, r2, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r5, zero, .LBB0_577
# %bb.576:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_566 Depth=3
	or r2, r2, r20
.LBB0_578:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r15, 16(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r5, zero, .LBB0_580
# %bb.579:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r28)
	j .LBB0_581
.LBB0_580:                              #   in Loop: Header=BB0_566 Depth=3
	or r17, r15, r20
.LBB0_581:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r15, 20(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r5, zero, .LBB0_583
# %bb.582:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 20(r28)
	j .LBB0_584
.LBB0_583:                              #   in Loop: Header=BB0_566 Depth=3
	or r15, r15, r20
.LBB0_584:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r16, 24(r18)
	and r5, r16, r4
	and r9, r16, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	bneq r5, zero, .LBB0_586
# %bb.585:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 24(r28)
	j .LBB0_587
.LBB0_586:                              #   in Loop: Header=BB0_566 Depth=3
	or r16, r16, r20
.LBB0_587:                              # %vector.body395
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r18, 28(r18)
	and r5, r18, r4
	and r9, r18, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	beq r5, zero, .LBB0_564
# %bb.588:                              #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r18, r20
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	j .LBB0_565
.LBB0_589:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	mfence { sm }
	.loc	1 832 7                         # parallel-rne.mlir:832:7
	addli r1, zero, 1
	bneq r5, r1, .LBB0_548
.LBB0_590:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	addli r2, zero, 1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	addli r1, zero, 64
	zext_int2long r[7:8], r1
	j .LBB0_592
.LBB0_591:                              # %middle.block388
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 840 9                         # parallel-rne.mlir:840:9
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r2, zero, 96
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_625
.LBB0_592:                              # %vector.memcheck375
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_602 Depth 3
                                        #       Child Loop BB0_595 Depth 3
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_599
# %bb.593:                              # %scalar.ph379.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_595
.LBB0_594:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 853 13 is_stmt 1              # parallel-rne.mlir:853:13
	add.s r3, r6, r3
	stores.w r15, 0(r3)
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	setlt.ul r5, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_591
.LBB0_595:                              # %scalar.ph379
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.ul r[11:12], r[1:2], r[7:8]
	slli r3, r11, 2
	add.s r5, r10, r3
	loads.w r17, 0(r5)
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	add.s r5, r21, r3
	loads.w r16, 0(r5)
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	and r5, r17, r19
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r5, zero, .LBB0_597
# %bb.596:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	and r5, r17, r4
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	beq r5, r4, .LBB0_594
	j .LBB0_598
.LBB0_597:                              #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r15, r17, r20
	and r5, r17, r4
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	beq r5, r4, .LBB0_594
.LBB0_598:                              # %scalar.ph379
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_594
.LBB0_599:                              # %vector.body381.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_602
.LBB0_600:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r18, 28(r28)
.LBB0_601:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	addli r9, zero, 32
	.loc	1 853 13 is_stmt 1              # parallel-rne.mlir:853:13
	add.s r5, r6, r24
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[11:12], r9
	.loc	1 853 13                        # parallel-rne.mlir:853:13
	stores.w r2, 12(r5)
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r25, 0(r5)
	stores.w r18, 28(r5)
	stores.w r17, 24(r5)
	stores.w r16, 20(r5)
	stores.w r15, 16(r5)
	.loc	1 841 11                        # parallel-rne.mlir:841:11
	seteq.d r2, r[22:23], r[11:12]
	bneq r2, zero, .LBB0_591
.LBB0_602:                              # %vector.body381
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.ul r[1:2], r[22:23], r[7:8]
	slli r24, r1, 2
	add.s r18, r10, r24
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	add.s r28, r21, r24
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	loads.w r1, 0(r18)
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	and r2, r1, r4
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	and r3, r1, r19
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	seteq r2, r2, r4
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	setneq r3, r3, zero
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	and r2, r2, r3
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r2, zero, .LBB0_604
# %bb.603:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r28)
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_602 Depth=3
	or r25, r1, r20
.LBB0_605:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r1, 4(r18)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r2, zero, .LBB0_607
# %bb.606:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_602 Depth=3
	or r1, r1, r20
.LBB0_608:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r2, 8(r18)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r3, zero, .LBB0_610
# %bb.609:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_602 Depth=3
	or r3, r2, r20
.LBB0_611:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r2, 12(r18)
	and r5, r2, r4
	and r9, r2, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r5, zero, .LBB0_613
# %bb.612:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_602 Depth=3
	or r2, r2, r20
.LBB0_614:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r15, 16(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r5, zero, .LBB0_616
# %bb.615:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r28)
	j .LBB0_617
.LBB0_616:                              #   in Loop: Header=BB0_602 Depth=3
	or r15, r15, r20
.LBB0_617:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r16, 20(r18)
	and r5, r16, r4
	and r9, r16, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r5, zero, .LBB0_619
# %bb.618:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r28)
	j .LBB0_620
.LBB0_619:                              #   in Loop: Header=BB0_602 Depth=3
	or r16, r16, r20
.LBB0_620:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r17, 24(r18)
	and r5, r17, r4
	and r9, r17, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	bneq r5, zero, .LBB0_622
# %bb.621:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r28)
	j .LBB0_623
.LBB0_622:                              #   in Loop: Header=BB0_602 Depth=3
	or r17, r17, r20
.LBB0_623:                              # %vector.body381
                                        #   in Loop: Header=BB0_602 Depth=3
	loads.w r18, 28(r18)
	and r5, r18, r4
	and r9, r18, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	beq r5, zero, .LBB0_600
# %bb.624:                              #   in Loop: Header=BB0_602 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r18, r20
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	j .LBB0_601
.LBB0_625:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	addli r11, zero, 32
	.loc	1 832 7                         # parallel-rne.mlir:832:7
	mfence { sm }
	.loc	1 858 7                         # parallel-rne.mlir:858:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_549
.LBB0_626:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	addli r2, zero, 1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	addli r1, zero, 128
	zext_int2long r[7:8], r1
	j .LBB0_628
.LBB0_627:                              # %middle.block374
                                        #   in Loop: Header=BB0_628 Depth=2
	.loc	1 866 9                         # parallel-rne.mlir:866:9
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r2, zero, 160
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_661
.LBB0_628:                              # %vector.memcheck361
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_638 Depth 3
                                        #       Child Loop BB0_631 Depth 3
	.loc	1 867 11                        # parallel-rne.mlir:867:11
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_635
# %bb.629:                              # %scalar.ph365.preheader
                                        #   in Loop: Header=BB0_628 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_631
.LBB0_630:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 867 11                        # parallel-rne.mlir:867:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 879 13 is_stmt 1              # parallel-rne.mlir:879:13
	add.s r3, r6, r3
	stores.w r15, 0(r3)
	.loc	1 867 11                        # parallel-rne.mlir:867:11
	setlt.ul r5, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_627
.LBB0_631:                              # %scalar.ph365
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_628 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	add.ul r[11:12], r[1:2], r[7:8]
	slli r3, r11, 2
	add.s r5, r10, r3
	loads.w r17, 0(r5)
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	add.s r5, r21, r3
	loads.w r16, 0(r5)
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	and r5, r17, r19
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r5, zero, .LBB0_633
# %bb.632:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	and r5, r17, r4
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	beq r5, r4, .LBB0_630
	j .LBB0_634
.LBB0_633:                              #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r15, r17, r20
	and r5, r17, r4
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	beq r5, r4, .LBB0_630
.LBB0_634:                              # %scalar.ph365
                                        #   in Loop: Header=BB0_631 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_630
.LBB0_635:                              # %vector.body367.preheader
                                        #   in Loop: Header=BB0_628 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_638
.LBB0_636:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r18, 28(r28)
.LBB0_637:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	addli r9, zero, 32
	.loc	1 879 13 is_stmt 1              # parallel-rne.mlir:879:13
	add.s r5, r6, r24
	.loc	1 867 11                        # parallel-rne.mlir:867:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[11:12], r9
	.loc	1 879 13                        # parallel-rne.mlir:879:13
	stores.w r2, 12(r5)
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r25, 0(r5)
	stores.w r18, 28(r5)
	stores.w r17, 24(r5)
	stores.w r16, 20(r5)
	stores.w r15, 16(r5)
	.loc	1 867 11                        # parallel-rne.mlir:867:11
	seteq.d r2, r[22:23], r[11:12]
	bneq r2, zero, .LBB0_627
.LBB0_638:                              # %vector.body367
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_628 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	add.ul r[1:2], r[22:23], r[7:8]
	slli r24, r1, 2
	add.s r18, r10, r24
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	add.s r28, r21, r24
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	loads.w r1, 0(r18)
	.loc	1 872 19                        # parallel-rne.mlir:872:19
	and r2, r1, r4
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	and r3, r1, r19
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	seteq r2, r2, r4
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	setneq r3, r3, zero
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	and r2, r2, r3
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r2, zero, .LBB0_640
# %bb.639:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r28)
	j .LBB0_641
.LBB0_640:                              #   in Loop: Header=BB0_638 Depth=3
	or r25, r1, r20
.LBB0_641:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r1, 4(r18)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r2, zero, .LBB0_643
# %bb.642:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_644
.LBB0_643:                              #   in Loop: Header=BB0_638 Depth=3
	or r1, r1, r20
.LBB0_644:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r2, 8(r18)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r3, zero, .LBB0_646
# %bb.645:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_647
.LBB0_646:                              #   in Loop: Header=BB0_638 Depth=3
	or r3, r2, r20
.LBB0_647:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r2, 12(r18)
	and r5, r2, r4
	and r9, r2, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r5, zero, .LBB0_649
# %bb.648:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_650
.LBB0_649:                              #   in Loop: Header=BB0_638 Depth=3
	or r2, r2, r20
.LBB0_650:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r15, 16(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r5, zero, .LBB0_652
# %bb.651:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r28)
	j .LBB0_653
.LBB0_652:                              #   in Loop: Header=BB0_638 Depth=3
	or r15, r15, r20
.LBB0_653:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r16, 20(r18)
	and r5, r16, r4
	and r9, r16, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r5, zero, .LBB0_655
# %bb.654:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r28)
	j .LBB0_656
.LBB0_655:                              #   in Loop: Header=BB0_638 Depth=3
	or r16, r16, r20
.LBB0_656:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r17, 24(r18)
	and r5, r17, r4
	and r9, r17, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	bneq r5, zero, .LBB0_658
# %bb.657:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r28)
	j .LBB0_659
.LBB0_658:                              #   in Loop: Header=BB0_638 Depth=3
	or r17, r17, r20
.LBB0_659:                              # %vector.body367
                                        #   in Loop: Header=BB0_638 Depth=3
	loads.w r18, 28(r18)
	and r5, r18, r4
	and r9, r18, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	beq r5, zero, .LBB0_636
# %bb.660:                              #   in Loop: Header=BB0_638 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r18, r20
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	j .LBB0_637
.LBB0_661:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	addli r11, zero, 32
	.loc	1 858 7                         # parallel-rne.mlir:858:7
	mfence { sm }
	.loc	1 884 7                         # parallel-rne.mlir:884:7
	addli r1, zero, 3
	bneq r5, r1, .LBB0_550
.LBB0_662:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	addli r2, zero, 1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	addli r1, zero, 192
	zext_int2long r[7:8], r1
	j .LBB0_664
.LBB0_663:                              # %middle.block360
                                        #   in Loop: Header=BB0_664 Depth=2
	.loc	1 892 9                         # parallel-rne.mlir:892:9
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r2, zero, 224
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_697
.LBB0_664:                              # %vector.memcheck347
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_674 Depth 3
                                        #       Child Loop BB0_667 Depth 3
	.loc	1 893 11                        # parallel-rne.mlir:893:11
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_671
# %bb.665:                              # %scalar.ph351.preheader
                                        #   in Loop: Header=BB0_664 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_667
.LBB0_666:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_667 Depth=3
	.loc	1 893 11                        # parallel-rne.mlir:893:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 905 13 is_stmt 1              # parallel-rne.mlir:905:13
	add.s r3, r6, r3
	stores.w r15, 0(r3)
	.loc	1 893 11                        # parallel-rne.mlir:893:11
	setlt.ul r5, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_663
.LBB0_667:                              # %scalar.ph351
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_664 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	add.ul r[11:12], r[1:2], r[7:8]
	slli r3, r11, 2
	add.s r5, r10, r3
	loads.w r17, 0(r5)
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	add.s r5, r21, r3
	loads.w r16, 0(r5)
	.loc	1 900 19                        # parallel-rne.mlir:900:19
	and r5, r17, r19
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r5, zero, .LBB0_669
# %bb.668:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	and r5, r17, r4
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	beq r5, r4, .LBB0_666
	j .LBB0_670
.LBB0_669:                              #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r15, r17, r20
	and r5, r17, r4
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	beq r5, r4, .LBB0_666
.LBB0_670:                              # %scalar.ph351
                                        #   in Loop: Header=BB0_667 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_666
.LBB0_671:                              # %vector.body353.preheader
                                        #   in Loop: Header=BB0_664 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_674
.LBB0_672:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r18, 28(r28)
.LBB0_673:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	addli r9, zero, 32
	.loc	1 905 13 is_stmt 1              # parallel-rne.mlir:905:13
	add.s r5, r6, r24
	.loc	1 893 11                        # parallel-rne.mlir:893:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[11:12], r9
	.loc	1 905 13                        # parallel-rne.mlir:905:13
	stores.w r2, 12(r5)
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r25, 0(r5)
	stores.w r18, 28(r5)
	stores.w r17, 24(r5)
	stores.w r16, 20(r5)
	stores.w r15, 16(r5)
	.loc	1 893 11                        # parallel-rne.mlir:893:11
	seteq.d r2, r[22:23], r[11:12]
	bneq r2, zero, .LBB0_663
.LBB0_674:                              # %vector.body353
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_664 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	add.ul r[1:2], r[22:23], r[7:8]
	slli r24, r1, 2
	add.s r18, r10, r24
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	add.s r28, r21, r24
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	loads.w r1, 0(r18)
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	and r2, r1, r4
	.loc	1 900 19                        # parallel-rne.mlir:900:19
	and r3, r1, r19
	.loc	1 899 19                        # parallel-rne.mlir:899:19
	seteq r2, r2, r4
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	setneq r3, r3, zero
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	and r2, r2, r3
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r2, zero, .LBB0_676
# %bb.675:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r28)
	j .LBB0_677
.LBB0_676:                              #   in Loop: Header=BB0_674 Depth=3
	or r25, r1, r20
.LBB0_677:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r1, 4(r18)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r2, zero, .LBB0_679
# %bb.678:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_680
.LBB0_679:                              #   in Loop: Header=BB0_674 Depth=3
	or r1, r1, r20
.LBB0_680:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r2, 8(r18)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r3, zero, .LBB0_682
# %bb.681:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_683
.LBB0_682:                              #   in Loop: Header=BB0_674 Depth=3
	or r3, r2, r20
.LBB0_683:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r2, 12(r18)
	and r5, r2, r4
	and r9, r2, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r5, zero, .LBB0_685
# %bb.684:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_686
.LBB0_685:                              #   in Loop: Header=BB0_674 Depth=3
	or r2, r2, r20
.LBB0_686:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r15, 16(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r5, zero, .LBB0_688
# %bb.687:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r28)
	j .LBB0_689
.LBB0_688:                              #   in Loop: Header=BB0_674 Depth=3
	or r15, r15, r20
.LBB0_689:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r16, 20(r18)
	and r5, r16, r4
	and r9, r16, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r5, zero, .LBB0_691
# %bb.690:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r28)
	j .LBB0_692
.LBB0_691:                              #   in Loop: Header=BB0_674 Depth=3
	or r16, r16, r20
.LBB0_692:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r17, 24(r18)
	and r5, r17, r4
	and r9, r17, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	bneq r5, zero, .LBB0_694
# %bb.693:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r28)
	j .LBB0_695
.LBB0_694:                              #   in Loop: Header=BB0_674 Depth=3
	or r17, r17, r20
.LBB0_695:                              # %vector.body353
                                        #   in Loop: Header=BB0_674 Depth=3
	loads.w r18, 28(r18)
	and r5, r18, r4
	and r9, r18, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	beq r5, zero, .LBB0_672
# %bb.696:                              #   in Loop: Header=BB0_674 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r18, r20
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	j .LBB0_673
.LBB0_697:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	addli r11, zero, 32
	.loc	1 884 7                         # parallel-rne.mlir:884:7
	mfence { sm }
	.loc	1 910 7                         # parallel-rne.mlir:910:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_551
.LBB0_698:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	addli r2, zero, 1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	addli r1, zero, 256
	zext_int2long r[7:8], r1
	j .LBB0_700
.LBB0_699:                              # %middle.block346
                                        #   in Loop: Header=BB0_700 Depth=2
	.loc	1 918 9                         # parallel-rne.mlir:918:9
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r2, zero, 288
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_733
.LBB0_700:                              # %vector.memcheck333
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_710 Depth 3
                                        #       Child Loop BB0_703 Depth 3
	.loc	1 919 11                        # parallel-rne.mlir:919:11
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_707
# %bb.701:                              # %scalar.ph337.preheader
                                        #   in Loop: Header=BB0_700 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_703
.LBB0_702:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_703 Depth=3
	.loc	1 919 11                        # parallel-rne.mlir:919:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 931 13 is_stmt 1              # parallel-rne.mlir:931:13
	add.s r3, r6, r3
	stores.w r15, 0(r3)
	.loc	1 919 11                        # parallel-rne.mlir:919:11
	setlt.ul r5, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_699
.LBB0_703:                              # %scalar.ph337
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_700 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	add.ul r[11:12], r[1:2], r[7:8]
	slli r3, r11, 2
	add.s r5, r10, r3
	loads.w r17, 0(r5)
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	add.s r5, r21, r3
	loads.w r16, 0(r5)
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	and r5, r17, r19
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r5, zero, .LBB0_705
# %bb.704:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_703 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	and r5, r17, r4
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	beq r5, r4, .LBB0_702
	j .LBB0_706
.LBB0_705:                              #   in Loop: Header=BB0_703 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r15, r17, r20
	and r5, r17, r4
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	beq r5, r4, .LBB0_702
.LBB0_706:                              # %scalar.ph337
                                        #   in Loop: Header=BB0_703 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_702
.LBB0_707:                              # %vector.body339.preheader
                                        #   in Loop: Header=BB0_700 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_710
.LBB0_708:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r18, 28(r28)
.LBB0_709:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	addli r9, zero, 32
	.loc	1 931 13 is_stmt 1              # parallel-rne.mlir:931:13
	add.s r5, r6, r24
	.loc	1 919 11                        # parallel-rne.mlir:919:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[11:12], r9
	.loc	1 931 13                        # parallel-rne.mlir:931:13
	stores.w r2, 12(r5)
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r25, 0(r5)
	stores.w r18, 28(r5)
	stores.w r17, 24(r5)
	stores.w r16, 20(r5)
	stores.w r15, 16(r5)
	.loc	1 919 11                        # parallel-rne.mlir:919:11
	seteq.d r2, r[22:23], r[11:12]
	bneq r2, zero, .LBB0_699
.LBB0_710:                              # %vector.body339
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_700 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	add.ul r[1:2], r[22:23], r[7:8]
	slli r24, r1, 2
	add.s r18, r10, r24
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	add.s r28, r21, r24
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	loads.w r1, 0(r18)
	.loc	1 924 19                        # parallel-rne.mlir:924:19
	and r2, r1, r4
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	and r3, r1, r19
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	seteq r2, r2, r4
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	setneq r3, r3, zero
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	and r2, r2, r3
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r2, zero, .LBB0_712
# %bb.711:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r28)
	j .LBB0_713
.LBB0_712:                              #   in Loop: Header=BB0_710 Depth=3
	or r25, r1, r20
.LBB0_713:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r1, 4(r18)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r2, zero, .LBB0_715
# %bb.714:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_710 Depth=3
	or r1, r1, r20
.LBB0_716:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r2, 8(r18)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r3, zero, .LBB0_718
# %bb.717:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_710 Depth=3
	or r3, r2, r20
.LBB0_719:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r2, 12(r18)
	and r5, r2, r4
	and r9, r2, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r5, zero, .LBB0_721
# %bb.720:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_710 Depth=3
	or r2, r2, r20
.LBB0_722:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r15, 16(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r5, zero, .LBB0_724
# %bb.723:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r28)
	j .LBB0_725
.LBB0_724:                              #   in Loop: Header=BB0_710 Depth=3
	or r15, r15, r20
.LBB0_725:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r16, 20(r18)
	and r5, r16, r4
	and r9, r16, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r5, zero, .LBB0_727
# %bb.726:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r28)
	j .LBB0_728
.LBB0_727:                              #   in Loop: Header=BB0_710 Depth=3
	or r16, r16, r20
.LBB0_728:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r17, 24(r18)
	and r5, r17, r4
	and r9, r17, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r5, zero, .LBB0_730
# %bb.729:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r28)
	j .LBB0_731
.LBB0_730:                              #   in Loop: Header=BB0_710 Depth=3
	or r17, r17, r20
.LBB0_731:                              # %vector.body339
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r18, 28(r18)
	and r5, r18, r4
	and r9, r18, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	beq r5, zero, .LBB0_708
# %bb.732:                              #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r18, r20
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	j .LBB0_709
.LBB0_733:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	addli r11, zero, 32
	.loc	1 910 7                         # parallel-rne.mlir:910:7
	mfence { sm }
	.loc	1 936 7                         # parallel-rne.mlir:936:7
	addli r1, zero, 5
	bneq r5, r1, .LBB0_552
.LBB0_734:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	addli r2, zero, 1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	addli r1, zero, 320
	zext_int2long r[7:8], r1
	j .LBB0_736
.LBB0_735:                              # %middle.block332
                                        #   in Loop: Header=BB0_736 Depth=2
	.loc	1 944 9                         # parallel-rne.mlir:944:9
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r2, zero, 352
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_769
.LBB0_736:                              # %vector.memcheck319
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_746 Depth 3
                                        #       Child Loop BB0_739 Depth 3
	.loc	1 945 11                        # parallel-rne.mlir:945:11
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_743
# %bb.737:                              # %scalar.ph323.preheader
                                        #   in Loop: Header=BB0_736 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_739
.LBB0_738:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_739 Depth=3
	.loc	1 945 11                        # parallel-rne.mlir:945:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 957 13 is_stmt 1              # parallel-rne.mlir:957:13
	add.s r3, r6, r3
	stores.w r15, 0(r3)
	.loc	1 945 11                        # parallel-rne.mlir:945:11
	setlt.ul r5, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_735
.LBB0_739:                              # %scalar.ph323
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_736 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	add.ul r[11:12], r[1:2], r[7:8]
	slli r3, r11, 2
	add.s r5, r10, r3
	loads.w r17, 0(r5)
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	add.s r5, r21, r3
	loads.w r16, 0(r5)
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	and r5, r17, r19
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r5, zero, .LBB0_741
# %bb.740:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_739 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	and r5, r17, r4
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	beq r5, r4, .LBB0_738
	j .LBB0_742
.LBB0_741:                              #   in Loop: Header=BB0_739 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r15, r17, r20
	and r5, r17, r4
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	beq r5, r4, .LBB0_738
.LBB0_742:                              # %scalar.ph323
                                        #   in Loop: Header=BB0_739 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_738
.LBB0_743:                              # %vector.body325.preheader
                                        #   in Loop: Header=BB0_736 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_746
.LBB0_744:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r18, 28(r28)
.LBB0_745:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	addli r9, zero, 32
	.loc	1 957 13 is_stmt 1              # parallel-rne.mlir:957:13
	add.s r5, r6, r24
	.loc	1 945 11                        # parallel-rne.mlir:945:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[11:12], r9
	.loc	1 957 13                        # parallel-rne.mlir:957:13
	stores.w r2, 12(r5)
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r25, 0(r5)
	stores.w r18, 28(r5)
	stores.w r17, 24(r5)
	stores.w r16, 20(r5)
	stores.w r15, 16(r5)
	.loc	1 945 11                        # parallel-rne.mlir:945:11
	seteq.d r2, r[22:23], r[11:12]
	bneq r2, zero, .LBB0_735
.LBB0_746:                              # %vector.body325
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_736 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	add.ul r[1:2], r[22:23], r[7:8]
	slli r24, r1, 2
	add.s r18, r10, r24
	.loc	1 947 19                        # parallel-rne.mlir:947:19
	add.s r28, r21, r24
	.loc	1 946 19                        # parallel-rne.mlir:946:19
	loads.w r1, 0(r18)
	.loc	1 950 19                        # parallel-rne.mlir:950:19
	and r2, r1, r4
	.loc	1 952 19                        # parallel-rne.mlir:952:19
	and r3, r1, r19
	.loc	1 951 19                        # parallel-rne.mlir:951:19
	seteq r2, r2, r4
	.loc	1 953 19                        # parallel-rne.mlir:953:19
	setneq r3, r3, zero
	.loc	1 954 19                        # parallel-rne.mlir:954:19
	and r2, r2, r3
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r2, zero, .LBB0_748
# %bb.747:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r28)
	j .LBB0_749
.LBB0_748:                              #   in Loop: Header=BB0_746 Depth=3
	or r25, r1, r20
.LBB0_749:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r1, 4(r18)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r2, zero, .LBB0_751
# %bb.750:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_752
.LBB0_751:                              #   in Loop: Header=BB0_746 Depth=3
	or r1, r1, r20
.LBB0_752:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r2, 8(r18)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r3, zero, .LBB0_754
# %bb.753:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_755
.LBB0_754:                              #   in Loop: Header=BB0_746 Depth=3
	or r3, r2, r20
.LBB0_755:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r2, 12(r18)
	and r5, r2, r4
	and r9, r2, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r5, zero, .LBB0_757
# %bb.756:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_758
.LBB0_757:                              #   in Loop: Header=BB0_746 Depth=3
	or r2, r2, r20
.LBB0_758:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r15, 16(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r5, zero, .LBB0_760
# %bb.759:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r28)
	j .LBB0_761
.LBB0_760:                              #   in Loop: Header=BB0_746 Depth=3
	or r15, r15, r20
.LBB0_761:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r16, 20(r18)
	and r5, r16, r4
	and r9, r16, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r5, zero, .LBB0_763
# %bb.762:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r28)
	j .LBB0_764
.LBB0_763:                              #   in Loop: Header=BB0_746 Depth=3
	or r16, r16, r20
.LBB0_764:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r17, 24(r18)
	and r5, r17, r4
	and r9, r17, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	bneq r5, zero, .LBB0_766
# %bb.765:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r28)
	j .LBB0_767
.LBB0_766:                              #   in Loop: Header=BB0_746 Depth=3
	or r17, r17, r20
.LBB0_767:                              # %vector.body325
                                        #   in Loop: Header=BB0_746 Depth=3
	loads.w r18, 28(r18)
	and r5, r18, r4
	and r9, r18, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	beq r5, zero, .LBB0_744
# %bb.768:                              #   in Loop: Header=BB0_746 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r18, r20
	.loc	1 955 19                        # parallel-rne.mlir:955:19
	j .LBB0_745
.LBB0_769:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	addli r11, zero, 32
	.loc	1 936 7                         # parallel-rne.mlir:936:7
	mfence { sm }
	.loc	1 962 7                         # parallel-rne.mlir:962:7
	addli r1, zero, 6
	bneq r5, r1, .LBB0_553
.LBB0_770:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	addli r2, zero, 1
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	addli r1, zero, 384
	zext_int2long r[7:8], r1
	j .LBB0_772
.LBB0_771:                              # %middle.block318
                                        #   in Loop: Header=BB0_772 Depth=2
	.loc	1 970 9                         # parallel-rne.mlir:970:9
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	addli r2, zero, 416
	zext_int2long r[7:8], r2
	addli r2, zero, 0
	andi r1, r1, 1
	beq r1, zero, .LBB0_805
.LBB0_772:                              # %vector.memcheck305
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_782 Depth 3
                                        #       Child Loop BB0_775 Depth 3
	.loc	1 971 11                        # parallel-rne.mlir:971:11
	loadli.w r1,  -228(r30)                 # 4-byte Folded Reload
	storeli.w r2, -216(r30)                 # 4-byte Folded Spill
	beq r1, zero, .LBB0_779
# %bb.773:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_772 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_775
.LBB0_774:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_775 Depth=3
	.loc	1 971 11                        # parallel-rne.mlir:971:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 983 13 is_stmt 1              # parallel-rne.mlir:983:13
	add.s r3, r6, r3
	stores.w r15, 0(r3)
	.loc	1 971 11                        # parallel-rne.mlir:971:11
	setlt.ul r5, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_771
.LBB0_775:                              # %scalar.ph309
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_772 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	add.ul r[11:12], r[1:2], r[7:8]
	slli r3, r11, 2
	add.s r5, r10, r3
	loads.w r17, 0(r5)
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	add.s r5, r21, r3
	loads.w r16, 0(r5)
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	and r5, r17, r19
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r5, zero, .LBB0_777
# %bb.776:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_775 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r16, 0
	and r5, r17, r4
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	beq r5, r4, .LBB0_774
	j .LBB0_778
.LBB0_777:                              #   in Loop: Header=BB0_775 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r15, r17, r20
	and r5, r17, r4
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	beq r5, r4, .LBB0_774
.LBB0_778:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_775 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r16, 0
	j .LBB0_774
.LBB0_779:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_772 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_782
.LBB0_780:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r18, 28(r28)
.LBB0_781:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	addli r9, zero, 32
	.loc	1 983 13 is_stmt 1              # parallel-rne.mlir:983:13
	add.s r5, r6, r24
	.loc	1 971 11                        # parallel-rne.mlir:971:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[11:12], r9
	.loc	1 983 13                        # parallel-rne.mlir:983:13
	stores.w r2, 12(r5)
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r25, 0(r5)
	stores.w r18, 28(r5)
	stores.w r17, 24(r5)
	stores.w r16, 20(r5)
	stores.w r15, 16(r5)
	.loc	1 971 11                        # parallel-rne.mlir:971:11
	seteq.d r2, r[22:23], r[11:12]
	bneq r2, zero, .LBB0_771
.LBB0_782:                              # %vector.body311
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_772 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	add.ul r[1:2], r[22:23], r[7:8]
	slli r24, r1, 2
	add.s r18, r10, r24
	.loc	1 973 19                        # parallel-rne.mlir:973:19
	add.s r28, r21, r24
	.loc	1 972 19                        # parallel-rne.mlir:972:19
	loads.w r1, 0(r18)
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	and r2, r1, r4
	.loc	1 978 19                        # parallel-rne.mlir:978:19
	and r3, r1, r19
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	seteq r2, r2, r4
	.loc	1 979 19                        # parallel-rne.mlir:979:19
	setneq r3, r3, zero
	.loc	1 980 19                        # parallel-rne.mlir:980:19
	and r2, r2, r3
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r2, zero, .LBB0_784
# %bb.783:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r25, 0(r28)
	j .LBB0_785
.LBB0_784:                              #   in Loop: Header=BB0_782 Depth=3
	or r25, r1, r20
.LBB0_785:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r1, 4(r18)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r2, zero, .LBB0_787
# %bb.786:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_788
.LBB0_787:                              #   in Loop: Header=BB0_782 Depth=3
	or r1, r1, r20
.LBB0_788:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r2, 8(r18)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r3, zero, .LBB0_790
# %bb.789:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_791
.LBB0_790:                              #   in Loop: Header=BB0_782 Depth=3
	or r3, r2, r20
.LBB0_791:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r2, 12(r18)
	and r5, r2, r4
	and r9, r2, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r5, zero, .LBB0_793
# %bb.792:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_794
.LBB0_793:                              #   in Loop: Header=BB0_782 Depth=3
	or r2, r2, r20
.LBB0_794:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r15, 16(r18)
	and r5, r15, r4
	and r9, r15, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r5, zero, .LBB0_796
# %bb.795:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r28)
	j .LBB0_797
.LBB0_796:                              #   in Loop: Header=BB0_782 Depth=3
	or r15, r15, r20
.LBB0_797:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r16, 20(r18)
	and r5, r16, r4
	and r9, r16, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r5, zero, .LBB0_799
# %bb.798:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r28)
	j .LBB0_800
.LBB0_799:                              #   in Loop: Header=BB0_782 Depth=3
	or r16, r16, r20
.LBB0_800:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r17, 24(r18)
	and r5, r17, r4
	and r9, r17, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	bneq r5, zero, .LBB0_802
# %bb.801:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r28)
	j .LBB0_803
.LBB0_802:                              #   in Loop: Header=BB0_782 Depth=3
	or r17, r17, r20
.LBB0_803:                              # %vector.body311
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r18, 28(r18)
	and r5, r18, r4
	and r9, r18, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	beq r5, zero, .LBB0_780
# %bb.804:                              #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r18, r18, r20
	.loc	1 981 19                        # parallel-rne.mlir:981:19
	j .LBB0_781
.LBB0_805:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	addli r11, zero, 32
	.loc	1 962 7                         # parallel-rne.mlir:962:7
	mfence { sm }
	.loc	1 988 7                         # parallel-rne.mlir:988:7
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_842
.LBB0_806:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	addli r12, zero, 1
	mfence { lm, sm, gm }
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -248(r30)                 # 4-byte Folded Reload
	or r1, r1, r2
	storeli.w r1, -216(r30)                 # 4-byte Folded Spill
	addli r1, zero, 448
	zext_int2long r[17:18], r1
	j .LBB0_808
.LBB0_807:                              # %middle.block304
                                        #   in Loop: Header=BB0_808 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 480
	.loc	1 996 9 is_stmt 1               # parallel-rne.mlir:996:9
	andi r1, r12, 1
	addli r12, zero, 0
	zext_int2long r[17:18], r2
	beq r1, zero, .LBB0_841
.LBB0_808:                              # %vector.memcheck291
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_818 Depth 3
                                        #       Child Loop BB0_811 Depth 3
	.loc	1 997 11                        # parallel-rne.mlir:997:11
	loadli.w r1,  -216(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_815
# %bb.809:                              # %scalar.ph295.preheader
                                        #   in Loop: Header=BB0_808 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_811
.LBB0_810:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_811 Depth=3
	.loc	1 997 11                        # parallel-rne.mlir:997:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1009 13 is_stmt 1             # parallel-rne.mlir:1009:13
	add.s r3, r6, r3
	stores.w r7, 0(r3)
	.loc	1 997 11                        # parallel-rne.mlir:997:11
	setlt.ul r5, r[1:2], r[8:9]
	addli.d r[1:2], r[1:2], 1
	beq r5, zero, .LBB0_807
.LBB0_811:                              # %scalar.ph295
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_808 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	add.ul r[7:8], r[1:2], r[17:18]
	slli r3, r7, 2
	add.s r5, r10, r3
	loads.w r15, 0(r5)
	.loc	1 999 19                        # parallel-rne.mlir:999:19
	add.s r5, r21, r3
	loads.w r8, 0(r5)
	.loc	1 1004 19                       # parallel-rne.mlir:1004:19
	and r5, r15, r19
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r5, zero, .LBB0_813
# %bb.812:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_811 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r5, r15, r4
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	beq r5, r4, .LBB0_810
	j .LBB0_814
.LBB0_813:                              #   in Loop: Header=BB0_811 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r15, r20
	and r5, r15, r4
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	beq r5, r4, .LBB0_810
.LBB0_814:                              # %scalar.ph295
                                        #   in Loop: Header=BB0_811 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_810
.LBB0_815:                              # %vector.body297.preheader
                                        #   in Loop: Header=BB0_808 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_818
.LBB0_816:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r25, 28(r28)
.LBB0_817:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 1009 13 is_stmt 1             # parallel-rne.mlir:1009:13
	add.s r5, r6, r8
	.loc	1 997 11                        # parallel-rne.mlir:997:11
	addli.d r[22:23], r[22:23], 8
	zext_int2long r[8:9], r11
	.loc	1 1009 13                       # parallel-rne.mlir:1009:13
	stores.w r2, 12(r5)
	.loc	1 997 11                        # parallel-rne.mlir:997:11
	seteq.d r2, r[22:23], r[8:9]
	.loc	1 1009 13                       # parallel-rne.mlir:1009:13
	stores.w r3, 8(r5)
	stores.w r1, 4(r5)
	stores.w r24, 0(r5)
	stores.w r25, 28(r5)
	stores.w r7, 24(r5)
	stores.w r16, 20(r5)
	stores.w r15, 16(r5)
	.loc	1 997 11                        # parallel-rne.mlir:997:11
	bneq r2, zero, .LBB0_807
.LBB0_818:                              # %vector.body297
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_808 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	add.ul r[1:2], r[22:23], r[17:18]
	slli r8, r1, 2
	add.s r25, r10, r8
	.loc	1 999 19                        # parallel-rne.mlir:999:19
	add.s r28, r21, r8
	.loc	1 998 19                        # parallel-rne.mlir:998:19
	loads.w r1, 0(r25)
	.loc	1 1002 19                       # parallel-rne.mlir:1002:19
	and r2, r1, r4
	.loc	1 1004 19                       # parallel-rne.mlir:1004:19
	and r3, r1, r19
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	seteq r2, r2, r4
	.loc	1 1005 19                       # parallel-rne.mlir:1005:19
	setneq r3, r3, zero
	.loc	1 1006 19                       # parallel-rne.mlir:1006:19
	and r2, r2, r3
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r2, zero, .LBB0_820
# %bb.819:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r24, 0(r28)
	j .LBB0_821
.LBB0_820:                              #   in Loop: Header=BB0_818 Depth=3
	or r24, r1, r20
.LBB0_821:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r1, 4(r25)
	and r2, r1, r4
	and r3, r1, r19
	seteq r2, r2, r4
	setneq r3, r3, zero
	and r2, r2, r3
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r2, zero, .LBB0_823
# %bb.822:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r1, 4(r28)
	j .LBB0_824
.LBB0_823:                              #   in Loop: Header=BB0_818 Depth=3
	or r1, r1, r20
.LBB0_824:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r2, 8(r25)
	and r3, r2, r4
	and r5, r2, r19
	seteq r3, r3, r4
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r3, zero, .LBB0_826
# %bb.825:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r28)
	j .LBB0_827
.LBB0_826:                              #   in Loop: Header=BB0_818 Depth=3
	or r3, r2, r20
.LBB0_827:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r2, 12(r25)
	and r5, r2, r4
	and r7, r2, r19
	seteq r5, r5, r4
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r5, zero, .LBB0_829
# %bb.828:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 12(r28)
	j .LBB0_830
.LBB0_829:                              #   in Loop: Header=BB0_818 Depth=3
	or r2, r2, r20
.LBB0_830:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r7, 16(r25)
	and r5, r7, r4
	and r9, r7, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r5, zero, .LBB0_832
# %bb.831:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 16(r28)
	j .LBB0_833
.LBB0_832:                              #   in Loop: Header=BB0_818 Depth=3
	or r15, r7, r20
.LBB0_833:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r7, 20(r25)
	and r5, r7, r4
	and r9, r7, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r5, zero, .LBB0_835
# %bb.834:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 20(r28)
	j .LBB0_836
.LBB0_835:                              #   in Loop: Header=BB0_818 Depth=3
	or r16, r7, r20
.LBB0_836:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r7, 24(r25)
	and r5, r7, r4
	and r9, r7, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	bneq r5, zero, .LBB0_838
# %bb.837:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 24(r28)
	j .LBB0_839
.LBB0_838:                              #   in Loop: Header=BB0_818 Depth=3
	or r7, r7, r20
.LBB0_839:                              # %vector.body297
                                        #   in Loop: Header=BB0_818 Depth=3
	loads.w r25, 28(r25)
	and r5, r25, r4
	and r9, r25, r19
	seteq r5, r5, r4
	setneq r9, r9, zero
	and r5, r5, r9
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	beq r5, zero, .LBB0_816
# %bb.840:                              #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r25, r25, r20
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	j .LBB0_817
.LBB0_841:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 988 7                         # parallel-rne.mlir:988:7
	mfence { sm }
.LBB0_842:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	addli r1, zero, 3
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	sync_core
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	bneq r5, r1, .LBB0_844
# %bb.843:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 31
	.loc	1 1016 7 is_stmt 1              # parallel-rne.mlir:1016:7
	addli r1, zero, 38
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	addli r2, zero, 2
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	xsignal r3, 0
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	xsignal r1, 0
	.loc	1 1017 7                        # parallel-rne.mlir:1017:7
	addli r1, zero, 39
	xsignal r1, 0
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	loadli.w r1,  -12(r30)
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -12(r30)
	.loc	1 1023 7                        # parallel-rne.mlir:1023:7
	addli r1, zero, 21
	xwait r1, 0
	.loc	1 1024 7                        # parallel-rne.mlir:1024:7
	xwait r3, 0
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	slli r1, r2, 11
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	add.s r7, r1, r2
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	addli r1, zero, 40
	xwait r1, 0
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	addli r1, zero, 42
	xwait r1, 0
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	j .LBB0_847
.LBB0_844:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1018 7 is_stmt 1              # parallel-rne.mlir:1018:7
	addli r1, zero, 5
	bneq r5, r1, .LBB0_846
# %bb.845:                              # %.thread87
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 39
	addli r3, zero, 2
	addli r9, zero, 511
	addli r8, zero, 1
	xwait r1, 0
	lock zero, r3
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	dsmadd r6, r6, r6, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	loadli.w r1,  -12(r30)
	addli r2, r1, 1
	mod.s r1, r1, r3
	storeli.w r2, -12(r30)
	.loc	1 1021 7                        # parallel-rne.mlir:1021:7
	addli r2, zero, 20
	xwait r2, 0
	addli r2, zero, 43
	xwait r2, 0
	lock zero, r3
	lui r2, 258048
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	slli r1, r1, 11
	.loc	1 1021 7                        # parallel-rne.mlir:1021:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	loadli.w r2,  -336(r30)                 # 4-byte Folded Reload
	.loc	1 1021 7                        # parallel-rne.mlir:1021:7
	ew_cfg zero, r9, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, r8, 19
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	add.s r7, r1, r2
	.loc	1 1021 7                        # parallel-rne.mlir:1021:7
	addli r1, zero, 19
	dsmul r7, r14, r6, 0
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r1, 0
	addli r1, zero, 40
	xsignal r1, 0
	addli r1, zero, 42
	xsignal r1, 0
	.loc	1 1023 7                        # parallel-rne.mlir:1023:7
	j .LBB0_847
.LBB0_846:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	loadli.w r1,  -12(r30)
	addli r2, zero, 2
	loadli.w r3,  -336(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -12(r30)
	slli r2, r2, 11
	add.s r7, r2, r3
.LBB0_847:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	seteq r1, r21, r6
	sub.s r14, r21, r7
	.loc	1 1028 7 is_stmt 1              # parallel-rne.mlir:1028:7
	storeli.w r1, -228(r30)                 # 4-byte Folded Spill
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	addli r1, zero, 255
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	xfence
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	mfence { lm, sm, gm }
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	csr_set csr5, r1
	sub.s r1, r21, r12
	storeli.w r1, -244(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	beq r5, zero, .LBB0_854
# %bb.848:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1067 7                        # parallel-rne.mlir:1067:7
	addli r1, zero, 1
	beq r5, r1, .LBB0_882
.LBB0_849:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1103 7                        # parallel-rne.mlir:1103:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_910
.LBB0_850:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1139 7                        # parallel-rne.mlir:1139:7
	addli r1, zero, 3
	beq r5, r1, .LBB0_938
.LBB0_851:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1175 7                        # parallel-rne.mlir:1175:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_966
.LBB0_852:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1211 7                        # parallel-rne.mlir:1211:7
	addli r1, zero, 5
	beq r5, r1, .LBB0_994
.LBB0_853:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1247 7                        # parallel-rne.mlir:1247:7
	addli r1, zero, 6
	beq r5, r1, .LBB0_1022
	j .LBB0_1050
.LBB0_854:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	.loc	1 1031 7 is_stmt 1              # parallel-rne.mlir:1031:7
	xfence
	addli r17, zero, 1
	zext_int2long r[22:23], zero
	mfence { lm, sm, gm }
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_856
.LBB0_855:                              # %middle.block290
                                        #   in Loop: Header=BB0_856 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[22:23], -200(r30)              # 8-byte Folded Reload
	.loc	1 1039 9 is_stmt 1              # parallel-rne.mlir:1039:9
	andi r1, r17, 1
	addli r17, zero, 0
	beq r1, zero, .LBB0_881
.LBB0_856:                              # %vector.memcheck276
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_873 Depth 3
                                        #       Child Loop BB0_859 Depth 3
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	beq r2, zero, .LBB0_871
# %bb.857:                              # %scalar.ph282.preheader
                                        #   in Loop: Header=BB0_856 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_859
.LBB0_858:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1062 13 is_stmt 1             # parallel-rne.mlir:1062:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_855
.LBB0_859:                              # %scalar.ph282
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_856 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.ul r[8:9], r[15:16], r[22:23]
	lui r18, 523264
	slli r1, r8, 2
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	add.s r3, r6, r1
	.loc	1 1043 19                       # parallel-rne.mlir:1043:19
	add.s r5, r7, r1
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	loads.w r3, 0(r3)
	.loc	1 1043 19                       # parallel-rne.mlir:1043:19
	loads.w r24, 0(r5)
	.loc	1 1046 19                       # parallel-rne.mlir:1046:19
	and r8, r3, r27
	lui r3, 523264
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	beq r8, r4, .LBB0_861
# %bb.860:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r18, r24, 0
.LBB0_861:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r10, r5, r27
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r10, zero, .LBB0_869
# %bb.862:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r8, zero, .LBB0_870
.LBB0_863:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	beq r10, r4, .LBB0_865
.LBB0_864:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r18, 0
.LBB0_865:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	setlt.u r5, r4, r8
	lui r8, 523264
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r5, zero, .LBB0_867
# %bb.866:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_867:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	setlt.u r5, r4, r10
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r5, zero, .LBB0_858
# %bb.868:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_858
.LBB0_869:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	addli r18, r24, 0
	lui r24, 523264
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	beq r8, zero, .LBB0_863
.LBB0_870:                              # %scalar.ph282
                                        #   in Loop: Header=BB0_859 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r18, 0
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r10, r4, .LBB0_864
	j .LBB0_865
.LBB0_871:                              # %vector.body284.preheader
                                        #   in Loop: Header=BB0_856 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[24:25], zero
	j .LBB0_873
.LBB0_872:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 1040 11 is_stmt 1             # parallel-rne.mlir:1040:11
	load.d r[8:9], -200(r30)                # 8-byte Folded Reload
	addli.d r[24:25], r[24:25], 4
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1062 13                       # parallel-rne.mlir:1062:13
	add.s r1, r21, r1
	addli r11, zero, 32
	stores.w r18, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	seteq.d r5, r[24:25], r[8:9]
	bneq r5, zero, .LBB0_855
.LBB0_873:                              # %vector.body284
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_856 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.ul r[8:9], r[24:25], r[22:23]
	lui r18, 523264
	slli r1, r8, 2
	add.s r28, r12, r1
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	add.s r8, r6, r1
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	loads.w r3, 0(r28)
	.loc	1 1042 19                       # parallel-rne.mlir:1042:19
	loads.w r5, 0(r8)
	.loc	1 1048 19                       # parallel-rne.mlir:1048:19
	and r3, r3, r27
	.loc	1 1046 19                       # parallel-rne.mlir:1046:19
	and r5, r5, r27
	.loc	1 1049 19                       # parallel-rne.mlir:1049:19
	seteq r9, r3, r4
	.loc	1 1053 20                       # parallel-rne.mlir:1053:20
	seteq r12, r3, zero
	.loc	1 1050 19                       # parallel-rne.mlir:1050:19
	seteq r10, r5, zero
	.loc	1 1052 19                       # parallel-rne.mlir:1052:19
	seteq r11, r5, r4
	.loc	1 1058 20                       # parallel-rne.mlir:1058:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1051 19                       # parallel-rne.mlir:1051:19
	and r5, r9, r10
	.loc	1 1054 20                       # parallel-rne.mlir:1054:20
	and r9, r12, r11
	.loc	1 1043 19                       # parallel-rne.mlir:1043:19
	add.s r10, r7, r1
	.loc	1 1055 20                       # parallel-rne.mlir:1055:20
	or r5, r5, r9
	.loc	1 1059 20                       # parallel-rne.mlir:1059:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r5, zero, .LBB0_875
# %bb.874:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r10)
.LBB0_875:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r5, zero, .LBB0_877
# %bb.876:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r10)
.LBB0_877:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r5, zero, .LBB0_879
# %bb.878:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r10)
.LBB0_879:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	loads.w r5, 12(r28)
	loads.w r8, 12(r8)
	and r5, r5, r27
	and r8, r8, r27
	seteq r9, r5, r4
	seteq r20, r5, zero
	seteq r11, r8, zero
	seteq r12, r8, r4
	max.u r5, r5, r8
	setlt.u r5, r4, r5
	and r8, r9, r11
	and r9, r20, r12
	or r8, r8, r9
	or r5, r5, r8
	.loc	1 1060 20                       # parallel-rne.mlir:1060:20
	bneq r5, zero, .LBB0_872
# %bb.880:                              # %vector.body284
                                        #   in Loop: Header=BB0_873 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 12(r10)
	j .LBB0_872
.LBB0_881:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	mfence { sm }
	.loc	1 1067 7                        # parallel-rne.mlir:1067:7
	addli r1, zero, 1
	bneq r5, r1, .LBB0_849
.LBB0_882:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	.loc	1 1067 7                        # parallel-rne.mlir:1067:7
	xfence
	addli r22, zero, 1
	mfence { lm, sm, gm }
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	addli r2, zero, 64
	zext_int2long r[17:18], r2
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_884
.LBB0_883:                              # %middle.block275
                                        #   in Loop: Header=BB0_884 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[17:18], -224(r30)              # 8-byte Folded Reload
	.loc	1 1075 9 is_stmt 1              # parallel-rne.mlir:1075:9
	andi r1, r22, 1
	addli r22, zero, 0
	beq r1, zero, .LBB0_909
.LBB0_884:                              # %vector.memcheck261
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_901 Depth 3
                                        #       Child Loop BB0_887 Depth 3
	.loc	1 1076 11                       # parallel-rne.mlir:1076:11
	beq r2, zero, .LBB0_899
# %bb.885:                              # %scalar.ph267.preheader
                                        #   in Loop: Header=BB0_884 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_887
.LBB0_886:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	.loc	1 1076 11                       # parallel-rne.mlir:1076:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1098 13 is_stmt 1             # parallel-rne.mlir:1098:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1076 11                       # parallel-rne.mlir:1076:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_883
.LBB0_887:                              # %scalar.ph267
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_884 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1077 19                       # parallel-rne.mlir:1077:19
	add.ul r[8:9], r[15:16], r[17:18]
	lui r23, 523264
	slli r1, r8, 2
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	add.s r3, r6, r1
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	add.s r5, r7, r1
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	loads.w r3, 0(r3)
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	loads.w r24, 0(r5)
	.loc	1 1082 19                       # parallel-rne.mlir:1082:19
	and r8, r3, r27
	lui r3, 523264
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	beq r8, r4, .LBB0_889
# %bb.888:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r23, r24, 0
.LBB0_889:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r10, r5, r27
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r10, zero, .LBB0_897
# %bb.890:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r24, 523264
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r8, zero, .LBB0_898
.LBB0_891:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	beq r10, r4, .LBB0_893
.LBB0_892:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r23, 0
.LBB0_893:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	setlt.u r5, r4, r8
	lui r8, 523264
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r5, zero, .LBB0_895
# %bb.894:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r24, 0
.LBB0_895:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	setlt.u r5, r4, r10
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r5, zero, .LBB0_886
# %bb.896:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_886
.LBB0_897:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	addli r23, r24, 0
	lui r24, 523264
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	beq r8, zero, .LBB0_891
.LBB0_898:                              # %scalar.ph267
                                        #   in Loop: Header=BB0_887 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r24, r23, 0
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r10, r4, .LBB0_892
	j .LBB0_893
.LBB0_899:                              # %vector.body269.preheader
                                        #   in Loop: Header=BB0_884 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[23:24], zero
	j .LBB0_901
.LBB0_900:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	.loc	1 1076 11 is_stmt 1             # parallel-rne.mlir:1076:11
	load.d r[8:9], -200(r30)                # 8-byte Folded Reload
	addli.d r[23:24], r[23:24], 4
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1098 13                       # parallel-rne.mlir:1098:13
	add.s r1, r21, r1
	addli r11, zero, 32
	stores.w r25, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1076 11                       # parallel-rne.mlir:1076:11
	seteq.d r5, r[23:24], r[8:9]
	bneq r5, zero, .LBB0_883
.LBB0_901:                              # %vector.body269
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_884 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1077 19                       # parallel-rne.mlir:1077:19
	add.ul r[8:9], r[23:24], r[17:18]
	lui r25, 523264
	slli r1, r8, 2
	add.s r28, r12, r1
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	add.s r8, r6, r1
	.loc	1 1077 19                       # parallel-rne.mlir:1077:19
	loads.w r3, 0(r28)
	.loc	1 1078 19                       # parallel-rne.mlir:1078:19
	loads.w r5, 0(r8)
	.loc	1 1084 19                       # parallel-rne.mlir:1084:19
	and r3, r3, r27
	.loc	1 1082 19                       # parallel-rne.mlir:1082:19
	and r5, r5, r27
	.loc	1 1085 19                       # parallel-rne.mlir:1085:19
	seteq r9, r3, r4
	.loc	1 1089 20                       # parallel-rne.mlir:1089:20
	seteq r12, r3, zero
	.loc	1 1086 19                       # parallel-rne.mlir:1086:19
	seteq r10, r5, zero
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	seteq r11, r5, r4
	.loc	1 1094 20                       # parallel-rne.mlir:1094:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	and r5, r9, r10
	.loc	1 1090 20                       # parallel-rne.mlir:1090:20
	and r9, r12, r11
	.loc	1 1079 19                       # parallel-rne.mlir:1079:19
	add.s r10, r7, r1
	.loc	1 1091 20                       # parallel-rne.mlir:1091:20
	or r5, r5, r9
	.loc	1 1095 20                       # parallel-rne.mlir:1095:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r5, zero, .LBB0_903
# %bb.902:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r10)
.LBB0_903:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r5, zero, .LBB0_905
# %bb.904:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r10)
.LBB0_905:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r5, zero, .LBB0_907
# %bb.906:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r10)
.LBB0_907:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	loads.w r5, 12(r28)
	loads.w r8, 12(r8)
	and r5, r5, r27
	and r8, r8, r27
	seteq r9, r5, r4
	seteq r20, r5, zero
	seteq r11, r8, zero
	seteq r12, r8, r4
	max.u r5, r5, r8
	setlt.u r5, r4, r5
	and r8, r9, r11
	and r9, r20, r12
	or r8, r8, r9
	or r5, r5, r8
	.loc	1 1096 20                       # parallel-rne.mlir:1096:20
	bneq r5, zero, .LBB0_900
# %bb.908:                              # %vector.body269
                                        #   in Loop: Header=BB0_901 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r25, 12(r10)
	j .LBB0_900
.LBB0_909:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1067 7                        # parallel-rne.mlir:1067:7
	mfence { sm }
	.loc	1 1103 7                        # parallel-rne.mlir:1103:7
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_850
.LBB0_910:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	addli r22, zero, 1
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	addli r2, zero, 128
	zext_int2long r[24:25], r2
	addli r2, zero, 160
	zext_int2long r[2:3], r2
	.loc	1 1103 7                        # parallel-rne.mlir:1103:7
	store.d r[2:3], -216(r30)               # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_912
.LBB0_911:                              # %middle.block260
                                        #   in Loop: Header=BB0_912 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[24:25], -216(r30)              # 8-byte Folded Reload
	.loc	1 1111 9 is_stmt 1              # parallel-rne.mlir:1111:9
	andi r1, r22, 1
	addli r22, zero, 0
	beq r1, zero, .LBB0_937
.LBB0_912:                              # %vector.memcheck246
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_929 Depth 3
                                        #       Child Loop BB0_915 Depth 3
	.loc	1 1112 11                       # parallel-rne.mlir:1112:11
	beq r2, zero, .LBB0_927
# %bb.913:                              # %scalar.ph252.preheader
                                        #   in Loop: Header=BB0_912 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_915
.LBB0_914:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 1112 11                       # parallel-rne.mlir:1112:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1134 13 is_stmt 1             # parallel-rne.mlir:1134:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1112 11                       # parallel-rne.mlir:1112:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_911
.LBB0_915:                              # %scalar.ph252
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_912 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1113 19                       # parallel-rne.mlir:1113:19
	add.ul r[8:9], r[15:16], r[24:25]
	lui r17, 523264
	slli r1, r8, 2
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	add.s r3, r6, r1
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	add.s r5, r7, r1
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	loads.w r3, 0(r3)
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	loads.w r18, 0(r5)
	.loc	1 1118 19                       # parallel-rne.mlir:1118:19
	and r8, r3, r27
	lui r3, 523264
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	beq r8, r4, .LBB0_917
# %bb.916:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r18, 0
.LBB0_917:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r10, r5, r27
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r10, zero, .LBB0_925
# %bb.918:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r18, 523264
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r8, zero, .LBB0_926
.LBB0_919:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	beq r10, r4, .LBB0_921
.LBB0_920:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
.LBB0_921:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	setlt.u r5, r4, r8
	lui r8, 523264
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r5, zero, .LBB0_923
# %bb.922:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r18, 0
.LBB0_923:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	setlt.u r5, r4, r10
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r5, zero, .LBB0_914
# %bb.924:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_914
.LBB0_925:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	beq r8, zero, .LBB0_919
.LBB0_926:                              # %scalar.ph252
                                        #   in Loop: Header=BB0_915 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r10, r4, .LBB0_920
	j .LBB0_921
.LBB0_927:                              # %vector.body254.preheader
                                        #   in Loop: Header=BB0_912 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[17:18], zero
	j .LBB0_929
.LBB0_928:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	.loc	1 1112 11 is_stmt 1             # parallel-rne.mlir:1112:11
	load.d r[8:9], -200(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 4
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1134 13                       # parallel-rne.mlir:1134:13
	add.s r1, r21, r1
	addli r11, zero, 32
	stores.w r23, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1112 11                       # parallel-rne.mlir:1112:11
	seteq.d r5, r[17:18], r[8:9]
	bneq r5, zero, .LBB0_911
.LBB0_929:                              # %vector.body254
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_912 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1113 19                       # parallel-rne.mlir:1113:19
	add.ul r[8:9], r[17:18], r[24:25]
	lui r23, 523264
	slli r1, r8, 2
	add.s r28, r12, r1
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	add.s r8, r6, r1
	.loc	1 1113 19                       # parallel-rne.mlir:1113:19
	loads.w r3, 0(r28)
	.loc	1 1114 19                       # parallel-rne.mlir:1114:19
	loads.w r5, 0(r8)
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	and r3, r3, r27
	.loc	1 1118 19                       # parallel-rne.mlir:1118:19
	and r5, r5, r27
	.loc	1 1121 19                       # parallel-rne.mlir:1121:19
	seteq r9, r3, r4
	.loc	1 1125 20                       # parallel-rne.mlir:1125:20
	seteq r12, r3, zero
	.loc	1 1122 19                       # parallel-rne.mlir:1122:19
	seteq r10, r5, zero
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	seteq r11, r5, r4
	.loc	1 1130 20                       # parallel-rne.mlir:1130:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	and r5, r9, r10
	.loc	1 1126 20                       # parallel-rne.mlir:1126:20
	and r9, r12, r11
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	add.s r10, r7, r1
	.loc	1 1127 20                       # parallel-rne.mlir:1127:20
	or r5, r5, r9
	.loc	1 1131 20                       # parallel-rne.mlir:1131:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r5, zero, .LBB0_931
# %bb.930:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r10)
.LBB0_931:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r5, zero, .LBB0_933
# %bb.932:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r10)
.LBB0_933:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r5, zero, .LBB0_935
# %bb.934:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r10)
.LBB0_935:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	loads.w r5, 12(r28)
	loads.w r8, 12(r8)
	and r5, r5, r27
	and r8, r8, r27
	seteq r9, r5, r4
	seteq r20, r5, zero
	seteq r11, r8, zero
	seteq r12, r8, r4
	max.u r5, r5, r8
	setlt.u r5, r4, r5
	and r8, r9, r11
	and r9, r20, r12
	or r8, r8, r9
	or r5, r5, r8
	.loc	1 1132 20                       # parallel-rne.mlir:1132:20
	bneq r5, zero, .LBB0_928
# %bb.936:                              # %vector.body254
                                        #   in Loop: Header=BB0_929 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r23, 12(r10)
	j .LBB0_928
.LBB0_937:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1103 7                        # parallel-rne.mlir:1103:7
	mfence { sm }
	.loc	1 1139 7                        # parallel-rne.mlir:1139:7
	addli r1, zero, 3
	bneq r5, r1, .LBB0_851
.LBB0_938:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	addli r22, zero, 1
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	addli r2, zero, 192
	zext_int2long r[24:25], r2
	addli r2, zero, 224
	zext_int2long r[2:3], r2
	.loc	1 1139 7                        # parallel-rne.mlir:1139:7
	store.d r[2:3], -216(r30)               # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_940
.LBB0_939:                              # %middle.block245
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[24:25], -216(r30)              # 8-byte Folded Reload
	.loc	1 1147 9 is_stmt 1              # parallel-rne.mlir:1147:9
	andi r1, r22, 1
	addli r22, zero, 0
	beq r1, zero, .LBB0_965
.LBB0_940:                              # %vector.memcheck231
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_957 Depth 3
                                        #       Child Loop BB0_943 Depth 3
	.loc	1 1148 11                       # parallel-rne.mlir:1148:11
	beq r2, zero, .LBB0_955
# %bb.941:                              # %scalar.ph237.preheader
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_943
.LBB0_942:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 1148 11                       # parallel-rne.mlir:1148:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1170 13 is_stmt 1             # parallel-rne.mlir:1170:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1148 11                       # parallel-rne.mlir:1148:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_939
.LBB0_943:                              # %scalar.ph237
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_940 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	add.ul r[8:9], r[15:16], r[24:25]
	lui r17, 523264
	slli r1, r8, 2
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	add.s r3, r6, r1
	.loc	1 1151 19                       # parallel-rne.mlir:1151:19
	add.s r5, r7, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	loads.w r3, 0(r3)
	.loc	1 1151 19                       # parallel-rne.mlir:1151:19
	loads.w r18, 0(r5)
	.loc	1 1154 19                       # parallel-rne.mlir:1154:19
	and r8, r3, r27
	lui r3, 523264
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	beq r8, r4, .LBB0_945
# %bb.944:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r18, 0
.LBB0_945:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r10, r5, r27
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r10, zero, .LBB0_953
# %bb.946:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r18, 523264
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r8, zero, .LBB0_954
.LBB0_947:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	beq r10, r4, .LBB0_949
.LBB0_948:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
.LBB0_949:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	setlt.u r5, r4, r8
	lui r8, 523264
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r5, zero, .LBB0_951
# %bb.950:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r18, 0
.LBB0_951:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	setlt.u r5, r4, r10
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r5, zero, .LBB0_942
# %bb.952:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_942
.LBB0_953:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	beq r8, zero, .LBB0_947
.LBB0_954:                              # %scalar.ph237
                                        #   in Loop: Header=BB0_943 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r10, r4, .LBB0_948
	j .LBB0_949
.LBB0_955:                              # %vector.body239.preheader
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[17:18], zero
	j .LBB0_957
.LBB0_956:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 1148 11 is_stmt 1             # parallel-rne.mlir:1148:11
	load.d r[8:9], -200(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 4
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1170 13                       # parallel-rne.mlir:1170:13
	add.s r1, r21, r1
	addli r11, zero, 32
	stores.w r23, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1148 11                       # parallel-rne.mlir:1148:11
	seteq.d r5, r[17:18], r[8:9]
	bneq r5, zero, .LBB0_939
.LBB0_957:                              # %vector.body239
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_940 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	add.ul r[8:9], r[17:18], r[24:25]
	lui r23, 523264
	slli r1, r8, 2
	add.s r28, r12, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	add.s r8, r6, r1
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	loads.w r3, 0(r28)
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	loads.w r5, 0(r8)
	.loc	1 1156 19                       # parallel-rne.mlir:1156:19
	and r3, r3, r27
	.loc	1 1154 19                       # parallel-rne.mlir:1154:19
	and r5, r5, r27
	.loc	1 1157 19                       # parallel-rne.mlir:1157:19
	seteq r9, r3, r4
	.loc	1 1161 20                       # parallel-rne.mlir:1161:20
	seteq r12, r3, zero
	.loc	1 1158 19                       # parallel-rne.mlir:1158:19
	seteq r10, r5, zero
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	seteq r11, r5, r4
	.loc	1 1166 20                       # parallel-rne.mlir:1166:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1159 19                       # parallel-rne.mlir:1159:19
	and r5, r9, r10
	.loc	1 1162 20                       # parallel-rne.mlir:1162:20
	and r9, r12, r11
	.loc	1 1151 19                       # parallel-rne.mlir:1151:19
	add.s r10, r7, r1
	.loc	1 1163 20                       # parallel-rne.mlir:1163:20
	or r5, r5, r9
	.loc	1 1167 20                       # parallel-rne.mlir:1167:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r5, zero, .LBB0_959
# %bb.958:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r10)
.LBB0_959:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r5, zero, .LBB0_961
# %bb.960:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r10)
.LBB0_961:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r5, zero, .LBB0_963
# %bb.962:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r10)
.LBB0_963:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	loads.w r5, 12(r28)
	loads.w r8, 12(r8)
	and r5, r5, r27
	and r8, r8, r27
	seteq r9, r5, r4
	seteq r20, r5, zero
	seteq r11, r8, zero
	seteq r12, r8, r4
	max.u r5, r5, r8
	setlt.u r5, r4, r5
	and r8, r9, r11
	and r9, r20, r12
	or r8, r8, r9
	or r5, r5, r8
	.loc	1 1168 20                       # parallel-rne.mlir:1168:20
	bneq r5, zero, .LBB0_956
# %bb.964:                              # %vector.body239
                                        #   in Loop: Header=BB0_957 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r23, 12(r10)
	j .LBB0_956
.LBB0_965:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1139 7                        # parallel-rne.mlir:1139:7
	mfence { sm }
	.loc	1 1175 7                        # parallel-rne.mlir:1175:7
	loadli.w r1,  -236(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_852
.LBB0_966:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	addli r22, zero, 1
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	addli r2, zero, 256
	zext_int2long r[24:25], r2
	addli r2, zero, 288
	zext_int2long r[2:3], r2
	.loc	1 1175 7                        # parallel-rne.mlir:1175:7
	store.d r[2:3], -216(r30)               # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_968
.LBB0_967:                              # %middle.block230
                                        #   in Loop: Header=BB0_968 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[24:25], -216(r30)              # 8-byte Folded Reload
	.loc	1 1183 9 is_stmt 1              # parallel-rne.mlir:1183:9
	andi r1, r22, 1
	addli r22, zero, 0
	beq r1, zero, .LBB0_993
.LBB0_968:                              # %vector.memcheck216
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_985 Depth 3
                                        #       Child Loop BB0_971 Depth 3
	.loc	1 1184 11                       # parallel-rne.mlir:1184:11
	beq r2, zero, .LBB0_983
# %bb.969:                              # %scalar.ph222.preheader
                                        #   in Loop: Header=BB0_968 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_971
.LBB0_970:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	.loc	1 1184 11                       # parallel-rne.mlir:1184:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1206 13 is_stmt 1             # parallel-rne.mlir:1206:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1184 11                       # parallel-rne.mlir:1184:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_967
.LBB0_971:                              # %scalar.ph222
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_968 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	add.ul r[8:9], r[15:16], r[24:25]
	lui r17, 523264
	slli r1, r8, 2
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	add.s r3, r6, r1
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	add.s r5, r7, r1
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	loads.w r3, 0(r3)
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	loads.w r18, 0(r5)
	.loc	1 1190 19                       # parallel-rne.mlir:1190:19
	and r8, r3, r27
	lui r3, 523264
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	beq r8, r4, .LBB0_973
# %bb.972:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r18, 0
.LBB0_973:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r10, r5, r27
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r10, zero, .LBB0_981
# %bb.974:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r18, 523264
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r8, zero, .LBB0_982
.LBB0_975:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	beq r10, r4, .LBB0_977
.LBB0_976:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
.LBB0_977:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	setlt.u r5, r4, r8
	lui r8, 523264
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r5, zero, .LBB0_979
# %bb.978:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r18, 0
.LBB0_979:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	setlt.u r5, r4, r10
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r5, zero, .LBB0_970
# %bb.980:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_970
.LBB0_981:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	beq r8, zero, .LBB0_975
.LBB0_982:                              # %scalar.ph222
                                        #   in Loop: Header=BB0_971 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r10, r4, .LBB0_976
	j .LBB0_977
.LBB0_983:                              # %vector.body224.preheader
                                        #   in Loop: Header=BB0_968 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[17:18], zero
	j .LBB0_985
.LBB0_984:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 1184 11 is_stmt 1             # parallel-rne.mlir:1184:11
	load.d r[8:9], -200(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 4
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1206 13                       # parallel-rne.mlir:1206:13
	add.s r1, r21, r1
	addli r11, zero, 32
	stores.w r23, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1184 11                       # parallel-rne.mlir:1184:11
	seteq.d r5, r[17:18], r[8:9]
	bneq r5, zero, .LBB0_967
.LBB0_985:                              # %vector.body224
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_968 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	add.ul r[8:9], r[17:18], r[24:25]
	lui r23, 523264
	slli r1, r8, 2
	add.s r28, r12, r1
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	add.s r8, r6, r1
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	loads.w r3, 0(r28)
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	loads.w r5, 0(r8)
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	and r3, r3, r27
	.loc	1 1190 19                       # parallel-rne.mlir:1190:19
	and r5, r5, r27
	.loc	1 1193 19                       # parallel-rne.mlir:1193:19
	seteq r9, r3, r4
	.loc	1 1197 20                       # parallel-rne.mlir:1197:20
	seteq r12, r3, zero
	.loc	1 1194 19                       # parallel-rne.mlir:1194:19
	seteq r10, r5, zero
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	seteq r11, r5, r4
	.loc	1 1202 20                       # parallel-rne.mlir:1202:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1195 19                       # parallel-rne.mlir:1195:19
	and r5, r9, r10
	.loc	1 1198 20                       # parallel-rne.mlir:1198:20
	and r9, r12, r11
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	add.s r10, r7, r1
	.loc	1 1199 20                       # parallel-rne.mlir:1199:20
	or r5, r5, r9
	.loc	1 1203 20                       # parallel-rne.mlir:1203:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r5, zero, .LBB0_987
# %bb.986:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r10)
.LBB0_987:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r5, zero, .LBB0_989
# %bb.988:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r10)
.LBB0_989:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r5, zero, .LBB0_991
# %bb.990:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r10)
.LBB0_991:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	loads.w r5, 12(r28)
	loads.w r8, 12(r8)
	and r5, r5, r27
	and r8, r8, r27
	seteq r9, r5, r4
	seteq r20, r5, zero
	seteq r11, r8, zero
	seteq r12, r8, r4
	max.u r5, r5, r8
	setlt.u r5, r4, r5
	and r8, r9, r11
	and r9, r20, r12
	or r8, r8, r9
	or r5, r5, r8
	.loc	1 1204 20                       # parallel-rne.mlir:1204:20
	bneq r5, zero, .LBB0_984
# %bb.992:                              # %vector.body224
                                        #   in Loop: Header=BB0_985 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r23, 12(r10)
	j .LBB0_984
.LBB0_993:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1175 7                        # parallel-rne.mlir:1175:7
	mfence { sm }
	.loc	1 1211 7                        # parallel-rne.mlir:1211:7
	addli r1, zero, 5
	bneq r5, r1, .LBB0_853
.LBB0_994:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	addli r22, zero, 1
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	addli r2, zero, 320
	zext_int2long r[24:25], r2
	addli r2, zero, 352
	zext_int2long r[2:3], r2
	.loc	1 1211 7                        # parallel-rne.mlir:1211:7
	store.d r[2:3], -216(r30)               # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_996
.LBB0_995:                              # %middle.block215
                                        #   in Loop: Header=BB0_996 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[24:25], -216(r30)              # 8-byte Folded Reload
	.loc	1 1219 9 is_stmt 1              # parallel-rne.mlir:1219:9
	andi r1, r22, 1
	addli r22, zero, 0
	beq r1, zero, .LBB0_1021
.LBB0_996:                              # %vector.memcheck201
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1013 Depth 3
                                        #       Child Loop BB0_999 Depth 3
	.loc	1 1220 11                       # parallel-rne.mlir:1220:11
	beq r2, zero, .LBB0_1011
# %bb.997:                              # %scalar.ph207.preheader
                                        #   in Loop: Header=BB0_996 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_999
.LBB0_998:                              # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 1220 11                       # parallel-rne.mlir:1220:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1242 13 is_stmt 1             # parallel-rne.mlir:1242:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1220 11                       # parallel-rne.mlir:1220:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_995
.LBB0_999:                              # %scalar.ph207
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_996 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1221 19                       # parallel-rne.mlir:1221:19
	add.ul r[8:9], r[15:16], r[24:25]
	lui r17, 523264
	slli r1, r8, 2
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	add.s r3, r6, r1
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	add.s r5, r7, r1
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	loads.w r3, 0(r3)
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	loads.w r18, 0(r5)
	.loc	1 1226 19                       # parallel-rne.mlir:1226:19
	and r8, r3, r27
	lui r3, 523264
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	beq r8, r4, .LBB0_1001
# %bb.1000:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r18, 0
.LBB0_1001:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r10, r5, r27
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r10, zero, .LBB0_1009
# %bb.1002:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r18, 523264
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r8, zero, .LBB0_1010
.LBB0_1003:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	beq r10, r4, .LBB0_1005
.LBB0_1004:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
.LBB0_1005:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	setlt.u r5, r4, r8
	lui r8, 523264
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r5, zero, .LBB0_1007
# %bb.1006:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r18, 0
.LBB0_1007:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	setlt.u r5, r4, r10
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r5, zero, .LBB0_998
# %bb.1008:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_998
.LBB0_1009:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	beq r8, zero, .LBB0_1003
.LBB0_1010:                             # %scalar.ph207
                                        #   in Loop: Header=BB0_999 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r10, r4, .LBB0_1004
	j .LBB0_1005
.LBB0_1011:                             # %vector.body209.preheader
                                        #   in Loop: Header=BB0_996 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[17:18], zero
	j .LBB0_1013
.LBB0_1012:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 1220 11 is_stmt 1             # parallel-rne.mlir:1220:11
	load.d r[8:9], -200(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 4
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1242 13                       # parallel-rne.mlir:1242:13
	add.s r1, r21, r1
	addli r11, zero, 32
	stores.w r23, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1220 11                       # parallel-rne.mlir:1220:11
	seteq.d r5, r[17:18], r[8:9]
	bneq r5, zero, .LBB0_995
.LBB0_1013:                             # %vector.body209
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_996 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1221 19                       # parallel-rne.mlir:1221:19
	add.ul r[8:9], r[17:18], r[24:25]
	lui r23, 523264
	slli r1, r8, 2
	add.s r28, r12, r1
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	add.s r8, r6, r1
	.loc	1 1221 19                       # parallel-rne.mlir:1221:19
	loads.w r3, 0(r28)
	.loc	1 1222 19                       # parallel-rne.mlir:1222:19
	loads.w r5, 0(r8)
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	and r3, r3, r27
	.loc	1 1226 19                       # parallel-rne.mlir:1226:19
	and r5, r5, r27
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	seteq r9, r3, r4
	.loc	1 1233 20                       # parallel-rne.mlir:1233:20
	seteq r12, r3, zero
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	seteq r10, r5, zero
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	seteq r11, r5, r4
	.loc	1 1238 20                       # parallel-rne.mlir:1238:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1231 19                       # parallel-rne.mlir:1231:19
	and r5, r9, r10
	.loc	1 1234 20                       # parallel-rne.mlir:1234:20
	and r9, r12, r11
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	add.s r10, r7, r1
	.loc	1 1235 20                       # parallel-rne.mlir:1235:20
	or r5, r5, r9
	.loc	1 1239 20                       # parallel-rne.mlir:1239:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r5, zero, .LBB0_1015
# %bb.1014:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r10)
.LBB0_1015:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r5, zero, .LBB0_1017
# %bb.1016:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r10)
.LBB0_1017:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r5, zero, .LBB0_1019
# %bb.1018:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r10)
.LBB0_1019:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r5, 12(r28)
	loads.w r8, 12(r8)
	and r5, r5, r27
	and r8, r8, r27
	seteq r9, r5, r4
	seteq r20, r5, zero
	seteq r11, r8, zero
	seteq r12, r8, r4
	max.u r5, r5, r8
	setlt.u r5, r4, r5
	and r8, r9, r11
	and r9, r20, r12
	or r8, r8, r9
	or r5, r5, r8
	.loc	1 1240 20                       # parallel-rne.mlir:1240:20
	bneq r5, zero, .LBB0_1012
# %bb.1020:                             # %vector.body209
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r23, 12(r10)
	j .LBB0_1012
.LBB0_1021:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1211 7                        # parallel-rne.mlir:1211:7
	mfence { sm }
	.loc	1 1247 7                        # parallel-rne.mlir:1247:7
	addli r1, zero, 6
	bneq r5, r1, .LBB0_1050
.LBB0_1022:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	addli r22, zero, 1
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	addli r2, zero, 384
	zext_int2long r[24:25], r2
	addli r2, zero, 416
	zext_int2long r[2:3], r2
	.loc	1 1247 7                        # parallel-rne.mlir:1247:7
	store.d r[2:3], -216(r30)               # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_1024
.LBB0_1023:                             # %middle.block200
                                        #   in Loop: Header=BB0_1024 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[24:25], -216(r30)              # 8-byte Folded Reload
	.loc	1 1255 9 is_stmt 1              # parallel-rne.mlir:1255:9
	andi r1, r22, 1
	addli r22, zero, 0
	beq r1, zero, .LBB0_1049
.LBB0_1024:                             # %vector.memcheck186
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1041 Depth 3
                                        #       Child Loop BB0_1027 Depth 3
	.loc	1 1256 11                       # parallel-rne.mlir:1256:11
	beq r2, zero, .LBB0_1039
# %bb.1025:                             # %scalar.ph192.preheader
                                        #   in Loop: Header=BB0_1024 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[15:16], zero
	j .LBB0_1027
.LBB0_1026:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	.loc	1 1256 11                       # parallel-rne.mlir:1256:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1278 13 is_stmt 1             # parallel-rne.mlir:1278:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1256 11                       # parallel-rne.mlir:1256:11
	setlt.ul r5, r[15:16], r[8:9]
	addli.d r[15:16], r[15:16], 1
	beq r5, zero, .LBB0_1023
.LBB0_1027:                             # %scalar.ph192
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1024 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1257 19                       # parallel-rne.mlir:1257:19
	add.ul r[8:9], r[15:16], r[24:25]
	lui r17, 523264
	slli r1, r8, 2
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	add.s r3, r6, r1
	.loc	1 1259 19                       # parallel-rne.mlir:1259:19
	add.s r5, r7, r1
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	loads.w r3, 0(r3)
	.loc	1 1259 19                       # parallel-rne.mlir:1259:19
	loads.w r18, 0(r5)
	.loc	1 1262 19                       # parallel-rne.mlir:1262:19
	and r8, r3, r27
	lui r3, 523264
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	beq r8, r4, .LBB0_1029
# %bb.1028:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r18, 0
.LBB0_1029:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r10, r5, r27
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r10, zero, .LBB0_1037
# %bb.1030:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r18, 523264
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r8, zero, .LBB0_1038
.LBB0_1031:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	beq r10, r4, .LBB0_1033
.LBB0_1032:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
.LBB0_1033:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	setlt.u r5, r4, r8
	lui r8, 523264
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r5, zero, .LBB0_1035
# %bb.1034:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r18, 0
.LBB0_1035:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	setlt.u r5, r4, r10
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r5, zero, .LBB0_1026
# %bb.1036:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r8, 0
	j .LBB0_1026
.LBB0_1037:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	beq r8, zero, .LBB0_1031
.LBB0_1038:                             # %scalar.ph192
                                        #   in Loop: Header=BB0_1027 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r10, r4, .LBB0_1032
	j .LBB0_1033
.LBB0_1039:                             # %vector.body194.preheader
                                        #   in Loop: Header=BB0_1024 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[17:18], zero
	j .LBB0_1041
.LBB0_1040:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 1256 11 is_stmt 1             # parallel-rne.mlir:1256:11
	load.d r[8:9], -200(r30)                # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 4
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	.loc	1 1278 13                       # parallel-rne.mlir:1278:13
	add.s r1, r21, r1
	addli r11, zero, 32
	stores.w r23, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1256 11                       # parallel-rne.mlir:1256:11
	seteq.d r5, r[17:18], r[8:9]
	bneq r5, zero, .LBB0_1023
.LBB0_1041:                             # %vector.body194
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1024 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1257 19                       # parallel-rne.mlir:1257:19
	add.ul r[8:9], r[17:18], r[24:25]
	lui r23, 523264
	slli r1, r8, 2
	add.s r28, r12, r1
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	add.s r8, r6, r1
	.loc	1 1257 19                       # parallel-rne.mlir:1257:19
	loads.w r3, 0(r28)
	.loc	1 1258 19                       # parallel-rne.mlir:1258:19
	loads.w r5, 0(r8)
	.loc	1 1264 19                       # parallel-rne.mlir:1264:19
	and r3, r3, r27
	.loc	1 1262 19                       # parallel-rne.mlir:1262:19
	and r5, r5, r27
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	seteq r9, r3, r4
	.loc	1 1269 20                       # parallel-rne.mlir:1269:20
	seteq r12, r3, zero
	.loc	1 1266 19                       # parallel-rne.mlir:1266:19
	seteq r10, r5, zero
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	seteq r11, r5, r4
	.loc	1 1274 20                       # parallel-rne.mlir:1274:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1267 19                       # parallel-rne.mlir:1267:19
	and r5, r9, r10
	.loc	1 1270 20                       # parallel-rne.mlir:1270:20
	and r9, r12, r11
	.loc	1 1259 19                       # parallel-rne.mlir:1259:19
	add.s r10, r7, r1
	.loc	1 1271 20                       # parallel-rne.mlir:1271:20
	or r5, r5, r9
	.loc	1 1275 20                       # parallel-rne.mlir:1275:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r5, zero, .LBB0_1043
# %bb.1042:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r10)
.LBB0_1043:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r5, zero, .LBB0_1045
# %bb.1044:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r10)
.LBB0_1045:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r8)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r5, zero, .LBB0_1047
# %bb.1046:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r10)
.LBB0_1047:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 12(r28)
	loads.w r8, 12(r8)
	and r5, r5, r27
	and r8, r8, r27
	seteq r9, r5, r4
	seteq r20, r5, zero
	seteq r11, r8, zero
	seteq r12, r8, r4
	max.u r5, r5, r8
	setlt.u r5, r4, r5
	and r8, r9, r11
	and r9, r20, r12
	or r8, r8, r9
	or r5, r5, r8
	.loc	1 1276 20                       # parallel-rne.mlir:1276:20
	bneq r5, zero, .LBB0_1040
# %bb.1048:                             # %vector.body194
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r23, 12(r10)
	j .LBB0_1040
.LBB0_1049:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1247 7                        # parallel-rne.mlir:1247:7
	mfence { sm }
.LBB0_1050:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 1283 7 is_stmt 1              # parallel-rne.mlir:1283:7
	store.d r[1:2], -224(r30)               # 8-byte Folded Spill
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1079
# %bb.1051:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -244(r30)                 # 4-byte Folded Reload
	addli r2, zero, 16
	addli r8, zero, 1
	min.u r1, r1, r14
	setlt.u r1, r1, r2
	addli r2, zero, 448
	zext_int2long r[24:25], r2
	addli r2, zero, 480
	zext_int2long r[2:3], r2
	.loc	1 1283 7                        # parallel-rne.mlir:1283:7
	store.d r[2:3], -216(r30)               # 8-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	loadli.w r2,  -228(r30)                 # 4-byte Folded Reload
	or r2, r1, r2
	j .LBB0_1053
.LBB0_1052:                             # %middle.block
                                        #   in Loop: Header=BB0_1053 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[24:25], -216(r30)              # 8-byte Folded Reload
	.loc	1 1291 9 is_stmt 1              # parallel-rne.mlir:1291:9
	andi r1, r8, 1
	addli r8, zero, 0
	beq r1, zero, .LBB0_1078
.LBB0_1053:                             # %vector.memcheck
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1070 Depth 3
                                        #       Child Loop BB0_1056 Depth 3
	.loc	1 1292 11                       # parallel-rne.mlir:1292:11
	beq r2, zero, .LBB0_1068
# %bb.1054:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1053 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_1056
.LBB0_1055:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	.loc	1 1292 11                       # parallel-rne.mlir:1292:11
	load.d r[9:10], -192(r30)               # 8-byte Folded Reload
	.loc	1 1314 13 is_stmt 1             # parallel-rne.mlir:1314:13
	add.s r1, r21, r1
	stores.w r3, 0(r1)
	.loc	1 1292 11                       # parallel-rne.mlir:1292:11
	setlt.ul r5, r[14:15], r[9:10]
	addli.d r[14:15], r[14:15], 1
	beq r5, zero, .LBB0_1052
.LBB0_1056:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1053 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	add.ul r[9:10], r[14:15], r[24:25]
	lui r17, 523264
	slli r1, r9, 2
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	add.s r3, r6, r1
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	add.s r5, r7, r1
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	loads.w r3, 0(r3)
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	loads.w r18, 0(r5)
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	and r10, r3, r27
	lui r3, 523264
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	beq r10, r4, .LBB0_1058
# %bb.1057:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r18, 0
.LBB0_1058:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	add.s r5, r12, r1
	loads.w r5, 0(r5)
	and r16, r5, r27
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r16, zero, .LBB0_1066
# %bb.1059:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	lui r18, 523264
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r10, zero, .LBB0_1067
.LBB0_1060:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	beq r16, r4, .LBB0_1062
.LBB0_1061:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
.LBB0_1062:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	setlt.u r5, r4, r10
	lui r10, 523264
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r5, zero, .LBB0_1064
# %bb.1063:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r18, 0
.LBB0_1064:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	setlt.u r5, r4, r16
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r5, zero, .LBB0_1055
# %bb.1065:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r3, r10, 0
	j .LBB0_1055
.LBB0_1066:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	beq r10, zero, .LBB0_1060
.LBB0_1067:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1056 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r17, 0
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r16, r4, .LBB0_1061
	j .LBB0_1062
.LBB0_1068:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1053 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	load.d r[17:18], -224(r30)              # 8-byte Folded Reload
	j .LBB0_1070
.LBB0_1069:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 1292 11 is_stmt 1             # parallel-rne.mlir:1292:11
	load.d r[11:12], -200(r30)              # 8-byte Folded Reload
	addli.d r[17:18], r[17:18], 4
	.loc	1 1314 13                       # parallel-rne.mlir:1314:13
	add.s r1, r21, r1
	stores.w r10, 12(r1)
	stores.w r16, 8(r1)
	stores.w r15, 4(r1)
	stores.w r3, 0(r1)
	.loc	1 1292 11                       # parallel-rne.mlir:1292:11
	seteq.d r5, r[17:18], r[11:12]
	loadli.w r12,  -204(r30)                # 4-byte Folded Reload
	addli r11, zero, 32
	bneq r5, zero, .LBB0_1052
.LBB0_1070:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1053 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	add.ul r[9:10], r[17:18], r[24:25]
	slli r1, r9, 2
	add.s r14, r12, r1
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	add.s r28, r6, r1
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	add.s r22, r7, r1
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	loads.w r3, 0(r14)
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	loads.w r5, 0(r28)
	.loc	1 1300 19                       # parallel-rne.mlir:1300:19
	and r3, r3, r27
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	and r5, r5, r27
	.loc	1 1301 19                       # parallel-rne.mlir:1301:19
	seteq r9, r3, r4
	.loc	1 1305 20                       # parallel-rne.mlir:1305:20
	seteq r12, r3, zero
	.loc	1 1302 19                       # parallel-rne.mlir:1302:19
	seteq r10, r5, zero
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	seteq r11, r5, r4
	.loc	1 1310 20                       # parallel-rne.mlir:1310:20
	max.u r3, r3, r5
	setlt.u r3, r4, r3
	.loc	1 1303 19                       # parallel-rne.mlir:1303:19
	and r5, r9, r10
	.loc	1 1306 20                       # parallel-rne.mlir:1306:20
	and r9, r12, r11
	lui r10, 523264
	.loc	1 1307 20                       # parallel-rne.mlir:1307:20
	or r5, r5, r9
	.loc	1 1311 20                       # parallel-rne.mlir:1311:20
	or r5, r3, r5
	lui r3, 523264
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r5, zero, .LBB0_1072
# %bb.1071:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r3, 0(r22)
.LBB0_1072:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	loads.w r5, 4(r14)
	loads.w r9, 4(r28)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r16, r5, zero
	seteq r12, r9, zero
	seteq r15, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r16, r15
	lui r15, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r5, zero, .LBB0_1074
# %bb.1073:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r15, 4(r22)
.LBB0_1074:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	loads.w r5, 8(r14)
	loads.w r9, 8(r28)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r16, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r16
	lui r16, 523264
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r5, zero, .LBB0_1076
# %bb.1075:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 8(r22)
.LBB0_1076:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	loads.w r5, 12(r14)
	loads.w r9, 12(r28)
	and r5, r5, r27
	and r9, r9, r27
	seteq r11, r5, r4
	seteq r20, r5, zero
	seteq r12, r9, zero
	seteq r14, r9, r4
	max.u r5, r5, r9
	setlt.u r5, r4, r5
	and r9, r11, r12
	and r11, r20, r14
	or r9, r9, r11
	or r5, r5, r9
	.loc	1 1312 20                       # parallel-rne.mlir:1312:20
	bneq r5, zero, .LBB0_1069
# %bb.1077:                             # %vector.body
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 12(r22)
	j .LBB0_1069
.LBB0_1078:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1283 7                        # parallel-rne.mlir:1283:7
	mfence { sm }
.LBB0_1079:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1319 7                        # parallel-rne.mlir:1319:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	load.d r[17:18], -264(r30)              # 8-byte Folded Reload
	.loc	1 1320 7                        # parallel-rne.mlir:1320:7
	addli r1, zero, 3
	beq r5, r1, .LBB0_5
# %bb.1080:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[11:12], -256(r30)              # 8-byte Folded Reload
	addli r14, zero, 32
	.loc	1 1331 7 is_stmt 1              # parallel-rne.mlir:1331:7
	bneq r5, zero, .LBB0_6
# %bb.1081:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	load.d r[5:6], -224(r30)                # 8-byte Folded Reload
	addli r3, zero, 16
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	load.d r[7:8], -280(r30)                # 8-byte Folded Reload
	load.d r[9:10], -296(r30)               # 8-byte Folded Reload
	load.d r[15:16], 24(r30)
	xwait r14, 0
	slli r1, r1, 4
	sext_int2long r[1:2], r1
	min.sl r[5:6], r[1:2], r[5:6]
	addli.d r[5:6], r[5:6], 16
	max.sl r[5:6], r[5:6], r[1:2]
	sub.sl r[1:2], r[5:6], r[1:2]
	zext_int2long r[5:6], r3
	addli r3, zero, 12
	sll.d r[7:8], r[7:8], r3
	addli r3, zero, 1
	.loc	1 1327 13 is_stmt 1             # parallel-rne.mlir:1327:13
	min.sl r[1:2], r[1:2], r[5:6]
	addli r6, zero, 5
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	sll.d r[9:10], r[9:10], r3
	add.ul r[7:8], r[15:16], r[7:8]
	lock zero, r6
	dma_cfg r3, zero, zero, 0
	add.ul r[7:8], r[7:8], r[9:10]
	dma_cfg zero, r3, zero, 1
	slli r3, r17, 2
	dma_cfg r8, zero, zero, 2
	dma_cfg r7, r21, r3, 3
	addli r3, zero, 128
	addli r7, zero, 256
	dma_cfg r7, r3, r1, 4
	addli r1, zero, 33
	dma_run zero
	unlock r6
	xsignal r1, 0
	j .LBB0_6
.LBB0_1082:                             # %._crit_edge
	.loc	1 1333 5                        # parallel-rne.mlir:1333:5
	xsignal zero, 0
	bneq r5, zero, .LBB0_1084
# %bb.1083:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1333 5                        # parallel-rne.mlir:1333:5
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
.LBB0_1084:
	.loc	1 1334 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1334:5
	addli sp, sp, 352
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
	.long	416                             # 0x1a0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-a6lsx7a6" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
