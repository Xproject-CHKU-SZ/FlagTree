	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-2w4wz7nt" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -464
	addli r2, zero, 1
.Ltmp0:
	.loc	1 38 5 prologue_end             # parallel-rne.mlir:38:5
	core_id r1
	core_id r10
	addli r30, sp, 400
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 38 5                          # parallel-rne.mlir:38:5
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
	.loc	1 38 5                          # parallel-rne.mlir:38:5
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
	addli r2, zero, 11
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 3
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 23
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 41
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 21
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r3, 0
	xsignal r3, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 34
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 36
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 46
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 40 10 is_stmt 1               # parallel-rne.mlir:40:10
	load_param_i r4, 1
	loadli.w r3,  48(r30)
	lui r5, 1048575
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -12(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -24(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -36(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -48(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -60(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -72(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -84(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -96(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -108(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -120(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -132(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -144(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -156(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -168(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -180(r30)
	ori r5, r5, 4095
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r1
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	addli r2, r4, 0
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r5, -8(r30)
	storeli.w r5, -4(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r5, -20(r30)
	storeli.w r5, -16(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r5, -32(r30)
	storeli.w r5, -28(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r5, -44(r30)
	storeli.w r5, -40(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r5, -56(r30)
	storeli.w r5, -52(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r5, -68(r30)
	storeli.w r5, -64(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r5, -80(r30)
	storeli.w r5, -76(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r5, -92(r30)
	storeli.w r5, -88(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r5, -104(r30)
	storeli.w r5, -100(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r5, -116(r30)
	storeli.w r5, -112(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r5, -128(r30)
	storeli.w r5, -124(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r5, -140(r30)
	storeli.w r5, -136(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r5, -152(r30)
	storeli.w r5, -148(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w r5, -164(r30)
	storeli.w r5, -160(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w r5, -176(r30)
	storeli.w r5, -172(r30)
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	fmac.s r2, r1, r3
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r3, r1, r3
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	addli r2, r2, -1
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	div.s r2, r2, r4
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	load_param_i r4, 0
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	mul.s r1, r2, r4
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	fmac.s r2, r2, r4
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	min.s r2, r2, r3
	.loc	1 66 5                          # parallel-rne.mlir:66:5
	ble.s r2, r1, .LBB0_1718
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 49 11 is_stmt 1               # parallel-rne.mlir:49:11
	sext_int2long r[4:5], r1
	lui r1, 524287
	addli r14, zero, 2
	addli r15, zero, 64
	addli r16, zero, 1
	addli r17, zero, 12
	addli r18, zero, 3
	addli r19, zero, 6
	addli r20, zero, 7
	addli r24, zero, 23
	lui r27, 522240
	store.d r[2:3], -352(r30)               # 8-byte Folded Spill
	lui r2, 7
	ori r21, r1, 4095
	lui r1, 522239
	ori r22, r2, 4095
	lui r2, 14
	ori r23, r1, 4095
	ori r1, r2, 256
	lui r2, 18
	storeli.w r1, -356(r30)                 # 4-byte Folded Spill
	lui r1, 16
	ori r1, r1, 256
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	ori r1, r2, 256
	lui r2, 22
	storeli.w r1, -364(r30)                 # 4-byte Folded Spill
	lui r1, 20
	ori r1, r1, 256
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	ori r1, r2, 256
	lui r2, 2047
	storeli.w r1, -372(r30)                 # 4-byte Folded Spill
	lui r1, 24
	ori r3, r2, 4095
	lui r2, 56
	ori r1, r1, 256
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	lui r1, 26
	ori r1, r1, 256
	storeli.w r1, -380(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -388(r30)                 # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -396(r30)                 # 4-byte Folded Spill
	lui r1, 12
	ori r1, r1, 256
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge43.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1841 7                        # parallel-rne.mlir:1841:7
	addli r1, zero, 20
	addli r14, zero, 2
	addli r15, zero, 64
	addli r16, zero, 1
	addli r17, zero, 12
	addli r19, zero, 6
	addli r20, zero, 7
	addli r24, zero, 23
	xsignal r1, 0
	.loc	1 1842 7                        # parallel-rne.mlir:1842:7
	addli r1, zero, 32
	xsignal r1, 0
	.loc	1 1843 7                        # parallel-rne.mlir:1843:7
	addli r1, zero, 44
	xsignal r1, 0
	.loc	1 1844 7                        # parallel-rne.mlir:1844:7
	addli r1, zero, 46
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	.loc	1 66 5 is_stmt 1                # parallel-rne.mlir:66:5
	load.d r[1:2], -352(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	beq r1, zero, .LBB0_1718
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_54 Depth 2
                                        #       Child Loop BB0_56 Depth 3
                                        #     Child Loop BB0_79 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_129 Depth 2
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_154 Depth 2
                                        #       Child Loop BB0_156 Depth 3
                                        #     Child Loop BB0_179 Depth 2
                                        #       Child Loop BB0_181 Depth 3
                                        #     Child Loop BB0_204 Depth 2
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_234 Depth 2
                                        #     Child Loop BB0_331 Depth 2
                                        #       Child Loop BB0_333 Depth 3
                                        #       Child Loop BB0_354 Depth 3
                                        #     Child Loop BB0_241 Depth 2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_264 Depth 3
                                        #     Child Loop BB0_361 Depth 2
                                        #       Child Loop BB0_363 Depth 3
                                        #       Child Loop BB0_384 Depth 3
                                        #     Child Loop BB0_271 Depth 2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_294 Depth 3
                                        #     Child Loop BB0_391 Depth 2
                                        #       Child Loop BB0_393 Depth 3
                                        #       Child Loop BB0_414 Depth 3
                                        #     Child Loop BB0_301 Depth 2
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_324 Depth 3
                                        #     Child Loop BB0_421 Depth 2
                                        #       Child Loop BB0_423 Depth 3
                                        #       Child Loop BB0_444 Depth 3
                                        #     Child Loop BB0_450 Depth 2
                                        #       Child Loop BB0_452 Depth 3
                                        #       Child Loop BB0_473 Depth 3
                                        #     Child Loop BB0_574 Depth 2
                                        #       Child Loop BB0_591 Depth 3
                                        #       Child Loop BB0_577 Depth 3
                                        #     Child Loop BB0_487 Depth 2
                                        #       Child Loop BB0_504 Depth 3
                                        #       Child Loop BB0_490 Depth 3
                                        #     Child Loop BB0_603 Depth 2
                                        #       Child Loop BB0_620 Depth 3
                                        #       Child Loop BB0_606 Depth 3
                                        #     Child Loop BB0_516 Depth 2
                                        #       Child Loop BB0_533 Depth 3
                                        #       Child Loop BB0_519 Depth 3
                                        #     Child Loop BB0_632 Depth 2
                                        #       Child Loop BB0_649 Depth 3
                                        #       Child Loop BB0_635 Depth 3
                                        #     Child Loop BB0_545 Depth 2
                                        #       Child Loop BB0_562 Depth 3
                                        #       Child Loop BB0_548 Depth 3
                                        #     Child Loop BB0_661 Depth 2
                                        #       Child Loop BB0_678 Depth 3
                                        #       Child Loop BB0_664 Depth 3
                                        #     Child Loop BB0_689 Depth 2
                                        #       Child Loop BB0_706 Depth 3
                                        #       Child Loop BB0_692 Depth 3
                                        #     Child Loop BB0_744 Depth 2
                                        #       Child Loop BB0_746 Depth 3
                                        #       Child Loop BB0_745 Depth 3
                                        #     Child Loop BB0_723 Depth 2
                                        #       Child Loop BB0_725 Depth 3
                                        #       Child Loop BB0_724 Depth 3
                                        #     Child Loop BB0_751 Depth 2
                                        #       Child Loop BB0_753 Depth 3
                                        #       Child Loop BB0_752 Depth 3
                                        #     Child Loop BB0_730 Depth 2
                                        #       Child Loop BB0_732 Depth 3
                                        #       Child Loop BB0_731 Depth 3
                                        #     Child Loop BB0_758 Depth 2
                                        #       Child Loop BB0_760 Depth 3
                                        #       Child Loop BB0_759 Depth 3
                                        #     Child Loop BB0_737 Depth 2
                                        #       Child Loop BB0_739 Depth 3
                                        #       Child Loop BB0_738 Depth 3
                                        #     Child Loop BB0_765 Depth 2
                                        #       Child Loop BB0_767 Depth 3
                                        #       Child Loop BB0_766 Depth 3
                                        #     Child Loop BB0_771 Depth 2
                                        #       Child Loop BB0_773 Depth 3
                                        #       Child Loop BB0_772 Depth 3
                                        #     Child Loop BB0_862 Depth 2
                                        #       Child Loop BB0_869 Depth 3
                                        #       Child Loop BB0_865 Depth 3
                                        #     Child Loop BB0_781 Depth 2
                                        #       Child Loop BB0_788 Depth 3
                                        #       Child Loop BB0_784 Depth 3
                                        #     Child Loop BB0_889 Depth 2
                                        #       Child Loop BB0_896 Depth 3
                                        #       Child Loop BB0_892 Depth 3
                                        #     Child Loop BB0_808 Depth 2
                                        #       Child Loop BB0_815 Depth 3
                                        #       Child Loop BB0_811 Depth 3
                                        #     Child Loop BB0_916 Depth 2
                                        #       Child Loop BB0_923 Depth 3
                                        #       Child Loop BB0_919 Depth 3
                                        #     Child Loop BB0_835 Depth 2
                                        #       Child Loop BB0_842 Depth 3
                                        #       Child Loop BB0_838 Depth 3
                                        #     Child Loop BB0_943 Depth 2
                                        #       Child Loop BB0_950 Depth 3
                                        #       Child Loop BB0_946 Depth 3
                                        #     Child Loop BB0_969 Depth 2
                                        #       Child Loop BB0_976 Depth 3
                                        #       Child Loop BB0_972 Depth 3
                                        #     Child Loop BB0_1113 Depth 2
                                        #       Child Loop BB0_1123 Depth 3
                                        #       Child Loop BB0_1117 Depth 3
                                        #     Child Loop BB0_1002 Depth 2
                                        #       Child Loop BB0_1012 Depth 3
                                        #       Child Loop BB0_1006 Depth 3
                                        #     Child Loop BB0_1150 Depth 2
                                        #       Child Loop BB0_1160 Depth 3
                                        #       Child Loop BB0_1154 Depth 3
                                        #     Child Loop BB0_1039 Depth 2
                                        #       Child Loop BB0_1049 Depth 3
                                        #       Child Loop BB0_1043 Depth 3
                                        #     Child Loop BB0_1187 Depth 2
                                        #       Child Loop BB0_1197 Depth 3
                                        #       Child Loop BB0_1191 Depth 3
                                        #     Child Loop BB0_1076 Depth 2
                                        #       Child Loop BB0_1086 Depth 3
                                        #       Child Loop BB0_1080 Depth 3
                                        #     Child Loop BB0_1224 Depth 2
                                        #       Child Loop BB0_1234 Depth 3
                                        #       Child Loop BB0_1228 Depth 3
                                        #     Child Loop BB0_1260 Depth 2
                                        #       Child Loop BB0_1270 Depth 3
                                        #       Child Loop BB0_1264 Depth 3
                                        #     Child Loop BB0_1458 Depth 2
                                        #       Child Loop BB0_1479 Depth 3
                                        #       Child Loop BB0_1462 Depth 3
                                        #     Child Loop BB0_1303 Depth 2
                                        #       Child Loop BB0_1324 Depth 3
                                        #       Child Loop BB0_1307 Depth 3
                                        #     Child Loop BB0_1510 Depth 2
                                        #       Child Loop BB0_1531 Depth 3
                                        #       Child Loop BB0_1514 Depth 3
                                        #     Child Loop BB0_1355 Depth 2
                                        #       Child Loop BB0_1376 Depth 3
                                        #       Child Loop BB0_1359 Depth 3
                                        #     Child Loop BB0_1562 Depth 2
                                        #       Child Loop BB0_1583 Depth 3
                                        #       Child Loop BB0_1566 Depth 3
                                        #     Child Loop BB0_1407 Depth 2
                                        #       Child Loop BB0_1428 Depth 3
                                        #       Child Loop BB0_1411 Depth 3
                                        #     Child Loop BB0_1614 Depth 2
                                        #       Child Loop BB0_1635 Depth 3
                                        #       Child Loop BB0_1618 Depth 3
                                        #     Child Loop BB0_1666 Depth 2
                                        #       Child Loop BB0_1687 Depth 3
                                        #       Child Loop BB0_1670 Depth 3
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	loadli.w r1,  48(r30)
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	loadli.w r2,  44(r30)
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	addli r11, zero, 8
	store.d r[4:5], -320(r30)               # 8-byte Folded Spill
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	div.s r1, r4, r1
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	loadli.w r4,  -168(r30)
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	loadli.w r5,  -180(r30)
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	mod.s r10, r4, r14
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	addli r9, r5, 1
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	addli r4, r4, 1
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	storeli.w r9, -180(r30)
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	storeli.w r4, -168(r30)
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	div.s r2, r1, r2
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	loadli.w r1,  -156(r30)
	mod.s r12, r1, r14
	addli r13, r1, 1
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	slli r4, r10, 13
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	storeli.w r13, -156(r30)
	.loc	1 72 13                         # parallel-rne.mlir:72:13
	div.s r6, r2, r15
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	slli r9, r12, 13
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	slli r8, r6, 3
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	sub.s r7, r16, r8
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	min.s r7, r7, r11
	.loc	1 76 13                         # parallel-rne.mlir:76:13
	mod.s r11, r2, r7
	.loc	1 77 13                         # parallel-rne.mlir:77:13
	add.s r8, r11, r8
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	zext_int2long r[25:26], r8
	storeli.w r8, -340(r30)                 # 4-byte Folded Spill
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	addli r8, r9, 8192
	store.d r[25:26], -296(r30)             # 8-byte Folded Spill
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	bneq r11, r16, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[12:13], 0(r30)
	sll.d r[10:11], r[25:26], r17
	xwait r18, 0
	add.ul r[10:11], r[12:13], r[10:11]
	blt.s r16, r1, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 5
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	addli r1, zero, 4
	addli r13, zero, 256
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 128
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r15, 3
	dma_cfg r1, zero, r14, 4
	addli r1, zero, 32
	dma_cfg r13, zero, r1, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_11:                               # %.thread104
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 4
	storeli.w zero, -288(r30)               # 4-byte Folded Spill
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	addli r1, r9, 8256
	addli r9, zero, 128
	addli r13, zero, 256
	lock zero, r12
	dma_cfg r16, r16, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r1, r10, r15, 3
	addli r11, zero, 32
	addli r10, zero, 5
	addli r1, zero, 8
	dma_cfg r9, r15, r14, 4
	dma_cfg r13, r9, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r8, zero, r15, 3
	dma_cfg r9, zero, r14, 4
	dma_cfg r13, zero, r11, 5
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r14, 0
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	j .LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r11, r14, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 5
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	xwait r14, 0
	addli r1, zero, 32
	xwait r10, 0
	lock zero, zero
	ds_cfg r14, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r1, zero, 13
	addli r1, zero, 1
	shuffle_batch r4, r8, r15, 1
	unlock zero
	xsignal r18, 0
	storeli.w r1, -288(r30)                 # 4-byte Folded Spill
	addli r1, zero, 4
	xsignal r1, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -288(r30)               # 4-byte Folded Spill
	addli r10, zero, 5
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	slli r1, r6, 6
	mod.s r5, r5, r14
	sub.s r6, r2, r1
	.loc	1 119 13 is_stmt 1              # parallel-rne.mlir:119:13
	loadli.w r1,  -132(r30)
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	loadli.w r2,  -144(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r8, r6, r7
	.loc	1 119 13 is_stmt 1              # parallel-rne.mlir:119:13
	mod.s r7, r1, r14
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	addli r6, r2, 1
	storeli.w r6, -144(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r6, r5, 12
	.loc	1 119 13 is_stmt 1              # parallel-rne.mlir:119:13
	lui r5, 6
	storeli.w r8, -272(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[8:9], r8
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	slli r7, r7, 13
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	sll.d r[8:9], r[8:9], r10
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	addli r10, r1, 1
	add.s r5, r7, r5
	.loc	1 123 7 is_stmt 1               # parallel-rne.mlir:123:7
	sll.d r[8:9], r[8:9], r16
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	storeli.w r10, -132(r30)
	store.d r[8:9], -208(r30)               # 8-byte Folded Spill
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	bneq r11, r19, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[12:13], r[8:9], 0
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	load.d r[8:9], 8(r30)
	addli r10, zero, 5
	xwait r20, 0
	add.ul r[8:9], r[8:9], r[12:13]
	blt.s r16, r1, .LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	lock zero, r10
	addli r1, zero, 4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 128
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r15, 3
	dma_cfg r1, zero, r16, 4
	dma_cfg r1, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
.LBB0_18:                               # %.thread105
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r1, 6
	addli r2, zero, 4
	storeli.w zero, -284(r30)               # 4-byte Folded Spill
	storeli.w zero, -280(r30)               # 4-byte Folded Spill
	addli r4, zero, 128
	ori r1, r1, 64
	.loc	1 123 7                         # parallel-rne.mlir:123:7
	lock zero, r2
	dma_cfg r16, r16, zero, 0
	add.s r1, r7, r1
	dma_cfg zero, r9, zero, 2
	dma_cfg r1, r8, r15, 3
	addli r1, zero, 512
	dma_cfg r4, r15, r16, 4
	dma_cfg r4, r1, r15, 5
	addli r1, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r2
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	dma_cfg r16, r16, zero, 0
	dma_cfg r16, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r5, zero, r15, 3
	dma_cfg r4, zero, r16, 4
	dma_cfg r4, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	lui r16, 268288
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r19, 0
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
	.loc	1 124 7 is_stmt 1               # parallel-rne.mlir:124:7
	j .LBB0_24
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r1, r2, r14
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	addli r2, zero, 4
	slli r1, r1, 13
	beq r11, r2, .LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 5
	lui r16, 268288
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r11, r20, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 9
	storeli.w zero, -284(r30)               # 4-byte Folded Spill
	xwait r19, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r14, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r1, r5, r15, 2
	addli r1, zero, 1
	unlock zero
	xsignal r20, 0
	storeli.w r1, -280(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_24
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r5, zero, 4
	.loc	1 125 7 is_stmt 1               # parallel-rne.mlir:125:7
	addli r2, zero, 8
	storeli.w zero, -280(r30)               # 4-byte Folded Spill
	addli r7, zero, 1
	addli r10, zero, 5
	lui r16, 268288
	xwait r5, 0
	xwait r2, 0
	addli r2, zero, 11
	xwait r2, 0
	addli r2, zero, 32
	lock zero, r7
	mm_cfg r2, r15, r2, 0
	mm_cfg r5, r7, r7, 2
	mm r6, r4, r1, 8
	addli r1, zero, 1
	storeli.w r1, -284(r30)                 # 4-byte Folded Spill
	addli r1, zero, 9
	unlock r7
	xsignal r10, 0
	xsignal r1, 0
	addli r1, zero, 10
	xsignal r1, 0
	j .LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -284(r30)               # 4-byte Folded Spill
	storeli.w zero, -280(r30)               # 4-byte Folded Spill
.LBB0_24:                               # %.thread106
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 139 13 is_stmt 1              # parallel-rne.mlir:139:13
	loadli.w r2,  -120(r30)
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	loadli.w r4,  -108(r30)
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r1,  -96(r30)
	storeli.w r2, -276(r30)                 # 4-byte Folded Spill
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	addli r2, r2, 1
	storeli.w r4, -324(r30)                 # 4-byte Folded Spill
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	addli r4, r4, 1
	.loc	1 139 13                        # parallel-rne.mlir:139:13
	storeli.w r2, -120(r30)
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	addli r2, r1, 1
	.loc	1 142 13                        # parallel-rne.mlir:142:13
	storeli.w r4, -108(r30)
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	storeli.w r2, -96(r30)
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	bneq r11, r18, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r2, zero, 21
	xwait r2, 0
.LBB0_26:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mod.s r1, r1, r14
	addli r2, zero, 32
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	xfence
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r2, r1, 12
	.loc	1 151 7 is_stmt 1               # parallel-rne.mlir:151:7
	addli r1, zero, 255
	csr_set csr5, r1
	storeli.w r2, -344(r30)                 # 4-byte Folded Spill
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	add.s r24, r2, r1
	addli r1, zero, 3
	zext_int2long r[1:2], r1
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	store.d r[1:2], -264(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 152 7 is_stmt 1               # parallel-rne.mlir:152:7
	bneq r11, zero, .LBB0_51
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[10:11], zero
	mfence { lm, sm, gm }
	store.d r[10:11], -192(r30)             # 8-byte Folded Spill
	j .LBB0_29
.LBB0_28:                               # %middle.block891
                                        #   in Loop: Header=BB0_29 Depth=2
	.loc	1 159 9                         # parallel-rne.mlir:159:9
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[10:11], r[10:11], 1
	beq r1, zero, .LBB0_50
.LBB0_29:                               # %.preheader179
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	load.d r[14:15], -192(r30)              # 8-byte Folded Reload
	sll.d r[12:13], r[10:11], r1
	j .LBB0_31
.LBB0_30:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 160 11 is_stmt 1              # parallel-rne.mlir:160:11
	addli.d r[14:15], r[14:15], 4
	.loc	1 175 13                        # parallel-rne.mlir:175:13
	add.s r2, r24, r16
	.loc	1 160 11                        # parallel-rne.mlir:160:11
	setneq.d r1, r[14:15], r[4:5]
	.loc	1 175 13                        # parallel-rne.mlir:175:13
	stores.w r8, 0(r2)
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
	stores.w r19, 12(r2)
	stores.w r26, 8(r2)
	stores.w r7, 4(r2)
	.loc	1 160 11                        # parallel-rne.mlir:160:11
	beq r1, zero, .LBB0_28
.LBB0_31:                               # %vector.body887
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	add.ul r[1:2], r[14:15], r[12:13]
	slli r16, r1, 2
	add.s r1, r6, r16
	loads.w r17, 12(r1)
	loads.w r18, 0(r1)
	loads.w r2, 4(r1)
	loads.w r28, 8(r1)
	.loc	1 163 19                        # parallel-rne.mlir:163:19
	and r20, r17, r21
	.loc	1 165 19                        # parallel-rne.mlir:165:19
	setlt.u r1, r27, r20
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r1, zero, .LBB0_33
# %bb.32:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r17, 0
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_31 Depth=3
	lui r1, 1024
	or r19, r17, r1
.LBB0_34:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	and r9, r28, r21
	setlt.u r1, r27, r9
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r1, zero, .LBB0_36
# %bb.35:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_31 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_37:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	and r25, r2, r21
	setlt.u r1, r27, r25
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r1, zero, .LBB0_39
# %bb.38:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r2, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_31 Depth=3
	lui r1, 1024
	or r7, r2, r1
.LBB0_40:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	and r1, r18, r21
	setlt.u r8, r27, r1
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	bneq r8, zero, .LBB0_42
# %bb.41:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r18, 0
	.loc	1 172 19 is_stmt 1              # parallel-rne.mlir:172:19
	setlt.u r1, r23, r1
	.loc	1 173 20                        # parallel-rne.mlir:173:20
	beq r1, zero, .LBB0_43
	j .LBB0_44
.LBB0_42:                               #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r18, r8
	.loc	1 172 19 is_stmt 1              # parallel-rne.mlir:172:19
	setlt.u r1, r23, r1
	.loc	1 173 20                        # parallel-rne.mlir:173:20
	bneq r1, zero, .LBB0_44
.LBB0_43:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r18, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r22
	and r8, r1, r8
.LBB0_44:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	setlt.u r1, r23, r25
	.loc	1 173 20                        # parallel-rne.mlir:173:20
	bneq r1, zero, .LBB0_47
# %bb.45:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	lui r2, 1048560
	add.s r1, r1, r22
	and r7, r1, r2
	setlt.u r1, r23, r9
	.loc	1 173 20                        # parallel-rne.mlir:173:20
	beq r1, zero, .LBB0_48
.LBB0_46:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r20
	.loc	1 173 20                        # parallel-rne.mlir:173:20
	bneq r1, zero, .LBB0_30
	j .LBB0_49
.LBB0_47:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r9
	.loc	1 173 20                        # parallel-rne.mlir:173:20
	bneq r1, zero, .LBB0_46
.LBB0_48:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r28, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r22
	and r26, r1, r2
	setlt.u r1, r23, r20
	.loc	1 173 20                        # parallel-rne.mlir:173:20
	bneq r1, zero, .LBB0_30
.LBB0_49:                               # %vector.body887
                                        #   in Loop: Header=BB0_31 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r19, r1, r2
	j .LBB0_30
.LBB0_50:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	addli r10, zero, 5
	lui r16, 268288
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	mfence { sm }
.LBB0_51:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 180 7 is_stmt 1               # parallel-rne.mlir:180:7
	store.d r[1:2], -256(r30)               # 8-byte Folded Spill
	addli r1, zero, 1
	bneq r11, r1, .LBB0_76
# %bb.52:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 180 7                         # parallel-rne.mlir:180:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_54
.LBB0_53:                               # %middle.block882
                                        #   in Loop: Header=BB0_54 Depth=2
	.loc	1 187 9 is_stmt 1               # parallel-rne.mlir:187:9
	load.d r[1:2], -256(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_75
.LBB0_54:                               # %.preheader178
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_56 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r1
	j .LBB0_56
.LBB0_55:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 188 11 is_stmt 1              # parallel-rne.mlir:188:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	add.s r7, r24, r14
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	setneq.d r1, r[12:13], r[4:5]
	.loc	1 203 13                        # parallel-rne.mlir:203:13
	stores.w r16, 12(r7)
	stores.w r19, 8(r7)
	stores.w r2, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 188 11                        # parallel-rne.mlir:188:11
	beq r1, zero, .LBB0_53
.LBB0_56:                               # %vector.body878
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_54 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.ul r[1:2], r[12:13], r[10:11]
	slli r14, r1, 2
	add.s r1, r6, r14
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r7, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	and r17, r15, r21
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	setlt.u r1, r27, r17
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_56 Depth=3
	lui r1, 1024
	or r16, r15, r1
.LBB0_59:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r1, zero, .LBB0_61
# %bb.60:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_56 Depth=3
	lui r1, 1024
	or r19, r20, r1
.LBB0_62:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	and r28, r7, r21
	setlt.u r1, r27, r28
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r1, zero, .LBB0_64
# %bb.63:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_65
.LBB0_64:                               #   in Loop: Header=BB0_56 Depth=3
	lui r1, 1024
	or r2, r7, r1
.LBB0_65:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	and r1, r25, r21
	setlt.u r26, r27, r1
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	bneq r26, zero, .LBB0_67
# %bb.66:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r25, 0
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r1, r23, r1
	.loc	1 201 20                        # parallel-rne.mlir:201:20
	beq r1, zero, .LBB0_68
	j .LBB0_69
.LBB0_67:                               #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r25, r26
	.loc	1 200 19 is_stmt 1              # parallel-rne.mlir:200:19
	setlt.u r1, r23, r1
	.loc	1 201 20                        # parallel-rne.mlir:201:20
	bneq r1, zero, .LBB0_69
.LBB0_68:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	lui r25, 1048560
	add.s r1, r1, r22
	and r26, r1, r25
.LBB0_69:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	setlt.u r1, r23, r28
	.loc	1 201 20                        # parallel-rne.mlir:201:20
	bneq r1, zero, .LBB0_72
# %bb.70:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r7, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r22
	and r2, r1, r2
	setlt.u r1, r23, r18
	.loc	1 201 20                        # parallel-rne.mlir:201:20
	beq r1, zero, .LBB0_73
.LBB0_71:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r17
	.loc	1 201 20                        # parallel-rne.mlir:201:20
	bneq r1, zero, .LBB0_55
	j .LBB0_74
.LBB0_72:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 201 20                        # parallel-rne.mlir:201:20
	bneq r1, zero, .LBB0_71
.LBB0_73:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r19, r1, r7
	setlt.u r1, r23, r17
	.loc	1 201 20                        # parallel-rne.mlir:201:20
	bneq r1, zero, .LBB0_55
.LBB0_74:                               # %vector.body878
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r16, r1, r7
	j .LBB0_55
.LBB0_75:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 180 7 is_stmt 1               # parallel-rne.mlir:180:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
.LBB0_76:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 11
	zext_int2long r[1:2], r1
	.loc	1 208 7 is_stmt 1               # parallel-rne.mlir:208:7
	store.d r[1:2], -248(r30)               # 8-byte Folded Spill
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_101
# %bb.77:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 208 7                         # parallel-rne.mlir:208:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_79
.LBB0_78:                               # %middle.block873
                                        #   in Loop: Header=BB0_79 Depth=2
	.loc	1 215 9 is_stmt 1               # parallel-rne.mlir:215:9
	load.d r[1:2], -248(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_100
.LBB0_79:                               # %.preheader177
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r1
	j .LBB0_81
.LBB0_80:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 216 11 is_stmt 1              # parallel-rne.mlir:216:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	add.s r7, r24, r14
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	setneq.d r1, r[12:13], r[4:5]
	.loc	1 231 13                        # parallel-rne.mlir:231:13
	stores.w r16, 12(r7)
	stores.w r19, 8(r7)
	stores.w r2, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 216 11                        # parallel-rne.mlir:216:11
	beq r1, zero, .LBB0_78
.LBB0_81:                               # %vector.body869
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_79 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	add.ul r[1:2], r[12:13], r[10:11]
	slli r14, r1, 2
	add.s r1, r6, r14
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r7, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	and r17, r15, r21
	.loc	1 221 19                        # parallel-rne.mlir:221:19
	setlt.u r1, r27, r17
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r1, zero, .LBB0_83
# %bb.82:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	lui r1, 1024
	or r16, r15, r1
.LBB0_84:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r1, zero, .LBB0_86
# %bb.85:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	lui r1, 1024
	or r19, r20, r1
.LBB0_87:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	and r28, r7, r21
	setlt.u r1, r27, r28
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r1, zero, .LBB0_89
# %bb.88:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	lui r1, 1024
	or r2, r7, r1
.LBB0_90:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	and r1, r25, r21
	setlt.u r26, r27, r1
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	bneq r26, zero, .LBB0_92
# %bb.91:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r25, 0
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r1, r23, r1
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	beq r1, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r25, r26
	.loc	1 228 19 is_stmt 1              # parallel-rne.mlir:228:19
	setlt.u r1, r23, r1
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	bneq r1, zero, .LBB0_94
.LBB0_93:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	lui r25, 1048560
	add.s r1, r1, r22
	and r26, r1, r25
.LBB0_94:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r1, r23, r28
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	bneq r1, zero, .LBB0_97
# %bb.95:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r7, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r22
	and r2, r1, r2
	setlt.u r1, r23, r18
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	beq r1, zero, .LBB0_98
.LBB0_96:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r17
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	bneq r1, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	bneq r1, zero, .LBB0_96
.LBB0_98:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r19, r1, r7
	setlt.u r1, r23, r17
	.loc	1 229 20                        # parallel-rne.mlir:229:20
	bneq r1, zero, .LBB0_80
.LBB0_99:                               # %vector.body869
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r16, r1, r7
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 208 7 is_stmt 1               # parallel-rne.mlir:208:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 15
	zext_int2long r[1:2], r1
	.loc	1 236 7 is_stmt 1               # parallel-rne.mlir:236:7
	store.d r[1:2], -240(r30)               # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r11, r1, .LBB0_126
# %bb.102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 236 7                         # parallel-rne.mlir:236:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block864
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 243 9 is_stmt 1               # parallel-rne.mlir:243:9
	load.d r[1:2], -240(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_125
.LBB0_104:                              # %.preheader176
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r1
	j .LBB0_106
.LBB0_105:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 244 11 is_stmt 1              # parallel-rne.mlir:244:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	add.s r7, r24, r14
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	setneq.d r1, r[12:13], r[4:5]
	.loc	1 259 13                        # parallel-rne.mlir:259:13
	stores.w r16, 12(r7)
	stores.w r19, 8(r7)
	stores.w r2, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 244 11                        # parallel-rne.mlir:244:11
	beq r1, zero, .LBB0_103
.LBB0_106:                              # %vector.body860
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 245 19                        # parallel-rne.mlir:245:19
	add.ul r[1:2], r[12:13], r[10:11]
	slli r14, r1, 2
	add.s r1, r6, r14
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r7, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 247 19                        # parallel-rne.mlir:247:19
	and r17, r15, r21
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	setlt.u r1, r27, r17
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_108
# %bb.107:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	lui r1, 1024
	or r16, r15, r1
.LBB0_109:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_111
# %bb.110:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_106 Depth=3
	lui r1, 1024
	or r19, r20, r1
.LBB0_112:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	and r28, r7, r21
	setlt.u r1, r27, r28
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r1, zero, .LBB0_114
# %bb.113:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_115
.LBB0_114:                              #   in Loop: Header=BB0_106 Depth=3
	lui r1, 1024
	or r2, r7, r1
.LBB0_115:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	and r1, r25, r21
	setlt.u r26, r27, r1
	.loc	1 250 19                        # parallel-rne.mlir:250:19
	bneq r26, zero, .LBB0_117
# %bb.116:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r25, 0
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r1, r23, r1
	.loc	1 257 20                        # parallel-rne.mlir:257:20
	beq r1, zero, .LBB0_118
	j .LBB0_119
.LBB0_117:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r25, r26
	.loc	1 256 19 is_stmt 1              # parallel-rne.mlir:256:19
	setlt.u r1, r23, r1
	.loc	1 257 20                        # parallel-rne.mlir:257:20
	bneq r1, zero, .LBB0_119
.LBB0_118:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	lui r25, 1048560
	add.s r1, r1, r22
	and r26, r1, r25
.LBB0_119:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.u r1, r23, r28
	.loc	1 257 20                        # parallel-rne.mlir:257:20
	bneq r1, zero, .LBB0_122
# %bb.120:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r7, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r22
	and r2, r1, r2
	setlt.u r1, r23, r18
	.loc	1 257 20                        # parallel-rne.mlir:257:20
	beq r1, zero, .LBB0_123
.LBB0_121:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r17
	.loc	1 257 20                        # parallel-rne.mlir:257:20
	bneq r1, zero, .LBB0_105
	j .LBB0_124
.LBB0_122:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 257 20                        # parallel-rne.mlir:257:20
	bneq r1, zero, .LBB0_121
.LBB0_123:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r19, r1, r7
	setlt.u r1, r23, r17
	.loc	1 257 20                        # parallel-rne.mlir:257:20
	bneq r1, zero, .LBB0_105
.LBB0_124:                              # %vector.body860
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r16, r1, r7
	j .LBB0_105
.LBB0_125:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 236 7 is_stmt 1               # parallel-rne.mlir:236:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 19
	zext_int2long r[1:2], r1
	.loc	1 264 7 is_stmt 1               # parallel-rne.mlir:264:7
	store.d r[1:2], -232(r30)               # 8-byte Folded Spill
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_151
# %bb.127:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 264 7                         # parallel-rne.mlir:264:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_129
.LBB0_128:                              # %middle.block855
                                        #   in Loop: Header=BB0_129 Depth=2
	.loc	1 271 9 is_stmt 1               # parallel-rne.mlir:271:9
	load.d r[1:2], -232(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_150
.LBB0_129:                              # %.preheader175
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r1
	j .LBB0_131
.LBB0_130:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 272 11 is_stmt 1              # parallel-rne.mlir:272:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	add.s r7, r24, r14
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	setneq.d r1, r[12:13], r[4:5]
	.loc	1 287 13                        # parallel-rne.mlir:287:13
	stores.w r16, 12(r7)
	stores.w r19, 8(r7)
	stores.w r2, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 272 11                        # parallel-rne.mlir:272:11
	beq r1, zero, .LBB0_128
.LBB0_131:                              # %vector.body851
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_129 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	add.ul r[1:2], r[12:13], r[10:11]
	slli r14, r1, 2
	add.s r1, r6, r14
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r7, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	and r17, r15, r21
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	setlt.u r1, r27, r17
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_133
# %bb.132:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_131 Depth=3
	lui r1, 1024
	or r16, r15, r1
.LBB0_134:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_136
# %bb.135:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_137
.LBB0_136:                              #   in Loop: Header=BB0_131 Depth=3
	lui r1, 1024
	or r19, r20, r1
.LBB0_137:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	and r28, r7, r21
	setlt.u r1, r27, r28
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r1, zero, .LBB0_139
# %bb.138:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_131 Depth=3
	lui r1, 1024
	or r2, r7, r1
.LBB0_140:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	and r1, r25, r21
	setlt.u r26, r27, r1
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r26, zero, .LBB0_142
# %bb.141:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r25, 0
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r1, r23, r1
	.loc	1 285 20                        # parallel-rne.mlir:285:20
	beq r1, zero, .LBB0_143
	j .LBB0_144
.LBB0_142:                              #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r25, r26
	.loc	1 284 19 is_stmt 1              # parallel-rne.mlir:284:19
	setlt.u r1, r23, r1
	.loc	1 285 20                        # parallel-rne.mlir:285:20
	bneq r1, zero, .LBB0_144
.LBB0_143:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	lui r25, 1048560
	add.s r1, r1, r22
	and r26, r1, r25
.LBB0_144:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r1, r23, r28
	.loc	1 285 20                        # parallel-rne.mlir:285:20
	bneq r1, zero, .LBB0_147
# %bb.145:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r7, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r22
	and r2, r1, r2
	setlt.u r1, r23, r18
	.loc	1 285 20                        # parallel-rne.mlir:285:20
	beq r1, zero, .LBB0_148
.LBB0_146:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r17
	.loc	1 285 20                        # parallel-rne.mlir:285:20
	bneq r1, zero, .LBB0_130
	j .LBB0_149
.LBB0_147:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 285 20                        # parallel-rne.mlir:285:20
	bneq r1, zero, .LBB0_146
.LBB0_148:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r19, r1, r7
	setlt.u r1, r23, r17
	.loc	1 285 20                        # parallel-rne.mlir:285:20
	bneq r1, zero, .LBB0_130
.LBB0_149:                              # %vector.body851
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r16, r1, r7
	j .LBB0_130
.LBB0_150:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 264 7 is_stmt 1               # parallel-rne.mlir:264:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
.LBB0_151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 23
	zext_int2long r[1:2], r1
	.loc	1 292 7 is_stmt 1               # parallel-rne.mlir:292:7
	store.d r[1:2], -224(r30)               # 8-byte Folded Spill
	bneq r11, r10, .LBB0_176
# %bb.152:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 292 7                         # parallel-rne.mlir:292:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_154
.LBB0_153:                              # %middle.block846
                                        #   in Loop: Header=BB0_154 Depth=2
	.loc	1 299 9 is_stmt 1               # parallel-rne.mlir:299:9
	load.d r[1:2], -224(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_175
.LBB0_154:                              # %.preheader174
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_156 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r1
	j .LBB0_156
.LBB0_155:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 300 11 is_stmt 1              # parallel-rne.mlir:300:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 315 13                        # parallel-rne.mlir:315:13
	add.s r7, r24, r14
	.loc	1 300 11                        # parallel-rne.mlir:300:11
	setneq.d r1, r[12:13], r[4:5]
	.loc	1 315 13                        # parallel-rne.mlir:315:13
	stores.w r16, 12(r7)
	stores.w r19, 8(r7)
	stores.w r2, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 300 11                        # parallel-rne.mlir:300:11
	beq r1, zero, .LBB0_153
.LBB0_156:                              # %vector.body842
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_154 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	add.ul r[1:2], r[12:13], r[10:11]
	slli r14, r1, 2
	add.s r1, r6, r14
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r7, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	and r17, r15, r21
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	setlt.u r1, r27, r17
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r1, zero, .LBB0_158
# %bb.157:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_156 Depth=3
	lui r1, 1024
	or r16, r15, r1
.LBB0_159:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r1, zero, .LBB0_161
# %bb.160:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_162
.LBB0_161:                              #   in Loop: Header=BB0_156 Depth=3
	lui r1, 1024
	or r19, r20, r1
.LBB0_162:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	and r28, r7, r21
	setlt.u r1, r27, r28
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r1, zero, .LBB0_164
# %bb.163:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_165
.LBB0_164:                              #   in Loop: Header=BB0_156 Depth=3
	lui r1, 1024
	or r2, r7, r1
.LBB0_165:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	and r1, r25, r21
	setlt.u r26, r27, r1
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r26, zero, .LBB0_167
# %bb.166:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r25, 0
	.loc	1 312 19 is_stmt 1              # parallel-rne.mlir:312:19
	setlt.u r1, r23, r1
	.loc	1 313 20                        # parallel-rne.mlir:313:20
	beq r1, zero, .LBB0_168
	j .LBB0_169
.LBB0_167:                              #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r25, r26
	.loc	1 312 19 is_stmt 1              # parallel-rne.mlir:312:19
	setlt.u r1, r23, r1
	.loc	1 313 20                        # parallel-rne.mlir:313:20
	bneq r1, zero, .LBB0_169
.LBB0_168:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	lui r25, 1048560
	add.s r1, r1, r22
	and r26, r1, r25
.LBB0_169:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	setlt.u r1, r23, r28
	.loc	1 313 20                        # parallel-rne.mlir:313:20
	bneq r1, zero, .LBB0_172
# %bb.170:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r7, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r22
	and r2, r1, r2
	setlt.u r1, r23, r18
	.loc	1 313 20                        # parallel-rne.mlir:313:20
	beq r1, zero, .LBB0_173
.LBB0_171:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r17
	.loc	1 313 20                        # parallel-rne.mlir:313:20
	bneq r1, zero, .LBB0_155
	j .LBB0_174
.LBB0_172:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 313 20                        # parallel-rne.mlir:313:20
	bneq r1, zero, .LBB0_171
.LBB0_173:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r19, r1, r7
	setlt.u r1, r23, r17
	.loc	1 313 20                        # parallel-rne.mlir:313:20
	bneq r1, zero, .LBB0_155
.LBB0_174:                              # %vector.body842
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r16, r1, r7
	j .LBB0_155
.LBB0_175:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 292 7 is_stmt 1               # parallel-rne.mlir:292:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
.LBB0_176:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 27
	zext_int2long r[1:2], r1
	.loc	1 320 7 is_stmt 1               # parallel-rne.mlir:320:7
	store.d r[1:2], -216(r30)               # 8-byte Folded Spill
	addli r1, zero, 6
	bneq r11, r1, .LBB0_201
# %bb.177:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 320 7                         # parallel-rne.mlir:320:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r1
	j .LBB0_179
.LBB0_178:                              # %middle.block837
                                        #   in Loop: Header=BB0_179 Depth=2
	.loc	1 327 9 is_stmt 1               # parallel-rne.mlir:327:9
	load.d r[1:2], -216(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[8:9], r[1:2]
	addli.d r[8:9], r[8:9], 1
	beq r1, zero, .LBB0_200
.LBB0_179:                              # %.preheader173
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_181 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r1
	j .LBB0_181
.LBB0_180:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 328 11 is_stmt 1              # parallel-rne.mlir:328:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 343 13                        # parallel-rne.mlir:343:13
	add.s r7, r24, r14
	.loc	1 328 11                        # parallel-rne.mlir:328:11
	setneq.d r1, r[12:13], r[4:5]
	.loc	1 343 13                        # parallel-rne.mlir:343:13
	stores.w r16, 12(r7)
	stores.w r19, 8(r7)
	stores.w r2, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 328 11                        # parallel-rne.mlir:328:11
	beq r1, zero, .LBB0_178
.LBB0_181:                              # %vector.body833
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_179 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 329 19                        # parallel-rne.mlir:329:19
	add.ul r[1:2], r[12:13], r[10:11]
	slli r14, r1, 2
	add.s r1, r6, r14
	loads.w r15, 12(r1)
	loads.w r25, 0(r1)
	loads.w r7, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	and r17, r15, r21
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	setlt.u r1, r27, r17
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r1, zero, .LBB0_183
# %bb.182:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r15, 0
	j .LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_181 Depth=3
	lui r1, 1024
	or r16, r15, r1
.LBB0_184:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r1, zero, .LBB0_186
# %bb.185:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_187
.LBB0_186:                              #   in Loop: Header=BB0_181 Depth=3
	lui r1, 1024
	or r19, r20, r1
.LBB0_187:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	and r28, r7, r21
	setlt.u r1, r27, r28
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r1, zero, .LBB0_189
# %bb.188:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_190
.LBB0_189:                              #   in Loop: Header=BB0_181 Depth=3
	lui r1, 1024
	or r2, r7, r1
.LBB0_190:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	and r1, r25, r21
	setlt.u r26, r27, r1
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	bneq r26, zero, .LBB0_192
# %bb.191:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r25, 0
	.loc	1 340 19 is_stmt 1              # parallel-rne.mlir:340:19
	setlt.u r1, r23, r1
	.loc	1 341 20                        # parallel-rne.mlir:341:20
	beq r1, zero, .LBB0_193
	j .LBB0_194
.LBB0_192:                              #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r25, r26
	.loc	1 340 19 is_stmt 1              # parallel-rne.mlir:340:19
	setlt.u r1, r23, r1
	.loc	1 341 20                        # parallel-rne.mlir:341:20
	bneq r1, zero, .LBB0_194
.LBB0_193:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r25, 16
	andi r1, r1, 1
	add.s r1, r25, r1
	lui r25, 1048560
	add.s r1, r1, r22
	and r26, r1, r25
.LBB0_194:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	setlt.u r1, r23, r28
	.loc	1 341 20                        # parallel-rne.mlir:341:20
	bneq r1, zero, .LBB0_197
# %bb.195:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r7, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r22
	and r2, r1, r2
	setlt.u r1, r23, r18
	.loc	1 341 20                        # parallel-rne.mlir:341:20
	beq r1, zero, .LBB0_198
.LBB0_196:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r17
	.loc	1 341 20                        # parallel-rne.mlir:341:20
	bneq r1, zero, .LBB0_180
	j .LBB0_199
.LBB0_197:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 341 20                        # parallel-rne.mlir:341:20
	bneq r1, zero, .LBB0_196
.LBB0_198:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r19, r1, r7
	setlt.u r1, r23, r17
	.loc	1 341 20                        # parallel-rne.mlir:341:20
	bneq r1, zero, .LBB0_180
.LBB0_199:                              # %vector.body833
                                        #   in Loop: Header=BB0_181 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r15, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r15, r1
	add.s r1, r1, r22
	and r16, r1, r7
	j .LBB0_180
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 320 7 is_stmt 1               # parallel-rne.mlir:320:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
.LBB0_201:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	.loc	1 348 7 is_stmt 1               # parallel-rne.mlir:348:7
	store.d r[1:2], -192(r30)               # 8-byte Folded Spill
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_226
# %bb.202:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 348 7                         # parallel-rne.mlir:348:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_204
.LBB0_203:                              # %middle.block828
                                        #   in Loop: Header=BB0_204 Depth=2
	.loc	1 355 9 is_stmt 1               # parallel-rne.mlir:355:9
	load.d r[1:2], -192(r30)                # 8-byte Folded Reload
	load.d r[7:8], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_225
.LBB0_204:                              # %.preheader172
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	store.d r[7:8], -200(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[7:8], r1
	j .LBB0_206
.LBB0_205:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 356 11 is_stmt 1              # parallel-rne.mlir:356:11
	addli.d r[12:13], r[12:13], 4
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	add.s r7, r24, r14
	.loc	1 356 11                        # parallel-rne.mlir:356:11
	setneq.d r1, r[12:13], r[4:5]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	stores.w r19, 12(r7)
	stores.w r26, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 356 11                        # parallel-rne.mlir:356:11
	beq r1, zero, .LBB0_203
.LBB0_206:                              # %vector.body824
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_204 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	add.ul r[1:2], r[12:13], r[10:11]
	slli r14, r1, 2
	add.s r1, r6, r14
	loads.w r17, 12(r1)
	loads.w r18, 0(r1)
	loads.w r7, 4(r1)
	loads.w r28, 8(r1)
	.loc	1 359 19                        # parallel-rne.mlir:359:19
	and r20, r17, r21
	.loc	1 361 19                        # parallel-rne.mlir:361:19
	setlt.u r1, r27, r20
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r1, zero, .LBB0_208
# %bb.207:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r17, 0
	j .LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	lui r1, 1024
	or r19, r17, r1
.LBB0_209:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	and r9, r28, r21
	setlt.u r1, r27, r9
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r1, zero, .LBB0_211
# %bb.210:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_206 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_212:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	and r25, r7, r21
	setlt.u r1, r27, r25
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r1, zero, .LBB0_214
# %bb.213:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_206 Depth=3
	lui r1, 1024
	or r2, r7, r1
.LBB0_215:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	and r1, r18, r21
	setlt.u r8, r27, r1
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r8, zero, .LBB0_217
# %bb.216:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r18, 0
	.loc	1 368 19 is_stmt 1              # parallel-rne.mlir:368:19
	setlt.u r1, r23, r1
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	beq r1, zero, .LBB0_218
	j .LBB0_219
.LBB0_217:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r18, r8
	.loc	1 368 19 is_stmt 1              # parallel-rne.mlir:368:19
	setlt.u r1, r23, r1
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	bneq r1, zero, .LBB0_219
.LBB0_218:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r18, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r18, r1
	add.s r1, r1, r22
	and r8, r1, r8
.LBB0_219:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	setlt.u r1, r23, r25
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	bneq r1, zero, .LBB0_222
# %bb.220:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r7, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r22
	and r2, r1, r2
	setlt.u r1, r23, r9
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	beq r1, zero, .LBB0_223
.LBB0_221:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r20
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	bneq r1, zero, .LBB0_205
	j .LBB0_224
.LBB0_222:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r9
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	bneq r1, zero, .LBB0_221
.LBB0_223:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r28, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r22
	and r26, r1, r7
	setlt.u r1, r23, r20
	.loc	1 369 20                        # parallel-rne.mlir:369:20
	bneq r1, zero, .LBB0_205
.LBB0_224:                              # %vector.body824
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r19, r1, r7
	j .LBB0_205
.LBB0_225:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 348 7 is_stmt 1               # parallel-rne.mlir:348:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
.LBB0_226:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	addli r2, zero, 224
	zext_int2long r[6:7], r2
	slli r1, r1, 5
	zext_int2long r[1:2], r1
	min.ul r[6:7], r[1:2], r[6:7]
	addli.d r[6:7], r[6:7], 32
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	min.ul r[1:2], r[1:2], r[4:5]
	.loc	1 376 7 is_stmt 1               # parallel-rne.mlir:376:7
	store.d r[1:2], -336(r30)               # 8-byte Folded Spill
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r1, zero, 3
	.loc	1 376 7                         # parallel-rne.mlir:376:7
	sync_core
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	bneq r11, r1, .LBB0_228
# %bb.227:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	loadli.w r1,  -84(r30)
	addli r2, r1, 1
	storeli.w r2, -84(r30)
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r2, zero, 29
	xwait r2, 0
	j .LBB0_237
.LBB0_228:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r14,  -276(r30)                # 4-byte Folded Reload
	addli r1, zero, 2
	addli r10, zero, 1
	mod.s r1, r14, r1
	slli r6, r1, 7
	lui r1, 10
	add.s r2, r6, r1
	.loc	1 380 7 is_stmt 1               # parallel-rne.mlir:380:7
	bneq r11, r10, .LBB0_232
# %bb.229:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[12:13], r[8:9], 0
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	load.d r[7:8], 16(r30)
	add.ul r[7:8], r[7:8], r[12:13]
	addli r13, zero, 23
	xwait r13, 0
	blt.s r10, r14, .LBB0_231
# %bb.230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r9, zero, 5
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r1, zero, 2
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 3
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 4
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 6
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 7
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 11
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 12
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 13
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 14
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 15
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 16
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 17
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 18
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 25
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 26
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 27
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 28
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 29
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 30
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 31
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r1, 3
	addli r1, zero, 128
	dma_cfg r1, zero, r10, 4
	dma_cfg r1, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r12, zero, 4
	lui r1, 10
	addli r9, zero, 64
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	lock zero, r12
	ori r1, r1, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r1, r6, r1
	load.d r[14:15], -336(r30)              # 8-byte Folded Reload
	dma_cfg r1, r7, r9, 3
	addli r8, zero, 5
	addli r7, zero, 2
	addli r6, r14, 31
	srli r1, r6, 5
	slli r6, r14, 1
	addli r14, zero, 128
	dma_cfg r14, r9, r1, 4
	andi r6, r6, 62
	dma_cfg r14, r9, r10, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 3
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 7
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r9, 3
	dma_cfg r14, zero, r1, 4
	dma_cfg r14, zero, r10, 5
	dma_cfg zero, zero, r6, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	addli r10, zero, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r7, 0
	j .LBB0_236
.LBB0_232:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 5
	.loc	1 381 7 is_stmt 1               # parallel-rne.mlir:381:7
	bneq r11, r10, .LBB0_236
# %bb.233:                              #   in Loop: Header=BB0_8 Depth=1
	addli r6, zero, 12
	addli r1, zero, 0
	addli r7, zero, 4096
	xwait r6, 0
	addli r6, zero, 22
	xwait r6, 0
	addli r6, zero, 2
	lock zero, r6
	lui r6, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r6, r6, zero, 0
	addli r6, zero, 31
	ew_cfg zero, r6, zero, 2
	addli r6, zero, 1
	ew_cfg r6, zero, zero, 3
.LBB0_234:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r6, r24, r1
	addli r1, r1, 128
	dsmadd r6, r6, r2, 0
	bneq r1, r7, .LBB0_234
# %bb.235:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 23
	xsignal r1, 0
.LBB0_236:                              # %.thread110
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	loadli.w r1,  -84(r30)
	addli r2, r1, 1
	storeli.w r2, -84(r30)
.LBB0_237:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	xfence
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	mfence { lm, sm, gm }
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	mod.s r1, r1, r2
	loadli.w r2,  -356(r30)                 # 4-byte Folded Reload
	slli r1, r1, 12
	add.s r26, r1, r2
	.loc	1 390 7                         # parallel-rne.mlir:390:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	beq r11, zero, .LBB0_329
# %bb.238:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 419 7                         # parallel-rne.mlir:419:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_358
.LBB0_239:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 419 7                         # parallel-rne.mlir:419:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_241
.LBB0_240:                              # %middle.block810
                                        #   in Loop: Header=BB0_241 Depth=2
	.loc	1 426 9 is_stmt 1               # parallel-rne.mlir:426:9
	load.d r[1:2], -256(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_267
.LBB0_241:                              # %.preheader170
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_243 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 427 11 is_stmt 1              # parallel-rne.mlir:427:11
	beq r26, r24, .LBB0_264
	j .LBB0_243
.LBB0_242:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 442 13                        # parallel-rne.mlir:442:13
	add.s r2, r26, r2
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 442 13                        # parallel-rne.mlir:442:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	bneq r1, zero, .LBB0_240
.LBB0_243:                              # %vector.body806
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	and r14, r13, r21
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	setlt.u r1, r27, r14
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r1, zero, .LBB0_245
# %bb.244:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_243 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_246:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r1, zero, .LBB0_248
# %bb.247:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_243 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_249:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r1, zero, .LBB0_251
# %bb.250:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_252
.LBB0_251:                              #   in Loop: Header=BB0_243 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_252:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r15, zero, .LBB0_254
# %bb.253:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 439 19 is_stmt 1              # parallel-rne.mlir:439:19
	setlt.u r7, r23, r7
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	beq r7, zero, .LBB0_255
	j .LBB0_256
.LBB0_254:                              #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 439 19 is_stmt 1              # parallel-rne.mlir:439:19
	setlt.u r7, r23, r7
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	bneq r7, zero, .LBB0_256
.LBB0_255:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_256:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	setlt.u r1, r23, r6
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	bneq r1, zero, .LBB0_259
# %bb.257:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	beq r1, zero, .LBB0_260
.LBB0_258:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	bneq r1, zero, .LBB0_242
	j .LBB0_261
.LBB0_259:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	bneq r1, zero, .LBB0_258
.LBB0_260:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	bneq r1, zero, .LBB0_242
.LBB0_261:                              # %vector.body806
                                        #   in Loop: Header=BB0_243 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_242
.LBB0_262:                              # %scalar.ph804
                                        #   in Loop: Header=BB0_264 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_263:                              # %scalar.ph804
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 427 11 is_stmt 1              # parallel-rne.mlir:427:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 442 13                        # parallel-rne.mlir:442:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 427 11                        # parallel-rne.mlir:427:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_240
.LBB0_264:                              # %scalar.ph804
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 428 19                        # parallel-rne.mlir:428:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 430 19                        # parallel-rne.mlir:430:19
	and r7, r6, r21
	.loc	1 432 19                        # parallel-rne.mlir:432:19
	setlt.u r2, r27, r7
	.loc	1 433 19                        # parallel-rne.mlir:433:19
	bneq r2, zero, .LBB0_266
# %bb.265:                              # %scalar.ph804
                                        #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 439 19 is_stmt 1              # parallel-rne.mlir:439:19
	setlt.u r7, r23, r7
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	bneq r7, zero, .LBB0_263
	j .LBB0_262
.LBB0_266:                              #   in Loop: Header=BB0_264 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 439 19 is_stmt 1              # parallel-rne.mlir:439:19
	setlt.u r7, r23, r7
	.loc	1 440 20                        # parallel-rne.mlir:440:20
	bneq r7, zero, .LBB0_263
	j .LBB0_262
.LBB0_267:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 419 7                         # parallel-rne.mlir:419:7
	mfence { sm }
	.loc	1 447 7                         # parallel-rne.mlir:447:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_359
.LBB0_268:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_388
.LBB0_269:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_271
.LBB0_270:                              # %middle.block792
                                        #   in Loop: Header=BB0_271 Depth=2
	.loc	1 482 9 is_stmt 1               # parallel-rne.mlir:482:9
	load.d r[1:2], -240(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_297
.LBB0_271:                              # %.preheader168
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_294 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 483 11 is_stmt 1              # parallel-rne.mlir:483:11
	beq r26, r24, .LBB0_294
	j .LBB0_273
.LBB0_272:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	add.s r2, r26, r2
	.loc	1 483 11                        # parallel-rne.mlir:483:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 483 11                        # parallel-rne.mlir:483:11
	bneq r1, zero, .LBB0_270
.LBB0_273:                              # %vector.body788
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	and r14, r13, r21
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	setlt.u r1, r27, r14
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r1, zero, .LBB0_275
# %bb.274:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_273 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_276:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r1, zero, .LBB0_278
# %bb.277:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_273 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_279:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r1, zero, .LBB0_281
# %bb.280:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_273 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_282:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r15, zero, .LBB0_284
# %bb.283:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 495 19 is_stmt 1              # parallel-rne.mlir:495:19
	setlt.u r7, r23, r7
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	beq r7, zero, .LBB0_285
	j .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 495 19 is_stmt 1              # parallel-rne.mlir:495:19
	setlt.u r7, r23, r7
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	bneq r7, zero, .LBB0_286
.LBB0_285:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_286:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	setlt.u r1, r23, r6
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	bneq r1, zero, .LBB0_289
# %bb.287:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	beq r1, zero, .LBB0_290
.LBB0_288:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	bneq r1, zero, .LBB0_272
	j .LBB0_291
.LBB0_289:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	bneq r1, zero, .LBB0_288
.LBB0_290:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	bneq r1, zero, .LBB0_272
.LBB0_291:                              # %vector.body788
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_272
.LBB0_292:                              # %scalar.ph786
                                        #   in Loop: Header=BB0_294 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_293:                              # %scalar.ph786
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 483 11 is_stmt 1              # parallel-rne.mlir:483:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 498 13                        # parallel-rne.mlir:498:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 483 11                        # parallel-rne.mlir:483:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_270
.LBB0_294:                              # %scalar.ph786
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_271 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 484 19                        # parallel-rne.mlir:484:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 486 19                        # parallel-rne.mlir:486:19
	and r7, r6, r21
	.loc	1 488 19                        # parallel-rne.mlir:488:19
	setlt.u r2, r27, r7
	.loc	1 489 19                        # parallel-rne.mlir:489:19
	bneq r2, zero, .LBB0_296
# %bb.295:                              # %scalar.ph786
                                        #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 495 19 is_stmt 1              # parallel-rne.mlir:495:19
	setlt.u r7, r23, r7
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	bneq r7, zero, .LBB0_293
	j .LBB0_292
.LBB0_296:                              #   in Loop: Header=BB0_294 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 495 19 is_stmt 1              # parallel-rne.mlir:495:19
	setlt.u r7, r23, r7
	.loc	1 496 20                        # parallel-rne.mlir:496:20
	bneq r7, zero, .LBB0_293
	j .LBB0_292
.LBB0_297:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	mfence { sm }
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_389
.LBB0_298:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	bneq r11, r10, .LBB0_418
.LBB0_299:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_301
.LBB0_300:                              # %middle.block774
                                        #   in Loop: Header=BB0_301 Depth=2
	.loc	1 538 9 is_stmt 1               # parallel-rne.mlir:538:9
	load.d r[1:2], -224(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_327
.LBB0_301:                              # %.preheader166
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_303 Depth 3
                                        #       Child Loop BB0_324 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 539 11 is_stmt 1              # parallel-rne.mlir:539:11
	beq r26, r24, .LBB0_324
	j .LBB0_303
.LBB0_302:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 554 13                        # parallel-rne.mlir:554:13
	add.s r2, r26, r2
	.loc	1 539 11                        # parallel-rne.mlir:539:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 554 13                        # parallel-rne.mlir:554:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 539 11                        # parallel-rne.mlir:539:11
	bneq r1, zero, .LBB0_300
.LBB0_303:                              # %vector.body770
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	and r14, r13, r21
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	setlt.u r1, r27, r14
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	bneq r1, zero, .LBB0_305
# %bb.304:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_303 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_306:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	bneq r1, zero, .LBB0_308
# %bb.307:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_303 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_309:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	bneq r1, zero, .LBB0_311
# %bb.310:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_312
.LBB0_311:                              #   in Loop: Header=BB0_303 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_312:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	bneq r15, zero, .LBB0_314
# %bb.313:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 551 19 is_stmt 1              # parallel-rne.mlir:551:19
	setlt.u r7, r23, r7
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	beq r7, zero, .LBB0_315
	j .LBB0_316
.LBB0_314:                              #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 551 19 is_stmt 1              # parallel-rne.mlir:551:19
	setlt.u r7, r23, r7
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	bneq r7, zero, .LBB0_316
.LBB0_315:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_316:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	setlt.u r1, r23, r6
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	bneq r1, zero, .LBB0_319
# %bb.317:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	beq r1, zero, .LBB0_320
.LBB0_318:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	bneq r1, zero, .LBB0_302
	j .LBB0_321
.LBB0_319:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	bneq r1, zero, .LBB0_318
.LBB0_320:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	bneq r1, zero, .LBB0_302
.LBB0_321:                              # %vector.body770
                                        #   in Loop: Header=BB0_303 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_302
.LBB0_322:                              # %scalar.ph768
                                        #   in Loop: Header=BB0_324 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_323:                              # %scalar.ph768
                                        #   in Loop: Header=BB0_324 Depth=3
	.loc	1 539 11 is_stmt 1              # parallel-rne.mlir:539:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 554 13                        # parallel-rne.mlir:554:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 539 11                        # parallel-rne.mlir:539:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_300
.LBB0_324:                              # %scalar.ph768
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_301 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 540 19                        # parallel-rne.mlir:540:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	and r7, r6, r21
	.loc	1 544 19                        # parallel-rne.mlir:544:19
	setlt.u r2, r27, r7
	.loc	1 545 19                        # parallel-rne.mlir:545:19
	bneq r2, zero, .LBB0_326
# %bb.325:                              # %scalar.ph768
                                        #   in Loop: Header=BB0_324 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 551 19 is_stmt 1              # parallel-rne.mlir:551:19
	setlt.u r7, r23, r7
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	bneq r7, zero, .LBB0_323
	j .LBB0_322
.LBB0_326:                              #   in Loop: Header=BB0_324 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 551 19 is_stmt 1              # parallel-rne.mlir:551:19
	setlt.u r7, r23, r7
	.loc	1 552 20                        # parallel-rne.mlir:552:20
	bneq r7, zero, .LBB0_323
	j .LBB0_322
.LBB0_327:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	mfence { sm }
	.loc	1 559 7                         # parallel-rne.mlir:559:7
	addli r1, zero, 6
	beq r11, r1, .LBB0_419
.LBB0_328:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 587 7                         # parallel-rne.mlir:587:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_448
	j .LBB0_477
.LBB0_329:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_331
.LBB0_330:                              # %middle.block819
                                        #   in Loop: Header=BB0_331 Depth=2
	.loc	1 398 9                         # parallel-rne.mlir:398:9
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_357
.LBB0_331:                              # %.preheader171
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_333 Depth 3
                                        #       Child Loop BB0_354 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 399 11 is_stmt 1              # parallel-rne.mlir:399:11
	beq r26, r24, .LBB0_354
	j .LBB0_333
.LBB0_332:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 414 13                        # parallel-rne.mlir:414:13
	add.s r2, r26, r2
	.loc	1 399 11                        # parallel-rne.mlir:399:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 414 13                        # parallel-rne.mlir:414:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 399 11                        # parallel-rne.mlir:399:11
	bneq r1, zero, .LBB0_330
.LBB0_333:                              # %vector.body815
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_331 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	and r14, r13, r21
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	setlt.u r1, r27, r14
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r1, zero, .LBB0_335
# %bb.334:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_336
.LBB0_335:                              #   in Loop: Header=BB0_333 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_336:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r1, zero, .LBB0_338
# %bb.337:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_339
.LBB0_338:                              #   in Loop: Header=BB0_333 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_339:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r1, zero, .LBB0_341
# %bb.340:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_342
.LBB0_341:                              #   in Loop: Header=BB0_333 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_342:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r15, zero, .LBB0_344
# %bb.343:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 411 19 is_stmt 1              # parallel-rne.mlir:411:19
	setlt.u r7, r23, r7
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	beq r7, zero, .LBB0_345
	j .LBB0_346
.LBB0_344:                              #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 411 19 is_stmt 1              # parallel-rne.mlir:411:19
	setlt.u r7, r23, r7
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r7, zero, .LBB0_346
.LBB0_345:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_346:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	setlt.u r1, r23, r6
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r1, zero, .LBB0_349
# %bb.347:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	beq r1, zero, .LBB0_350
.LBB0_348:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r1, zero, .LBB0_332
	j .LBB0_351
.LBB0_349:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r1, zero, .LBB0_348
.LBB0_350:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r1, zero, .LBB0_332
.LBB0_351:                              # %vector.body815
                                        #   in Loop: Header=BB0_333 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_332
.LBB0_352:                              # %scalar.ph813
                                        #   in Loop: Header=BB0_354 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_353:                              # %scalar.ph813
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 399 11 is_stmt 1              # parallel-rne.mlir:399:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 414 13                        # parallel-rne.mlir:414:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 399 11                        # parallel-rne.mlir:399:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_330
.LBB0_354:                              # %scalar.ph813
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_331 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 400 19                        # parallel-rne.mlir:400:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 402 19                        # parallel-rne.mlir:402:19
	and r7, r6, r21
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	setlt.u r2, r27, r7
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	bneq r2, zero, .LBB0_356
# %bb.355:                              # %scalar.ph813
                                        #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 411 19 is_stmt 1              # parallel-rne.mlir:411:19
	setlt.u r7, r23, r7
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r7, zero, .LBB0_353
	j .LBB0_352
.LBB0_356:                              #   in Loop: Header=BB0_354 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 411 19 is_stmt 1              # parallel-rne.mlir:411:19
	setlt.u r7, r23, r7
	.loc	1 412 20                        # parallel-rne.mlir:412:20
	bneq r7, zero, .LBB0_353
	j .LBB0_352
.LBB0_357:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	mfence { sm }
	.loc	1 419 7                         # parallel-rne.mlir:419:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_239
.LBB0_358:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 447 7                         # parallel-rne.mlir:447:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_268
.LBB0_359:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 447 7                         # parallel-rne.mlir:447:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_361
.LBB0_360:                              # %middle.block801
                                        #   in Loop: Header=BB0_361 Depth=2
	.loc	1 454 9 is_stmt 1               # parallel-rne.mlir:454:9
	load.d r[1:2], -248(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_387
.LBB0_361:                              # %.preheader169
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_363 Depth 3
                                        #       Child Loop BB0_384 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 455 11 is_stmt 1              # parallel-rne.mlir:455:11
	beq r26, r24, .LBB0_384
	j .LBB0_363
.LBB0_362:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 470 13                        # parallel-rne.mlir:470:13
	add.s r2, r26, r2
	.loc	1 455 11                        # parallel-rne.mlir:455:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 470 13                        # parallel-rne.mlir:470:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 455 11                        # parallel-rne.mlir:455:11
	bneq r1, zero, .LBB0_360
.LBB0_363:                              # %vector.body797
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	and r14, r13, r21
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	setlt.u r1, r27, r14
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_365
# %bb.364:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_366
.LBB0_365:                              #   in Loop: Header=BB0_363 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_366:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_368
# %bb.367:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_369
.LBB0_368:                              #   in Loop: Header=BB0_363 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_369:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r1, zero, .LBB0_371
# %bb.370:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_372
.LBB0_371:                              #   in Loop: Header=BB0_363 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_372:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r15, zero, .LBB0_374
# %bb.373:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 467 19 is_stmt 1              # parallel-rne.mlir:467:19
	setlt.u r7, r23, r7
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	beq r7, zero, .LBB0_375
	j .LBB0_376
.LBB0_374:                              #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 467 19 is_stmt 1              # parallel-rne.mlir:467:19
	setlt.u r7, r23, r7
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	bneq r7, zero, .LBB0_376
.LBB0_375:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_376:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	setlt.u r1, r23, r6
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	bneq r1, zero, .LBB0_379
# %bb.377:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	beq r1, zero, .LBB0_380
.LBB0_378:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	bneq r1, zero, .LBB0_362
	j .LBB0_381
.LBB0_379:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	bneq r1, zero, .LBB0_378
.LBB0_380:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	bneq r1, zero, .LBB0_362
.LBB0_381:                              # %vector.body797
                                        #   in Loop: Header=BB0_363 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_362
.LBB0_382:                              # %scalar.ph795
                                        #   in Loop: Header=BB0_384 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_383:                              # %scalar.ph795
                                        #   in Loop: Header=BB0_384 Depth=3
	.loc	1 455 11 is_stmt 1              # parallel-rne.mlir:455:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 470 13                        # parallel-rne.mlir:470:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 455 11                        # parallel-rne.mlir:455:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_360
.LBB0_384:                              # %scalar.ph795
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_361 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	and r7, r6, r21
	.loc	1 460 19                        # parallel-rne.mlir:460:19
	setlt.u r2, r27, r7
	.loc	1 461 19                        # parallel-rne.mlir:461:19
	bneq r2, zero, .LBB0_386
# %bb.385:                              # %scalar.ph795
                                        #   in Loop: Header=BB0_384 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 467 19 is_stmt 1              # parallel-rne.mlir:467:19
	setlt.u r7, r23, r7
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	bneq r7, zero, .LBB0_383
	j .LBB0_382
.LBB0_386:                              #   in Loop: Header=BB0_384 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 467 19 is_stmt 1              # parallel-rne.mlir:467:19
	setlt.u r7, r23, r7
	.loc	1 468 20                        # parallel-rne.mlir:468:20
	bneq r7, zero, .LBB0_383
	j .LBB0_382
.LBB0_387:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 447 7                         # parallel-rne.mlir:447:7
	mfence { sm }
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	addli r1, zero, 3
	beq r11, r1, .LBB0_269
.LBB0_388:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_298
.LBB0_389:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_391
.LBB0_390:                              # %middle.block783
                                        #   in Loop: Header=BB0_391 Depth=2
	.loc	1 510 9 is_stmt 1               # parallel-rne.mlir:510:9
	load.d r[1:2], -232(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_417
.LBB0_391:                              # %.preheader167
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_393 Depth 3
                                        #       Child Loop BB0_414 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 511 11 is_stmt 1              # parallel-rne.mlir:511:11
	beq r26, r24, .LBB0_414
	j .LBB0_393
.LBB0_392:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 526 13                        # parallel-rne.mlir:526:13
	add.s r2, r26, r2
	.loc	1 511 11                        # parallel-rne.mlir:511:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 526 13                        # parallel-rne.mlir:526:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 511 11                        # parallel-rne.mlir:511:11
	bneq r1, zero, .LBB0_390
.LBB0_393:                              # %vector.body779
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_391 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	and r14, r13, r21
	.loc	1 516 19                        # parallel-rne.mlir:516:19
	setlt.u r1, r27, r14
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_395
# %bb.394:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_396
.LBB0_395:                              #   in Loop: Header=BB0_393 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_396:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_398
# %bb.397:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_399
.LBB0_398:                              #   in Loop: Header=BB0_393 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_399:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r1, zero, .LBB0_401
# %bb.400:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_402
.LBB0_401:                              #   in Loop: Header=BB0_393 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_402:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r15, zero, .LBB0_404
# %bb.403:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r7, r23, r7
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	beq r7, zero, .LBB0_405
	j .LBB0_406
.LBB0_404:                              #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r7, r23, r7
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	bneq r7, zero, .LBB0_406
.LBB0_405:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_406:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	setlt.u r1, r23, r6
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	bneq r1, zero, .LBB0_409
# %bb.407:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	beq r1, zero, .LBB0_410
.LBB0_408:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	bneq r1, zero, .LBB0_392
	j .LBB0_411
.LBB0_409:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	bneq r1, zero, .LBB0_408
.LBB0_410:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	bneq r1, zero, .LBB0_392
.LBB0_411:                              # %vector.body779
                                        #   in Loop: Header=BB0_393 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_392
.LBB0_412:                              # %scalar.ph777
                                        #   in Loop: Header=BB0_414 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_413:                              # %scalar.ph777
                                        #   in Loop: Header=BB0_414 Depth=3
	.loc	1 511 11 is_stmt 1              # parallel-rne.mlir:511:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 526 13                        # parallel-rne.mlir:526:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 511 11                        # parallel-rne.mlir:511:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_390
.LBB0_414:                              # %scalar.ph777
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_391 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 512 19                        # parallel-rne.mlir:512:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 514 19                        # parallel-rne.mlir:514:19
	and r7, r6, r21
	.loc	1 516 19                        # parallel-rne.mlir:516:19
	setlt.u r2, r27, r7
	.loc	1 517 19                        # parallel-rne.mlir:517:19
	bneq r2, zero, .LBB0_416
# %bb.415:                              # %scalar.ph777
                                        #   in Loop: Header=BB0_414 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r7, r23, r7
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	bneq r7, zero, .LBB0_413
	j .LBB0_412
.LBB0_416:                              #   in Loop: Header=BB0_414 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 523 19 is_stmt 1              # parallel-rne.mlir:523:19
	setlt.u r7, r23, r7
	.loc	1 524 20                        # parallel-rne.mlir:524:20
	bneq r7, zero, .LBB0_413
	j .LBB0_412
.LBB0_417:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 503 7                         # parallel-rne.mlir:503:7
	mfence { sm }
	.loc	1 531 7                         # parallel-rne.mlir:531:7
	beq r11, r10, .LBB0_299
.LBB0_418:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 559 7                         # parallel-rne.mlir:559:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_328
.LBB0_419:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 559 7                         # parallel-rne.mlir:559:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_421
.LBB0_420:                              # %middle.block765
                                        #   in Loop: Header=BB0_421 Depth=2
	.loc	1 566 9 is_stmt 1               # parallel-rne.mlir:566:9
	load.d r[1:2], -216(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_447
.LBB0_421:                              # %.preheader165
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_423 Depth 3
                                        #       Child Loop BB0_444 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 567 11 is_stmt 1              # parallel-rne.mlir:567:11
	beq r26, r24, .LBB0_444
	j .LBB0_423
.LBB0_422:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 582 13                        # parallel-rne.mlir:582:13
	add.s r2, r26, r2
	.loc	1 567 11                        # parallel-rne.mlir:567:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 582 13                        # parallel-rne.mlir:582:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 567 11                        # parallel-rne.mlir:567:11
	bneq r1, zero, .LBB0_420
.LBB0_423:                              # %vector.body761
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_421 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	and r14, r13, r21
	.loc	1 572 19                        # parallel-rne.mlir:572:19
	setlt.u r1, r27, r14
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	bneq r1, zero, .LBB0_425
# %bb.424:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_426
.LBB0_425:                              #   in Loop: Header=BB0_423 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_426:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	bneq r1, zero, .LBB0_428
# %bb.427:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_429
.LBB0_428:                              #   in Loop: Header=BB0_423 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_429:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	bneq r1, zero, .LBB0_431
# %bb.430:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_432
.LBB0_431:                              #   in Loop: Header=BB0_423 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_432:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	bneq r15, zero, .LBB0_434
# %bb.433:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 579 19 is_stmt 1              # parallel-rne.mlir:579:19
	setlt.u r7, r23, r7
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	beq r7, zero, .LBB0_435
	j .LBB0_436
.LBB0_434:                              #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 579 19 is_stmt 1              # parallel-rne.mlir:579:19
	setlt.u r7, r23, r7
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	bneq r7, zero, .LBB0_436
.LBB0_435:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_436:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	setlt.u r1, r23, r6
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	bneq r1, zero, .LBB0_439
# %bb.437:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	beq r1, zero, .LBB0_440
.LBB0_438:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	bneq r1, zero, .LBB0_422
	j .LBB0_441
.LBB0_439:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	bneq r1, zero, .LBB0_438
.LBB0_440:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	bneq r1, zero, .LBB0_422
.LBB0_441:                              # %vector.body761
                                        #   in Loop: Header=BB0_423 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_422
.LBB0_442:                              # %scalar.ph759
                                        #   in Loop: Header=BB0_444 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_443:                              # %scalar.ph759
                                        #   in Loop: Header=BB0_444 Depth=3
	.loc	1 567 11 is_stmt 1              # parallel-rne.mlir:567:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 582 13                        # parallel-rne.mlir:582:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 567 11                        # parallel-rne.mlir:567:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_420
.LBB0_444:                              # %scalar.ph759
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_421 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 568 19                        # parallel-rne.mlir:568:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 570 19                        # parallel-rne.mlir:570:19
	and r7, r6, r21
	.loc	1 572 19                        # parallel-rne.mlir:572:19
	setlt.u r2, r27, r7
	.loc	1 573 19                        # parallel-rne.mlir:573:19
	bneq r2, zero, .LBB0_446
# %bb.445:                              # %scalar.ph759
                                        #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 579 19 is_stmt 1              # parallel-rne.mlir:579:19
	setlt.u r7, r23, r7
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	bneq r7, zero, .LBB0_443
	j .LBB0_442
.LBB0_446:                              #   in Loop: Header=BB0_444 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 579 19 is_stmt 1              # parallel-rne.mlir:579:19
	setlt.u r7, r23, r7
	.loc	1 580 20                        # parallel-rne.mlir:580:20
	bneq r7, zero, .LBB0_443
	j .LBB0_442
.LBB0_447:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 559 7                         # parallel-rne.mlir:559:7
	mfence { sm }
	.loc	1 587 7                         # parallel-rne.mlir:587:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_477
.LBB0_448:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 587 7                         # parallel-rne.mlir:587:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r1
	j .LBB0_450
.LBB0_449:                              # %middle.block756
                                        #   in Loop: Header=BB0_450 Depth=2
	.loc	1 594 9 is_stmt 1               # parallel-rne.mlir:594:9
	load.d r[1:2], -192(r30)                # 8-byte Folded Reload
	load.d r[6:7], -200(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[6:7], r[1:2]
	addli.d r[6:7], r[6:7], 1
	beq r1, zero, .LBB0_476
.LBB0_450:                              # %.preheader164
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_452 Depth 3
                                        #       Child Loop BB0_473 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[6:7], r10
	zext_int2long r[10:11], zero
	store.d r[6:7], -200(r30)               # 8-byte Folded Spill
	.loc	1 595 11 is_stmt 1              # parallel-rne.mlir:595:11
	beq r26, r24, .LBB0_473
	j .LBB0_452
.LBB0_451:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	addli.d r[10:11], r[10:11], 4
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	add.s r2, r26, r2
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	seteq.d r1, r[10:11], r[4:5]
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	stores.w r12, 12(r2)
	stores.w r17, 8(r2)
	stores.w r19, 4(r2)
	stores.w r28, 0(r2)
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	bneq r1, zero, .LBB0_449
.LBB0_452:                              # %vector.body752
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_450 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r2, r1, 2
	add.s r28, r24, r2
	loads.w r13, 12(r28)
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	and r14, r13, r21
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	setlt.u r1, r27, r14
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	bneq r1, zero, .LBB0_454
# %bb.453:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r13, 0
	j .LBB0_455
.LBB0_454:                              #   in Loop: Header=BB0_452 Depth=3
	lui r1, 1024
	or r12, r13, r1
.LBB0_455:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	loads.w r20, 8(r28)
	and r18, r20, r21
	setlt.u r1, r27, r18
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	bneq r1, zero, .LBB0_457
# %bb.456:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
	j .LBB0_458
.LBB0_457:                              #   in Loop: Header=BB0_452 Depth=3
	lui r1, 1024
	or r17, r20, r1
.LBB0_458:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	loads.w r25, 4(r28)
	and r6, r25, r21
	setlt.u r1, r27, r6
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	bneq r1, zero, .LBB0_460
# %bb.459:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r25, 0
	j .LBB0_461
.LBB0_460:                              #   in Loop: Header=BB0_452 Depth=3
	lui r1, 1024
	or r19, r25, r1
.LBB0_461:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	loads.w r1, 0(r28)
	and r7, r1, r21
	setlt.u r15, r27, r7
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	bneq r15, zero, .LBB0_463
# %bb.462:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r1, 0
	.loc	1 607 19 is_stmt 1              # parallel-rne.mlir:607:19
	setlt.u r7, r23, r7
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	beq r7, zero, .LBB0_464
	j .LBB0_465
.LBB0_463:                              #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r15, 1024
	or r28, r1, r15
	.loc	1 607 19 is_stmt 1              # parallel-rne.mlir:607:19
	setlt.u r7, r23, r7
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	bneq r7, zero, .LBB0_465
.LBB0_464:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r7, r1, 16
	andi r7, r7, 1
	add.s r1, r1, r7
	lui r7, 1048560
	add.s r1, r1, r22
	and r28, r1, r7
.LBB0_465:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	setlt.u r1, r23, r6
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	bneq r1, zero, .LBB0_468
# %bb.466:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r25, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r25, r1
	add.s r1, r1, r22
	and r19, r1, r6
	setlt.u r1, r23, r18
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	beq r1, zero, .LBB0_469
.LBB0_467:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r14
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	bneq r1, zero, .LBB0_451
	j .LBB0_470
.LBB0_468:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r18
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	bneq r1, zero, .LBB0_467
.LBB0_469:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r17, r1, r6
	setlt.u r1, r23, r14
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	bneq r1, zero, .LBB0_451
.LBB0_470:                              # %vector.body752
                                        #   in Loop: Header=BB0_452 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r13, 16
	lui r6, 1048560
	andi r1, r1, 1
	add.s r1, r13, r1
	add.s r1, r1, r22
	and r12, r1, r6
	j .LBB0_451
.LBB0_471:                              # %scalar.ph750
                                        #   in Loop: Header=BB0_473 Depth=3
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_472:                              # %scalar.ph750
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 595 11 is_stmt 1              # parallel-rne.mlir:595:11
	load.d r[6:7], -192(r30)                # 8-byte Folded Reload
	.loc	1 610 13                        # parallel-rne.mlir:610:13
	add.s r1, r26, r1
	stores.w r2, 0(r1)
	.loc	1 595 11                        # parallel-rne.mlir:595:11
	setlt.ul r6, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r6, zero, .LBB0_449
.LBB0_473:                              # %scalar.ph750
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_450 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 596 19                        # parallel-rne.mlir:596:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r2, r24, r1
	loads.w r6, 0(r2)
	.loc	1 598 19                        # parallel-rne.mlir:598:19
	and r7, r6, r21
	.loc	1 600 19                        # parallel-rne.mlir:600:19
	setlt.u r2, r27, r7
	.loc	1 601 19                        # parallel-rne.mlir:601:19
	bneq r2, zero, .LBB0_475
# %bb.474:                              # %scalar.ph750
                                        #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 607 19 is_stmt 1              # parallel-rne.mlir:607:19
	setlt.u r7, r23, r7
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	bneq r7, zero, .LBB0_472
	j .LBB0_471
.LBB0_475:                              #   in Loop: Header=BB0_473 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 607 19 is_stmt 1              # parallel-rne.mlir:607:19
	setlt.u r7, r23, r7
	.loc	1 608 20                        # parallel-rne.mlir:608:20
	bneq r7, zero, .LBB0_472
	j .LBB0_471
.LBB0_476:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 587 7                         # parallel-rne.mlir:587:7
	mfence { sm }
.LBB0_477:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	addli r1, zero, 3
	.loc	1 615 7                         # parallel-rne.mlir:615:7
	sync_core
	.loc	1 616 7                         # parallel-rne.mlir:616:7
	bneq r11, r1, .LBB0_479
# %bb.478:                              # %.critedge11.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	addli r7, zero, 2
	xsignal r1, 0
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	addli r1, zero, 26
	xsignal r1, 0
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r1, zero, 27
	xsignal r1, 0
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r1, zero, 30
	xsignal r1, 0
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 622 13                        # parallel-rne.mlir:622:13
	loadli.w r1,  -72(r30)
	loadli.w r6,  -360(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r7
	addli r1, r1, 1
	storeli.w r1, -72(r30)
	slli r2, r2, 12
	add.s r2, r2, r6
	storeli.w r2, -200(r30)                 # 4-byte Folded Spill
	j .LBB0_481
.LBB0_479:                              # %.critedge11
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -72(r30)
	addli r7, zero, 2
	loadli.w r6,  -360(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r7
	addli r1, r1, 1
	storeli.w r1, -72(r30)
	slli r2, r2, 12
	add.s r2, r2, r6
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	storeli.w r2, -200(r30)                 # 4-byte Folded Spill
	bneq r11, r10, .LBB0_481
# %bb.480:                              # %.thread116
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	addli r12, zero, 1023
	addli r8, zero, 1
	lui r9, 260096
	xwait r1, 0
	addli r1, zero, 32
	xwait r1, 0
	lock zero, r7
	lui r1, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r12, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	hp_ssmul r2, r26, r26, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r1, 0
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r1,  -60(r30)
	mod.s r2, r1, r7
	addli r1, r1, 1
	storeli.w r1, -60(r30)
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r1, zero, 26
	xwait r1, 0
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	slli r1, r2, 12
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r2, zero, 34
	xwait r2, 0
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	lock zero, r7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r9, 0
	ew_cfg zero, r12, zero, 2
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	add.s r2, r1, r2
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, r8, 19
	dsmul r2, r26, r26, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	loadli.w r1,  -48(r30)
	mod.s r6, r1, r7
	addli r1, r1, 1
	storeli.w r1, -48(r30)
	slli r1, r6, 12
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	addli r6, zero, 27
	xwait r6, 0
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	loadli.w r6,  -368(r30)                 # 4-byte Folded Reload
	add.s r6, r1, r6
	.loc	1 629 7                         # parallel-rne.mlir:629:7
	addli r1, zero, 36
	xwait r1, 0
	lock zero, r7
	addli r1, zero, 25
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r9, 0
	ew_cfg zero, r12, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, r8, 19
	dsmul r6, r2, r26, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r1, 0
	addli r1, zero, 33
	xsignal r1, 0
	addli r1, zero, 35
	xsignal r1, 0
	j .LBB0_483
.LBB0_481:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r1,  -60(r30)
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	loadli.w r2,  -48(r30)
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	mod.s r6, r1, r7
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	mod.s r7, r2, r7
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	addli r1, r1, 1
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	addli r8, r2, 1
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r2,  -364(r30)                 # 4-byte Folded Reload
	storeli.w r1, -60(r30)
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	storeli.w r8, -48(r30)
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	slli r1, r6, 12
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	slli r6, r7, 12
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	add.s r2, r1, r2
	.loc	1 628 13                        # parallel-rne.mlir:628:13
	loadli.w r1,  -368(r30)                 # 4-byte Folded Reload
	add.s r6, r6, r1
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_483
# %bb.482:                              # %.critedge13
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	addli r1, zero, 25
	xwait r1, 0
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r1, zero, 33
	xwait r1, 0
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r1, zero, 35
	xwait r1, 0
.LBB0_483:                              # %.critedge15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	seteq r1, r24, r26
	.loc	1 636 7 is_stmt 1               # parallel-rne.mlir:636:7
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	addli r1, zero, 255
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	xfence
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	mfence { lm, sm, gm }
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	csr_set csr5, r1
	sub.s r1, r24, r2
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	sub.s r1, r24, r6
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	beq r11, zero, .LBB0_572
# %bb.484:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_600
.LBB0_485:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 4
	zext_int2long r[7:8], r1
	j .LBB0_487
.LBB0_486:                              # %middle.block732
                                        #   in Loop: Header=BB0_487 Depth=2
	.loc	1 681 9 is_stmt 1               # parallel-rne.mlir:681:9
	load.d r[7:8], -256(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_512
.LBB0_487:                              # %.preheader162
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_504 Depth 3
                                        #       Child Loop BB0_490 Depth 3
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_502
# %bb.488:                              # %scalar.ph724.preheader
                                        #   in Loop: Header=BB0_487 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_490
.LBB0_489:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 704 13 is_stmt 1              # parallel-rne.mlir:704:13
	add.s r9, r24, r9
	stores.w r10, 0(r9)
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	setlt.ul r1, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_486
.LBB0_490:                              # %scalar.ph724
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_487 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	add.s r1, r26, r9
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	add.s r10, r6, r9
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	loads.w r1, 0(r1)
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	and r1, r1, r21
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	beq r1, r27, .LBB0_492
# %bb.491:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_492:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	add.s r11, r2, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	beq r11, zero, .LBB0_500
# %bb.493:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r1, zero, .LBB0_501
.LBB0_494:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	beq r11, r27, .LBB0_496
.LBB0_495:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_496:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r12, zero, .LBB0_498
# %bb.497:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_498:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	setlt.u r11, r27, r11
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r11, zero, .LBB0_489
# %bb.499:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
	j .LBB0_489
.LBB0_500:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	lui r17, 523264
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	beq r1, zero, .LBB0_494
.LBB0_501:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_490 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r11, r27, .LBB0_495
	j .LBB0_496
.LBB0_502:                              # %vector.body726.preheader
                                        #   in Loop: Header=BB0_487 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_504
.LBB0_503:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	.loc	1 682 11 is_stmt 1              # parallel-rne.mlir:682:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 704 13                        # parallel-rne.mlir:704:13
	add.s r7, r24, r11
	lui r16, 268288
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 704 13                        # parallel-rne.mlir:704:13
	stores.w r17, 12(r7)
	stores.w r18, 8(r7)
	stores.w r10, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 682 11                        # parallel-rne.mlir:682:11
	bneq r1, zero, .LBB0_486
.LBB0_504:                              # %vector.body726
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_487 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r17, 523264
	slli r11, r7, 2
	add.s r7, r2, r11
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	add.s r8, r26, r11
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	loads.w r1, 0(r7)
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	loads.w r9, 0(r8)
	.loc	1 690 19                        # parallel-rne.mlir:690:19
	and r1, r1, r21
	.loc	1 688 19                        # parallel-rne.mlir:688:19
	and r9, r9, r21
	.loc	1 691 19                        # parallel-rne.mlir:691:19
	seteq r10, r1, r27
	.loc	1 695 20                        # parallel-rne.mlir:695:20
	seteq r16, r1, zero
	.loc	1 692 19                        # parallel-rne.mlir:692:19
	seteq r12, r9, zero
	.loc	1 694 19                        # parallel-rne.mlir:694:19
	seteq r15, r9, r27
	.loc	1 700 20                        # parallel-rne.mlir:700:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 693 19                        # parallel-rne.mlir:693:19
	and r9, r10, r12
	.loc	1 696 20                        # parallel-rne.mlir:696:20
	and r10, r16, r15
	lui r12, 523264
	.loc	1 697 20                        # parallel-rne.mlir:697:20
	or r10, r9, r10
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	add.s r9, r6, r11
	.loc	1 701 20                        # parallel-rne.mlir:701:20
	or r1, r1, r10
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r1, zero, .LBB0_506
# %bb.505:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r9)
.LBB0_506:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	loads.w r1, 4(r7)
	loads.w r10, 4(r8)
	and r1, r1, r21
	and r10, r10, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r10, zero
	seteq r18, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r15, r16
	and r15, r25, r18
	or r10, r10, r15
	or r1, r1, r10
	lui r10, 523264
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r1, zero, .LBB0_508
# %bb.507:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 4(r9)
.LBB0_508:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r1, zero, .LBB0_510
# %bb.509:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r9)
.LBB0_510:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r8)
	and r1, r1, r21
	and r7, r7, r21
	seteq r8, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r8, r15
	and r8, r25, r16
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 702 20                        # parallel-rne.mlir:702:20
	bneq r1, zero, .LBB0_503
# %bb.511:                              # %vector.body726
                                        #   in Loop: Header=BB0_504 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r9)
	j .LBB0_503
.LBB0_512:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	mfence { sm }
	.loc	1 709 7                         # parallel-rne.mlir:709:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_601
.LBB0_513:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_629
.LBB0_514:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 12
	zext_int2long r[7:8], r1
	j .LBB0_516
.LBB0_515:                              # %middle.block702
                                        #   in Loop: Header=BB0_516 Depth=2
	.loc	1 751 9 is_stmt 1               # parallel-rne.mlir:751:9
	load.d r[7:8], -240(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_541
.LBB0_516:                              # %.preheader160
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_533 Depth 3
                                        #       Child Loop BB0_519 Depth 3
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_531
# %bb.517:                              # %scalar.ph694.preheader
                                        #   in Loop: Header=BB0_516 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_519
.LBB0_518:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 774 13 is_stmt 1              # parallel-rne.mlir:774:13
	add.s r9, r24, r9
	stores.w r10, 0(r9)
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	setlt.ul r1, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_515
.LBB0_519:                              # %scalar.ph694
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	add.s r1, r26, r9
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	add.s r10, r6, r9
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	loads.w r1, 0(r1)
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	and r1, r1, r21
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	beq r1, r27, .LBB0_521
# %bb.520:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_521:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	add.s r11, r2, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	beq r11, zero, .LBB0_529
# %bb.522:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r1, zero, .LBB0_530
.LBB0_523:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	beq r11, r27, .LBB0_525
.LBB0_524:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_525:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r12, zero, .LBB0_527
# %bb.526:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_527:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	setlt.u r11, r27, r11
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r11, zero, .LBB0_518
# %bb.528:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
	j .LBB0_518
.LBB0_529:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	lui r17, 523264
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	beq r1, zero, .LBB0_523
.LBB0_530:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r11, r27, .LBB0_524
	j .LBB0_525
.LBB0_531:                              # %vector.body696.preheader
                                        #   in Loop: Header=BB0_516 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_533
.LBB0_532:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 752 11 is_stmt 1              # parallel-rne.mlir:752:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 774 13                        # parallel-rne.mlir:774:13
	add.s r7, r24, r11
	lui r16, 268288
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 774 13                        # parallel-rne.mlir:774:13
	stores.w r17, 12(r7)
	stores.w r18, 8(r7)
	stores.w r10, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 752 11                        # parallel-rne.mlir:752:11
	bneq r1, zero, .LBB0_515
.LBB0_533:                              # %vector.body696
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r17, 523264
	slli r11, r7, 2
	add.s r7, r2, r11
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	add.s r8, r26, r11
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	loads.w r1, 0(r7)
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	loads.w r9, 0(r8)
	.loc	1 760 19                        # parallel-rne.mlir:760:19
	and r1, r1, r21
	.loc	1 758 19                        # parallel-rne.mlir:758:19
	and r9, r9, r21
	.loc	1 761 19                        # parallel-rne.mlir:761:19
	seteq r10, r1, r27
	.loc	1 765 20                        # parallel-rne.mlir:765:20
	seteq r16, r1, zero
	.loc	1 762 19                        # parallel-rne.mlir:762:19
	seteq r12, r9, zero
	.loc	1 764 19                        # parallel-rne.mlir:764:19
	seteq r15, r9, r27
	.loc	1 770 20                        # parallel-rne.mlir:770:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 763 19                        # parallel-rne.mlir:763:19
	and r9, r10, r12
	.loc	1 766 20                        # parallel-rne.mlir:766:20
	and r10, r16, r15
	lui r12, 523264
	.loc	1 767 20                        # parallel-rne.mlir:767:20
	or r10, r9, r10
	.loc	1 755 19                        # parallel-rne.mlir:755:19
	add.s r9, r6, r11
	.loc	1 771 20                        # parallel-rne.mlir:771:20
	or r1, r1, r10
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r1, zero, .LBB0_535
# %bb.534:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r9)
.LBB0_535:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	loads.w r1, 4(r7)
	loads.w r10, 4(r8)
	and r1, r1, r21
	and r10, r10, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r10, zero
	seteq r18, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r15, r16
	and r15, r25, r18
	or r10, r10, r15
	or r1, r1, r10
	lui r10, 523264
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r1, zero, .LBB0_537
# %bb.536:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 4(r9)
.LBB0_537:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r1, zero, .LBB0_539
# %bb.538:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r9)
.LBB0_539:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r8)
	and r1, r1, r21
	and r7, r7, r21
	seteq r8, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r8, r15
	and r8, r25, r16
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 772 20                        # parallel-rne.mlir:772:20
	bneq r1, zero, .LBB0_532
# %bb.540:                              # %vector.body696
                                        #   in Loop: Header=BB0_533 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r9)
	j .LBB0_532
.LBB0_541:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	mfence { sm }
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_630
.LBB0_542:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	bneq r11, r10, .LBB0_658
.LBB0_543:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	zext_int2long r[7:8], r1
	j .LBB0_545
.LBB0_544:                              # %middle.block672
                                        #   in Loop: Header=BB0_545 Depth=2
	.loc	1 821 9 is_stmt 1               # parallel-rne.mlir:821:9
	load.d r[7:8], -224(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_570
.LBB0_545:                              # %.preheader158
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_562 Depth 3
                                        #       Child Loop BB0_548 Depth 3
	.loc	1 822 11                        # parallel-rne.mlir:822:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_560
# %bb.546:                              # %scalar.ph664.preheader
                                        #   in Loop: Header=BB0_545 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_548
.LBB0_547:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 822 11                        # parallel-rne.mlir:822:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 844 13 is_stmt 1              # parallel-rne.mlir:844:13
	add.s r9, r24, r9
	stores.w r10, 0(r9)
	.loc	1 822 11                        # parallel-rne.mlir:822:11
	setlt.ul r1, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_544
.LBB0_548:                              # %scalar.ph664
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_545 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	add.s r1, r26, r9
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	add.s r10, r6, r9
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	loads.w r1, 0(r1)
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	and r1, r1, r21
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	beq r1, r27, .LBB0_550
# %bb.549:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_550:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	add.s r11, r2, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	beq r11, zero, .LBB0_558
# %bb.551:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r1, zero, .LBB0_559
.LBB0_552:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	beq r11, r27, .LBB0_554
.LBB0_553:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_554:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r12, zero, .LBB0_556
# %bb.555:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_556:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	setlt.u r11, r27, r11
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r11, zero, .LBB0_547
# %bb.557:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
	j .LBB0_547
.LBB0_558:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	lui r17, 523264
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	beq r1, zero, .LBB0_552
.LBB0_559:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_548 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r11, r27, .LBB0_553
	j .LBB0_554
.LBB0_560:                              # %vector.body666.preheader
                                        #   in Loop: Header=BB0_545 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_562
.LBB0_561:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 822 11 is_stmt 1              # parallel-rne.mlir:822:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 844 13                        # parallel-rne.mlir:844:13
	add.s r7, r24, r11
	lui r16, 268288
	.loc	1 822 11                        # parallel-rne.mlir:822:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 844 13                        # parallel-rne.mlir:844:13
	stores.w r17, 12(r7)
	stores.w r18, 8(r7)
	stores.w r10, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 822 11                        # parallel-rne.mlir:822:11
	bneq r1, zero, .LBB0_544
.LBB0_562:                              # %vector.body666
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_545 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r17, 523264
	slli r11, r7, 2
	add.s r7, r2, r11
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	add.s r8, r26, r11
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	loads.w r1, 0(r7)
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	loads.w r9, 0(r8)
	.loc	1 830 19                        # parallel-rne.mlir:830:19
	and r1, r1, r21
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	and r9, r9, r21
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	seteq r10, r1, r27
	.loc	1 835 20                        # parallel-rne.mlir:835:20
	seteq r16, r1, zero
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	seteq r12, r9, zero
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	seteq r15, r9, r27
	.loc	1 840 20                        # parallel-rne.mlir:840:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	and r9, r10, r12
	.loc	1 836 20                        # parallel-rne.mlir:836:20
	and r10, r16, r15
	lui r12, 523264
	.loc	1 837 20                        # parallel-rne.mlir:837:20
	or r10, r9, r10
	.loc	1 825 19                        # parallel-rne.mlir:825:19
	add.s r9, r6, r11
	.loc	1 841 20                        # parallel-rne.mlir:841:20
	or r1, r1, r10
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r1, zero, .LBB0_564
# %bb.563:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r9)
.LBB0_564:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	loads.w r1, 4(r7)
	loads.w r10, 4(r8)
	and r1, r1, r21
	and r10, r10, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r10, zero
	seteq r18, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r15, r16
	and r15, r25, r18
	or r10, r10, r15
	or r1, r1, r10
	lui r10, 523264
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r1, zero, .LBB0_566
# %bb.565:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 4(r9)
.LBB0_566:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r1, zero, .LBB0_568
# %bb.567:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r9)
.LBB0_568:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r8)
	and r1, r1, r21
	and r7, r7, r21
	seteq r8, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r8, r15
	and r8, r25, r16
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 842 20                        # parallel-rne.mlir:842:20
	bneq r1, zero, .LBB0_561
# %bb.569:                              # %vector.body666
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r9)
	j .LBB0_561
.LBB0_570:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	mfence { sm }
	.loc	1 849 7                         # parallel-rne.mlir:849:7
	addli r1, zero, 6
	beq r11, r1, .LBB0_659
.LBB0_571:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 884 7                         # parallel-rne.mlir:884:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_687
	j .LBB0_715
.LBB0_572:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 639 7 is_stmt 1               # parallel-rne.mlir:639:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	zext_int2long r[7:8], zero
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	j .LBB0_574
.LBB0_573:                              # %middle.block747
                                        #   in Loop: Header=BB0_574 Depth=2
	.loc	1 646 9                         # parallel-rne.mlir:646:9
	load.d r[7:8], -264(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_599
.LBB0_574:                              # %.preheader163
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_591 Depth 3
                                        #       Child Loop BB0_577 Depth 3
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_589
# %bb.575:                              # %scalar.ph739.preheader
                                        #   in Loop: Header=BB0_574 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_577
.LBB0_576:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 669 13 is_stmt 1              # parallel-rne.mlir:669:13
	add.s r9, r24, r9
	stores.w r10, 0(r9)
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	setlt.ul r1, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_573
.LBB0_577:                              # %scalar.ph739
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_574 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	add.s r1, r26, r9
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	add.s r10, r6, r9
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	loads.w r1, 0(r1)
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	and r1, r1, r21
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	beq r1, r27, .LBB0_579
# %bb.578:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_579:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	add.s r11, r2, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	beq r11, zero, .LBB0_587
# %bb.580:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r1, zero, .LBB0_588
.LBB0_581:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	beq r11, r27, .LBB0_583
.LBB0_582:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_583:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r12, zero, .LBB0_585
# %bb.584:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_585:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	setlt.u r11, r27, r11
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r11, zero, .LBB0_576
# %bb.586:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
	j .LBB0_576
.LBB0_587:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	lui r17, 523264
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	beq r1, zero, .LBB0_581
.LBB0_588:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_577 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r11, r27, .LBB0_582
	j .LBB0_583
.LBB0_589:                              # %vector.body741.preheader
                                        #   in Loop: Header=BB0_574 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_591
.LBB0_590:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	.loc	1 647 11 is_stmt 1              # parallel-rne.mlir:647:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 669 13                        # parallel-rne.mlir:669:13
	add.s r7, r24, r11
	lui r16, 268288
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 669 13                        # parallel-rne.mlir:669:13
	stores.w r17, 12(r7)
	stores.w r18, 8(r7)
	stores.w r10, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 647 11                        # parallel-rne.mlir:647:11
	bneq r1, zero, .LBB0_573
.LBB0_591:                              # %vector.body741
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_574 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r17, 523264
	slli r11, r7, 2
	add.s r7, r2, r11
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	add.s r8, r26, r11
	.loc	1 648 19                        # parallel-rne.mlir:648:19
	loads.w r1, 0(r7)
	.loc	1 649 19                        # parallel-rne.mlir:649:19
	loads.w r9, 0(r8)
	.loc	1 655 19                        # parallel-rne.mlir:655:19
	and r1, r1, r21
	.loc	1 653 19                        # parallel-rne.mlir:653:19
	and r9, r9, r21
	.loc	1 656 19                        # parallel-rne.mlir:656:19
	seteq r10, r1, r27
	.loc	1 660 20                        # parallel-rne.mlir:660:20
	seteq r16, r1, zero
	.loc	1 657 19                        # parallel-rne.mlir:657:19
	seteq r12, r9, zero
	.loc	1 659 19                        # parallel-rne.mlir:659:19
	seteq r15, r9, r27
	.loc	1 665 20                        # parallel-rne.mlir:665:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 658 19                        # parallel-rne.mlir:658:19
	and r9, r10, r12
	.loc	1 661 20                        # parallel-rne.mlir:661:20
	and r10, r16, r15
	lui r12, 523264
	.loc	1 662 20                        # parallel-rne.mlir:662:20
	or r10, r9, r10
	.loc	1 650 19                        # parallel-rne.mlir:650:19
	add.s r9, r6, r11
	.loc	1 666 20                        # parallel-rne.mlir:666:20
	or r1, r1, r10
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r1, zero, .LBB0_593
# %bb.592:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r9)
.LBB0_593:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	loads.w r1, 4(r7)
	loads.w r10, 4(r8)
	and r1, r1, r21
	and r10, r10, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r10, zero
	seteq r18, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r15, r16
	and r15, r25, r18
	or r10, r10, r15
	or r1, r1, r10
	lui r10, 523264
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r1, zero, .LBB0_595
# %bb.594:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 4(r9)
.LBB0_595:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r1, zero, .LBB0_597
# %bb.596:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r9)
.LBB0_597:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r8)
	and r1, r1, r21
	and r7, r7, r21
	seteq r8, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r8, r15
	and r8, r25, r16
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 667 20                        # parallel-rne.mlir:667:20
	bneq r1, zero, .LBB0_590
# %bb.598:                              # %vector.body741
                                        #   in Loop: Header=BB0_591 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r9)
	j .LBB0_590
.LBB0_599:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	mfence { sm }
	.loc	1 674 7                         # parallel-rne.mlir:674:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_485
.LBB0_600:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 709 7                         # parallel-rne.mlir:709:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_513
.LBB0_601:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 709 7                         # parallel-rne.mlir:709:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	zext_int2long r[7:8], r1
	j .LBB0_603
.LBB0_602:                              # %middle.block717
                                        #   in Loop: Header=BB0_603 Depth=2
	.loc	1 716 9 is_stmt 1               # parallel-rne.mlir:716:9
	load.d r[7:8], -248(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_628
.LBB0_603:                              # %.preheader161
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_620 Depth 3
                                        #       Child Loop BB0_606 Depth 3
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_618
# %bb.604:                              # %scalar.ph709.preheader
                                        #   in Loop: Header=BB0_603 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_606
.LBB0_605:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 739 13 is_stmt 1              # parallel-rne.mlir:739:13
	add.s r9, r24, r9
	stores.w r10, 0(r9)
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	setlt.ul r1, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_602
.LBB0_606:                              # %scalar.ph709
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_603 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	add.s r1, r26, r9
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	add.s r10, r6, r9
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	loads.w r1, 0(r1)
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	and r1, r1, r21
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	beq r1, r27, .LBB0_608
# %bb.607:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_608:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	add.s r11, r2, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	beq r11, zero, .LBB0_616
# %bb.609:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r1, zero, .LBB0_617
.LBB0_610:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	beq r11, r27, .LBB0_612
.LBB0_611:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_612:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r12, zero, .LBB0_614
# %bb.613:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_614:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	setlt.u r11, r27, r11
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r11, zero, .LBB0_605
# %bb.615:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
	j .LBB0_605
.LBB0_616:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	lui r17, 523264
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	beq r1, zero, .LBB0_610
.LBB0_617:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_606 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r11, r27, .LBB0_611
	j .LBB0_612
.LBB0_618:                              # %vector.body711.preheader
                                        #   in Loop: Header=BB0_603 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_620
.LBB0_619:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 717 11 is_stmt 1              # parallel-rne.mlir:717:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 739 13                        # parallel-rne.mlir:739:13
	add.s r7, r24, r11
	lui r16, 268288
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 739 13                        # parallel-rne.mlir:739:13
	stores.w r17, 12(r7)
	stores.w r18, 8(r7)
	stores.w r10, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 717 11                        # parallel-rne.mlir:717:11
	bneq r1, zero, .LBB0_602
.LBB0_620:                              # %vector.body711
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_603 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r17, 523264
	slli r11, r7, 2
	add.s r7, r2, r11
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	add.s r8, r26, r11
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	loads.w r1, 0(r7)
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	loads.w r9, 0(r8)
	.loc	1 725 19                        # parallel-rne.mlir:725:19
	and r1, r1, r21
	.loc	1 723 19                        # parallel-rne.mlir:723:19
	and r9, r9, r21
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	seteq r10, r1, r27
	.loc	1 730 20                        # parallel-rne.mlir:730:20
	seteq r16, r1, zero
	.loc	1 727 19                        # parallel-rne.mlir:727:19
	seteq r12, r9, zero
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	seteq r15, r9, r27
	.loc	1 735 20                        # parallel-rne.mlir:735:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	and r9, r10, r12
	.loc	1 731 20                        # parallel-rne.mlir:731:20
	and r10, r16, r15
	lui r12, 523264
	.loc	1 732 20                        # parallel-rne.mlir:732:20
	or r10, r9, r10
	.loc	1 720 19                        # parallel-rne.mlir:720:19
	add.s r9, r6, r11
	.loc	1 736 20                        # parallel-rne.mlir:736:20
	or r1, r1, r10
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r1, zero, .LBB0_622
# %bb.621:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r9)
.LBB0_622:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	loads.w r1, 4(r7)
	loads.w r10, 4(r8)
	and r1, r1, r21
	and r10, r10, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r10, zero
	seteq r18, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r15, r16
	and r15, r25, r18
	or r10, r10, r15
	or r1, r1, r10
	lui r10, 523264
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r1, zero, .LBB0_624
# %bb.623:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 4(r9)
.LBB0_624:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r1, zero, .LBB0_626
# %bb.625:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r9)
.LBB0_626:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r8)
	and r1, r1, r21
	and r7, r7, r21
	seteq r8, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r8, r15
	and r8, r25, r16
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 737 20                        # parallel-rne.mlir:737:20
	bneq r1, zero, .LBB0_619
# %bb.627:                              # %vector.body711
                                        #   in Loop: Header=BB0_620 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r9)
	j .LBB0_619
.LBB0_628:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 709 7                         # parallel-rne.mlir:709:7
	mfence { sm }
	.loc	1 744 7                         # parallel-rne.mlir:744:7
	addli r1, zero, 3
	beq r11, r1, .LBB0_514
.LBB0_629:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_542
.LBB0_630:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	xfence
	mfence { lm, sm, gm }
	loadli.w r8,  -300(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	or r1, r1, r8
	zext_int2long r[7:8], r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	j .LBB0_632
.LBB0_631:                              # %middle.block687
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 786 9 is_stmt 1               # parallel-rne.mlir:786:9
	load.d r[7:8], -232(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_657
.LBB0_632:                              # %.preheader159
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_649 Depth 3
                                        #       Child Loop BB0_635 Depth 3
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_647
# %bb.633:                              # %scalar.ph679.preheader
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_635
.LBB0_634:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 809 13 is_stmt 1              # parallel-rne.mlir:809:13
	add.s r9, r24, r9
	stores.w r10, 0(r9)
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	setlt.ul r1, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_631
.LBB0_635:                              # %scalar.ph679
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	add.s r1, r26, r9
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	add.s r10, r6, r9
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	loads.w r1, 0(r1)
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	and r1, r1, r21
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	beq r1, r27, .LBB0_637
# %bb.636:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_637:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	add.s r11, r2, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	beq r11, zero, .LBB0_645
# %bb.638:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r1, zero, .LBB0_646
.LBB0_639:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	beq r11, r27, .LBB0_641
.LBB0_640:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_641:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r12, zero, .LBB0_643
# %bb.642:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_643:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	setlt.u r11, r27, r11
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r11, zero, .LBB0_634
# %bb.644:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
	j .LBB0_634
.LBB0_645:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	lui r17, 523264
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	beq r1, zero, .LBB0_639
.LBB0_646:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r11, r27, .LBB0_640
	j .LBB0_641
.LBB0_647:                              # %vector.body681.preheader
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_649
.LBB0_648:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 787 11 is_stmt 1              # parallel-rne.mlir:787:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 809 13                        # parallel-rne.mlir:809:13
	add.s r7, r24, r11
	lui r16, 268288
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 809 13                        # parallel-rne.mlir:809:13
	stores.w r17, 12(r7)
	stores.w r18, 8(r7)
	stores.w r10, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 787 11                        # parallel-rne.mlir:787:11
	bneq r1, zero, .LBB0_631
.LBB0_649:                              # %vector.body681
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r17, 523264
	slli r11, r7, 2
	add.s r7, r2, r11
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	add.s r8, r26, r11
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	loads.w r1, 0(r7)
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	loads.w r9, 0(r8)
	.loc	1 795 19                        # parallel-rne.mlir:795:19
	and r1, r1, r21
	.loc	1 793 19                        # parallel-rne.mlir:793:19
	and r9, r9, r21
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	seteq r10, r1, r27
	.loc	1 800 20                        # parallel-rne.mlir:800:20
	seteq r16, r1, zero
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	seteq r12, r9, zero
	.loc	1 799 19                        # parallel-rne.mlir:799:19
	seteq r15, r9, r27
	.loc	1 805 20                        # parallel-rne.mlir:805:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 798 19                        # parallel-rne.mlir:798:19
	and r9, r10, r12
	.loc	1 801 20                        # parallel-rne.mlir:801:20
	and r10, r16, r15
	lui r12, 523264
	.loc	1 802 20                        # parallel-rne.mlir:802:20
	or r10, r9, r10
	.loc	1 790 19                        # parallel-rne.mlir:790:19
	add.s r9, r6, r11
	.loc	1 806 20                        # parallel-rne.mlir:806:20
	or r1, r1, r10
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r1, zero, .LBB0_651
# %bb.650:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r9)
.LBB0_651:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	loads.w r1, 4(r7)
	loads.w r10, 4(r8)
	and r1, r1, r21
	and r10, r10, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r10, zero
	seteq r18, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r15, r16
	and r15, r25, r18
	or r10, r10, r15
	or r1, r1, r10
	lui r10, 523264
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r1, zero, .LBB0_653
# %bb.652:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 4(r9)
.LBB0_653:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r1, zero, .LBB0_655
# %bb.654:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r9)
.LBB0_655:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r8)
	and r1, r1, r21
	and r7, r7, r21
	seteq r8, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r8, r15
	and r8, r25, r16
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 807 20                        # parallel-rne.mlir:807:20
	bneq r1, zero, .LBB0_648
# %bb.656:                              # %vector.body681
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r9)
	j .LBB0_648
.LBB0_657:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 779 7                         # parallel-rne.mlir:779:7
	mfence { sm }
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	beq r11, r10, .LBB0_543
.LBB0_658:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 849 7                         # parallel-rne.mlir:849:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_571
.LBB0_659:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 849 7                         # parallel-rne.mlir:849:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	zext_int2long r[7:8], r1
	j .LBB0_661
.LBB0_660:                              # %middle.block657
                                        #   in Loop: Header=BB0_661 Depth=2
	.loc	1 856 9 is_stmt 1               # parallel-rne.mlir:856:9
	load.d r[7:8], -216(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_686
.LBB0_661:                              # %.preheader157
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_678 Depth 3
                                        #       Child Loop BB0_664 Depth 3
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_676
# %bb.662:                              # %scalar.ph649.preheader
                                        #   in Loop: Header=BB0_661 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_664
.LBB0_663:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	load.d r[11:12], -192(r30)              # 8-byte Folded Reload
	.loc	1 879 13 is_stmt 1              # parallel-rne.mlir:879:13
	add.s r9, r24, r9
	stores.w r10, 0(r9)
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	setlt.ul r1, r[7:8], r[11:12]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_660
.LBB0_664:                              # %scalar.ph649
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_661 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	add.s r1, r26, r9
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	add.s r10, r6, r9
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	loads.w r1, 0(r1)
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	and r1, r1, r21
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	beq r1, r27, .LBB0_666
# %bb.665:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_666:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	add.s r11, r2, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	beq r11, zero, .LBB0_674
# %bb.667:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r1, zero, .LBB0_675
.LBB0_668:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	beq r11, r27, .LBB0_670
.LBB0_669:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_670:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r12, zero, .LBB0_672
# %bb.671:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_672:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	setlt.u r11, r27, r11
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r11, zero, .LBB0_663
# %bb.673:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
	j .LBB0_663
.LBB0_674:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	lui r17, 523264
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	beq r1, zero, .LBB0_668
.LBB0_675:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r11, r27, .LBB0_669
	j .LBB0_670
.LBB0_676:                              # %vector.body651.preheader
                                        #   in Loop: Header=BB0_661 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_678
.LBB0_677:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 857 11 is_stmt 1              # parallel-rne.mlir:857:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 879 13                        # parallel-rne.mlir:879:13
	add.s r7, r24, r11
	lui r16, 268288
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 879 13                        # parallel-rne.mlir:879:13
	stores.w r17, 12(r7)
	stores.w r18, 8(r7)
	stores.w r10, 4(r7)
	stores.w r12, 0(r7)
	.loc	1 857 11                        # parallel-rne.mlir:857:11
	bneq r1, zero, .LBB0_660
.LBB0_678:                              # %vector.body651
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_661 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r17, 523264
	slli r11, r7, 2
	add.s r7, r2, r11
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	add.s r8, r26, r11
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	loads.w r1, 0(r7)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	loads.w r9, 0(r8)
	.loc	1 865 19                        # parallel-rne.mlir:865:19
	and r1, r1, r21
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	and r9, r9, r21
	.loc	1 866 19                        # parallel-rne.mlir:866:19
	seteq r10, r1, r27
	.loc	1 870 20                        # parallel-rne.mlir:870:20
	seteq r16, r1, zero
	.loc	1 867 19                        # parallel-rne.mlir:867:19
	seteq r12, r9, zero
	.loc	1 869 19                        # parallel-rne.mlir:869:19
	seteq r15, r9, r27
	.loc	1 875 20                        # parallel-rne.mlir:875:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 868 19                        # parallel-rne.mlir:868:19
	and r9, r10, r12
	.loc	1 871 20                        # parallel-rne.mlir:871:20
	and r10, r16, r15
	lui r12, 523264
	.loc	1 872 20                        # parallel-rne.mlir:872:20
	or r10, r9, r10
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	add.s r9, r6, r11
	.loc	1 876 20                        # parallel-rne.mlir:876:20
	or r1, r1, r10
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r1, zero, .LBB0_680
# %bb.679:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r12, 0(r9)
.LBB0_680:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 4(r7)
	loads.w r10, 4(r8)
	and r1, r1, r21
	and r10, r10, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r10, zero
	seteq r18, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r15, r16
	and r15, r25, r18
	or r10, r10, r15
	or r1, r1, r10
	lui r10, 523264
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r1, zero, .LBB0_682
# %bb.681:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r10, 4(r9)
.LBB0_682:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r1, zero, .LBB0_684
# %bb.683:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r9)
.LBB0_684:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r8)
	and r1, r1, r21
	and r7, r7, r21
	seteq r8, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r8, r15
	and r8, r25, r16
	or r7, r7, r8
	or r1, r1, r7
	.loc	1 877 20                        # parallel-rne.mlir:877:20
	bneq r1, zero, .LBB0_677
# %bb.685:                              # %vector.body651
                                        #   in Loop: Header=BB0_678 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 12(r9)
	j .LBB0_677
.LBB0_686:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 849 7                         # parallel-rne.mlir:849:7
	mfence { sm }
	.loc	1 884 7                         # parallel-rne.mlir:884:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_715
.LBB0_687:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 884 7                         # parallel-rne.mlir:884:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 28
	zext_int2long r[7:8], r1
	j .LBB0_689
.LBB0_688:                              # %middle.block642
                                        #   in Loop: Header=BB0_689 Depth=2
	.loc	1 891 9 is_stmt 1               # parallel-rne.mlir:891:9
	load.d r[7:8], -192(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_714
.LBB0_689:                              # %.preheader156
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_706 Depth 3
                                        #       Child Loop BB0_692 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[7:8], r1
	.loc	1 892 11 is_stmt 1              # parallel-rne.mlir:892:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_704
# %bb.690:                              # %scalar.ph634.preheader
                                        #   in Loop: Header=BB0_689 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_692
.LBB0_691:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 914 13 is_stmt 1              # parallel-rne.mlir:914:13
	add.s r9, r24, r9
	stores.w r12, 0(r9)
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	setlt.ul r1, r[7:8], r[13:14]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_688
.LBB0_692:                              # %scalar.ph634
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_689 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	add.ul r[12:13], r[7:8], r[10:11]
	lui r14, 523264
	slli r9, r12, 2
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	add.s r1, r26, r9
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	add.s r12, r6, r9
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	loads.w r1, 0(r1)
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	loads.w r17, 0(r12)
	lui r12, 523264
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	and r1, r1, r21
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	beq r1, r27, .LBB0_694
# %bb.693:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r17, 0
.LBB0_694:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	add.s r13, r2, r9
	loads.w r13, 0(r13)
	and r13, r13, r21
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	beq r13, zero, .LBB0_702
# %bb.695:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	lui r17, 523264
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r1, zero, .LBB0_703
.LBB0_696:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	beq r13, r27, .LBB0_698
.LBB0_697:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r14, 0
.LBB0_698:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	setlt.u r14, r27, r1
	lui r1, 523264
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r14, zero, .LBB0_700
# %bb.699:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_700:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	setlt.u r13, r27, r13
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r13, zero, .LBB0_691
# %bb.701:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r1, 0
	j .LBB0_691
.LBB0_702:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	lui r17, 523264
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	beq r1, zero, .LBB0_696
.LBB0_703:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_692 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r14, 0
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r13, r27, .LBB0_697
	j .LBB0_698
.LBB0_704:                              # %vector.body636.preheader
                                        #   in Loop: Header=BB0_689 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[13:14], zero
	j .LBB0_706
.LBB0_705:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 892 11 is_stmt 1              # parallel-rne.mlir:892:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	add.s r7, r24, r12
	lui r16, 268288
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	seteq.d r1, r[13:14], r[4:5]
	.loc	1 914 13                        # parallel-rne.mlir:914:13
	stores.w r19, 12(r7)
	stores.w r18, 8(r7)
	stores.w r9, 4(r7)
	stores.w r17, 0(r7)
	.loc	1 892 11                        # parallel-rne.mlir:892:11
	bneq r1, zero, .LBB0_688
.LBB0_706:                              # %vector.body636
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_689 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	add.ul r[7:8], r[13:14], r[10:11]
	lui r19, 523264
	slli r12, r7, 2
	add.s r20, r2, r12
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	add.s r7, r26, r12
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	loads.w r1, 0(r20)
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	loads.w r8, 0(r7)
	.loc	1 900 19                        # parallel-rne.mlir:900:19
	and r1, r1, r21
	.loc	1 898 19                        # parallel-rne.mlir:898:19
	and r8, r8, r21
	.loc	1 901 19                        # parallel-rne.mlir:901:19
	seteq r9, r1, r27
	.loc	1 905 20                        # parallel-rne.mlir:905:20
	seteq r17, r1, zero
	.loc	1 902 19                        # parallel-rne.mlir:902:19
	seteq r15, r8, zero
	.loc	1 904 19                        # parallel-rne.mlir:904:19
	seteq r16, r8, r27
	.loc	1 910 20                        # parallel-rne.mlir:910:20
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	.loc	1 903 19                        # parallel-rne.mlir:903:19
	and r8, r9, r15
	.loc	1 906 20                        # parallel-rne.mlir:906:20
	and r9, r17, r16
	lui r17, 523264
	.loc	1 907 20                        # parallel-rne.mlir:907:20
	or r9, r8, r9
	.loc	1 895 19                        # parallel-rne.mlir:895:19
	add.s r8, r6, r12
	.loc	1 911 20                        # parallel-rne.mlir:911:20
	or r1, r1, r9
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r1, zero, .LBB0_708
# %bb.707:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r17, 0(r8)
.LBB0_708:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	loads.w r1, 4(r20)
	loads.w r9, 4(r7)
	and r1, r1, r21
	and r9, r9, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r9, zero
	seteq r18, r9, r27
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	and r9, r15, r16
	and r15, r25, r18
	or r9, r9, r15
	or r1, r1, r9
	lui r9, 523264
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r1, zero, .LBB0_710
# %bb.709:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r9, 4(r8)
.LBB0_710:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	loads.w r1, 8(r20)
	loads.w r15, 8(r7)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r28, r1, zero
	seteq r18, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r18
	and r16, r28, r25
	lui r18, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r1, zero, .LBB0_712
# %bb.711:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r18, 8(r8)
.LBB0_712:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	loads.w r1, 12(r20)
	loads.w r7, 12(r7)
	and r1, r1, r21
	and r7, r7, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r7, zero
	seteq r20, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r15, r16
	and r15, r25, r20
	or r7, r7, r15
	or r1, r1, r7
	.loc	1 912 20                        # parallel-rne.mlir:912:20
	bneq r1, zero, .LBB0_705
# %bb.713:                              # %vector.body636
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r19, 12(r8)
	j .LBB0_705
.LBB0_714:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 884 7                         # parallel-rne.mlir:884:7
	mfence { sm }
.LBB0_715:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 920 7                         # parallel-rne.mlir:920:7
	addli r1, zero, 3
	.loc	1 919 7                         # parallel-rne.mlir:919:7
	sync_core
	.loc	1 920 7                         # parallel-rne.mlir:920:7
	bneq r11, r1, .LBB0_717
# %bb.716:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 15
	addli r6, zero, 2
	xsignal r1, 0
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	addli r1, zero, 28
	xsignal r1, 0
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	addli r1, zero, 34
	xsignal r1, 0
	.loc	1 923 7                         # parallel-rne.mlir:923:7
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 925 13                        # parallel-rne.mlir:925:13
	loadli.w r1,  -36(r30)
	mod.s r2, r1, r6
	addli r1, r1, 1
	storeli.w r1, -36(r30)
	loadli.w r1,  -372(r30)                 # 4-byte Folded Reload
	slli r2, r2, 12
	add.s r2, r2, r1
	.loc	1 929 7                         # parallel-rne.mlir:929:7
	addli r1, zero, 37
	xwait r1, 0
	.loc	1 930 7                         # parallel-rne.mlir:930:7
	addli r1, zero, 41
	xwait r1, 0
	j .LBB0_719
.LBB0_717:                              # %.critedge19
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 925 13                        # parallel-rne.mlir:925:13
	loadli.w r1,  -36(r30)
	addli r6, zero, 2
	loadli.w r7,  -372(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r6
	addli r1, r1, 1
	storeli.w r1, -36(r30)
	slli r2, r2, 12
	add.s r2, r2, r7
	.loc	1 926 7                         # parallel-rne.mlir:926:7
	bneq r11, r10, .LBB0_719
# %bb.718:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 15
	lui r7, 260096
	addli r8, zero, 1023
	xwait r1, 0
	addli r1, zero, 28
	xwait r1, 0
	addli r1, zero, 38
	xwait r1, 0
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	loadli.w r1,  -392(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r7, r1, zero, 0
	addli r1, zero, 1
	addli r7, zero, 16
	ew_cfg zero, r8, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, r1, 19
	dsmadd r2, r26, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r7, 0
	.loc	1 927 7                         # parallel-rne.mlir:927:7
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	loadli.w r7,  -396(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r7, zero, zero, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	addli r1, zero, 37
	hp_ssmul r2, r2, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r1, 0
.LBB0_719:                              # %.critedge23
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -324(r30)                 # 4-byte Folded Reload
	.loc	1 932 7 is_stmt 1               # parallel-rne.mlir:932:7
	xfence
	.loc	1 933 7                         # parallel-rne.mlir:933:7
	mfence { lm, sm, gm }
	mod.s r1, r1, r6
	lui r6, 10
	ori r6, r6, 256
	slli r1, r1, 12
	add.s r6, r1, r6
	.loc	1 934 7                         # parallel-rne.mlir:934:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r6, r2
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 935 7                         # parallel-rne.mlir:935:7
	beq r11, zero, .LBB0_742
# %bb.720:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 951 7                         # parallel-rne.mlir:951:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_748
.LBB0_721:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 951 7                         # parallel-rne.mlir:951:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r7, r1
	addli r1, zero, 4
	zext_int2long r[9:10], r1
	j .LBB0_723
.LBB0_722:                              # %middle.block617
                                        #   in Loop: Header=BB0_723 Depth=2
	.loc	1 958 9 is_stmt 1               # parallel-rne.mlir:958:9
	load.d r[11:12], -256(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_726
.LBB0_723:                              # %.preheader154
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_725 Depth 3
                                        #       Child Loop BB0_724 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[9:10], r1
	.loc	1 959 11 is_stmt 1              # parallel-rne.mlir:959:11
	beq r8, zero, .LBB0_725
.LBB0_724:                              # %scalar.ph610
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_723 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.ul r[15:16], r[13:14], r[11:12]
	slli r1, r15, 2
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.s r7, r2, r1
	.loc	1 962 13                        # parallel-rne.mlir:962:13
	add.s r1, r6, r1
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	setlt.ul r15, r[13:14], r[15:16]
	addli.d r[13:14], r[13:14], 1
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	loads.w r7, 0(r7)
	.loc	1 962 13                        # parallel-rne.mlir:962:13
	stores.w r7, 0(r1)
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	bneq r15, zero, .LBB0_724
	j .LBB0_722
.LBB0_725:                              # %vector.body612
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_723 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.ul r[15:16], r[13:14], r[11:12]
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	slli r1, r15, 2
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	seteq.d r7, r[13:14], r[4:5]
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	add.s r15, r2, r1
	.loc	1 962 13                        # parallel-rne.mlir:962:13
	add.s r1, r6, r1
	.loc	1 960 19                        # parallel-rne.mlir:960:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r25, 24(r15)
	loads.w r28, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 962 13                        # parallel-rne.mlir:962:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r25, 24(r1)
	stores.w r28, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 959 11                        # parallel-rne.mlir:959:11
	beq r7, zero, .LBB0_725
	j .LBB0_722
.LBB0_726:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	.loc	1 951 7                         # parallel-rne.mlir:951:7
	mfence { sm }
	.loc	1 967 7                         # parallel-rne.mlir:967:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_749
.LBB0_727:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 983 7                         # parallel-rne.mlir:983:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_755
.LBB0_728:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 983 7                         # parallel-rne.mlir:983:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r7, r1
	addli r1, zero, 12
	zext_int2long r[9:10], r1
	j .LBB0_730
.LBB0_729:                              # %middle.block597
                                        #   in Loop: Header=BB0_730 Depth=2
	.loc	1 990 9 is_stmt 1               # parallel-rne.mlir:990:9
	load.d r[11:12], -240(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_733
.LBB0_730:                              # %.preheader152
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_732 Depth 3
                                        #       Child Loop BB0_731 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[9:10], r1
	.loc	1 991 11 is_stmt 1              # parallel-rne.mlir:991:11
	beq r8, zero, .LBB0_732
.LBB0_731:                              # %scalar.ph590
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_730 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	add.ul r[15:16], r[13:14], r[11:12]
	slli r1, r15, 2
	.loc	1 991 11                        # parallel-rne.mlir:991:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	add.s r7, r2, r1
	.loc	1 994 13                        # parallel-rne.mlir:994:13
	add.s r1, r6, r1
	.loc	1 991 11                        # parallel-rne.mlir:991:11
	setlt.ul r15, r[13:14], r[15:16]
	addli.d r[13:14], r[13:14], 1
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	loads.w r7, 0(r7)
	.loc	1 994 13                        # parallel-rne.mlir:994:13
	stores.w r7, 0(r1)
	.loc	1 991 11                        # parallel-rne.mlir:991:11
	bneq r15, zero, .LBB0_731
	j .LBB0_729
.LBB0_732:                              # %vector.body592
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_730 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	add.ul r[15:16], r[13:14], r[11:12]
	.loc	1 991 11                        # parallel-rne.mlir:991:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	slli r1, r15, 2
	.loc	1 991 11                        # parallel-rne.mlir:991:11
	seteq.d r7, r[13:14], r[4:5]
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	add.s r15, r2, r1
	.loc	1 994 13                        # parallel-rne.mlir:994:13
	add.s r1, r6, r1
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r25, 24(r15)
	loads.w r28, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 994 13                        # parallel-rne.mlir:994:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r25, 24(r1)
	stores.w r28, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 991 11                        # parallel-rne.mlir:991:11
	beq r7, zero, .LBB0_732
	j .LBB0_729
.LBB0_733:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	.loc	1 983 7                         # parallel-rne.mlir:983:7
	mfence { sm }
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_756
.LBB0_734:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 5
	.loc	1 1015 7 is_stmt 1              # parallel-rne.mlir:1015:7
	bneq r11, r10, .LBB0_762
.LBB0_735:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r7, r1
	addli r1, zero, 20
	zext_int2long r[9:10], r1
	j .LBB0_737
.LBB0_736:                              # %middle.block577
                                        #   in Loop: Header=BB0_737 Depth=2
	.loc	1 1022 9 is_stmt 1              # parallel-rne.mlir:1022:9
	load.d r[11:12], -224(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_740
.LBB0_737:                              # %.preheader150
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_739 Depth 3
                                        #       Child Loop BB0_738 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[9:10], r1
	.loc	1 1023 11 is_stmt 1             # parallel-rne.mlir:1023:11
	beq r8, zero, .LBB0_739
.LBB0_738:                              # %scalar.ph570
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_737 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	add.ul r[15:16], r[13:14], r[11:12]
	slli r1, r15, 2
	.loc	1 1023 11                       # parallel-rne.mlir:1023:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	add.s r7, r2, r1
	.loc	1 1026 13                       # parallel-rne.mlir:1026:13
	add.s r1, r6, r1
	.loc	1 1023 11                       # parallel-rne.mlir:1023:11
	setlt.ul r15, r[13:14], r[15:16]
	addli.d r[13:14], r[13:14], 1
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	loads.w r7, 0(r7)
	.loc	1 1026 13                       # parallel-rne.mlir:1026:13
	stores.w r7, 0(r1)
	.loc	1 1023 11                       # parallel-rne.mlir:1023:11
	bneq r15, zero, .LBB0_738
	j .LBB0_736
.LBB0_739:                              # %vector.body572
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_737 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	add.ul r[15:16], r[13:14], r[11:12]
	.loc	1 1023 11                       # parallel-rne.mlir:1023:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	slli r1, r15, 2
	.loc	1 1023 11                       # parallel-rne.mlir:1023:11
	seteq.d r7, r[13:14], r[4:5]
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	add.s r15, r2, r1
	.loc	1 1026 13                       # parallel-rne.mlir:1026:13
	add.s r1, r6, r1
	.loc	1 1024 19                       # parallel-rne.mlir:1024:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r25, 24(r15)
	loads.w r28, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 1026 13                       # parallel-rne.mlir:1026:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r25, 24(r1)
	stores.w r28, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 1023 11                       # parallel-rne.mlir:1023:11
	beq r7, zero, .LBB0_739
	j .LBB0_736
.LBB0_740:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	addli r10, zero, 5
	lui r16, 268288
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	mfence { sm }
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	addli r1, zero, 6
	beq r11, r1, .LBB0_763
.LBB0_741:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1047 7                        # parallel-rne.mlir:1047:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_769
	j .LBB0_775
.LBB0_742:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 935 7 is_stmt 1               # parallel-rne.mlir:935:7
	xfence
	zext_int2long r[9:10], zero
	mfence { lm, sm, gm }
	setlt.u r8, r7, r1
	j .LBB0_744
.LBB0_743:                              # %middle.block627
                                        #   in Loop: Header=BB0_744 Depth=2
	.loc	1 942 9                         # parallel-rne.mlir:942:9
	load.d r[11:12], -264(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_747
.LBB0_744:                              # %.preheader155
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_746 Depth 3
                                        #       Child Loop BB0_745 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[9:10], r1
	.loc	1 943 11 is_stmt 1              # parallel-rne.mlir:943:11
	beq r8, zero, .LBB0_746
.LBB0_745:                              # %scalar.ph620
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_744 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	add.ul r[15:16], r[13:14], r[11:12]
	slli r1, r15, 2
	.loc	1 943 11                        # parallel-rne.mlir:943:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	add.s r7, r2, r1
	.loc	1 946 13                        # parallel-rne.mlir:946:13
	add.s r1, r6, r1
	.loc	1 943 11                        # parallel-rne.mlir:943:11
	setlt.ul r15, r[13:14], r[15:16]
	addli.d r[13:14], r[13:14], 1
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	loads.w r7, 0(r7)
	.loc	1 946 13                        # parallel-rne.mlir:946:13
	stores.w r7, 0(r1)
	.loc	1 943 11                        # parallel-rne.mlir:943:11
	bneq r15, zero, .LBB0_745
	j .LBB0_743
.LBB0_746:                              # %vector.body622
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_744 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	add.ul r[15:16], r[13:14], r[11:12]
	.loc	1 943 11                        # parallel-rne.mlir:943:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	slli r1, r15, 2
	.loc	1 943 11                        # parallel-rne.mlir:943:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	add.s r16, r2, r1
	.loc	1 946 13                        # parallel-rne.mlir:946:13
	add.s r1, r6, r1
	.loc	1 944 19                        # parallel-rne.mlir:944:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r25, 28(r16)
	loads.w r28, 24(r16)
	loads.w r7, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 946 13                        # parallel-rne.mlir:946:13
	stores.w r17, 12(r1)
	stores.w r18, 8(r1)
	stores.w r19, 4(r1)
	stores.w r20, 0(r1)
	stores.w r25, 28(r1)
	stores.w r28, 24(r1)
	stores.w r7, 20(r1)
	stores.w r16, 16(r1)
	.loc	1 943 11                        # parallel-rne.mlir:943:11
	beq r15, zero, .LBB0_746
	j .LBB0_743
.LBB0_747:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	.loc	1 935 7                         # parallel-rne.mlir:935:7
	mfence { sm }
	.loc	1 951 7                         # parallel-rne.mlir:951:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_721
.LBB0_748:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 967 7                         # parallel-rne.mlir:967:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_727
.LBB0_749:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 967 7                         # parallel-rne.mlir:967:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r7, r1
	addli r1, zero, 8
	zext_int2long r[9:10], r1
	j .LBB0_751
.LBB0_750:                              # %middle.block607
                                        #   in Loop: Header=BB0_751 Depth=2
	.loc	1 974 9 is_stmt 1               # parallel-rne.mlir:974:9
	load.d r[11:12], -248(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_754
.LBB0_751:                              # %.preheader153
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_753 Depth 3
                                        #       Child Loop BB0_752 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[9:10], r1
	.loc	1 975 11 is_stmt 1              # parallel-rne.mlir:975:11
	beq r8, zero, .LBB0_753
.LBB0_752:                              # %scalar.ph600
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_751 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	add.ul r[15:16], r[13:14], r[11:12]
	slli r1, r15, 2
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	add.s r7, r2, r1
	.loc	1 978 13                        # parallel-rne.mlir:978:13
	add.s r1, r6, r1
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	setlt.ul r15, r[13:14], r[15:16]
	addli.d r[13:14], r[13:14], 1
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	loads.w r7, 0(r7)
	.loc	1 978 13                        # parallel-rne.mlir:978:13
	stores.w r7, 0(r1)
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	bneq r15, zero, .LBB0_752
	j .LBB0_750
.LBB0_753:                              # %vector.body602
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_751 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	add.ul r[15:16], r[13:14], r[11:12]
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	slli r1, r15, 2
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	seteq.d r7, r[13:14], r[4:5]
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	add.s r15, r2, r1
	.loc	1 978 13                        # parallel-rne.mlir:978:13
	add.s r1, r6, r1
	.loc	1 976 19                        # parallel-rne.mlir:976:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r25, 24(r15)
	loads.w r28, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 978 13                        # parallel-rne.mlir:978:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r25, 24(r1)
	stores.w r28, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 975 11                        # parallel-rne.mlir:975:11
	beq r7, zero, .LBB0_753
	j .LBB0_750
.LBB0_754:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	.loc	1 967 7                         # parallel-rne.mlir:967:7
	mfence { sm }
	.loc	1 983 7                         # parallel-rne.mlir:983:7
	addli r1, zero, 3
	beq r11, r1, .LBB0_728
.LBB0_755:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_734
.LBB0_756:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r7, r1
	addli r1, zero, 16
	zext_int2long r[9:10], r1
	j .LBB0_758
.LBB0_757:                              # %middle.block587
                                        #   in Loop: Header=BB0_758 Depth=2
	.loc	1 1006 9 is_stmt 1              # parallel-rne.mlir:1006:9
	load.d r[11:12], -232(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_761
.LBB0_758:                              # %.preheader151
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_760 Depth 3
                                        #       Child Loop BB0_759 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[9:10], r1
	.loc	1 1007 11 is_stmt 1             # parallel-rne.mlir:1007:11
	beq r8, zero, .LBB0_760
.LBB0_759:                              # %scalar.ph580
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_758 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	add.ul r[15:16], r[13:14], r[11:12]
	slli r1, r15, 2
	.loc	1 1007 11                       # parallel-rne.mlir:1007:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	add.s r7, r2, r1
	.loc	1 1010 13                       # parallel-rne.mlir:1010:13
	add.s r1, r6, r1
	.loc	1 1007 11                       # parallel-rne.mlir:1007:11
	setlt.ul r15, r[13:14], r[15:16]
	addli.d r[13:14], r[13:14], 1
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	loads.w r7, 0(r7)
	.loc	1 1010 13                       # parallel-rne.mlir:1010:13
	stores.w r7, 0(r1)
	.loc	1 1007 11                       # parallel-rne.mlir:1007:11
	bneq r15, zero, .LBB0_759
	j .LBB0_757
.LBB0_760:                              # %vector.body582
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_758 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	add.ul r[15:16], r[13:14], r[11:12]
	.loc	1 1007 11                       # parallel-rne.mlir:1007:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	slli r1, r15, 2
	.loc	1 1007 11                       # parallel-rne.mlir:1007:11
	seteq.d r7, r[13:14], r[4:5]
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	add.s r15, r2, r1
	.loc	1 1010 13                       # parallel-rne.mlir:1010:13
	add.s r1, r6, r1
	.loc	1 1008 19                       # parallel-rne.mlir:1008:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r25, 24(r15)
	loads.w r28, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 1010 13                       # parallel-rne.mlir:1010:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r25, 24(r1)
	stores.w r28, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 1007 11                       # parallel-rne.mlir:1007:11
	beq r7, zero, .LBB0_760
	j .LBB0_757
.LBB0_761:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	mfence { sm }
	addli r10, zero, 5
	.loc	1 1015 7                        # parallel-rne.mlir:1015:7
	beq r11, r10, .LBB0_735
.LBB0_762:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_741
.LBB0_763:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r8, r7, r1
	addli r1, zero, 24
	zext_int2long r[9:10], r1
	j .LBB0_765
.LBB0_764:                              # %middle.block567
                                        #   in Loop: Header=BB0_765 Depth=2
	.loc	1 1038 9 is_stmt 1              # parallel-rne.mlir:1038:9
	load.d r[11:12], -216(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	beq r1, zero, .LBB0_768
.LBB0_765:                              # %.preheader149
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_767 Depth 3
                                        #       Child Loop BB0_766 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[13:14], zero
	sll.d r[11:12], r[9:10], r1
	.loc	1 1039 11 is_stmt 1             # parallel-rne.mlir:1039:11
	beq r8, zero, .LBB0_767
.LBB0_766:                              # %scalar.ph560
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_765 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	add.ul r[15:16], r[13:14], r[11:12]
	slli r1, r15, 2
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	add.s r7, r2, r1
	.loc	1 1042 13                       # parallel-rne.mlir:1042:13
	add.s r1, r6, r1
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	setlt.ul r15, r[13:14], r[15:16]
	addli.d r[13:14], r[13:14], 1
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	loads.w r7, 0(r7)
	.loc	1 1042 13                       # parallel-rne.mlir:1042:13
	stores.w r7, 0(r1)
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	bneq r15, zero, .LBB0_766
	j .LBB0_764
.LBB0_767:                              # %vector.body562
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_765 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	add.ul r[15:16], r[13:14], r[11:12]
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	slli r1, r15, 2
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	seteq.d r7, r[13:14], r[4:5]
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	add.s r15, r2, r1
	.loc	1 1042 13                       # parallel-rne.mlir:1042:13
	add.s r1, r6, r1
	.loc	1 1040 19                       # parallel-rne.mlir:1040:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r25, 24(r15)
	loads.w r28, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 1042 13                       # parallel-rne.mlir:1042:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r25, 24(r1)
	stores.w r28, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 1039 11                       # parallel-rne.mlir:1039:11
	beq r7, zero, .LBB0_767
	j .LBB0_764
.LBB0_768:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	addli r10, zero, 5
	lui r16, 268288
	.loc	1 1031 7                        # parallel-rne.mlir:1031:7
	mfence { sm }
	.loc	1 1047 7                        # parallel-rne.mlir:1047:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_775
.LBB0_769:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r7,  -272(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1047 7                        # parallel-rne.mlir:1047:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r7, r7, r1
	addli r1, zero, 28
	zext_int2long r[8:9], r1
	j .LBB0_771
.LBB0_770:                              # %middle.block557
                                        #   in Loop: Header=BB0_771 Depth=2
	.loc	1 1054 9 is_stmt 1              # parallel-rne.mlir:1054:9
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	setlt.ul r1, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_774
.LBB0_771:                              # %.preheader148
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_773 Depth 3
                                        #       Child Loop BB0_772 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r1
	.loc	1 1055 11 is_stmt 1             # parallel-rne.mlir:1055:11
	beq r7, zero, .LBB0_773
.LBB0_772:                              # %scalar.ph550
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_771 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.ul r[14:15], r[12:13], r[10:11]
	slli r1, r14, 2
	.loc	1 1055 11                       # parallel-rne.mlir:1055:11
	load.d r[15:16], -192(r30)              # 8-byte Folded Reload
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r14, r2, r1
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	add.s r1, r6, r1
	.loc	1 1055 11                       # parallel-rne.mlir:1055:11
	setlt.ul r15, r[12:13], r[15:16]
	addli.d r[12:13], r[12:13], 1
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r14, 0(r14)
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	stores.w r14, 0(r1)
	.loc	1 1055 11                       # parallel-rne.mlir:1055:11
	bneq r15, zero, .LBB0_772
	j .LBB0_770
.LBB0_773:                              # %vector.body552
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_771 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.ul r[14:15], r[12:13], r[10:11]
	.loc	1 1055 11                       # parallel-rne.mlir:1055:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	slli r1, r14, 2
	.loc	1 1055 11                       # parallel-rne.mlir:1055:11
	seteq.d r14, r[12:13], r[4:5]
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	add.s r15, r2, r1
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	add.s r1, r6, r1
	.loc	1 1056 19                       # parallel-rne.mlir:1056:19
	loads.w r16, 12(r15)
	loads.w r17, 8(r15)
	loads.w r18, 4(r15)
	loads.w r19, 0(r15)
	loads.w r20, 28(r15)
	loads.w r25, 24(r15)
	loads.w r28, 20(r15)
	loads.w r15, 16(r15)
	.loc	1 1058 13                       # parallel-rne.mlir:1058:13
	stores.w r16, 12(r1)
	stores.w r17, 8(r1)
	stores.w r18, 4(r1)
	stores.w r19, 0(r1)
	stores.w r20, 28(r1)
	stores.w r25, 24(r1)
	stores.w r28, 20(r1)
	stores.w r15, 16(r1)
	.loc	1 1055 11                       # parallel-rne.mlir:1055:11
	beq r14, zero, .LBB0_773
	j .LBB0_770
.LBB0_774:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	lui r16, 268288
	.loc	1 1047 7                        # parallel-rne.mlir:1047:7
	mfence { sm }
.LBB0_775:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1063 7                        # parallel-rne.mlir:1063:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	addli r1, zero, 3
	.loc	1 1063 7                        # parallel-rne.mlir:1063:7
	sync_core
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	bneq r11, r1, .LBB0_777
# %bb.776:                              # %.critedge25
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 38
	addli r2, zero, 39
	xsignal r1, 0
	.loc	1 1067 7                        # parallel-rne.mlir:1067:7
	addli r1, zero, 16
	.loc	1 1065 7                        # parallel-rne.mlir:1065:7
	xsignal r2, 0
	.loc	1 1067 7                        # parallel-rne.mlir:1067:7
	xwait r1, 0
	.loc	1 1068 7                        # parallel-rne.mlir:1068:7
	xwait r2, 0
.LBB0_777:                              # %.critedge27
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1070 7                        # parallel-rne.mlir:1070:7
	xfence
	.loc	1 1072 7                        # parallel-rne.mlir:1072:7
	addli r1, zero, 255
	.loc	1 1071 7                        # parallel-rne.mlir:1071:7
	mfence { lm, sm, gm }
	.loc	1 1072 7                        # parallel-rne.mlir:1072:7
	csr_set csr5, r1
	sync_core
	.loc	1 1073 7                        # parallel-rne.mlir:1073:7
	beq r11, zero, .LBB0_860
# %bb.778:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1094 7                        # parallel-rne.mlir:1094:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_886
.LBB0_779:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 4
	.loc	1 1094 7                        # parallel-rne.mlir:1094:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_781
.LBB0_780:                              # %middle.block537
                                        #   in Loop: Header=BB0_781 Depth=2
	.loc	1 1101 9 is_stmt 1              # parallel-rne.mlir:1101:9
	load.d r[1:2], -256(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_804
.LBB0_781:                              # %.preheader146
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_788 Depth 3
                                        #       Child Loop BB0_784 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1102 11 is_stmt 1             # parallel-rne.mlir:1102:11
	bneq r24, r6, .LBB0_786
# %bb.782:                              # %scalar.ph530.preheader
                                        #   in Loop: Header=BB0_781 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_784
.LBB0_783:                              # %scalar.ph530
                                        #   in Loop: Header=BB0_784 Depth=3
	.loc	1 1102 11                       # parallel-rne.mlir:1102:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1110 13 is_stmt 1             # parallel-rne.mlir:1110:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1102 11                       # parallel-rne.mlir:1102:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_780
.LBB0_784:                              # %scalar.ph530
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_781 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1106 19                       # parallel-rne.mlir:1106:19
	and r13, r12, r21
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	setlt.u r13, r16, r13
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r13, zero, .LBB0_783
# %bb.785:                              #   in Loop: Header=BB0_784 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_783
.LBB0_786:                              # %vector.body532.preheader
                                        #   in Loop: Header=BB0_781 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_788
.LBB0_787:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	.loc	1 1102 11 is_stmt 1             # parallel-rne.mlir:1102:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1110 13                       # parallel-rne.mlir:1110:13
	add.s r11, r24, r11
	.loc	1 1102 11                       # parallel-rne.mlir:1102:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1110 13                       # parallel-rne.mlir:1110:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1102 11                       # parallel-rne.mlir:1102:11
	bneq r15, zero, .LBB0_780
.LBB0_788:                              # %vector.body532
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_781 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1106 19                       # parallel-rne.mlir:1106:19
	and r1, r2, r21
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	setlt.u r1, r16, r1
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r1, zero, .LBB0_790
# %bb.789:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_790:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r1, zero, .LBB0_792
# %bb.791:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_792:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r1, zero, .LBB0_794
# %bb.793:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_794:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r1, zero, .LBB0_796
# %bb.795:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_796:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r1, zero, .LBB0_798
# %bb.797:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_798:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r1, zero, .LBB0_800
# %bb.799:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_800:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r1, zero, .LBB0_802
# %bb.801:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_802:                              # %vector.body532
                                        #   in Loop: Header=BB0_788 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r15, zero, .LBB0_787
# %bb.803:                              #   in Loop: Header=BB0_788 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_787
.LBB0_804:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1094 7                        # parallel-rne.mlir:1094:7
	mfence { sm }
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_887
.LBB0_805:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1136 7                        # parallel-rne.mlir:1136:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_913
.LBB0_806:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 12
	.loc	1 1136 7                        # parallel-rne.mlir:1136:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_808
.LBB0_807:                              # %middle.block517
                                        #   in Loop: Header=BB0_808 Depth=2
	.loc	1 1143 9 is_stmt 1              # parallel-rne.mlir:1143:9
	load.d r[1:2], -240(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_831
.LBB0_808:                              # %.preheader144
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_815 Depth 3
                                        #       Child Loop BB0_811 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1144 11 is_stmt 1             # parallel-rne.mlir:1144:11
	bneq r24, r6, .LBB0_813
# %bb.809:                              # %scalar.ph510.preheader
                                        #   in Loop: Header=BB0_808 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_811
.LBB0_810:                              # %scalar.ph510
                                        #   in Loop: Header=BB0_811 Depth=3
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1152 13 is_stmt 1             # parallel-rne.mlir:1152:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_807
.LBB0_811:                              # %scalar.ph510
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_808 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	and r13, r12, r21
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	setlt.u r13, r16, r13
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r13, zero, .LBB0_810
# %bb.812:                              #   in Loop: Header=BB0_811 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_810
.LBB0_813:                              # %vector.body512.preheader
                                        #   in Loop: Header=BB0_808 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_815
.LBB0_814:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	.loc	1 1144 11 is_stmt 1             # parallel-rne.mlir:1144:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1152 13                       # parallel-rne.mlir:1152:13
	add.s r11, r24, r11
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1152 13                       # parallel-rne.mlir:1152:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1144 11                       # parallel-rne.mlir:1144:11
	bneq r15, zero, .LBB0_807
.LBB0_815:                              # %vector.body512
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_808 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1148 19                       # parallel-rne.mlir:1148:19
	and r1, r2, r21
	.loc	1 1149 19                       # parallel-rne.mlir:1149:19
	setlt.u r1, r16, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r1, zero, .LBB0_817
# %bb.816:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_817:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r1, zero, .LBB0_819
# %bb.818:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_819:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r1, zero, .LBB0_821
# %bb.820:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_821:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r1, zero, .LBB0_823
# %bb.822:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_823:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r1, zero, .LBB0_825
# %bb.824:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_825:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r1, zero, .LBB0_827
# %bb.826:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_827:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r1, zero, .LBB0_829
# %bb.828:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_829:                              # %vector.body512
                                        #   in Loop: Header=BB0_815 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1150 19                       # parallel-rne.mlir:1150:19
	beq r15, zero, .LBB0_814
# %bb.830:                              #   in Loop: Header=BB0_815 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_814
.LBB0_831:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1136 7                        # parallel-rne.mlir:1136:7
	mfence { sm }
	.loc	1 1157 7                        # parallel-rne.mlir:1157:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_914
.LBB0_832:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1178 7                        # parallel-rne.mlir:1178:7
	bneq r11, r10, .LBB0_940
.LBB0_833:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 1178 7                        # parallel-rne.mlir:1178:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_835
.LBB0_834:                              # %middle.block497
                                        #   in Loop: Header=BB0_835 Depth=2
	.loc	1 1185 9 is_stmt 1              # parallel-rne.mlir:1185:9
	load.d r[1:2], -224(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_858
.LBB0_835:                              # %.preheader142
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_842 Depth 3
                                        #       Child Loop BB0_838 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1186 11 is_stmt 1             # parallel-rne.mlir:1186:11
	bneq r24, r6, .LBB0_840
# %bb.836:                              # %scalar.ph490.preheader
                                        #   in Loop: Header=BB0_835 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_838
.LBB0_837:                              # %scalar.ph490
                                        #   in Loop: Header=BB0_838 Depth=3
	.loc	1 1186 11                       # parallel-rne.mlir:1186:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1194 13 is_stmt 1             # parallel-rne.mlir:1194:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1186 11                       # parallel-rne.mlir:1186:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_834
.LBB0_838:                              # %scalar.ph490
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_835 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1190 19                       # parallel-rne.mlir:1190:19
	and r13, r12, r21
	.loc	1 1191 19                       # parallel-rne.mlir:1191:19
	setlt.u r13, r16, r13
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r13, zero, .LBB0_837
# %bb.839:                              #   in Loop: Header=BB0_838 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_837
.LBB0_840:                              # %vector.body492.preheader
                                        #   in Loop: Header=BB0_835 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_842
.LBB0_841:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	.loc	1 1186 11 is_stmt 1             # parallel-rne.mlir:1186:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1194 13                       # parallel-rne.mlir:1194:13
	add.s r11, r24, r11
	.loc	1 1186 11                       # parallel-rne.mlir:1186:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1194 13                       # parallel-rne.mlir:1194:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1186 11                       # parallel-rne.mlir:1186:11
	bneq r15, zero, .LBB0_834
.LBB0_842:                              # %vector.body492
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_835 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1190 19                       # parallel-rne.mlir:1190:19
	and r1, r2, r21
	.loc	1 1191 19                       # parallel-rne.mlir:1191:19
	setlt.u r1, r16, r1
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r1, zero, .LBB0_844
# %bb.843:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_844:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r1, zero, .LBB0_846
# %bb.845:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_846:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r1, zero, .LBB0_848
# %bb.847:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_848:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r1, zero, .LBB0_850
# %bb.849:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_850:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r1, zero, .LBB0_852
# %bb.851:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_852:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r1, zero, .LBB0_854
# %bb.853:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_854:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r1, zero, .LBB0_856
# %bb.855:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_856:                              # %vector.body492
                                        #   in Loop: Header=BB0_842 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1192 19                       # parallel-rne.mlir:1192:19
	beq r15, zero, .LBB0_841
# %bb.857:                              #   in Loop: Header=BB0_842 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_841
.LBB0_858:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1178 7                        # parallel-rne.mlir:1178:7
	mfence { sm }
	.loc	1 1199 7                        # parallel-rne.mlir:1199:7
	addli r1, zero, 6
	beq r11, r1, .LBB0_941
.LBB0_859:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1220 7                        # parallel-rne.mlir:1220:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_967
	j .LBB0_993
.LBB0_860:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1073 7                        # parallel-rne.mlir:1073:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_862
.LBB0_861:                              # %middle.block547
                                        #   in Loop: Header=BB0_862 Depth=2
	.loc	1 1080 9                        # parallel-rne.mlir:1080:9
	load.d r[1:2], -264(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_885
.LBB0_862:                              # %.preheader147
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_869 Depth 3
                                        #       Child Loop BB0_865 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1081 11 is_stmt 1             # parallel-rne.mlir:1081:11
	bneq r24, r6, .LBB0_867
# %bb.863:                              # %scalar.ph540.preheader
                                        #   in Loop: Header=BB0_862 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_865
.LBB0_864:                              # %scalar.ph540
                                        #   in Loop: Header=BB0_865 Depth=3
	.loc	1 1081 11                       # parallel-rne.mlir:1081:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1089 13 is_stmt 1             # parallel-rne.mlir:1089:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1081 11                       # parallel-rne.mlir:1081:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_861
.LBB0_865:                              # %scalar.ph540
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_862 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1082 19                       # parallel-rne.mlir:1082:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1085 19                       # parallel-rne.mlir:1085:19
	and r13, r12, r21
	.loc	1 1086 19                       # parallel-rne.mlir:1086:19
	setlt.u r13, r16, r13
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r13, zero, .LBB0_864
# %bb.866:                              #   in Loop: Header=BB0_865 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_864
.LBB0_867:                              # %vector.body542.preheader
                                        #   in Loop: Header=BB0_862 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_869
.LBB0_868:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	.loc	1 1081 11 is_stmt 1             # parallel-rne.mlir:1081:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1089 13                       # parallel-rne.mlir:1089:13
	add.s r11, r24, r11
	.loc	1 1081 11                       # parallel-rne.mlir:1081:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1089 13                       # parallel-rne.mlir:1089:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1081 11                       # parallel-rne.mlir:1081:11
	bneq r15, zero, .LBB0_861
.LBB0_869:                              # %vector.body542
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_862 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1082 19                       # parallel-rne.mlir:1082:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1085 19                       # parallel-rne.mlir:1085:19
	and r1, r2, r21
	.loc	1 1086 19                       # parallel-rne.mlir:1086:19
	setlt.u r1, r16, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r1, zero, .LBB0_871
# %bb.870:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_871:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r1, zero, .LBB0_873
# %bb.872:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_873:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r1, zero, .LBB0_875
# %bb.874:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_875:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r1, zero, .LBB0_877
# %bb.876:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_877:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r1, zero, .LBB0_879
# %bb.878:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_879:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r1, zero, .LBB0_881
# %bb.880:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_881:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r1, zero, .LBB0_883
# %bb.882:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_883:                              # %vector.body542
                                        #   in Loop: Header=BB0_869 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1087 19                       # parallel-rne.mlir:1087:19
	beq r15, zero, .LBB0_868
# %bb.884:                              #   in Loop: Header=BB0_869 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_868
.LBB0_885:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1073 7                        # parallel-rne.mlir:1073:7
	mfence { sm }
	.loc	1 1094 7                        # parallel-rne.mlir:1094:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_779
.LBB0_886:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_805
.LBB0_887:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_889
.LBB0_888:                              # %middle.block527
                                        #   in Loop: Header=BB0_889 Depth=2
	.loc	1 1122 9 is_stmt 1              # parallel-rne.mlir:1122:9
	load.d r[1:2], -248(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_912
.LBB0_889:                              # %.preheader145
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_896 Depth 3
                                        #       Child Loop BB0_892 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1123 11 is_stmt 1             # parallel-rne.mlir:1123:11
	bneq r24, r6, .LBB0_894
# %bb.890:                              # %scalar.ph520.preheader
                                        #   in Loop: Header=BB0_889 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_892
.LBB0_891:                              # %scalar.ph520
                                        #   in Loop: Header=BB0_892 Depth=3
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1131 13 is_stmt 1             # parallel-rne.mlir:1131:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_888
.LBB0_892:                              # %scalar.ph520
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_889 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	and r13, r12, r21
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	setlt.u r13, r16, r13
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r13, zero, .LBB0_891
# %bb.893:                              #   in Loop: Header=BB0_892 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_891
.LBB0_894:                              # %vector.body522.preheader
                                        #   in Loop: Header=BB0_889 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_896
.LBB0_895:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	.loc	1 1123 11 is_stmt 1             # parallel-rne.mlir:1123:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1131 13                       # parallel-rne.mlir:1131:13
	add.s r11, r24, r11
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1131 13                       # parallel-rne.mlir:1131:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	bneq r15, zero, .LBB0_888
.LBB0_896:                              # %vector.body522
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_889 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	and r1, r2, r21
	.loc	1 1128 19                       # parallel-rne.mlir:1128:19
	setlt.u r1, r16, r1
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r1, zero, .LBB0_898
# %bb.897:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_898:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r1, zero, .LBB0_900
# %bb.899:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_900:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r1, zero, .LBB0_902
# %bb.901:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_902:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r1, zero, .LBB0_904
# %bb.903:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_904:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r1, zero, .LBB0_906
# %bb.905:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_906:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r1, zero, .LBB0_908
# %bb.907:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_908:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r1, zero, .LBB0_910
# %bb.909:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_910:                              # %vector.body522
                                        #   in Loop: Header=BB0_896 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	beq r15, zero, .LBB0_895
# %bb.911:                              #   in Loop: Header=BB0_896 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_895
.LBB0_912:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	mfence { sm }
	.loc	1 1136 7                        # parallel-rne.mlir:1136:7
	addli r1, zero, 3
	beq r11, r1, .LBB0_806
.LBB0_913:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1157 7                        # parallel-rne.mlir:1157:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_832
.LBB0_914:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 1157 7                        # parallel-rne.mlir:1157:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_916
.LBB0_915:                              # %middle.block507
                                        #   in Loop: Header=BB0_916 Depth=2
	.loc	1 1164 9 is_stmt 1              # parallel-rne.mlir:1164:9
	load.d r[1:2], -232(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_939
.LBB0_916:                              # %.preheader143
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_923 Depth 3
                                        #       Child Loop BB0_919 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1165 11 is_stmt 1             # parallel-rne.mlir:1165:11
	bneq r24, r6, .LBB0_921
# %bb.917:                              # %scalar.ph500.preheader
                                        #   in Loop: Header=BB0_916 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_919
.LBB0_918:                              # %scalar.ph500
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 1165 11                       # parallel-rne.mlir:1165:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1173 13 is_stmt 1             # parallel-rne.mlir:1173:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1165 11                       # parallel-rne.mlir:1165:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_915
.LBB0_919:                              # %scalar.ph500
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_916 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	and r13, r12, r21
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	setlt.u r13, r16, r13
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r13, zero, .LBB0_918
# %bb.920:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_918
.LBB0_921:                              # %vector.body502.preheader
                                        #   in Loop: Header=BB0_916 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_923
.LBB0_922:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	.loc	1 1165 11 is_stmt 1             # parallel-rne.mlir:1165:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1173 13                       # parallel-rne.mlir:1173:13
	add.s r11, r24, r11
	.loc	1 1165 11                       # parallel-rne.mlir:1165:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1173 13                       # parallel-rne.mlir:1173:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1165 11                       # parallel-rne.mlir:1165:11
	bneq r15, zero, .LBB0_915
.LBB0_923:                              # %vector.body502
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_916 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	and r1, r2, r21
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	setlt.u r1, r16, r1
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r1, zero, .LBB0_925
# %bb.924:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_925:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r1, zero, .LBB0_927
# %bb.926:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_927:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r1, zero, .LBB0_929
# %bb.928:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_929:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r1, zero, .LBB0_931
# %bb.930:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_931:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r1, zero, .LBB0_933
# %bb.932:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_933:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r1, zero, .LBB0_935
# %bb.934:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_935:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r1, zero, .LBB0_937
# %bb.936:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_937:                              # %vector.body502
                                        #   in Loop: Header=BB0_923 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	beq r15, zero, .LBB0_922
# %bb.938:                              #   in Loop: Header=BB0_923 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_922
.LBB0_939:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1157 7                        # parallel-rne.mlir:1157:7
	mfence { sm }
	.loc	1 1178 7                        # parallel-rne.mlir:1178:7
	beq r11, r10, .LBB0_833
.LBB0_940:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1199 7                        # parallel-rne.mlir:1199:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_859
.LBB0_941:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 1199 7                        # parallel-rne.mlir:1199:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_943
.LBB0_942:                              # %middle.block487
                                        #   in Loop: Header=BB0_943 Depth=2
	.loc	1 1206 9 is_stmt 1              # parallel-rne.mlir:1206:9
	load.d r[1:2], -216(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_966
.LBB0_943:                              # %.preheader141
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_950 Depth 3
                                        #       Child Loop BB0_946 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1207 11 is_stmt 1             # parallel-rne.mlir:1207:11
	bneq r24, r6, .LBB0_948
# %bb.944:                              # %scalar.ph480.preheader
                                        #   in Loop: Header=BB0_943 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_946
.LBB0_945:                              # %scalar.ph480
                                        #   in Loop: Header=BB0_946 Depth=3
	.loc	1 1207 11                       # parallel-rne.mlir:1207:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1215 13 is_stmt 1             # parallel-rne.mlir:1215:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1207 11                       # parallel-rne.mlir:1207:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_942
.LBB0_946:                              # %scalar.ph480
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_943 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	and r13, r12, r21
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	setlt.u r13, r16, r13
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r13, zero, .LBB0_945
# %bb.947:                              #   in Loop: Header=BB0_946 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_945
.LBB0_948:                              # %vector.body482.preheader
                                        #   in Loop: Header=BB0_943 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_950
.LBB0_949:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	.loc	1 1207 11 is_stmt 1             # parallel-rne.mlir:1207:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1215 13                       # parallel-rne.mlir:1215:13
	add.s r11, r24, r11
	.loc	1 1207 11                       # parallel-rne.mlir:1207:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1215 13                       # parallel-rne.mlir:1215:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1207 11                       # parallel-rne.mlir:1207:11
	bneq r15, zero, .LBB0_942
.LBB0_950:                              # %vector.body482
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_943 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	and r1, r2, r21
	.loc	1 1212 19                       # parallel-rne.mlir:1212:19
	setlt.u r1, r16, r1
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r1, zero, .LBB0_952
# %bb.951:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_952:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r1, zero, .LBB0_954
# %bb.953:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_954:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r1, zero, .LBB0_956
# %bb.955:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_956:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r1, zero, .LBB0_958
# %bb.957:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_958:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r1, zero, .LBB0_960
# %bb.959:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_960:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r1, zero, .LBB0_962
# %bb.961:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_962:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r1, zero, .LBB0_964
# %bb.963:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_964:                              # %vector.body482
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	beq r15, zero, .LBB0_949
# %bb.965:                              #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_949
.LBB0_966:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1199 7                        # parallel-rne.mlir:1199:7
	mfence { sm }
	.loc	1 1220 7                        # parallel-rne.mlir:1220:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_993
.LBB0_967:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 1220 7                        # parallel-rne.mlir:1220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r1
	j .LBB0_969
.LBB0_968:                              # %middle.block477
                                        #   in Loop: Header=BB0_969 Depth=2
	.loc	1 1227 9 is_stmt 1              # parallel-rne.mlir:1227:9
	load.d r[1:2], -192(r30)                # 8-byte Folded Reload
	addli r10, zero, 5
	setlt.ul r1, r[7:8], r[1:2]
	addli.d r[7:8], r[7:8], 1
	beq r1, zero, .LBB0_992
.LBB0_969:                              # %.preheader140
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_976 Depth 3
                                        #       Child Loop BB0_972 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	sll.d r[9:10], r[7:8], r1
	.loc	1 1228 11 is_stmt 1             # parallel-rne.mlir:1228:11
	bneq r24, r6, .LBB0_974
# %bb.970:                              # %scalar.ph470.preheader
                                        #   in Loop: Header=BB0_969 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_972
.LBB0_971:                              # %scalar.ph470
                                        #   in Loop: Header=BB0_972 Depth=3
	.loc	1 1228 11                       # parallel-rne.mlir:1228:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1236 13 is_stmt 1             # parallel-rne.mlir:1236:13
	add.s r11, r24, r11
	stores.w r12, 0(r11)
	.loc	1 1228 11                       # parallel-rne.mlir:1228:11
	setlt.ul r13, r[1:2], r[13:14]
	addli.d r[1:2], r[1:2], 1
	beq r13, zero, .LBB0_968
.LBB0_972:                              # %scalar.ph470
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_969 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	add.ul r[11:12], r[1:2], r[9:10]
	slli r11, r11, 2
	add.s r12, r6, r11
	loads.w r12, 0(r12)
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	and r13, r12, r21
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	setlt.u r13, r16, r13
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r13, zero, .LBB0_971
# %bb.973:                              #   in Loop: Header=BB0_972 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 524288
	and r12, r12, r13
	or r12, r12, r16
	j .LBB0_971
.LBB0_974:                              # %vector.body472.preheader
                                        #   in Loop: Header=BB0_969 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_976
.LBB0_975:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 1228 11 is_stmt 1             # parallel-rne.mlir:1228:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1236 13                       # parallel-rne.mlir:1236:13
	add.s r11, r24, r11
	.loc	1 1228 11                       # parallel-rne.mlir:1228:11
	seteq.d r15, r[13:14], r[4:5]
	.loc	1 1236 13                       # parallel-rne.mlir:1236:13
	stores.w r20, 12(r11)
	stores.w r19, 8(r11)
	stores.w r12, 4(r11)
	stores.w r2, 0(r11)
	stores.w r1, 28(r11)
	stores.w r25, 24(r11)
	stores.w r18, 20(r11)
	stores.w r28, 16(r11)
	.loc	1 1228 11                       # parallel-rne.mlir:1228:11
	bneq r15, zero, .LBB0_968
.LBB0_976:                              # %vector.body472
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_969 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	add.ul r[1:2], r[13:14], r[9:10]
	lui r15, 524288
	slli r11, r1, 2
	add.s r17, r6, r11
	loads.w r2, 0(r17)
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	and r1, r2, r21
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	setlt.u r1, r16, r1
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r1, zero, .LBB0_978
# %bb.977:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r1, r2, r15
	or r2, r1, r16
.LBB0_978:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r12, 4(r17)
	and r1, r12, r21
	setlt.u r1, r16, r1
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r1, zero, .LBB0_980
# %bb.979:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r12, r15
	or r12, r1, r16
.LBB0_980:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r19, 8(r17)
	and r1, r19, r21
	setlt.u r1, r16, r1
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r1, zero, .LBB0_982
# %bb.981:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r19, r15
	or r19, r1, r16
.LBB0_982:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r20, 12(r17)
	and r1, r20, r21
	setlt.u r1, r16, r1
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r1, zero, .LBB0_984
# %bb.983:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r20, r15
	or r20, r1, r16
.LBB0_984:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r28, 16(r17)
	and r1, r28, r21
	setlt.u r1, r16, r1
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r1, zero, .LBB0_986
# %bb.985:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r28, r15
	or r28, r1, r16
.LBB0_986:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r18, 20(r17)
	and r1, r18, r21
	setlt.u r1, r16, r1
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r1, zero, .LBB0_988
# %bb.987:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r18, r15
	or r18, r1, r16
.LBB0_988:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r25, 24(r17)
	and r1, r25, r21
	setlt.u r1, r16, r1
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r1, zero, .LBB0_990
# %bb.989:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r25, r15
	or r25, r1, r16
.LBB0_990:                              # %vector.body472
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r1, 28(r17)
	and r15, r1, r21
	setlt.u r15, r16, r15
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	beq r15, zero, .LBB0_975
# %bb.991:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r15, 524288
	and r1, r1, r15
	or r1, r1, r16
	j .LBB0_975
.LBB0_992:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1220 7                        # parallel-rne.mlir:1220:7
	mfence { sm }
.LBB0_993:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1241 7                        # parallel-rne.mlir:1241:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1242 7                        # parallel-rne.mlir:1242:7
	addli r1, zero, 3
	.loc	1 1241 7                        # parallel-rne.mlir:1241:7
	sync_core
	.loc	1 1242 7                        # parallel-rne.mlir:1242:7
	bneq r11, r1, .LBB0_995
# %bb.994:                              # %.critedge31
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	addli r7, zero, 40
	xsignal r1, 0
	.loc	1 1243 7                        # parallel-rne.mlir:1243:7
	xsignal r7, 0
	.loc	1 1246 13                       # parallel-rne.mlir:1246:13
	loadli.w r1,  -24(r30)
	addli r2, r1, 1
	storeli.w r2, -24(r30)
	.loc	1 1248 7                        # parallel-rne.mlir:1248:7
	addli r2, zero, 18
	xwait r2, 0
	.loc	1 1250 7                        # parallel-rne.mlir:1250:7
	addli r2, zero, 44
	.loc	1 1249 7                        # parallel-rne.mlir:1249:7
	xwait r7, 0
	.loc	1 1250 7                        # parallel-rne.mlir:1250:7
	xwait r2, 0
	j .LBB0_998
.LBB0_995:                              # %.critedge29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1244 7                        # parallel-rne.mlir:1244:7
	bneq r11, r10, .LBB0_997
# %bb.996:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	addli r2, zero, 1023
	addli r7, zero, 3
	xwait r1, 0
	addli r1, zero, 2
	lock zero, r1
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 1
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r7, zero, zero, 10
	loadli.w r7,  -388(r30)                 # 4-byte Folded Reload
	ew_cfg r1, r2, r7, 11
	addli r2, zero, 4
	lui r7, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r2, r7, 14
	ew_cfg zero, zero, zero, 15
	sslut r24, r24, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r1
	addli r1, zero, 18
	xsignal r1, 0
.LBB0_997:                              # %.thread118
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1246 13                       # parallel-rne.mlir:1246:13
	loadli.w r1,  -24(r30)
	addli r2, r1, 1
	storeli.w r2, -24(r30)
.LBB0_998:                              # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 2
	mod.s r1, r1, r2
	loadli.w r2,  -376(r30)                 # 4-byte Folded Reload
	slli r1, r1, 12
	add.s r2, r1, r2
	seteq r1, r2, r6
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	seteq r1, r2, r24
	.loc	1 1252 7                        # parallel-rne.mlir:1252:7
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	.loc	1 1254 7                        # parallel-rne.mlir:1254:7
	addli r1, zero, 255
	.loc	1 1252 7                        # parallel-rne.mlir:1252:7
	xfence
	.loc	1 1253 7                        # parallel-rne.mlir:1253:7
	mfence { lm, sm, gm }
	.loc	1 1254 7                        # parallel-rne.mlir:1254:7
	csr_set csr5, r1
	sync_core
	.loc	1 1255 7                        # parallel-rne.mlir:1255:7
	beq r11, zero, .LBB0_1111
# %bb.999:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1280 7                        # parallel-rne.mlir:1280:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_1147
.LBB0_1000:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 4
	zext_int2long r[7:8], r1
	j .LBB0_1002
.LBB0_1001:                             # %middle.block453
                                        #   in Loop: Header=BB0_1002 Depth=2
	.loc	1 1287 9                        # parallel-rne.mlir:1287:9
	load.d r[7:8], -256(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1035
.LBB0_1002:                             # %.preheader138
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1012 Depth 3
                                        #       Child Loop BB0_1006 Depth 3
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1009
# %bb.1003:                             # %scalar.ph444.preheader
                                        #   in Loop: Header=BB0_1002 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1006
.LBB0_1004:                             # %scalar.ph444
                                        #   in Loop: Header=BB0_1006 Depth=3
	addli r9, r10, 0
.LBB0_1005:                             # %scalar.ph444
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1300 13 is_stmt 1             # parallel-rne.mlir:1300:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1001
.LBB0_1006:                             # %scalar.ph444
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1002 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	add.ul r[9:10], r[7:8], r[13:14]
	slli r1, r9, 2
	add.s r9, r6, r1
	loads.w r11, 0(r9)
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	add.s r9, r24, r1
	loads.w r10, 0(r9)
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	and r9, r11, r3
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r9, zero, .LBB0_1008
# %bb.1007:                             # %scalar.ph444
                                        #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	and r11, r11, r27
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	beq r11, r27, .LBB0_1005
	j .LBB0_1004
.LBB0_1008:                             #   in Loop: Header=BB0_1006 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	and r11, r11, r27
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	beq r11, r27, .LBB0_1005
	j .LBB0_1004
.LBB0_1009:                             # %vector.body446.preheader
                                        #   in Loop: Header=BB0_1002 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1012
.LBB0_1010:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 28(r8)
.LBB0_1011:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 1300 13 is_stmt 1             # parallel-rne.mlir:1300:13
	add.s r8, r2, r11
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1300 13                       # parallel-rne.mlir:1300:13
	stores.w r10, 12(r8)
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	seteq.d r10, r[19:20], r[4:5]
	.loc	1 1300 13                       # parallel-rne.mlir:1300:13
	stores.w r9, 8(r8)
	stores.w r17, 4(r8)
	stores.w r7, 0(r8)
	stores.w r1, 28(r8)
	stores.w r25, 24(r8)
	stores.w r18, 20(r8)
	stores.w r28, 16(r8)
	.loc	1 1288 11                       # parallel-rne.mlir:1288:11
	bneq r10, zero, .LBB0_1001
.LBB0_1012:                             # %vector.body446
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1002 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	add.ul r[7:8], r[19:20], r[13:14]
	slli r11, r7, 2
	add.s r12, r6, r11
	loads.w r1, 0(r12)
	.loc	1 1293 19                       # parallel-rne.mlir:1293:19
	and r7, r1, r27
	.loc	1 1295 19                       # parallel-rne.mlir:1295:19
	and r8, r1, r3
	.loc	1 1294 19                       # parallel-rne.mlir:1294:19
	seteq r7, r7, r27
	.loc	1 1296 19                       # parallel-rne.mlir:1296:19
	setneq r8, r8, zero
	.loc	1 1297 19                       # parallel-rne.mlir:1297:19
	and r7, r7, r8
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	add.s r8, r24, r11
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r7, zero, .LBB0_1014
# %bb.1013:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r8)
	j .LBB0_1015
.LBB0_1014:                             #   in Loop: Header=BB0_1012 Depth=3
	lui r7, 1024
	or r7, r1, r7
.LBB0_1015:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 4(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r9, zero, .LBB0_1017
# %bb.1016:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r8)
	j .LBB0_1018
.LBB0_1017:                             #   in Loop: Header=BB0_1012 Depth=3
	lui r9, 1024
	or r17, r1, r9
.LBB0_1018:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 8(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r9, zero, .LBB0_1020
# %bb.1019:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r8)
	j .LBB0_1021
.LBB0_1020:                             #   in Loop: Header=BB0_1012 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1021:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 12(r12)
	and r10, r1, r27
	and r15, r1, r3
	seteq r10, r10, r27
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r10, zero, .LBB0_1023
# %bb.1022:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
	j .LBB0_1024
.LBB0_1023:                             #   in Loop: Header=BB0_1012 Depth=3
	lui r10, 1024
	or r10, r1, r10
.LBB0_1024:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r15, zero, .LBB0_1026
# %bb.1025:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r8)
	j .LBB0_1027
.LBB0_1026:                             #   in Loop: Header=BB0_1012 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1027:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r15, zero, .LBB0_1029
# %bb.1028:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r8)
	j .LBB0_1030
.LBB0_1029:                             #   in Loop: Header=BB0_1012 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1030:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	bneq r15, zero, .LBB0_1032
# %bb.1031:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r8)
	j .LBB0_1033
.LBB0_1032:                             #   in Loop: Header=BB0_1012 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1033:                             # %vector.body446
                                        #   in Loop: Header=BB0_1012 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	beq r12, zero, .LBB0_1010
# %bb.1034:                             #   in Loop: Header=BB0_1012 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r1, r1, r8
	.loc	1 1298 19                       # parallel-rne.mlir:1298:19
	j .LBB0_1011
.LBB0_1035:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1280 7                        # parallel-rne.mlir:1280:7
	mfence { sm }
	.loc	1 1305 7                        # parallel-rne.mlir:1305:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1148
.LBB0_1036:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_1184
.LBB0_1037:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 12
	zext_int2long r[7:8], r1
	j .LBB0_1039
.LBB0_1038:                             # %middle.block425
                                        #   in Loop: Header=BB0_1039 Depth=2
	.loc	1 1337 9                        # parallel-rne.mlir:1337:9
	load.d r[7:8], -240(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1072
.LBB0_1039:                             # %.preheader136
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1049 Depth 3
                                        #       Child Loop BB0_1043 Depth 3
	.loc	1 1338 11                       # parallel-rne.mlir:1338:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1046
# %bb.1040:                             # %scalar.ph416.preheader
                                        #   in Loop: Header=BB0_1039 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1043
.LBB0_1041:                             # %scalar.ph416
                                        #   in Loop: Header=BB0_1043 Depth=3
	addli r9, r10, 0
.LBB0_1042:                             # %scalar.ph416
                                        #   in Loop: Header=BB0_1043 Depth=3
	.loc	1 1338 11                       # parallel-rne.mlir:1338:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1350 13 is_stmt 1             # parallel-rne.mlir:1350:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1338 11                       # parallel-rne.mlir:1338:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1038
.LBB0_1043:                             # %scalar.ph416
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1039 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1339 19                       # parallel-rne.mlir:1339:19
	add.ul r[9:10], r[7:8], r[13:14]
	slli r1, r9, 2
	add.s r9, r6, r1
	loads.w r11, 0(r9)
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	add.s r9, r24, r1
	loads.w r10, 0(r9)
	.loc	1 1345 19                       # parallel-rne.mlir:1345:19
	and r9, r11, r3
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r9, zero, .LBB0_1045
# %bb.1044:                             # %scalar.ph416
                                        #   in Loop: Header=BB0_1043 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	and r11, r11, r27
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	beq r11, r27, .LBB0_1042
	j .LBB0_1041
.LBB0_1045:                             #   in Loop: Header=BB0_1043 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	and r11, r11, r27
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	beq r11, r27, .LBB0_1042
	j .LBB0_1041
.LBB0_1046:                             # %vector.body418.preheader
                                        #   in Loop: Header=BB0_1039 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1049
.LBB0_1047:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 28(r8)
.LBB0_1048:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 1350 13 is_stmt 1             # parallel-rne.mlir:1350:13
	add.s r8, r2, r11
	.loc	1 1338 11                       # parallel-rne.mlir:1338:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1350 13                       # parallel-rne.mlir:1350:13
	stores.w r10, 12(r8)
	.loc	1 1338 11                       # parallel-rne.mlir:1338:11
	seteq.d r10, r[19:20], r[4:5]
	.loc	1 1350 13                       # parallel-rne.mlir:1350:13
	stores.w r9, 8(r8)
	stores.w r17, 4(r8)
	stores.w r7, 0(r8)
	stores.w r1, 28(r8)
	stores.w r25, 24(r8)
	stores.w r18, 20(r8)
	stores.w r28, 16(r8)
	.loc	1 1338 11                       # parallel-rne.mlir:1338:11
	bneq r10, zero, .LBB0_1038
.LBB0_1049:                             # %vector.body418
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1039 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1339 19                       # parallel-rne.mlir:1339:19
	add.ul r[7:8], r[19:20], r[13:14]
	slli r11, r7, 2
	add.s r12, r6, r11
	loads.w r1, 0(r12)
	.loc	1 1343 19                       # parallel-rne.mlir:1343:19
	and r7, r1, r27
	.loc	1 1345 19                       # parallel-rne.mlir:1345:19
	and r8, r1, r3
	.loc	1 1344 19                       # parallel-rne.mlir:1344:19
	seteq r7, r7, r27
	.loc	1 1346 19                       # parallel-rne.mlir:1346:19
	setneq r8, r8, zero
	.loc	1 1347 19                       # parallel-rne.mlir:1347:19
	and r7, r7, r8
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	add.s r8, r24, r11
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r7, zero, .LBB0_1051
# %bb.1050:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r8)
	j .LBB0_1052
.LBB0_1051:                             #   in Loop: Header=BB0_1049 Depth=3
	lui r7, 1024
	or r7, r1, r7
.LBB0_1052:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 4(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r9, zero, .LBB0_1054
# %bb.1053:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r8)
	j .LBB0_1055
.LBB0_1054:                             #   in Loop: Header=BB0_1049 Depth=3
	lui r9, 1024
	or r17, r1, r9
.LBB0_1055:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 8(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r9, zero, .LBB0_1057
# %bb.1056:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r8)
	j .LBB0_1058
.LBB0_1057:                             #   in Loop: Header=BB0_1049 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1058:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 12(r12)
	and r10, r1, r27
	and r15, r1, r3
	seteq r10, r10, r27
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r10, zero, .LBB0_1060
# %bb.1059:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
	j .LBB0_1061
.LBB0_1060:                             #   in Loop: Header=BB0_1049 Depth=3
	lui r10, 1024
	or r10, r1, r10
.LBB0_1061:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r15, zero, .LBB0_1063
# %bb.1062:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r8)
	j .LBB0_1064
.LBB0_1063:                             #   in Loop: Header=BB0_1049 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1064:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r15, zero, .LBB0_1066
# %bb.1065:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r8)
	j .LBB0_1067
.LBB0_1066:                             #   in Loop: Header=BB0_1049 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1067:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	bneq r15, zero, .LBB0_1069
# %bb.1068:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r8)
	j .LBB0_1070
.LBB0_1069:                             #   in Loop: Header=BB0_1049 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1070:                             # %vector.body418
                                        #   in Loop: Header=BB0_1049 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	beq r12, zero, .LBB0_1047
# %bb.1071:                             #   in Loop: Header=BB0_1049 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r1, r1, r8
	.loc	1 1348 19                       # parallel-rne.mlir:1348:19
	j .LBB0_1048
.LBB0_1072:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	mfence { sm }
	.loc	1 1355 7                        # parallel-rne.mlir:1355:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1185
.LBB0_1073:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1380 7                        # parallel-rne.mlir:1380:7
	bneq r11, r10, .LBB0_1221
.LBB0_1074:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 20
	zext_int2long r[7:8], r1
	j .LBB0_1076
.LBB0_1075:                             # %middle.block397
                                        #   in Loop: Header=BB0_1076 Depth=2
	.loc	1 1387 9                        # parallel-rne.mlir:1387:9
	load.d r[7:8], -224(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1109
.LBB0_1076:                             # %.preheader134
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1086 Depth 3
                                        #       Child Loop BB0_1080 Depth 3
	.loc	1 1388 11                       # parallel-rne.mlir:1388:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1083
# %bb.1077:                             # %scalar.ph388.preheader
                                        #   in Loop: Header=BB0_1076 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1080
.LBB0_1078:                             # %scalar.ph388
                                        #   in Loop: Header=BB0_1080 Depth=3
	addli r9, r10, 0
.LBB0_1079:                             # %scalar.ph388
                                        #   in Loop: Header=BB0_1080 Depth=3
	.loc	1 1388 11                       # parallel-rne.mlir:1388:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1400 13 is_stmt 1             # parallel-rne.mlir:1400:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1388 11                       # parallel-rne.mlir:1388:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1075
.LBB0_1080:                             # %scalar.ph388
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1076 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1389 19                       # parallel-rne.mlir:1389:19
	add.ul r[9:10], r[7:8], r[13:14]
	slli r1, r9, 2
	add.s r9, r6, r1
	loads.w r11, 0(r9)
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	add.s r9, r24, r1
	loads.w r10, 0(r9)
	.loc	1 1395 19                       # parallel-rne.mlir:1395:19
	and r9, r11, r3
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r9, zero, .LBB0_1082
# %bb.1081:                             # %scalar.ph388
                                        #   in Loop: Header=BB0_1080 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	and r11, r11, r27
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	beq r11, r27, .LBB0_1079
	j .LBB0_1078
.LBB0_1082:                             #   in Loop: Header=BB0_1080 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	and r11, r11, r27
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	beq r11, r27, .LBB0_1079
	j .LBB0_1078
.LBB0_1083:                             # %vector.body390.preheader
                                        #   in Loop: Header=BB0_1076 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1086
.LBB0_1084:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 28(r8)
.LBB0_1085:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 1400 13 is_stmt 1             # parallel-rne.mlir:1400:13
	add.s r8, r2, r11
	.loc	1 1388 11                       # parallel-rne.mlir:1388:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1400 13                       # parallel-rne.mlir:1400:13
	stores.w r10, 12(r8)
	.loc	1 1388 11                       # parallel-rne.mlir:1388:11
	seteq.d r10, r[19:20], r[4:5]
	.loc	1 1400 13                       # parallel-rne.mlir:1400:13
	stores.w r9, 8(r8)
	stores.w r17, 4(r8)
	stores.w r7, 0(r8)
	stores.w r1, 28(r8)
	stores.w r25, 24(r8)
	stores.w r18, 20(r8)
	stores.w r28, 16(r8)
	.loc	1 1388 11                       # parallel-rne.mlir:1388:11
	bneq r10, zero, .LBB0_1075
.LBB0_1086:                             # %vector.body390
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1076 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1389 19                       # parallel-rne.mlir:1389:19
	add.ul r[7:8], r[19:20], r[13:14]
	slli r11, r7, 2
	add.s r12, r6, r11
	loads.w r1, 0(r12)
	.loc	1 1393 19                       # parallel-rne.mlir:1393:19
	and r7, r1, r27
	.loc	1 1395 19                       # parallel-rne.mlir:1395:19
	and r8, r1, r3
	.loc	1 1394 19                       # parallel-rne.mlir:1394:19
	seteq r7, r7, r27
	.loc	1 1396 19                       # parallel-rne.mlir:1396:19
	setneq r8, r8, zero
	.loc	1 1397 19                       # parallel-rne.mlir:1397:19
	and r7, r7, r8
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	add.s r8, r24, r11
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r7, zero, .LBB0_1088
# %bb.1087:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r8)
	j .LBB0_1089
.LBB0_1088:                             #   in Loop: Header=BB0_1086 Depth=3
	lui r7, 1024
	or r7, r1, r7
.LBB0_1089:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 4(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r9, zero, .LBB0_1091
# %bb.1090:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r8)
	j .LBB0_1092
.LBB0_1091:                             #   in Loop: Header=BB0_1086 Depth=3
	lui r9, 1024
	or r17, r1, r9
.LBB0_1092:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 8(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r9, zero, .LBB0_1094
# %bb.1093:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r8)
	j .LBB0_1095
.LBB0_1094:                             #   in Loop: Header=BB0_1086 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1095:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 12(r12)
	and r10, r1, r27
	and r15, r1, r3
	seteq r10, r10, r27
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r10, zero, .LBB0_1097
# %bb.1096:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
	j .LBB0_1098
.LBB0_1097:                             #   in Loop: Header=BB0_1086 Depth=3
	lui r10, 1024
	or r10, r1, r10
.LBB0_1098:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r15, zero, .LBB0_1100
# %bb.1099:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r8)
	j .LBB0_1101
.LBB0_1100:                             #   in Loop: Header=BB0_1086 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1101:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r15, zero, .LBB0_1103
# %bb.1102:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r8)
	j .LBB0_1104
.LBB0_1103:                             #   in Loop: Header=BB0_1086 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1104:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	bneq r15, zero, .LBB0_1106
# %bb.1105:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r8)
	j .LBB0_1107
.LBB0_1106:                             #   in Loop: Header=BB0_1086 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1107:                             # %vector.body390
                                        #   in Loop: Header=BB0_1086 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	beq r12, zero, .LBB0_1084
# %bb.1108:                             #   in Loop: Header=BB0_1086 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r1, r1, r8
	.loc	1 1398 19                       # parallel-rne.mlir:1398:19
	j .LBB0_1085
.LBB0_1109:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1380 7                        # parallel-rne.mlir:1380:7
	mfence { sm }
	.loc	1 1405 7                        # parallel-rne.mlir:1405:7
	addli r1, zero, 6
	beq r11, r1, .LBB0_1222
.LBB0_1110:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1430 7                        # parallel-rne.mlir:1430:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1258
	j .LBB0_1294
.LBB0_1111:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1255 7                        # parallel-rne.mlir:1255:7
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	zext_int2long r[7:8], zero
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	j .LBB0_1113
.LBB0_1112:                             # %middle.block467
                                        #   in Loop: Header=BB0_1113 Depth=2
	.loc	1 1262 9                        # parallel-rne.mlir:1262:9
	load.d r[7:8], -264(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1146
.LBB0_1113:                             # %.preheader139
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1123 Depth 3
                                        #       Child Loop BB0_1117 Depth 3
	.loc	1 1263 11                       # parallel-rne.mlir:1263:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1120
# %bb.1114:                             # %scalar.ph458.preheader
                                        #   in Loop: Header=BB0_1113 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1117
.LBB0_1115:                             # %scalar.ph458
                                        #   in Loop: Header=BB0_1117 Depth=3
	addli r9, r10, 0
.LBB0_1116:                             # %scalar.ph458
                                        #   in Loop: Header=BB0_1117 Depth=3
	.loc	1 1263 11                       # parallel-rne.mlir:1263:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1275 13 is_stmt 1             # parallel-rne.mlir:1275:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1263 11                       # parallel-rne.mlir:1263:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1112
.LBB0_1117:                             # %scalar.ph458
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1264 19                       # parallel-rne.mlir:1264:19
	add.ul r[9:10], r[7:8], r[13:14]
	slli r1, r9, 2
	add.s r9, r6, r1
	loads.w r11, 0(r9)
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	add.s r9, r24, r1
	loads.w r10, 0(r9)
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	and r9, r11, r3
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r9, zero, .LBB0_1119
# %bb.1118:                             # %scalar.ph458
                                        #   in Loop: Header=BB0_1117 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	and r11, r11, r27
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	beq r11, r27, .LBB0_1116
	j .LBB0_1115
.LBB0_1119:                             #   in Loop: Header=BB0_1117 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	and r11, r11, r27
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	beq r11, r27, .LBB0_1116
	j .LBB0_1115
.LBB0_1120:                             # %vector.body460.preheader
                                        #   in Loop: Header=BB0_1113 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1123
.LBB0_1121:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 28(r8)
.LBB0_1122:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 1263 11 is_stmt 1             # parallel-rne.mlir:1263:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1275 13                       # parallel-rne.mlir:1275:13
	add.s r8, r2, r11
	.loc	1 1263 11                       # parallel-rne.mlir:1263:11
	seteq.d r11, r[19:20], r[4:5]
	.loc	1 1275 13                       # parallel-rne.mlir:1275:13
	stores.w r17, 12(r8)
	stores.w r10, 8(r8)
	stores.w r9, 4(r8)
	stores.w r7, 0(r8)
	stores.w r1, 28(r8)
	stores.w r25, 24(r8)
	stores.w r18, 20(r8)
	stores.w r28, 16(r8)
	.loc	1 1263 11                       # parallel-rne.mlir:1263:11
	bneq r11, zero, .LBB0_1112
.LBB0_1123:                             # %vector.body460
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1113 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1264 19                       # parallel-rne.mlir:1264:19
	add.ul r[7:8], r[19:20], r[13:14]
	slli r11, r7, 2
	add.s r12, r6, r11
	loads.w r1, 0(r12)
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	and r7, r1, r27
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	and r8, r1, r3
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	seteq r7, r7, r27
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	setneq r8, r8, zero
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	and r7, r7, r8
	.loc	1 1265 19                       # parallel-rne.mlir:1265:19
	add.s r8, r24, r11
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r7, zero, .LBB0_1125
# %bb.1124:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r8)
	j .LBB0_1126
.LBB0_1125:                             #   in Loop: Header=BB0_1123 Depth=3
	lui r7, 1024
	or r7, r1, r7
.LBB0_1126:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 4(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r9, zero, .LBB0_1128
# %bb.1127:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 4(r8)
	j .LBB0_1129
.LBB0_1128:                             #   in Loop: Header=BB0_1123 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1129:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 8(r12)
	and r10, r1, r27
	and r15, r1, r3
	seteq r10, r10, r27
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r10, zero, .LBB0_1131
# %bb.1130:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r8)
	j .LBB0_1132
.LBB0_1131:                             #   in Loop: Header=BB0_1123 Depth=3
	lui r10, 1024
	or r10, r1, r10
.LBB0_1132:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 12(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r15, zero, .LBB0_1134
# %bb.1133:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r8)
	j .LBB0_1135
.LBB0_1134:                             #   in Loop: Header=BB0_1123 Depth=3
	lui r15, 1024
	or r17, r1, r15
.LBB0_1135:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r15, zero, .LBB0_1137
# %bb.1136:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r8)
	j .LBB0_1138
.LBB0_1137:                             #   in Loop: Header=BB0_1123 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1138:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r15, zero, .LBB0_1140
# %bb.1139:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r8)
	j .LBB0_1141
.LBB0_1140:                             #   in Loop: Header=BB0_1123 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1141:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	bneq r15, zero, .LBB0_1143
# %bb.1142:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r8)
	j .LBB0_1144
.LBB0_1143:                             #   in Loop: Header=BB0_1123 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1144:                             # %vector.body460
                                        #   in Loop: Header=BB0_1123 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	beq r12, zero, .LBB0_1121
# %bb.1145:                             #   in Loop: Header=BB0_1123 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r1, r1, r8
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	j .LBB0_1122
.LBB0_1146:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1255 7                        # parallel-rne.mlir:1255:7
	mfence { sm }
	.loc	1 1280 7                        # parallel-rne.mlir:1280:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_1000
.LBB0_1147:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1305 7                        # parallel-rne.mlir:1305:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1036
.LBB0_1148:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	zext_int2long r[7:8], r1
	j .LBB0_1150
.LBB0_1149:                             # %middle.block439
                                        #   in Loop: Header=BB0_1150 Depth=2
	.loc	1 1312 9                        # parallel-rne.mlir:1312:9
	load.d r[7:8], -248(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1183
.LBB0_1150:                             # %.preheader137
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1160 Depth 3
                                        #       Child Loop BB0_1154 Depth 3
	.loc	1 1313 11                       # parallel-rne.mlir:1313:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1157
# %bb.1151:                             # %scalar.ph430.preheader
                                        #   in Loop: Header=BB0_1150 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1154
.LBB0_1152:                             # %scalar.ph430
                                        #   in Loop: Header=BB0_1154 Depth=3
	addli r9, r10, 0
.LBB0_1153:                             # %scalar.ph430
                                        #   in Loop: Header=BB0_1154 Depth=3
	.loc	1 1313 11                       # parallel-rne.mlir:1313:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1325 13 is_stmt 1             # parallel-rne.mlir:1325:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1313 11                       # parallel-rne.mlir:1313:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1149
.LBB0_1154:                             # %scalar.ph430
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	add.ul r[9:10], r[7:8], r[13:14]
	slli r1, r9, 2
	add.s r9, r6, r1
	loads.w r11, 0(r9)
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	add.s r9, r24, r1
	loads.w r10, 0(r9)
	.loc	1 1320 19                       # parallel-rne.mlir:1320:19
	and r9, r11, r3
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r9, zero, .LBB0_1156
# %bb.1155:                             # %scalar.ph430
                                        #   in Loop: Header=BB0_1154 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	and r11, r11, r27
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	beq r11, r27, .LBB0_1153
	j .LBB0_1152
.LBB0_1156:                             #   in Loop: Header=BB0_1154 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	and r11, r11, r27
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	beq r11, r27, .LBB0_1153
	j .LBB0_1152
.LBB0_1157:                             # %vector.body432.preheader
                                        #   in Loop: Header=BB0_1150 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1160
.LBB0_1158:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 28(r8)
.LBB0_1159:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 1325 13 is_stmt 1             # parallel-rne.mlir:1325:13
	add.s r8, r2, r11
	.loc	1 1313 11                       # parallel-rne.mlir:1313:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1325 13                       # parallel-rne.mlir:1325:13
	stores.w r10, 12(r8)
	.loc	1 1313 11                       # parallel-rne.mlir:1313:11
	seteq.d r10, r[19:20], r[4:5]
	.loc	1 1325 13                       # parallel-rne.mlir:1325:13
	stores.w r9, 8(r8)
	stores.w r17, 4(r8)
	stores.w r7, 0(r8)
	stores.w r1, 28(r8)
	stores.w r25, 24(r8)
	stores.w r18, 20(r8)
	stores.w r28, 16(r8)
	.loc	1 1313 11                       # parallel-rne.mlir:1313:11
	bneq r10, zero, .LBB0_1149
.LBB0_1160:                             # %vector.body432
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1150 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	add.ul r[7:8], r[19:20], r[13:14]
	slli r11, r7, 2
	add.s r12, r6, r11
	loads.w r1, 0(r12)
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	and r7, r1, r27
	.loc	1 1320 19                       # parallel-rne.mlir:1320:19
	and r8, r1, r3
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	seteq r7, r7, r27
	.loc	1 1321 19                       # parallel-rne.mlir:1321:19
	setneq r8, r8, zero
	.loc	1 1322 19                       # parallel-rne.mlir:1322:19
	and r7, r7, r8
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	add.s r8, r24, r11
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r7, zero, .LBB0_1162
# %bb.1161:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r8)
	j .LBB0_1163
.LBB0_1162:                             #   in Loop: Header=BB0_1160 Depth=3
	lui r7, 1024
	or r7, r1, r7
.LBB0_1163:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 4(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r9, zero, .LBB0_1165
# %bb.1164:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r8)
	j .LBB0_1166
.LBB0_1165:                             #   in Loop: Header=BB0_1160 Depth=3
	lui r9, 1024
	or r17, r1, r9
.LBB0_1166:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 8(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r9, zero, .LBB0_1168
# %bb.1167:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r8)
	j .LBB0_1169
.LBB0_1168:                             #   in Loop: Header=BB0_1160 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1169:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 12(r12)
	and r10, r1, r27
	and r15, r1, r3
	seteq r10, r10, r27
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r10, zero, .LBB0_1171
# %bb.1170:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
	j .LBB0_1172
.LBB0_1171:                             #   in Loop: Header=BB0_1160 Depth=3
	lui r10, 1024
	or r10, r1, r10
.LBB0_1172:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r15, zero, .LBB0_1174
# %bb.1173:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r8)
	j .LBB0_1175
.LBB0_1174:                             #   in Loop: Header=BB0_1160 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1175:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r15, zero, .LBB0_1177
# %bb.1176:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r8)
	j .LBB0_1178
.LBB0_1177:                             #   in Loop: Header=BB0_1160 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1178:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r15, zero, .LBB0_1180
# %bb.1179:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r8)
	j .LBB0_1181
.LBB0_1180:                             #   in Loop: Header=BB0_1160 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1181:                             # %vector.body432
                                        #   in Loop: Header=BB0_1160 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	beq r12, zero, .LBB0_1158
# %bb.1182:                             #   in Loop: Header=BB0_1160 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r1, r1, r8
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	j .LBB0_1159
.LBB0_1183:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1305 7                        # parallel-rne.mlir:1305:7
	mfence { sm }
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	addli r1, zero, 3
	beq r11, r1, .LBB0_1037
.LBB0_1184:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1355 7                        # parallel-rne.mlir:1355:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1073
.LBB0_1185:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 16
	zext_int2long r[7:8], r1
	j .LBB0_1187
.LBB0_1186:                             # %middle.block411
                                        #   in Loop: Header=BB0_1187 Depth=2
	.loc	1 1362 9                        # parallel-rne.mlir:1362:9
	load.d r[7:8], -232(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1220
.LBB0_1187:                             # %.preheader135
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1197 Depth 3
                                        #       Child Loop BB0_1191 Depth 3
	.loc	1 1363 11                       # parallel-rne.mlir:1363:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1194
# %bb.1188:                             # %scalar.ph402.preheader
                                        #   in Loop: Header=BB0_1187 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1191
.LBB0_1189:                             # %scalar.ph402
                                        #   in Loop: Header=BB0_1191 Depth=3
	addli r9, r10, 0
.LBB0_1190:                             # %scalar.ph402
                                        #   in Loop: Header=BB0_1191 Depth=3
	.loc	1 1363 11                       # parallel-rne.mlir:1363:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1375 13 is_stmt 1             # parallel-rne.mlir:1375:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1363 11                       # parallel-rne.mlir:1363:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1186
.LBB0_1191:                             # %scalar.ph402
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1364 19                       # parallel-rne.mlir:1364:19
	add.ul r[9:10], r[7:8], r[13:14]
	slli r1, r9, 2
	add.s r9, r6, r1
	loads.w r11, 0(r9)
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	add.s r9, r24, r1
	loads.w r10, 0(r9)
	.loc	1 1370 19                       # parallel-rne.mlir:1370:19
	and r9, r11, r3
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r9, zero, .LBB0_1193
# %bb.1192:                             # %scalar.ph402
                                        #   in Loop: Header=BB0_1191 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	and r11, r11, r27
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	beq r11, r27, .LBB0_1190
	j .LBB0_1189
.LBB0_1193:                             #   in Loop: Header=BB0_1191 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	and r11, r11, r27
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	beq r11, r27, .LBB0_1190
	j .LBB0_1189
.LBB0_1194:                             # %vector.body404.preheader
                                        #   in Loop: Header=BB0_1187 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1197
.LBB0_1195:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 28(r8)
.LBB0_1196:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 1375 13 is_stmt 1             # parallel-rne.mlir:1375:13
	add.s r8, r2, r11
	.loc	1 1363 11                       # parallel-rne.mlir:1363:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1375 13                       # parallel-rne.mlir:1375:13
	stores.w r10, 12(r8)
	.loc	1 1363 11                       # parallel-rne.mlir:1363:11
	seteq.d r10, r[19:20], r[4:5]
	.loc	1 1375 13                       # parallel-rne.mlir:1375:13
	stores.w r9, 8(r8)
	stores.w r17, 4(r8)
	stores.w r7, 0(r8)
	stores.w r1, 28(r8)
	stores.w r25, 24(r8)
	stores.w r18, 20(r8)
	stores.w r28, 16(r8)
	.loc	1 1363 11                       # parallel-rne.mlir:1363:11
	bneq r10, zero, .LBB0_1186
.LBB0_1197:                             # %vector.body404
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1187 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1364 19                       # parallel-rne.mlir:1364:19
	add.ul r[7:8], r[19:20], r[13:14]
	slli r11, r7, 2
	add.s r12, r6, r11
	loads.w r1, 0(r12)
	.loc	1 1368 19                       # parallel-rne.mlir:1368:19
	and r7, r1, r27
	.loc	1 1370 19                       # parallel-rne.mlir:1370:19
	and r8, r1, r3
	.loc	1 1369 19                       # parallel-rne.mlir:1369:19
	seteq r7, r7, r27
	.loc	1 1371 19                       # parallel-rne.mlir:1371:19
	setneq r8, r8, zero
	.loc	1 1372 19                       # parallel-rne.mlir:1372:19
	and r7, r7, r8
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	add.s r8, r24, r11
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r7, zero, .LBB0_1199
# %bb.1198:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r8)
	j .LBB0_1200
.LBB0_1199:                             #   in Loop: Header=BB0_1197 Depth=3
	lui r7, 1024
	or r7, r1, r7
.LBB0_1200:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 4(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r9, zero, .LBB0_1202
# %bb.1201:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r8)
	j .LBB0_1203
.LBB0_1202:                             #   in Loop: Header=BB0_1197 Depth=3
	lui r9, 1024
	or r17, r1, r9
.LBB0_1203:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 8(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r9, zero, .LBB0_1205
# %bb.1204:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r8)
	j .LBB0_1206
.LBB0_1205:                             #   in Loop: Header=BB0_1197 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1206:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 12(r12)
	and r10, r1, r27
	and r15, r1, r3
	seteq r10, r10, r27
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r10, zero, .LBB0_1208
# %bb.1207:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
	j .LBB0_1209
.LBB0_1208:                             #   in Loop: Header=BB0_1197 Depth=3
	lui r10, 1024
	or r10, r1, r10
.LBB0_1209:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r15, zero, .LBB0_1211
# %bb.1210:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r8)
	j .LBB0_1212
.LBB0_1211:                             #   in Loop: Header=BB0_1197 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1212:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r15, zero, .LBB0_1214
# %bb.1213:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r8)
	j .LBB0_1215
.LBB0_1214:                             #   in Loop: Header=BB0_1197 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1215:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	bneq r15, zero, .LBB0_1217
# %bb.1216:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r8)
	j .LBB0_1218
.LBB0_1217:                             #   in Loop: Header=BB0_1197 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1218:                             # %vector.body404
                                        #   in Loop: Header=BB0_1197 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	beq r12, zero, .LBB0_1195
# %bb.1219:                             #   in Loop: Header=BB0_1197 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r1, r1, r8
	.loc	1 1373 19                       # parallel-rne.mlir:1373:19
	j .LBB0_1196
.LBB0_1220:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1355 7                        # parallel-rne.mlir:1355:7
	mfence { sm }
	.loc	1 1380 7                        # parallel-rne.mlir:1380:7
	beq r11, r10, .LBB0_1074
.LBB0_1221:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1405 7                        # parallel-rne.mlir:1405:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_1110
.LBB0_1222:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	zext_int2long r[7:8], r1
	j .LBB0_1224
.LBB0_1223:                             # %middle.block383
                                        #   in Loop: Header=BB0_1224 Depth=2
	.loc	1 1412 9                        # parallel-rne.mlir:1412:9
	load.d r[7:8], -216(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1257
.LBB0_1224:                             # %.preheader133
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1234 Depth 3
                                        #       Child Loop BB0_1228 Depth 3
	.loc	1 1413 11                       # parallel-rne.mlir:1413:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[7:8], r10
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1231
# %bb.1225:                             # %scalar.ph374.preheader
                                        #   in Loop: Header=BB0_1224 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1228
.LBB0_1226:                             # %scalar.ph374
                                        #   in Loop: Header=BB0_1228 Depth=3
	addli r9, r10, 0
.LBB0_1227:                             # %scalar.ph374
                                        #   in Loop: Header=BB0_1228 Depth=3
	.loc	1 1413 11                       # parallel-rne.mlir:1413:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1425 13 is_stmt 1             # parallel-rne.mlir:1425:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1413 11                       # parallel-rne.mlir:1413:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1223
.LBB0_1228:                             # %scalar.ph374
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1414 19                       # parallel-rne.mlir:1414:19
	add.ul r[9:10], r[7:8], r[13:14]
	slli r1, r9, 2
	add.s r9, r6, r1
	loads.w r11, 0(r9)
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	add.s r9, r24, r1
	loads.w r10, 0(r9)
	.loc	1 1420 19                       # parallel-rne.mlir:1420:19
	and r9, r11, r3
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r9, zero, .LBB0_1230
# %bb.1229:                             # %scalar.ph374
                                        #   in Loop: Header=BB0_1228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	and r11, r11, r27
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	beq r11, r27, .LBB0_1227
	j .LBB0_1226
.LBB0_1230:                             #   in Loop: Header=BB0_1228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r11, r9
	and r11, r11, r27
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	beq r11, r27, .LBB0_1227
	j .LBB0_1226
.LBB0_1231:                             # %vector.body376.preheader
                                        #   in Loop: Header=BB0_1224 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[19:20], zero
	j .LBB0_1234
.LBB0_1232:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 28(r8)
.LBB0_1233:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 1425 13 is_stmt 1             # parallel-rne.mlir:1425:13
	add.s r8, r2, r11
	.loc	1 1413 11                       # parallel-rne.mlir:1413:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1425 13                       # parallel-rne.mlir:1425:13
	stores.w r10, 12(r8)
	.loc	1 1413 11                       # parallel-rne.mlir:1413:11
	seteq.d r10, r[19:20], r[4:5]
	.loc	1 1425 13                       # parallel-rne.mlir:1425:13
	stores.w r9, 8(r8)
	stores.w r17, 4(r8)
	stores.w r7, 0(r8)
	stores.w r1, 28(r8)
	stores.w r25, 24(r8)
	stores.w r18, 20(r8)
	stores.w r28, 16(r8)
	.loc	1 1413 11                       # parallel-rne.mlir:1413:11
	bneq r10, zero, .LBB0_1223
.LBB0_1234:                             # %vector.body376
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1414 19                       # parallel-rne.mlir:1414:19
	add.ul r[7:8], r[19:20], r[13:14]
	slli r11, r7, 2
	add.s r12, r6, r11
	loads.w r1, 0(r12)
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	and r7, r1, r27
	.loc	1 1420 19                       # parallel-rne.mlir:1420:19
	and r8, r1, r3
	.loc	1 1419 19                       # parallel-rne.mlir:1419:19
	seteq r7, r7, r27
	.loc	1 1421 19                       # parallel-rne.mlir:1421:19
	setneq r8, r8, zero
	.loc	1 1422 19                       # parallel-rne.mlir:1422:19
	and r7, r7, r8
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	add.s r8, r24, r11
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r7, zero, .LBB0_1236
# %bb.1235:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r8)
	j .LBB0_1237
.LBB0_1236:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r7, 1024
	or r7, r1, r7
.LBB0_1237:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 4(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r9, zero, .LBB0_1239
# %bb.1238:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r8)
	j .LBB0_1240
.LBB0_1239:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r9, 1024
	or r17, r1, r9
.LBB0_1240:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 8(r12)
	and r9, r1, r27
	and r10, r1, r3
	seteq r9, r9, r27
	setneq r10, r10, zero
	and r9, r9, r10
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r9, zero, .LBB0_1242
# %bb.1241:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 8(r8)
	j .LBB0_1243
.LBB0_1242:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1243:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 12(r12)
	and r10, r1, r27
	and r15, r1, r3
	seteq r10, r10, r27
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r10, zero, .LBB0_1245
# %bb.1244:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
	j .LBB0_1246
.LBB0_1245:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r10, 1024
	or r10, r1, r10
.LBB0_1246:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r15, zero, .LBB0_1248
# %bb.1247:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r8)
	j .LBB0_1249
.LBB0_1248:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1249:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r15, zero, .LBB0_1251
# %bb.1250:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r8)
	j .LBB0_1252
.LBB0_1251:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1252:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	bneq r15, zero, .LBB0_1254
# %bb.1253:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r8)
	j .LBB0_1255
.LBB0_1254:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1255:                             # %vector.body376
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	beq r12, zero, .LBB0_1232
# %bb.1256:                             #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r1, r1, r8
	.loc	1 1423 19                       # parallel-rne.mlir:1423:19
	j .LBB0_1233
.LBB0_1257:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1405 7                        # parallel-rne.mlir:1405:7
	mfence { sm }
	.loc	1 1430 7                        # parallel-rne.mlir:1430:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1294
.LBB0_1258:                             #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	loadli.w r1,  -300(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -304(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	addli r1, zero, 28
	zext_int2long r[7:8], r1
	j .LBB0_1260
.LBB0_1259:                             # %middle.block369
                                        #   in Loop: Header=BB0_1260 Depth=2
	.loc	1 1437 9                        # parallel-rne.mlir:1437:9
	load.d r[7:8], -192(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1293
.LBB0_1260:                             # %.preheader132
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1270 Depth 3
                                        #       Child Loop BB0_1264 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	sll.d r[10:11], r[7:8], r1
	.loc	1 1438 11 is_stmt 1             # parallel-rne.mlir:1438:11
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1267
# %bb.1261:                             # %scalar.ph360.preheader
                                        #   in Loop: Header=BB0_1260 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1264
.LBB0_1262:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1264 Depth=3
	addli r9, r12, 0
.LBB0_1263:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1264 Depth=3
	.loc	1 1438 11                       # parallel-rne.mlir:1438:11
	load.d r[12:13], -192(r30)              # 8-byte Folded Reload
	.loc	1 1450 13 is_stmt 1             # parallel-rne.mlir:1450:13
	add.s r1, r2, r1
	stores.w r9, 0(r1)
	.loc	1 1438 11                       # parallel-rne.mlir:1438:11
	setlt.ul r12, r[7:8], r[12:13]
	addli.d r[7:8], r[7:8], 1
	beq r12, zero, .LBB0_1259
.LBB0_1264:                             # %scalar.ph360
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1439 19                       # parallel-rne.mlir:1439:19
	add.ul r[12:13], r[7:8], r[10:11]
	slli r1, r12, 2
	add.s r9, r6, r1
	loads.w r13, 0(r9)
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	add.s r9, r24, r1
	loads.w r12, 0(r9)
	.loc	1 1445 19                       # parallel-rne.mlir:1445:19
	and r9, r13, r3
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r9, zero, .LBB0_1266
# %bb.1265:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1264 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r12, 0
	and r13, r13, r27
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	beq r13, r27, .LBB0_1263
	j .LBB0_1262
.LBB0_1266:                             #   in Loop: Header=BB0_1264 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r13, r9
	and r13, r13, r27
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	beq r13, r27, .LBB0_1263
	j .LBB0_1262
.LBB0_1267:                             # %vector.body362.preheader
                                        #   in Loop: Header=BB0_1260 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[13:14], zero
	j .LBB0_1270
.LBB0_1268:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 28(r7)
.LBB0_1269:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 1450 13 is_stmt 1             # parallel-rne.mlir:1450:13
	add.s r7, r2, r19
	.loc	1 1438 11                       # parallel-rne.mlir:1438:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1450 13                       # parallel-rne.mlir:1450:13
	stores.w r9, 12(r7)
	.loc	1 1438 11                       # parallel-rne.mlir:1438:11
	seteq.d r9, r[13:14], r[4:5]
	.loc	1 1450 13                       # parallel-rne.mlir:1450:13
	stores.w r8, 8(r7)
	stores.w r17, 4(r7)
	stores.w r20, 0(r7)
	stores.w r1, 28(r7)
	stores.w r25, 24(r7)
	stores.w r18, 20(r7)
	stores.w r28, 16(r7)
	.loc	1 1438 11                       # parallel-rne.mlir:1438:11
	bneq r9, zero, .LBB0_1259
.LBB0_1270:                             # %vector.body362
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1439 19                       # parallel-rne.mlir:1439:19
	add.ul r[7:8], r[13:14], r[10:11]
	slli r19, r7, 2
	add.s r12, r6, r19
	loads.w r1, 0(r12)
	.loc	1 1443 19                       # parallel-rne.mlir:1443:19
	and r7, r1, r27
	.loc	1 1445 19                       # parallel-rne.mlir:1445:19
	and r8, r1, r3
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	seteq r7, r7, r27
	.loc	1 1446 19                       # parallel-rne.mlir:1446:19
	setneq r8, r8, zero
	.loc	1 1447 19                       # parallel-rne.mlir:1447:19
	and r8, r7, r8
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	add.s r7, r24, r19
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r8, zero, .LBB0_1272
# %bb.1271:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r7)
	j .LBB0_1273
.LBB0_1272:                             #   in Loop: Header=BB0_1270 Depth=3
	lui r8, 1024
	or r20, r1, r8
.LBB0_1273:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 4(r12)
	and r8, r1, r27
	and r9, r1, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r8, zero, .LBB0_1275
# %bb.1274:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 4(r7)
	j .LBB0_1276
.LBB0_1275:                             #   in Loop: Header=BB0_1270 Depth=3
	lui r8, 1024
	or r17, r1, r8
.LBB0_1276:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 8(r12)
	and r8, r1, r27
	and r9, r1, r3
	seteq r8, r8, r27
	setneq r9, r9, zero
	and r8, r8, r9
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r8, zero, .LBB0_1278
# %bb.1277:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r7)
	j .LBB0_1279
.LBB0_1278:                             #   in Loop: Header=BB0_1270 Depth=3
	lui r8, 1024
	or r8, r1, r8
.LBB0_1279:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 12(r12)
	and r9, r1, r27
	and r15, r1, r3
	seteq r9, r9, r27
	setneq r15, r15, zero
	and r9, r9, r15
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r9, zero, .LBB0_1281
# %bb.1280:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r9, 12(r7)
	j .LBB0_1282
.LBB0_1281:                             #   in Loop: Header=BB0_1270 Depth=3
	lui r9, 1024
	or r9, r1, r9
.LBB0_1282:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 16(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r15, zero, .LBB0_1284
# %bb.1283:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r7)
	j .LBB0_1285
.LBB0_1284:                             #   in Loop: Header=BB0_1270 Depth=3
	lui r15, 1024
	or r28, r1, r15
.LBB0_1285:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 20(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r15, zero, .LBB0_1287
# %bb.1286:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r18, 20(r7)
	j .LBB0_1288
.LBB0_1287:                             #   in Loop: Header=BB0_1270 Depth=3
	lui r15, 1024
	or r18, r1, r15
.LBB0_1288:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 24(r12)
	and r15, r1, r27
	and r16, r1, r3
	seteq r15, r15, r27
	setneq r16, r16, zero
	and r15, r15, r16
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	bneq r15, zero, .LBB0_1290
# %bb.1289:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r25, 24(r7)
	j .LBB0_1291
.LBB0_1290:                             #   in Loop: Header=BB0_1270 Depth=3
	lui r15, 1024
	or r25, r1, r15
.LBB0_1291:                             # %vector.body362
                                        #   in Loop: Header=BB0_1270 Depth=3
	loads.w r1, 28(r12)
	and r12, r1, r27
	and r15, r1, r3
	seteq r12, r12, r27
	setneq r15, r15, zero
	and r12, r12, r15
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	beq r12, zero, .LBB0_1268
# %bb.1292:                             #   in Loop: Header=BB0_1270 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r1, r1, r7
	.loc	1 1448 19                       # parallel-rne.mlir:1448:19
	j .LBB0_1269
.LBB0_1293:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r11
	.loc	1 1430 7                        # parallel-rne.mlir:1430:7
	mfence { sm }
.LBB0_1294:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1455 7                        # parallel-rne.mlir:1455:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1456 7                        # parallel-rne.mlir:1456:7
	addli r1, zero, 3
	.loc	1 1455 7                        # parallel-rne.mlir:1455:7
	sync_core
	.loc	1 1456 7                        # parallel-rne.mlir:1456:7
	bneq r11, r1, .LBB0_1296
# %bb.1295:                             # %.critedge37
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 19
	.loc	1 1457 7 is_stmt 1              # parallel-rne.mlir:1457:7
	addli r1, zero, 41
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	addli r6, zero, 2
	.loc	1 1456 7                        # parallel-rne.mlir:1456:7
	xsignal r7, 0
	.loc	1 1457 7                        # parallel-rne.mlir:1457:7
	xsignal r1, 0
	.loc	1 1458 7                        # parallel-rne.mlir:1458:7
	addli r1, zero, 42
	xsignal r1, 0
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	loadli.w r1,  -12(r30)
	mod.s r6, r1, r6
	addli r1, r1, 1
	storeli.w r1, -12(r30)
	.loc	1 1464 7                        # parallel-rne.mlir:1464:7
	xwait r7, 0
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	slli r1, r6, 12
	.loc	1 1465 7                        # parallel-rne.mlir:1465:7
	addli r6, zero, 31
	xwait r6, 0
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	loadli.w r6,  -380(r30)                 # 4-byte Folded Reload
	add.s r6, r1, r6
	.loc	1 1466 7                        # parallel-rne.mlir:1466:7
	addli r1, zero, 43
	xwait r1, 0
	.loc	1 1467 7                        # parallel-rne.mlir:1467:7
	addli r1, zero, 45
	xwait r1, 0
	j .LBB0_1299
.LBB0_1296:                             # %.critedge35
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1459 7                        # parallel-rne.mlir:1459:7
	bneq r11, r10, .LBB0_1298
# %bb.1297:                             # %.thread122
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 42
	addli r7, zero, 2
	addli r9, zero, 1023
	addli r8, zero, 1
	xwait r1, 0
	lock zero, r7
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	dsmadd r2, r2, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	loadli.w r1,  -12(r30)
	addli r6, r1, 1
	mod.s r1, r1, r7
	storeli.w r6, -12(r30)
	.loc	1 1462 7                        # parallel-rne.mlir:1462:7
	addli r6, zero, 30
	xwait r6, 0
	addli r6, zero, 46
	xwait r6, 0
	lock zero, r7
	lui r6, 258048
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	slli r1, r1, 12
	.loc	1 1462 7                        # parallel-rne.mlir:1462:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	loadli.w r6,  -380(r30)                 # 4-byte Folded Reload
	.loc	1 1462 7                        # parallel-rne.mlir:1462:7
	ew_cfg zero, r9, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, r8, 19
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	add.s r6, r1, r6
	.loc	1 1462 7                        # parallel-rne.mlir:1462:7
	addli r1, zero, 29
	dsmul r6, r26, r2, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	addli r1, zero, 45
	xsignal r1, 0
	.loc	1 1464 7                        # parallel-rne.mlir:1464:7
	j .LBB0_1299
.LBB0_1298:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1461 13                       # parallel-rne.mlir:1461:13
	loadli.w r1,  -12(r30)
	addli r6, zero, 2
	loadli.w r7,  -380(r30)                 # 4-byte Folded Reload
	mod.s r6, r1, r6
	addli r1, r1, 1
	storeli.w r1, -12(r30)
	slli r6, r6, 12
	add.s r6, r6, r7
.LBB0_1299:                             # %.critedge39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 13 is_stmt 0                # parallel-rne.mlir:0:13
	seteq r1, r24, r2
	.loc	1 1469 7 is_stmt 1              # parallel-rne.mlir:1469:7
	storeli.w r1, -300(r30)                 # 4-byte Folded Spill
	.loc	1 1471 7                        # parallel-rne.mlir:1471:7
	addli r1, zero, 255
	.loc	1 1469 7                        # parallel-rne.mlir:1469:7
	xfence
	.loc	1 1470 7                        # parallel-rne.mlir:1470:7
	mfence { lm, sm, gm }
	.loc	1 1471 7                        # parallel-rne.mlir:1471:7
	csr_set csr5, r1
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	sub.s r1, r24, r15
	storeli.w r1, -304(r30)                 # 4-byte Folded Spill
	sub.s r1, r24, r6
	storeli.w r1, -308(r30)                 # 4-byte Folded Spill
	sync_core
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	.loc	1 1472 7                        # parallel-rne.mlir:1472:7
	beq r11, zero, .LBB0_1456
# %bb.1300:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1518 7                        # parallel-rne.mlir:1518:7
	addli r1, zero, 1
	bneq r11, r1, .LBB0_1507
.LBB0_1301:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1518 7                        # parallel-rne.mlir:1518:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	addli r7, zero, 4
	zext_int2long r[8:9], r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -272(r30)                 # 4-byte Folded Spill
	j .LBB0_1303
.LBB0_1302:                             # %middle.block340
                                        #   in Loop: Header=BB0_1303 Depth=2
	.loc	1 1525 9 is_stmt 1              # parallel-rne.mlir:1525:9
	load.d r[7:8], -256(r30)                # 8-byte Folded Reload
	load.d r[9:10], -264(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	addli.d r[8:9], r[7:8], 0
	beq r1, zero, .LBB0_1351
.LBB0_1303:                             # %.preheader130
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1324 Depth 3
                                        #       Child Loop BB0_1307 Depth 3
	.loc	1 1526 11                       # parallel-rne.mlir:1526:11
	loadli.w r1,  -272(r30)                 # 4-byte Folded Reload
	store.d r[8:9], -264(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r10
	beq r1, zero, .LBB0_1322
# %bb.1304:                             # %scalar.ph332.preheader
                                        #   in Loop: Header=BB0_1303 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_1307
.LBB0_1305:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r1, r1, r12
.LBB0_1306:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 1526 11                       # parallel-rne.mlir:1526:11
	load.d r[12:13], -192(r30)              # 8-byte Folded Reload
	.loc	1 1559 13 is_stmt 1             # parallel-rne.mlir:1559:13
	add.s r11, r24, r11
	stores.w r1, 0(r11)
	.loc	1 1526 11                       # parallel-rne.mlir:1526:11
	setlt.ul r12, r[9:10], r[12:13]
	addli.d r[9:10], r[9:10], 1
	beq r12, zero, .LBB0_1302
.LBB0_1307:                             # %scalar.ph332
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1527 19                       # parallel-rne.mlir:1527:19
	add.ul r[11:12], r[9:10], r[7:8]
	lui r14, 523264
	slli r11, r11, 2
	.loc	1 1528 19                       # parallel-rne.mlir:1528:19
	add.s r1, r2, r11
	.loc	1 1529 19                       # parallel-rne.mlir:1529:19
	add.s r12, r6, r11
	.loc	1 1528 19                       # parallel-rne.mlir:1528:19
	loads.w r1, 0(r1)
	.loc	1 1529 19                       # parallel-rne.mlir:1529:19
	loads.w r17, 0(r12)
	lui r12, 523264
	.loc	1 1532 19                       # parallel-rne.mlir:1532:19
	and r1, r1, r21
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	beq r1, r27, .LBB0_1309
# %bb.1308:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r17, 0
.LBB0_1309:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	add.s r13, r15, r11
	loads.w r13, 0(r13)
	and r13, r13, r21
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	beq r13, zero, .LBB0_1319
# %bb.1310:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	lui r17, 523264
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r1, zero, .LBB0_1320
.LBB0_1311:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	beq r13, r27, .LBB0_1313
.LBB0_1312:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r14, 0
.LBB0_1313:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	setlt.u r14, r27, r1
	lui r1, 523264
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r14, zero, .LBB0_1315
# %bb.1314:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1315:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	setlt.u r13, r27, r13
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r13, zero, .LBB0_1317
# %bb.1316:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r1, 0
.LBB0_1317:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 1547 20 is_stmt 1             # parallel-rne.mlir:1547:20
	and r13, r12, r21
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	setlt.u r1, r27, r13
	.loc	1 1550 20                       # parallel-rne.mlir:1550:20
	bneq r1, zero, .LBB0_1321
# %bb.1318:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r12, 0
	.loc	1 1556 20 is_stmt 1             # parallel-rne.mlir:1556:20
	setlt.u r13, r23, r13
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	bneq r13, zero, .LBB0_1306
	j .LBB0_1305
.LBB0_1319:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1546 20 is_stmt 1             # parallel-rne.mlir:1546:20
	beq r1, zero, .LBB0_1311
.LBB0_1320:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r14, 0
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r13, r27, .LBB0_1312
	j .LBB0_1313
.LBB0_1321:                             #   in Loop: Header=BB0_1307 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r12, r1
	.loc	1 1556 20 is_stmt 1             # parallel-rne.mlir:1556:20
	setlt.u r13, r23, r13
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	bneq r13, zero, .LBB0_1306
	j .LBB0_1305
.LBB0_1322:                             # %vector.body334.preheader
                                        #   in Loop: Header=BB0_1303 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_1324
.LBB0_1323:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 1526 11 is_stmt 1             # parallel-rne.mlir:1526:11
	addli.d r[9:10], r[9:10], 4
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 1559 13                       # parallel-rne.mlir:1559:13
	add.s r11, r24, r11
	.loc	1 1526 11                       # parallel-rne.mlir:1526:11
	seteq.d r1, r[9:10], r[4:5]
	.loc	1 1559 13                       # parallel-rne.mlir:1559:13
	stores.w r26, 12(r11)
	stores.w r14, 8(r11)
	stores.w r28, 4(r11)
	stores.w r18, 0(r11)
	.loc	1 1526 11                       # parallel-rne.mlir:1526:11
	bneq r1, zero, .LBB0_1302
.LBB0_1324:                             # %vector.body334
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1303 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1527 19                       # parallel-rne.mlir:1527:19
	add.ul r[11:12], r[9:10], r[7:8]
	lui r19, 523264
	lui r20, 523264
	slli r11, r11, 2
	add.s r26, r15, r11
	.loc	1 1528 19                       # parallel-rne.mlir:1528:19
	add.s r13, r2, r11
	.loc	1 1527 19                       # parallel-rne.mlir:1527:19
	loads.w r1, 0(r26)
	.loc	1 1528 19                       # parallel-rne.mlir:1528:19
	loads.w r12, 0(r13)
	.loc	1 1534 19                       # parallel-rne.mlir:1534:19
	and r1, r1, r21
	.loc	1 1532 19                       # parallel-rne.mlir:1532:19
	and r12, r12, r21
	.loc	1 1535 19                       # parallel-rne.mlir:1535:19
	seteq r14, r1, r27
	.loc	1 1539 20                       # parallel-rne.mlir:1539:20
	seteq r17, r1, zero
	.loc	1 1536 19                       # parallel-rne.mlir:1536:19
	seteq r15, r12, zero
	.loc	1 1538 19                       # parallel-rne.mlir:1538:19
	seteq r16, r12, r27
	.loc	1 1544 20                       # parallel-rne.mlir:1544:20
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	.loc	1 1537 19                       # parallel-rne.mlir:1537:19
	and r12, r14, r15
	.loc	1 1540 20                       # parallel-rne.mlir:1540:20
	and r14, r17, r16
	.loc	1 1541 20                       # parallel-rne.mlir:1541:20
	or r12, r12, r14
	.loc	1 1529 19                       # parallel-rne.mlir:1529:19
	add.s r14, r6, r11
	.loc	1 1545 20                       # parallel-rne.mlir:1545:20
	or r1, r1, r12
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r1, zero, .LBB0_1326
# %bb.1325:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r20, 0(r14)
.LBB0_1326:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	loads.w r1, 4(r26)
	loads.w r12, 4(r13)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r18, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r1, zero, .LBB0_1328
# %bb.1327:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r14)
.LBB0_1328:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	loads.w r1, 8(r26)
	loads.w r15, 8(r13)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r25, r1, zero
	seteq r17, r15, zero
	seteq r18, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r25, r18
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r1, zero, .LBB0_1330
# %bb.1329:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r14)
.LBB0_1330:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	loads.w r1, 12(r26)
	loads.w r13, 12(r13)
	and r1, r1, r21
	and r13, r13, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r13, zero
	seteq r18, r13, r27
	max.u r1, r1, r13
	setlt.u r1, r27, r1
	and r13, r15, r16
	and r15, r25, r18
	or r13, r13, r15
	or r1, r1, r13
	.loc	1 1546 20                       # parallel-rne.mlir:1546:20
	bneq r1, zero, .LBB0_1332
# %bb.1331:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r19, 12(r14)
.LBB0_1332:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 1547 20 is_stmt 1             # parallel-rne.mlir:1547:20
	and r13, r19, r21
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	setlt.u r1, r27, r13
	.loc	1 1550 20                       # parallel-rne.mlir:1550:20
	bneq r1, zero, .LBB0_1334
# %bb.1333:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r26, r19, 0
	j .LBB0_1335
.LBB0_1334:                             #   in Loop: Header=BB0_1324 Depth=3
	lui r1, 1024
	or r26, r19, r1
.LBB0_1335:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1550 20                       # parallel-rne.mlir:1550:20
	bneq r1, zero, .LBB0_1337
# %bb.1336:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	j .LBB0_1338
.LBB0_1337:                             #   in Loop: Header=BB0_1324 Depth=3
	lui r1, 1024
	or r14, r17, r1
.LBB0_1338:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1550 20                       # parallel-rne.mlir:1550:20
	bneq r15, zero, .LBB0_1340
# %bb.1339:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1341
.LBB0_1340:                             #   in Loop: Header=BB0_1324 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1341:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	and r15, r20, r21
	setlt.u r16, r27, r15
	.loc	1 1550 20                       # parallel-rne.mlir:1550:20
	bneq r16, zero, .LBB0_1343
# %bb.1342:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r20, 0
	.loc	1 1556 20 is_stmt 1             # parallel-rne.mlir:1556:20
	setlt.u r15, r23, r15
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	beq r15, zero, .LBB0_1344
	j .LBB0_1345
.LBB0_1343:                             #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r18, r20, r16
	.loc	1 1556 20 is_stmt 1             # parallel-rne.mlir:1556:20
	setlt.u r15, r23, r15
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	bneq r15, zero, .LBB0_1345
.LBB0_1344:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r20, 16
	lui r16, 1048560
	andi r15, r15, 1
	add.s r15, r20, r15
	add.s r15, r15, r22
	and r18, r15, r16
.LBB0_1345:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	bneq r1, zero, .LBB0_1348
# %bb.1346:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r28, r1, r12
	setlt.u r1, r23, r25
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	beq r1, zero, .LBB0_1349
.LBB0_1347:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r13
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	bneq r1, zero, .LBB0_1323
	j .LBB0_1350
.LBB0_1348:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r25
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	bneq r1, zero, .LBB0_1347
.LBB0_1349:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r12, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r14, r1, r12
	setlt.u r1, r23, r13
	.loc	1 1557 20                       # parallel-rne.mlir:1557:20
	bneq r1, zero, .LBB0_1323
.LBB0_1350:                             # %vector.body334
                                        #   in Loop: Header=BB0_1324 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r19, 16
	lui r12, 1048560
	andi r1, r1, 1
	add.s r1, r19, r1
	add.s r1, r1, r22
	and r26, r1, r12
	j .LBB0_1323
.LBB0_1351:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1518 7 is_stmt 1              # parallel-rne.mlir:1518:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	.loc	1 1564 7                        # parallel-rne.mlir:1564:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1508
.LBB0_1352:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1610 7                        # parallel-rne.mlir:1610:7
	addli r1, zero, 3
	bneq r11, r1, .LBB0_1559
.LBB0_1353:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1610 7                        # parallel-rne.mlir:1610:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	addli r7, zero, 12
	zext_int2long r[8:9], r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -256(r30)                 # 4-byte Folded Spill
	j .LBB0_1355
.LBB0_1354:                             # %middle.block310
                                        #   in Loop: Header=BB0_1355 Depth=2
	.loc	1 1617 9 is_stmt 1              # parallel-rne.mlir:1617:9
	load.d r[7:8], -240(r30)                # 8-byte Folded Reload
	load.d r[9:10], -248(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	addli.d r[8:9], r[7:8], 0
	beq r1, zero, .LBB0_1403
.LBB0_1355:                             # %.preheader128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1376 Depth 3
                                        #       Child Loop BB0_1359 Depth 3
	.loc	1 1618 11                       # parallel-rne.mlir:1618:11
	loadli.w r1,  -256(r30)                 # 4-byte Folded Reload
	store.d r[8:9], -248(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r10
	beq r1, zero, .LBB0_1374
# %bb.1356:                             # %scalar.ph302.preheader
                                        #   in Loop: Header=BB0_1355 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[12:13], zero
	j .LBB0_1359
.LBB0_1357:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	lui r10, 1048560
	add.s r1, r1, r22
	and r1, r1, r10
.LBB0_1358:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 1618 11                       # parallel-rne.mlir:1618:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1651 13 is_stmt 1             # parallel-rne.mlir:1651:13
	add.s r9, r24, r9
	stores.w r1, 0(r9)
	.loc	1 1618 11                       # parallel-rne.mlir:1618:11
	setlt.ul r10, r[12:13], r[10:11]
	addli.d r[12:13], r[12:13], 1
	beq r10, zero, .LBB0_1354
.LBB0_1359:                             # %scalar.ph302
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1355 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1619 19                       # parallel-rne.mlir:1619:19
	add.ul r[9:10], r[12:13], r[7:8]
	lui r14, 523264
	slli r9, r9, 2
	.loc	1 1620 19                       # parallel-rne.mlir:1620:19
	add.s r1, r2, r9
	.loc	1 1621 19                       # parallel-rne.mlir:1621:19
	add.s r10, r6, r9
	.loc	1 1620 19                       # parallel-rne.mlir:1620:19
	loads.w r1, 0(r1)
	.loc	1 1621 19                       # parallel-rne.mlir:1621:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 1624 19                       # parallel-rne.mlir:1624:19
	and r1, r1, r21
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	beq r1, r27, .LBB0_1361
# %bb.1360:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r17, 0
.LBB0_1361:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	add.s r11, r15, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	beq r11, zero, .LBB0_1371
# %bb.1362:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	lui r17, 523264
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r1, zero, .LBB0_1372
.LBB0_1363:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	beq r11, r27, .LBB0_1365
.LBB0_1364:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r14, 0
.LBB0_1365:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	setlt.u r14, r27, r1
	lui r1, 523264
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r14, zero, .LBB0_1367
# %bb.1366:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1367:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	setlt.u r11, r27, r11
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r11, zero, .LBB0_1369
# %bb.1368:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
.LBB0_1369:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 1639 20 is_stmt 1             # parallel-rne.mlir:1639:20
	and r11, r10, r21
	.loc	1 1641 20                       # parallel-rne.mlir:1641:20
	setlt.u r1, r27, r11
	.loc	1 1642 20                       # parallel-rne.mlir:1642:20
	bneq r1, zero, .LBB0_1373
# %bb.1370:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r10, 0
	.loc	1 1648 20 is_stmt 1             # parallel-rne.mlir:1648:20
	setlt.u r11, r23, r11
	.loc	1 1649 20                       # parallel-rne.mlir:1649:20
	bneq r11, zero, .LBB0_1358
	j .LBB0_1357
.LBB0_1371:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1638 20 is_stmt 1             # parallel-rne.mlir:1638:20
	beq r1, zero, .LBB0_1363
.LBB0_1372:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r14, 0
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r11, r27, .LBB0_1364
	j .LBB0_1365
.LBB0_1373:                             #   in Loop: Header=BB0_1359 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r10, r1
	.loc	1 1648 20 is_stmt 1             # parallel-rne.mlir:1648:20
	setlt.u r11, r23, r11
	.loc	1 1649 20                       # parallel-rne.mlir:1649:20
	bneq r11, zero, .LBB0_1358
	j .LBB0_1357
.LBB0_1374:                             # %vector.body304.preheader
                                        #   in Loop: Header=BB0_1355 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_1376
.LBB0_1375:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 1618 11 is_stmt 1             # parallel-rne.mlir:1618:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1651 13                       # parallel-rne.mlir:1651:13
	add.s r9, r24, r9
	.loc	1 1618 11                       # parallel-rne.mlir:1618:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 1651 13                       # parallel-rne.mlir:1651:13
	stores.w r13, 12(r9)
	stores.w r11, 8(r9)
	stores.w r28, 4(r9)
	stores.w r18, 0(r9)
	.loc	1 1618 11                       # parallel-rne.mlir:1618:11
	bneq r1, zero, .LBB0_1354
.LBB0_1376:                             # %vector.body304
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1355 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1619 19                       # parallel-rne.mlir:1619:19
	add.ul r[9:10], r[19:20], r[7:8]
	lui r26, 523264
	slli r9, r9, 2
	add.s r13, r15, r9
	.loc	1 1620 19                       # parallel-rne.mlir:1620:19
	add.s r10, r2, r9
	.loc	1 1619 19                       # parallel-rne.mlir:1619:19
	loads.w r1, 0(r13)
	.loc	1 1620 19                       # parallel-rne.mlir:1620:19
	loads.w r11, 0(r10)
	.loc	1 1626 19                       # parallel-rne.mlir:1626:19
	and r1, r1, r21
	.loc	1 1624 19                       # parallel-rne.mlir:1624:19
	and r11, r11, r21
	.loc	1 1627 19                       # parallel-rne.mlir:1627:19
	seteq r12, r1, r27
	.loc	1 1631 20                       # parallel-rne.mlir:1631:20
	seteq r16, r1, zero
	.loc	1 1628 19                       # parallel-rne.mlir:1628:19
	seteq r14, r11, zero
	.loc	1 1630 19                       # parallel-rne.mlir:1630:19
	seteq r15, r11, r27
	.loc	1 1636 20                       # parallel-rne.mlir:1636:20
	max.u r1, r1, r11
	setlt.u r1, r27, r1
	.loc	1 1629 19                       # parallel-rne.mlir:1629:19
	and r11, r12, r14
	.loc	1 1632 20                       # parallel-rne.mlir:1632:20
	and r12, r16, r15
	lui r14, 523264
	.loc	1 1633 20                       # parallel-rne.mlir:1633:20
	or r12, r11, r12
	.loc	1 1621 19                       # parallel-rne.mlir:1621:19
	add.s r11, r6, r9
	.loc	1 1637 20                       # parallel-rne.mlir:1637:20
	or r1, r1, r12
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r1, zero, .LBB0_1378
# %bb.1377:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r26, 0(r11)
.LBB0_1378:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	loads.w r1, 4(r13)
	loads.w r12, 4(r10)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r18, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r1, zero, .LBB0_1380
# %bb.1379:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r11)
.LBB0_1380:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	loads.w r1, 8(r13)
	loads.w r15, 8(r10)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r25, r1, zero
	seteq r17, r15, zero
	seteq r18, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r25, r18
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r1, zero, .LBB0_1382
# %bb.1381:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r11)
.LBB0_1382:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	loads.w r1, 12(r13)
	loads.w r10, 12(r10)
	and r1, r1, r21
	and r10, r10, r21
	seteq r13, r1, r27
	seteq r18, r1, zero
	seteq r15, r10, zero
	seteq r16, r10, r27
	max.u r1, r1, r10
	setlt.u r1, r27, r1
	and r10, r13, r15
	and r13, r18, r16
	or r10, r10, r13
	or r1, r1, r10
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	bneq r1, zero, .LBB0_1384
# %bb.1383:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r14, 12(r11)
.LBB0_1384:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 1639 20 is_stmt 1             # parallel-rne.mlir:1639:20
	and r10, r14, r21
	.loc	1 1641 20                       # parallel-rne.mlir:1641:20
	setlt.u r1, r27, r10
	.loc	1 1642 20                       # parallel-rne.mlir:1642:20
	bneq r1, zero, .LBB0_1386
# %bb.1385:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r14, 0
	j .LBB0_1387
.LBB0_1386:                             #   in Loop: Header=BB0_1376 Depth=3
	lui r1, 1024
	or r13, r14, r1
.LBB0_1387:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1642 20                       # parallel-rne.mlir:1642:20
	bneq r1, zero, .LBB0_1389
# %bb.1388:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r17, 0
	j .LBB0_1390
.LBB0_1389:                             #   in Loop: Header=BB0_1376 Depth=3
	lui r1, 1024
	or r11, r17, r1
.LBB0_1390:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1642 20                       # parallel-rne.mlir:1642:20
	bneq r15, zero, .LBB0_1392
# %bb.1391:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1393
.LBB0_1392:                             #   in Loop: Header=BB0_1376 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1393:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	and r15, r26, r21
	setlt.u r16, r27, r15
	.loc	1 1642 20                       # parallel-rne.mlir:1642:20
	bneq r16, zero, .LBB0_1395
# %bb.1394:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r26, 0
	.loc	1 1648 20 is_stmt 1             # parallel-rne.mlir:1648:20
	setlt.u r15, r23, r15
	.loc	1 1649 20                       # parallel-rne.mlir:1649:20
	beq r15, zero, .LBB0_1396
	j .LBB0_1397
.LBB0_1395:                             #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r18, r26, r16
	.loc	1 1648 20 is_stmt 1             # parallel-rne.mlir:1648:20
	setlt.u r15, r23, r15
	.loc	1 1649 20                       # parallel-rne.mlir:1649:20
	bneq r15, zero, .LBB0_1397
.LBB0_1396:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r26, 16
	lui r16, 1048560
	andi r15, r15, 1
	add.s r15, r26, r15
	add.s r15, r15, r22
	and r18, r15, r16
.LBB0_1397:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1649 20                       # parallel-rne.mlir:1649:20
	bneq r1, zero, .LBB0_1399
# %bb.1398:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r28, r1, r12
.LBB0_1399:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	setlt.u r1, r23, r25
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 1649 20                       # parallel-rne.mlir:1649:20
	bneq r1, zero, .LBB0_1401
# %bb.1400:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r11, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r11, r1, r11
.LBB0_1401:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	setlt.u r1, r23, r10
	.loc	1 1649 20                       # parallel-rne.mlir:1649:20
	bneq r1, zero, .LBB0_1375
# %bb.1402:                             # %vector.body304
                                        #   in Loop: Header=BB0_1376 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r14, 16
	lui r10, 1048560
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r22
	and r13, r1, r10
	j .LBB0_1375
.LBB0_1403:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1610 7 is_stmt 1              # parallel-rne.mlir:1610:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	.loc	1 1656 7                        # parallel-rne.mlir:1656:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1560
.LBB0_1404:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1702 7                        # parallel-rne.mlir:1702:7
	bneq r11, r10, .LBB0_1611
.LBB0_1405:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1702 7                        # parallel-rne.mlir:1702:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	addli r7, zero, 20
	zext_int2long r[8:9], r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -240(r30)                 # 4-byte Folded Spill
	j .LBB0_1407
.LBB0_1406:                             # %middle.block280
                                        #   in Loop: Header=BB0_1407 Depth=2
	.loc	1 1709 9 is_stmt 1              # parallel-rne.mlir:1709:9
	load.d r[7:8], -224(r30)                # 8-byte Folded Reload
	load.d r[9:10], -232(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	addli.d r[8:9], r[7:8], 0
	beq r1, zero, .LBB0_1455
.LBB0_1407:                             # %.preheader126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1428 Depth 3
                                        #       Child Loop BB0_1411 Depth 3
	.loc	1 1710 11                       # parallel-rne.mlir:1710:11
	loadli.w r1,  -240(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[8:9], r10
	store.d r[8:9], -232(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1426
# %bb.1408:                             # %scalar.ph272.preheader
                                        #   in Loop: Header=BB0_1407 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1411
.LBB0_1409:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	lui r8, 1048560
	add.s r1, r1, r22
	and r1, r1, r8
.LBB0_1410:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 1710 11                       # parallel-rne.mlir:1710:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1743 13 is_stmt 1             # parallel-rne.mlir:1743:13
	add.s r7, r24, r7
	stores.w r1, 0(r7)
	.loc	1 1710 11                       # parallel-rne.mlir:1710:11
	setlt.ul r8, r[10:11], r[8:9]
	addli.d r[10:11], r[10:11], 1
	beq r8, zero, .LBB0_1406
.LBB0_1411:                             # %scalar.ph272
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1407 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1711 19                       # parallel-rne.mlir:1711:19
	add.ul r[7:8], r[10:11], r[13:14]
	lui r12, 523264
	slli r7, r7, 2
	.loc	1 1712 19                       # parallel-rne.mlir:1712:19
	add.s r1, r2, r7
	.loc	1 1713 19                       # parallel-rne.mlir:1713:19
	add.s r8, r6, r7
	.loc	1 1712 19                       # parallel-rne.mlir:1712:19
	loads.w r1, 0(r1)
	.loc	1 1713 19                       # parallel-rne.mlir:1713:19
	loads.w r17, 0(r8)
	lui r8, 523264
	.loc	1 1716 19                       # parallel-rne.mlir:1716:19
	and r1, r1, r21
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	beq r1, r27, .LBB0_1413
# %bb.1412:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_1413:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	add.s r9, r15, r7
	loads.w r9, 0(r9)
	and r9, r9, r21
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	beq r9, zero, .LBB0_1423
# %bb.1414:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r1, zero, .LBB0_1424
.LBB0_1415:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	beq r9, r27, .LBB0_1417
.LBB0_1416:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_1417:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r12, zero, .LBB0_1419
# %bb.1418:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1419:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	setlt.u r9, r27, r9
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r9, zero, .LBB0_1421
# %bb.1420:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r1, 0
.LBB0_1421:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 1731 20 is_stmt 1             # parallel-rne.mlir:1731:20
	and r9, r8, r21
	.loc	1 1733 20                       # parallel-rne.mlir:1733:20
	setlt.u r1, r27, r9
	.loc	1 1734 20                       # parallel-rne.mlir:1734:20
	bneq r1, zero, .LBB0_1425
# %bb.1422:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r8, 0
	.loc	1 1740 20 is_stmt 1             # parallel-rne.mlir:1740:20
	setlt.u r9, r23, r9
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r9, zero, .LBB0_1410
	j .LBB0_1409
.LBB0_1423:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1730 20 is_stmt 1             # parallel-rne.mlir:1730:20
	beq r1, zero, .LBB0_1415
.LBB0_1424:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r9, r27, .LBB0_1416
	j .LBB0_1417
.LBB0_1425:                             #   in Loop: Header=BB0_1411 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r8, r1
	.loc	1 1740 20 is_stmt 1             # parallel-rne.mlir:1740:20
	setlt.u r9, r23, r9
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r9, zero, .LBB0_1410
	j .LBB0_1409
.LBB0_1426:                             # %vector.body274.preheader
                                        #   in Loop: Header=BB0_1407 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_1428
.LBB0_1427:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 1710 11 is_stmt 1             # parallel-rne.mlir:1710:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1743 13                       # parallel-rne.mlir:1743:13
	add.s r7, r24, r7
	.loc	1 1710 11                       # parallel-rne.mlir:1710:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 1743 13                       # parallel-rne.mlir:1743:13
	stores.w r10, 12(r7)
	stores.w r9, 8(r7)
	stores.w r28, 4(r7)
	stores.w r18, 0(r7)
	.loc	1 1710 11                       # parallel-rne.mlir:1710:11
	bneq r1, zero, .LBB0_1406
.LBB0_1428:                             # %vector.body274
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1407 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1711 19                       # parallel-rne.mlir:1711:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r26, 523264
	slli r7, r7, 2
	add.s r10, r15, r7
	.loc	1 1712 19                       # parallel-rne.mlir:1712:19
	add.s r8, r2, r7
	.loc	1 1711 19                       # parallel-rne.mlir:1711:19
	loads.w r1, 0(r10)
	.loc	1 1712 19                       # parallel-rne.mlir:1712:19
	loads.w r9, 0(r8)
	.loc	1 1718 19                       # parallel-rne.mlir:1718:19
	and r1, r1, r21
	.loc	1 1716 19                       # parallel-rne.mlir:1716:19
	and r9, r9, r21
	.loc	1 1719 19                       # parallel-rne.mlir:1719:19
	seteq r11, r1, r27
	.loc	1 1723 20                       # parallel-rne.mlir:1723:20
	seteq r16, r1, zero
	.loc	1 1720 19                       # parallel-rne.mlir:1720:19
	seteq r12, r9, zero
	.loc	1 1722 19                       # parallel-rne.mlir:1722:19
	seteq r15, r9, r27
	.loc	1 1728 20                       # parallel-rne.mlir:1728:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 1721 19                       # parallel-rne.mlir:1721:19
	and r9, r11, r12
	.loc	1 1724 20                       # parallel-rne.mlir:1724:20
	and r11, r16, r15
	.loc	1 1725 20                       # parallel-rne.mlir:1725:20
	or r11, r9, r11
	.loc	1 1713 19                       # parallel-rne.mlir:1713:19
	add.s r9, r6, r7
	.loc	1 1729 20                       # parallel-rne.mlir:1729:20
	or r1, r1, r11
	lui r11, 523264
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r1, zero, .LBB0_1430
# %bb.1429:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r26, 0(r9)
.LBB0_1430:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	loads.w r1, 4(r10)
	loads.w r12, 4(r8)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r18, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r1, zero, .LBB0_1432
# %bb.1431:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r9)
.LBB0_1432:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	loads.w r1, 8(r10)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r25, r1, zero
	seteq r17, r15, zero
	seteq r18, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r25, r18
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r1, zero, .LBB0_1434
# %bb.1433:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r9)
.LBB0_1434:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	loads.w r1, 12(r10)
	loads.w r8, 12(r8)
	and r1, r1, r21
	and r8, r8, r21
	seteq r10, r1, r27
	seteq r18, r1, zero
	seteq r15, r8, zero
	seteq r16, r8, r27
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	and r8, r10, r15
	and r10, r18, r16
	or r8, r8, r10
	or r1, r1, r8
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	bneq r1, zero, .LBB0_1436
# %bb.1435:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 12(r9)
.LBB0_1436:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 1731 20 is_stmt 1             # parallel-rne.mlir:1731:20
	and r8, r11, r21
	.loc	1 1733 20                       # parallel-rne.mlir:1733:20
	setlt.u r1, r27, r8
	.loc	1 1734 20                       # parallel-rne.mlir:1734:20
	bneq r1, zero, .LBB0_1438
# %bb.1437:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r11, 0
	j .LBB0_1439
.LBB0_1438:                             #   in Loop: Header=BB0_1428 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_1439:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1734 20                       # parallel-rne.mlir:1734:20
	bneq r1, zero, .LBB0_1441
# %bb.1440:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r17, 0
	j .LBB0_1442
.LBB0_1441:                             #   in Loop: Header=BB0_1428 Depth=3
	lui r1, 1024
	or r9, r17, r1
.LBB0_1442:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1734 20                       # parallel-rne.mlir:1734:20
	bneq r15, zero, .LBB0_1444
# %bb.1443:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1445
.LBB0_1444:                             #   in Loop: Header=BB0_1428 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1445:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	and r15, r26, r21
	setlt.u r16, r27, r15
	.loc	1 1734 20                       # parallel-rne.mlir:1734:20
	bneq r16, zero, .LBB0_1447
# %bb.1446:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r26, 0
	.loc	1 1740 20 is_stmt 1             # parallel-rne.mlir:1740:20
	setlt.u r15, r23, r15
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	beq r15, zero, .LBB0_1448
	j .LBB0_1449
.LBB0_1447:                             #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r18, r26, r16
	.loc	1 1740 20 is_stmt 1             # parallel-rne.mlir:1740:20
	setlt.u r15, r23, r15
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r15, zero, .LBB0_1449
.LBB0_1448:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r26, 16
	lui r16, 1048560
	andi r15, r15, 1
	add.s r15, r26, r15
	add.s r15, r15, r22
	and r18, r15, r16
.LBB0_1449:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r1, zero, .LBB0_1451
# %bb.1450:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r28, r1, r12
.LBB0_1451:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	setlt.u r1, r23, r25
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r1, zero, .LBB0_1453
# %bb.1452:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r9, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r9, r1, r9
.LBB0_1453:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	setlt.u r1, r23, r8
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r1, zero, .LBB0_1427
# %bb.1454:                             # %vector.body274
                                        #   in Loop: Header=BB0_1428 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r11, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r22
	and r10, r1, r8
	j .LBB0_1427
.LBB0_1455:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1702 7 is_stmt 1              # parallel-rne.mlir:1702:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	.loc	1 1748 7                        # parallel-rne.mlir:1748:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_1663
	j .LBB0_1612
.LBB0_1456:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1472 7 is_stmt 1              # parallel-rne.mlir:1472:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	zext_int2long r[7:8], zero
	storeli.w r1, -276(r30)                 # 4-byte Folded Spill
	j .LBB0_1458
.LBB0_1457:                             # %middle.block355
                                        #   in Loop: Header=BB0_1458 Depth=2
	.loc	1 1479 9                        # parallel-rne.mlir:1479:9
	load.d r[7:8], -264(r30)                # 8-byte Folded Reload
	load.d r[9:10], -272(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	beq r1, zero, .LBB0_1506
.LBB0_1458:                             # %.preheader131
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1479 Depth 3
                                        #       Child Loop BB0_1462 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 1480 11 is_stmt 1             # parallel-rne.mlir:1480:11
	store.d r[7:8], -272(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r1
	loadli.w r1,  -276(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1477
# %bb.1459:                             # %scalar.ph347.preheader
                                        #   in Loop: Header=BB0_1458 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_1462
.LBB0_1460:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	lui r8, 1048560
	add.s r1, r1, r22
	and r1, r1, r8
.LBB0_1461:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 1480 11                       # parallel-rne.mlir:1480:11
	load.d r[13:14], -192(r30)              # 8-byte Folded Reload
	.loc	1 1513 13 is_stmt 1             # parallel-rne.mlir:1513:13
	add.s r7, r24, r7
	stores.w r1, 0(r7)
	.loc	1 1480 11                       # parallel-rne.mlir:1480:11
	setlt.ul r8, r[11:12], r[13:14]
	addli.d r[11:12], r[11:12], 1
	beq r8, zero, .LBB0_1457
.LBB0_1462:                             # %scalar.ph347
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1458 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1481 19                       # parallel-rne.mlir:1481:19
	add.ul r[7:8], r[11:12], r[9:10]
	lui r14, 523264
	slli r7, r7, 2
	.loc	1 1482 19                       # parallel-rne.mlir:1482:19
	add.s r1, r2, r7
	.loc	1 1483 19                       # parallel-rne.mlir:1483:19
	add.s r8, r6, r7
	.loc	1 1482 19                       # parallel-rne.mlir:1482:19
	loads.w r1, 0(r1)
	.loc	1 1483 19                       # parallel-rne.mlir:1483:19
	loads.w r17, 0(r8)
	lui r8, 523264
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	and r1, r1, r21
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	beq r1, r27, .LBB0_1464
# %bb.1463:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r17, 0
.LBB0_1464:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	add.s r13, r15, r7
	loads.w r13, 0(r13)
	and r13, r13, r21
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	beq r13, zero, .LBB0_1474
# %bb.1465:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	lui r17, 523264
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r1, zero, .LBB0_1475
.LBB0_1466:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	beq r13, r27, .LBB0_1468
.LBB0_1467:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r14, 0
.LBB0_1468:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	setlt.u r14, r27, r1
	lui r1, 523264
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r14, zero, .LBB0_1470
# %bb.1469:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1470:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	setlt.u r13, r27, r13
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r13, zero, .LBB0_1472
# %bb.1471:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r1, 0
.LBB0_1472:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 1501 20 is_stmt 1             # parallel-rne.mlir:1501:20
	and r13, r8, r21
	.loc	1 1503 20                       # parallel-rne.mlir:1503:20
	setlt.u r1, r27, r13
	.loc	1 1504 20                       # parallel-rne.mlir:1504:20
	bneq r1, zero, .LBB0_1476
# %bb.1473:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r8, 0
	.loc	1 1510 20 is_stmt 1             # parallel-rne.mlir:1510:20
	setlt.u r13, r23, r13
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	bneq r13, zero, .LBB0_1461
	j .LBB0_1460
.LBB0_1474:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1500 20 is_stmt 1             # parallel-rne.mlir:1500:20
	beq r1, zero, .LBB0_1466
.LBB0_1475:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r14, 0
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r13, r27, .LBB0_1467
	j .LBB0_1468
.LBB0_1476:                             #   in Loop: Header=BB0_1462 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r8, r1
	.loc	1 1510 20 is_stmt 1             # parallel-rne.mlir:1510:20
	setlt.u r13, r23, r13
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	bneq r13, zero, .LBB0_1461
	j .LBB0_1460
.LBB0_1477:                             # %vector.body349.preheader
                                        #   in Loop: Header=BB0_1458 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_1479
.LBB0_1478:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 1480 11 is_stmt 1             # parallel-rne.mlir:1480:11
	addli.d r[19:20], r[19:20], 4
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 1513 13                       # parallel-rne.mlir:1513:13
	add.s r7, r24, r11
	.loc	1 1480 11                       # parallel-rne.mlir:1480:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 1513 13                       # parallel-rne.mlir:1513:13
	stores.w r13, 12(r7)
	stores.w r8, 8(r7)
	stores.w r28, 4(r7)
	stores.w r26, 0(r7)
	.loc	1 1480 11                       # parallel-rne.mlir:1480:11
	bneq r1, zero, .LBB0_1457
.LBB0_1479:                             # %vector.body349
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1458 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1481 19                       # parallel-rne.mlir:1481:19
	add.ul r[7:8], r[19:20], r[9:10]
	lui r18, 523264
	slli r11, r7, 2
	add.s r13, r15, r11
	.loc	1 1482 19                       # parallel-rne.mlir:1482:19
	add.s r7, r2, r11
	.loc	1 1481 19                       # parallel-rne.mlir:1481:19
	loads.w r1, 0(r13)
	.loc	1 1482 19                       # parallel-rne.mlir:1482:19
	loads.w r8, 0(r7)
	.loc	1 1488 19                       # parallel-rne.mlir:1488:19
	and r1, r1, r21
	.loc	1 1486 19                       # parallel-rne.mlir:1486:19
	and r8, r8, r21
	.loc	1 1489 19                       # parallel-rne.mlir:1489:19
	seteq r12, r1, r27
	.loc	1 1493 20                       # parallel-rne.mlir:1493:20
	seteq r16, r1, zero
	.loc	1 1490 19                       # parallel-rne.mlir:1490:19
	seteq r14, r8, zero
	.loc	1 1492 19                       # parallel-rne.mlir:1492:19
	seteq r15, r8, r27
	.loc	1 1498 20                       # parallel-rne.mlir:1498:20
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	.loc	1 1491 19                       # parallel-rne.mlir:1491:19
	and r8, r12, r14
	.loc	1 1494 20                       # parallel-rne.mlir:1494:20
	and r12, r16, r15
	lui r14, 523264
	.loc	1 1495 20                       # parallel-rne.mlir:1495:20
	or r12, r8, r12
	.loc	1 1483 19                       # parallel-rne.mlir:1483:19
	add.s r8, r6, r11
	.loc	1 1499 20                       # parallel-rne.mlir:1499:20
	or r1, r1, r12
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r1, zero, .LBB0_1481
# %bb.1480:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r18, 0(r8)
.LBB0_1481:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	loads.w r1, 4(r13)
	loads.w r12, 4(r7)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r25, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r25, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r1, zero, .LBB0_1483
# %bb.1482:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r8)
.LBB0_1483:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	loads.w r1, 8(r13)
	loads.w r15, 8(r7)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r26, r1, zero
	seteq r17, r15, zero
	seteq r25, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r26, r25
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r1, zero, .LBB0_1485
# %bb.1484:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r8)
.LBB0_1485:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	loads.w r1, 12(r13)
	loads.w r7, 12(r7)
	and r1, r1, r21
	and r7, r7, r21
	seteq r13, r1, r27
	seteq r25, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r13, r15
	and r13, r25, r16
	or r7, r7, r13
	or r1, r1, r7
	.loc	1 1500 20                       # parallel-rne.mlir:1500:20
	bneq r1, zero, .LBB0_1487
# %bb.1486:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r14, 12(r8)
.LBB0_1487:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 1501 20 is_stmt 1             # parallel-rne.mlir:1501:20
	and r7, r14, r21
	.loc	1 1503 20                       # parallel-rne.mlir:1503:20
	setlt.u r1, r27, r7
	.loc	1 1504 20                       # parallel-rne.mlir:1504:20
	bneq r1, zero, .LBB0_1489
# %bb.1488:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r14, 0
	j .LBB0_1490
.LBB0_1489:                             #   in Loop: Header=BB0_1479 Depth=3
	lui r1, 1024
	or r13, r14, r1
.LBB0_1490:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1504 20                       # parallel-rne.mlir:1504:20
	bneq r1, zero, .LBB0_1492
# %bb.1491:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r17, 0
	j .LBB0_1493
.LBB0_1492:                             #   in Loop: Header=BB0_1479 Depth=3
	lui r1, 1024
	or r8, r17, r1
.LBB0_1493:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1504 20                       # parallel-rne.mlir:1504:20
	bneq r15, zero, .LBB0_1495
# %bb.1494:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1496
.LBB0_1495:                             #   in Loop: Header=BB0_1479 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1496:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	and r15, r18, r21
	setlt.u r16, r27, r15
	.loc	1 1504 20                       # parallel-rne.mlir:1504:20
	bneq r16, zero, .LBB0_1498
# %bb.1497:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r26, r18, 0
	.loc	1 1510 20 is_stmt 1             # parallel-rne.mlir:1510:20
	setlt.u r15, r23, r15
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	beq r15, zero, .LBB0_1499
	j .LBB0_1500
.LBB0_1498:                             #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r26, r18, r16
	.loc	1 1510 20 is_stmt 1             # parallel-rne.mlir:1510:20
	setlt.u r15, r23, r15
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	bneq r15, zero, .LBB0_1500
.LBB0_1499:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r18, 16
	lui r16, 1048560
	andi r15, r15, 1
	add.s r15, r18, r15
	add.s r15, r15, r22
	and r26, r15, r16
.LBB0_1500:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	bneq r1, zero, .LBB0_1503
# %bb.1501:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r28, r1, r12
	setlt.u r1, r23, r25
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	beq r1, zero, .LBB0_1504
.LBB0_1502:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r7
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	bneq r1, zero, .LBB0_1478
	j .LBB0_1505
.LBB0_1503:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r25
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	bneq r1, zero, .LBB0_1502
.LBB0_1504:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r8, r1, r8
	setlt.u r1, r23, r7
	.loc	1 1511 20                       # parallel-rne.mlir:1511:20
	bneq r1, zero, .LBB0_1478
.LBB0_1505:                             # %vector.body349
                                        #   in Loop: Header=BB0_1479 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r14, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r22
	and r13, r1, r7
	j .LBB0_1478
.LBB0_1506:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1472 7 is_stmt 1              # parallel-rne.mlir:1472:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	.loc	1 1518 7                        # parallel-rne.mlir:1518:7
	addli r1, zero, 1
	beq r11, r1, .LBB0_1301
.LBB0_1507:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1564 7                        # parallel-rne.mlir:1564:7
	loadli.w r1,  -288(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1352
.LBB0_1508:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1564 7                        # parallel-rne.mlir:1564:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	addli r7, zero, 8
	zext_int2long r[8:9], r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -264(r30)                 # 4-byte Folded Spill
	j .LBB0_1510
.LBB0_1509:                             # %middle.block325
                                        #   in Loop: Header=BB0_1510 Depth=2
	.loc	1 1571 9 is_stmt 1              # parallel-rne.mlir:1571:9
	load.d r[7:8], -248(r30)                # 8-byte Folded Reload
	load.d r[9:10], -256(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	addli.d r[8:9], r[7:8], 0
	beq r1, zero, .LBB0_1558
.LBB0_1510:                             # %.preheader129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1531 Depth 3
                                        #       Child Loop BB0_1514 Depth 3
	.loc	1 1572 11                       # parallel-rne.mlir:1572:11
	loadli.w r1,  -264(r30)                 # 4-byte Folded Reload
	store.d r[8:9], -256(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[8:9], r10
	beq r1, zero, .LBB0_1529
# %bb.1511:                             # %scalar.ph317.preheader
                                        #   in Loop: Header=BB0_1510 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[9:10], zero
	j .LBB0_1514
.LBB0_1512:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r1, r1, r12
.LBB0_1513:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 1572 11                       # parallel-rne.mlir:1572:11
	load.d r[12:13], -192(r30)              # 8-byte Folded Reload
	.loc	1 1605 13 is_stmt 1             # parallel-rne.mlir:1605:13
	add.s r11, r24, r11
	stores.w r1, 0(r11)
	.loc	1 1572 11                       # parallel-rne.mlir:1572:11
	setlt.ul r12, r[9:10], r[12:13]
	addli.d r[9:10], r[9:10], 1
	beq r12, zero, .LBB0_1509
.LBB0_1514:                             # %scalar.ph317
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1510 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1573 19                       # parallel-rne.mlir:1573:19
	add.ul r[11:12], r[9:10], r[7:8]
	lui r14, 523264
	slli r11, r11, 2
	.loc	1 1574 19                       # parallel-rne.mlir:1574:19
	add.s r1, r2, r11
	.loc	1 1575 19                       # parallel-rne.mlir:1575:19
	add.s r12, r6, r11
	.loc	1 1574 19                       # parallel-rne.mlir:1574:19
	loads.w r1, 0(r1)
	.loc	1 1575 19                       # parallel-rne.mlir:1575:19
	loads.w r17, 0(r12)
	lui r12, 523264
	.loc	1 1578 19                       # parallel-rne.mlir:1578:19
	and r1, r1, r21
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	beq r1, r27, .LBB0_1516
# %bb.1515:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r17, 0
.LBB0_1516:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	add.s r13, r15, r11
	loads.w r13, 0(r13)
	and r13, r13, r21
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	beq r13, zero, .LBB0_1526
# %bb.1517:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	lui r17, 523264
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r1, zero, .LBB0_1527
.LBB0_1518:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	beq r13, r27, .LBB0_1520
.LBB0_1519:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r14, 0
.LBB0_1520:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	setlt.u r14, r27, r1
	lui r1, 523264
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r14, zero, .LBB0_1522
# %bb.1521:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1522:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	setlt.u r13, r27, r13
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r13, zero, .LBB0_1524
# %bb.1523:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r1, 0
.LBB0_1524:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 1593 20 is_stmt 1             # parallel-rne.mlir:1593:20
	and r13, r12, r21
	.loc	1 1595 20                       # parallel-rne.mlir:1595:20
	setlt.u r1, r27, r13
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r1, zero, .LBB0_1528
# %bb.1525:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r12, 0
	.loc	1 1602 20 is_stmt 1             # parallel-rne.mlir:1602:20
	setlt.u r13, r23, r13
	.loc	1 1603 20                       # parallel-rne.mlir:1603:20
	bneq r13, zero, .LBB0_1513
	j .LBB0_1512
.LBB0_1526:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1592 20 is_stmt 1             # parallel-rne.mlir:1592:20
	beq r1, zero, .LBB0_1518
.LBB0_1527:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r14, 0
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r13, r27, .LBB0_1519
	j .LBB0_1520
.LBB0_1528:                             #   in Loop: Header=BB0_1514 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r12, r1
	.loc	1 1602 20 is_stmt 1             # parallel-rne.mlir:1602:20
	setlt.u r13, r23, r13
	.loc	1 1603 20                       # parallel-rne.mlir:1603:20
	bneq r13, zero, .LBB0_1513
	j .LBB0_1512
.LBB0_1529:                             # %vector.body319.preheader
                                        #   in Loop: Header=BB0_1510 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[9:10], zero
	j .LBB0_1531
.LBB0_1530:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 1572 11 is_stmt 1             # parallel-rne.mlir:1572:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 1605 13                       # parallel-rne.mlir:1605:13
	add.s r11, r24, r11
	.loc	1 1572 11                       # parallel-rne.mlir:1572:11
	seteq.d r1, r[9:10], r[4:5]
	.loc	1 1605 13                       # parallel-rne.mlir:1605:13
	stores.w r19, 12(r11)
	stores.w r14, 8(r11)
	stores.w r28, 4(r11)
	stores.w r18, 0(r11)
	.loc	1 1572 11                       # parallel-rne.mlir:1572:11
	bneq r1, zero, .LBB0_1509
.LBB0_1531:                             # %vector.body319
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1510 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1573 19                       # parallel-rne.mlir:1573:19
	add.ul r[11:12], r[9:10], r[7:8]
	lui r20, 523264
	lui r26, 523264
	slli r11, r11, 2
	add.s r19, r15, r11
	.loc	1 1574 19                       # parallel-rne.mlir:1574:19
	add.s r13, r2, r11
	.loc	1 1573 19                       # parallel-rne.mlir:1573:19
	loads.w r1, 0(r19)
	.loc	1 1574 19                       # parallel-rne.mlir:1574:19
	loads.w r12, 0(r13)
	.loc	1 1580 19                       # parallel-rne.mlir:1580:19
	and r1, r1, r21
	.loc	1 1578 19                       # parallel-rne.mlir:1578:19
	and r12, r12, r21
	.loc	1 1581 19                       # parallel-rne.mlir:1581:19
	seteq r14, r1, r27
	.loc	1 1585 20                       # parallel-rne.mlir:1585:20
	seteq r17, r1, zero
	.loc	1 1582 19                       # parallel-rne.mlir:1582:19
	seteq r15, r12, zero
	.loc	1 1584 19                       # parallel-rne.mlir:1584:19
	seteq r16, r12, r27
	.loc	1 1590 20                       # parallel-rne.mlir:1590:20
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	.loc	1 1583 19                       # parallel-rne.mlir:1583:19
	and r12, r14, r15
	.loc	1 1586 20                       # parallel-rne.mlir:1586:20
	and r14, r17, r16
	.loc	1 1587 20                       # parallel-rne.mlir:1587:20
	or r12, r12, r14
	.loc	1 1575 19                       # parallel-rne.mlir:1575:19
	add.s r14, r6, r11
	.loc	1 1591 20                       # parallel-rne.mlir:1591:20
	or r1, r1, r12
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r1, zero, .LBB0_1533
# %bb.1532:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r26, 0(r14)
.LBB0_1533:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	loads.w r1, 4(r19)
	loads.w r12, 4(r13)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r18, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r1, zero, .LBB0_1535
# %bb.1534:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r14)
.LBB0_1535:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	loads.w r1, 8(r19)
	loads.w r15, 8(r13)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r25, r1, zero
	seteq r17, r15, zero
	seteq r18, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r25, r18
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r1, zero, .LBB0_1537
# %bb.1536:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r14)
.LBB0_1537:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	loads.w r1, 12(r19)
	loads.w r13, 12(r13)
	and r1, r1, r21
	and r13, r13, r21
	seteq r15, r1, r27
	seteq r19, r1, zero
	seteq r16, r13, zero
	seteq r18, r13, r27
	max.u r1, r1, r13
	setlt.u r1, r27, r1
	and r13, r15, r16
	and r15, r19, r18
	or r13, r13, r15
	or r1, r1, r13
	.loc	1 1592 20                       # parallel-rne.mlir:1592:20
	bneq r1, zero, .LBB0_1539
# %bb.1538:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r20, 12(r14)
.LBB0_1539:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 1593 20 is_stmt 1             # parallel-rne.mlir:1593:20
	and r13, r20, r21
	.loc	1 1595 20                       # parallel-rne.mlir:1595:20
	setlt.u r1, r27, r13
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r1, zero, .LBB0_1541
# %bb.1540:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r19, r20, 0
	j .LBB0_1542
.LBB0_1541:                             #   in Loop: Header=BB0_1531 Depth=3
	lui r1, 1024
	or r19, r20, r1
.LBB0_1542:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r1, zero, .LBB0_1544
# %bb.1543:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r14, r17, 0
	j .LBB0_1545
.LBB0_1544:                             #   in Loop: Header=BB0_1531 Depth=3
	lui r1, 1024
	or r14, r17, r1
.LBB0_1545:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r15, zero, .LBB0_1547
# %bb.1546:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1548
.LBB0_1547:                             #   in Loop: Header=BB0_1531 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1548:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	and r15, r26, r21
	setlt.u r16, r27, r15
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r16, zero, .LBB0_1550
# %bb.1549:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r26, 0
	.loc	1 1602 20 is_stmt 1             # parallel-rne.mlir:1602:20
	setlt.u r15, r23, r15
	.loc	1 1603 20                       # parallel-rne.mlir:1603:20
	beq r15, zero, .LBB0_1551
	j .LBB0_1552
.LBB0_1550:                             #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r18, r26, r16
	.loc	1 1602 20 is_stmt 1             # parallel-rne.mlir:1602:20
	setlt.u r15, r23, r15
	.loc	1 1603 20                       # parallel-rne.mlir:1603:20
	bneq r15, zero, .LBB0_1552
.LBB0_1551:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r26, 16
	lui r16, 1048560
	andi r15, r15, 1
	add.s r15, r26, r15
	add.s r15, r15, r22
	and r18, r15, r16
.LBB0_1552:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1603 20                       # parallel-rne.mlir:1603:20
	bneq r1, zero, .LBB0_1554
# %bb.1553:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r28, r1, r12
.LBB0_1554:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	setlt.u r1, r23, r25
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 1603 20                       # parallel-rne.mlir:1603:20
	bneq r1, zero, .LBB0_1556
# %bb.1555:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r12, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r14, r1, r12
.LBB0_1556:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	setlt.u r1, r23, r13
	.loc	1 1603 20                       # parallel-rne.mlir:1603:20
	bneq r1, zero, .LBB0_1530
# %bb.1557:                             # %vector.body319
                                        #   in Loop: Header=BB0_1531 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r20, 16
	lui r12, 1048560
	andi r1, r1, 1
	add.s r1, r20, r1
	add.s r1, r1, r22
	and r19, r1, r12
	j .LBB0_1530
.LBB0_1558:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1564 7 is_stmt 1              # parallel-rne.mlir:1564:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	.loc	1 1610 7                        # parallel-rne.mlir:1610:7
	addli r1, zero, 3
	beq r11, r1, .LBB0_1353
.LBB0_1559:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1656 7                        # parallel-rne.mlir:1656:7
	loadli.w r1,  -284(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1404
.LBB0_1560:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1656 7                        # parallel-rne.mlir:1656:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	zext_int2long r[8:9], r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -248(r30)                 # 4-byte Folded Spill
	j .LBB0_1562
.LBB0_1561:                             # %middle.block295
                                        #   in Loop: Header=BB0_1562 Depth=2
	.loc	1 1663 9 is_stmt 1              # parallel-rne.mlir:1663:9
	load.d r[7:8], -232(r30)                # 8-byte Folded Reload
	load.d r[9:10], -240(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	addli.d r[8:9], r[7:8], 0
	beq r1, zero, .LBB0_1610
.LBB0_1562:                             # %.preheader127
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1583 Depth 3
                                        #       Child Loop BB0_1566 Depth 3
	.loc	1 1664 11                       # parallel-rne.mlir:1664:11
	loadli.w r1,  -248(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[8:9], r10
	store.d r[8:9], -240(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1581
# %bb.1563:                             # %scalar.ph287.preheader
                                        #   in Loop: Header=BB0_1562 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1566
.LBB0_1564:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	lui r8, 1048560
	add.s r1, r1, r22
	and r1, r1, r8
.LBB0_1565:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 1664 11                       # parallel-rne.mlir:1664:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1697 13 is_stmt 1             # parallel-rne.mlir:1697:13
	add.s r7, r24, r7
	stores.w r1, 0(r7)
	.loc	1 1664 11                       # parallel-rne.mlir:1664:11
	setlt.ul r8, r[10:11], r[8:9]
	addli.d r[10:11], r[10:11], 1
	beq r8, zero, .LBB0_1561
.LBB0_1566:                             # %scalar.ph287
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1562 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1665 19                       # parallel-rne.mlir:1665:19
	add.ul r[7:8], r[10:11], r[13:14]
	lui r12, 523264
	slli r7, r7, 2
	.loc	1 1666 19                       # parallel-rne.mlir:1666:19
	add.s r1, r2, r7
	.loc	1 1667 19                       # parallel-rne.mlir:1667:19
	add.s r8, r6, r7
	.loc	1 1666 19                       # parallel-rne.mlir:1666:19
	loads.w r1, 0(r1)
	.loc	1 1667 19                       # parallel-rne.mlir:1667:19
	loads.w r17, 0(r8)
	lui r8, 523264
	.loc	1 1670 19                       # parallel-rne.mlir:1670:19
	and r1, r1, r21
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	beq r1, r27, .LBB0_1568
# %bb.1567:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_1568:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	add.s r9, r15, r7
	loads.w r9, 0(r9)
	and r9, r9, r21
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	beq r9, zero, .LBB0_1578
# %bb.1569:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r1, zero, .LBB0_1579
.LBB0_1570:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	beq r9, r27, .LBB0_1572
.LBB0_1571:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_1572:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r12, zero, .LBB0_1574
# %bb.1573:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1574:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	setlt.u r9, r27, r9
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r9, zero, .LBB0_1576
# %bb.1575:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r1, 0
.LBB0_1576:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 1685 20 is_stmt 1             # parallel-rne.mlir:1685:20
	and r9, r8, r21
	.loc	1 1687 20                       # parallel-rne.mlir:1687:20
	setlt.u r1, r27, r9
	.loc	1 1688 20                       # parallel-rne.mlir:1688:20
	bneq r1, zero, .LBB0_1580
# %bb.1577:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r8, 0
	.loc	1 1694 20 is_stmt 1             # parallel-rne.mlir:1694:20
	setlt.u r9, r23, r9
	.loc	1 1695 20                       # parallel-rne.mlir:1695:20
	bneq r9, zero, .LBB0_1565
	j .LBB0_1564
.LBB0_1578:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1684 20 is_stmt 1             # parallel-rne.mlir:1684:20
	beq r1, zero, .LBB0_1570
.LBB0_1579:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r9, r27, .LBB0_1571
	j .LBB0_1572
.LBB0_1580:                             #   in Loop: Header=BB0_1566 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r8, r1
	.loc	1 1694 20 is_stmt 1             # parallel-rne.mlir:1694:20
	setlt.u r9, r23, r9
	.loc	1 1695 20                       # parallel-rne.mlir:1695:20
	bneq r9, zero, .LBB0_1565
	j .LBB0_1564
.LBB0_1581:                             # %vector.body289.preheader
                                        #   in Loop: Header=BB0_1562 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_1583
.LBB0_1582:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 1664 11 is_stmt 1             # parallel-rne.mlir:1664:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1697 13                       # parallel-rne.mlir:1697:13
	add.s r7, r24, r7
	.loc	1 1664 11                       # parallel-rne.mlir:1664:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 1697 13                       # parallel-rne.mlir:1697:13
	stores.w r10, 12(r7)
	stores.w r9, 8(r7)
	stores.w r28, 4(r7)
	stores.w r18, 0(r7)
	.loc	1 1664 11                       # parallel-rne.mlir:1664:11
	bneq r1, zero, .LBB0_1561
.LBB0_1583:                             # %vector.body289
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1562 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1665 19                       # parallel-rne.mlir:1665:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r26, 523264
	slli r7, r7, 2
	add.s r10, r15, r7
	.loc	1 1666 19                       # parallel-rne.mlir:1666:19
	add.s r8, r2, r7
	.loc	1 1665 19                       # parallel-rne.mlir:1665:19
	loads.w r1, 0(r10)
	.loc	1 1666 19                       # parallel-rne.mlir:1666:19
	loads.w r9, 0(r8)
	.loc	1 1672 19                       # parallel-rne.mlir:1672:19
	and r1, r1, r21
	.loc	1 1670 19                       # parallel-rne.mlir:1670:19
	and r9, r9, r21
	.loc	1 1673 19                       # parallel-rne.mlir:1673:19
	seteq r11, r1, r27
	.loc	1 1677 20                       # parallel-rne.mlir:1677:20
	seteq r16, r1, zero
	.loc	1 1674 19                       # parallel-rne.mlir:1674:19
	seteq r12, r9, zero
	.loc	1 1676 19                       # parallel-rne.mlir:1676:19
	seteq r15, r9, r27
	.loc	1 1682 20                       # parallel-rne.mlir:1682:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 1675 19                       # parallel-rne.mlir:1675:19
	and r9, r11, r12
	.loc	1 1678 20                       # parallel-rne.mlir:1678:20
	and r11, r16, r15
	.loc	1 1679 20                       # parallel-rne.mlir:1679:20
	or r11, r9, r11
	.loc	1 1667 19                       # parallel-rne.mlir:1667:19
	add.s r9, r6, r7
	.loc	1 1683 20                       # parallel-rne.mlir:1683:20
	or r1, r1, r11
	lui r11, 523264
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r1, zero, .LBB0_1585
# %bb.1584:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r26, 0(r9)
.LBB0_1585:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	loads.w r1, 4(r10)
	loads.w r12, 4(r8)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r18, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r1, zero, .LBB0_1587
# %bb.1586:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r9)
.LBB0_1587:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	loads.w r1, 8(r10)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r25, r1, zero
	seteq r17, r15, zero
	seteq r18, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r25, r18
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r1, zero, .LBB0_1589
# %bb.1588:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r9)
.LBB0_1589:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	loads.w r1, 12(r10)
	loads.w r8, 12(r8)
	and r1, r1, r21
	and r8, r8, r21
	seteq r10, r1, r27
	seteq r18, r1, zero
	seteq r15, r8, zero
	seteq r16, r8, r27
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	and r8, r10, r15
	and r10, r18, r16
	or r8, r8, r10
	or r1, r1, r8
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	bneq r1, zero, .LBB0_1591
# %bb.1590:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 12(r9)
.LBB0_1591:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 1685 20 is_stmt 1             # parallel-rne.mlir:1685:20
	and r8, r11, r21
	.loc	1 1687 20                       # parallel-rne.mlir:1687:20
	setlt.u r1, r27, r8
	.loc	1 1688 20                       # parallel-rne.mlir:1688:20
	bneq r1, zero, .LBB0_1593
# %bb.1592:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r11, 0
	j .LBB0_1594
.LBB0_1593:                             #   in Loop: Header=BB0_1583 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_1594:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1688 20                       # parallel-rne.mlir:1688:20
	bneq r1, zero, .LBB0_1596
# %bb.1595:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r17, 0
	j .LBB0_1597
.LBB0_1596:                             #   in Loop: Header=BB0_1583 Depth=3
	lui r1, 1024
	or r9, r17, r1
.LBB0_1597:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1688 20                       # parallel-rne.mlir:1688:20
	bneq r15, zero, .LBB0_1599
# %bb.1598:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1600
.LBB0_1599:                             #   in Loop: Header=BB0_1583 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1600:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	and r15, r26, r21
	setlt.u r16, r27, r15
	.loc	1 1688 20                       # parallel-rne.mlir:1688:20
	bneq r16, zero, .LBB0_1602
# %bb.1601:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r26, 0
	.loc	1 1694 20 is_stmt 1             # parallel-rne.mlir:1694:20
	setlt.u r15, r23, r15
	.loc	1 1695 20                       # parallel-rne.mlir:1695:20
	beq r15, zero, .LBB0_1603
	j .LBB0_1604
.LBB0_1602:                             #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r18, r26, r16
	.loc	1 1694 20 is_stmt 1             # parallel-rne.mlir:1694:20
	setlt.u r15, r23, r15
	.loc	1 1695 20                       # parallel-rne.mlir:1695:20
	bneq r15, zero, .LBB0_1604
.LBB0_1603:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r26, 16
	lui r16, 1048560
	andi r15, r15, 1
	add.s r15, r26, r15
	add.s r15, r15, r22
	and r18, r15, r16
.LBB0_1604:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1695 20                       # parallel-rne.mlir:1695:20
	bneq r1, zero, .LBB0_1606
# %bb.1605:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r28, r1, r12
.LBB0_1606:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	setlt.u r1, r23, r25
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 1695 20                       # parallel-rne.mlir:1695:20
	bneq r1, zero, .LBB0_1608
# %bb.1607:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r9, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r9, r1, r9
.LBB0_1608:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	setlt.u r1, r23, r8
	.loc	1 1695 20                       # parallel-rne.mlir:1695:20
	bneq r1, zero, .LBB0_1582
# %bb.1609:                             # %vector.body289
                                        #   in Loop: Header=BB0_1583 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r11, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r22
	and r10, r1, r8
	j .LBB0_1582
.LBB0_1610:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1656 7 is_stmt 1              # parallel-rne.mlir:1656:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
	.loc	1 1702 7                        # parallel-rne.mlir:1702:7
	beq r11, r10, .LBB0_1405
.LBB0_1611:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1748 7                        # parallel-rne.mlir:1748:7
	addli r1, zero, 6
	bneq r11, r1, .LBB0_1663
.LBB0_1612:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1748 7                        # parallel-rne.mlir:1748:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	addli r7, zero, 24
	zext_int2long r[8:9], r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -232(r30)                 # 4-byte Folded Spill
	j .LBB0_1614
.LBB0_1613:                             # %middle.block265
                                        #   in Loop: Header=BB0_1614 Depth=2
	.loc	1 1755 9 is_stmt 1              # parallel-rne.mlir:1755:9
	load.d r[7:8], -216(r30)                # 8-byte Folded Reload
	load.d r[9:10], -224(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	addli.d r[8:9], r[7:8], 0
	beq r1, zero, .LBB0_1662
.LBB0_1614:                             # %.preheader125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1635 Depth 3
                                        #       Child Loop BB0_1618 Depth 3
	.loc	1 1756 11                       # parallel-rne.mlir:1756:11
	loadli.w r1,  -232(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[8:9], r10
	store.d r[8:9], -224(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1633
# %bb.1615:                             # %scalar.ph257.preheader
                                        #   in Loop: Header=BB0_1614 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1618
.LBB0_1616:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	srli r1, r8, 16
	andi r1, r1, 1
	add.s r1, r8, r1
	lui r8, 1048560
	add.s r1, r1, r22
	and r1, r1, r8
.LBB0_1617:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 1756 11                       # parallel-rne.mlir:1756:11
	load.d r[8:9], -192(r30)                # 8-byte Folded Reload
	.loc	1 1789 13 is_stmt 1             # parallel-rne.mlir:1789:13
	add.s r7, r24, r7
	stores.w r1, 0(r7)
	.loc	1 1756 11                       # parallel-rne.mlir:1756:11
	setlt.ul r8, r[10:11], r[8:9]
	addli.d r[10:11], r[10:11], 1
	beq r8, zero, .LBB0_1613
.LBB0_1618:                             # %scalar.ph257
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1614 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	add.ul r[7:8], r[10:11], r[13:14]
	lui r12, 523264
	slli r7, r7, 2
	.loc	1 1758 19                       # parallel-rne.mlir:1758:19
	add.s r1, r2, r7
	.loc	1 1759 19                       # parallel-rne.mlir:1759:19
	add.s r8, r6, r7
	.loc	1 1758 19                       # parallel-rne.mlir:1758:19
	loads.w r1, 0(r1)
	.loc	1 1759 19                       # parallel-rne.mlir:1759:19
	loads.w r17, 0(r8)
	lui r8, 523264
	.loc	1 1762 19                       # parallel-rne.mlir:1762:19
	and r1, r1, r21
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	beq r1, r27, .LBB0_1620
# %bb.1619:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_1620:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	add.s r9, r15, r7
	loads.w r9, 0(r9)
	and r9, r9, r21
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	beq r9, zero, .LBB0_1630
# %bb.1621:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r1, zero, .LBB0_1631
.LBB0_1622:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	beq r9, r27, .LBB0_1624
.LBB0_1623:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_1624:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r12, zero, .LBB0_1626
# %bb.1625:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1626:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	setlt.u r9, r27, r9
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r9, zero, .LBB0_1628
# %bb.1627:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r1, 0
.LBB0_1628:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 1777 20 is_stmt 1             # parallel-rne.mlir:1777:20
	and r9, r8, r21
	.loc	1 1779 20                       # parallel-rne.mlir:1779:20
	setlt.u r1, r27, r9
	.loc	1 1780 20                       # parallel-rne.mlir:1780:20
	bneq r1, zero, .LBB0_1632
# %bb.1629:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r8, 0
	.loc	1 1786 20 is_stmt 1             # parallel-rne.mlir:1786:20
	setlt.u r9, r23, r9
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	bneq r9, zero, .LBB0_1617
	j .LBB0_1616
.LBB0_1630:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1776 20 is_stmt 1             # parallel-rne.mlir:1776:20
	beq r1, zero, .LBB0_1622
.LBB0_1631:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r9, r27, .LBB0_1623
	j .LBB0_1624
.LBB0_1632:                             #   in Loop: Header=BB0_1618 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r8, r1
	.loc	1 1786 20 is_stmt 1             # parallel-rne.mlir:1786:20
	setlt.u r9, r23, r9
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	bneq r9, zero, .LBB0_1617
	j .LBB0_1616
.LBB0_1633:                             # %vector.body259.preheader
                                        #   in Loop: Header=BB0_1614 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[19:20], zero
	j .LBB0_1635
.LBB0_1634:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 1756 11 is_stmt 1             # parallel-rne.mlir:1756:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1789 13                       # parallel-rne.mlir:1789:13
	add.s r7, r24, r7
	.loc	1 1756 11                       # parallel-rne.mlir:1756:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 1789 13                       # parallel-rne.mlir:1789:13
	stores.w r10, 12(r7)
	stores.w r9, 8(r7)
	stores.w r28, 4(r7)
	stores.w r18, 0(r7)
	.loc	1 1756 11                       # parallel-rne.mlir:1756:11
	bneq r1, zero, .LBB0_1613
.LBB0_1635:                             # %vector.body259
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1614 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	add.ul r[7:8], r[19:20], r[13:14]
	lui r26, 523264
	slli r7, r7, 2
	add.s r10, r15, r7
	.loc	1 1758 19                       # parallel-rne.mlir:1758:19
	add.s r8, r2, r7
	.loc	1 1757 19                       # parallel-rne.mlir:1757:19
	loads.w r1, 0(r10)
	.loc	1 1758 19                       # parallel-rne.mlir:1758:19
	loads.w r9, 0(r8)
	.loc	1 1764 19                       # parallel-rne.mlir:1764:19
	and r1, r1, r21
	.loc	1 1762 19                       # parallel-rne.mlir:1762:19
	and r9, r9, r21
	.loc	1 1765 19                       # parallel-rne.mlir:1765:19
	seteq r11, r1, r27
	.loc	1 1769 20                       # parallel-rne.mlir:1769:20
	seteq r16, r1, zero
	.loc	1 1766 19                       # parallel-rne.mlir:1766:19
	seteq r12, r9, zero
	.loc	1 1768 19                       # parallel-rne.mlir:1768:19
	seteq r15, r9, r27
	.loc	1 1774 20                       # parallel-rne.mlir:1774:20
	max.u r1, r1, r9
	setlt.u r1, r27, r1
	.loc	1 1767 19                       # parallel-rne.mlir:1767:19
	and r9, r11, r12
	.loc	1 1770 20                       # parallel-rne.mlir:1770:20
	and r11, r16, r15
	.loc	1 1771 20                       # parallel-rne.mlir:1771:20
	or r11, r9, r11
	.loc	1 1759 19                       # parallel-rne.mlir:1759:19
	add.s r9, r6, r7
	.loc	1 1775 20                       # parallel-rne.mlir:1775:20
	or r1, r1, r11
	lui r11, 523264
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r1, zero, .LBB0_1637
# %bb.1636:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r26, 0(r9)
.LBB0_1637:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	loads.w r1, 4(r10)
	loads.w r12, 4(r8)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r18, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r1, zero, .LBB0_1639
# %bb.1638:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r9)
.LBB0_1639:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	loads.w r1, 8(r10)
	loads.w r15, 8(r8)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r25, r1, zero
	seteq r17, r15, zero
	seteq r18, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r25, r18
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r1, zero, .LBB0_1641
# %bb.1640:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r9)
.LBB0_1641:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	loads.w r1, 12(r10)
	loads.w r8, 12(r8)
	and r1, r1, r21
	and r8, r8, r21
	seteq r10, r1, r27
	seteq r18, r1, zero
	seteq r15, r8, zero
	seteq r16, r8, r27
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	and r8, r10, r15
	and r10, r18, r16
	or r8, r8, r10
	or r1, r1, r8
	.loc	1 1776 20                       # parallel-rne.mlir:1776:20
	bneq r1, zero, .LBB0_1643
# %bb.1642:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r11, 12(r9)
.LBB0_1643:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 1777 20 is_stmt 1             # parallel-rne.mlir:1777:20
	and r8, r11, r21
	.loc	1 1779 20                       # parallel-rne.mlir:1779:20
	setlt.u r1, r27, r8
	.loc	1 1780 20                       # parallel-rne.mlir:1780:20
	bneq r1, zero, .LBB0_1645
# %bb.1644:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r10, r11, 0
	j .LBB0_1646
.LBB0_1645:                             #   in Loop: Header=BB0_1635 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_1646:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1780 20                       # parallel-rne.mlir:1780:20
	bneq r1, zero, .LBB0_1648
# %bb.1647:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r9, r17, 0
	j .LBB0_1649
.LBB0_1648:                             #   in Loop: Header=BB0_1635 Depth=3
	lui r1, 1024
	or r9, r17, r1
.LBB0_1649:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1780 20                       # parallel-rne.mlir:1780:20
	bneq r15, zero, .LBB0_1651
# %bb.1650:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1652
.LBB0_1651:                             #   in Loop: Header=BB0_1635 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1652:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	and r15, r26, r21
	setlt.u r16, r27, r15
	.loc	1 1780 20                       # parallel-rne.mlir:1780:20
	bneq r16, zero, .LBB0_1654
# %bb.1653:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r26, 0
	.loc	1 1786 20 is_stmt 1             # parallel-rne.mlir:1786:20
	setlt.u r15, r23, r15
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	beq r15, zero, .LBB0_1655
	j .LBB0_1656
.LBB0_1654:                             #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r18, r26, r16
	.loc	1 1786 20 is_stmt 1             # parallel-rne.mlir:1786:20
	setlt.u r15, r23, r15
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	bneq r15, zero, .LBB0_1656
.LBB0_1655:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r26, 16
	lui r16, 1048560
	andi r15, r15, 1
	add.s r15, r26, r15
	add.s r15, r15, r22
	and r18, r15, r16
.LBB0_1656:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	bneq r1, zero, .LBB0_1658
# %bb.1657:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	andi r1, r1, 1
	add.s r1, r12, r1
	lui r12, 1048560
	add.s r1, r1, r22
	and r28, r1, r12
.LBB0_1658:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	setlt.u r1, r23, r25
	loadli.w r15,  -200(r30)                # 4-byte Folded Reload
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	bneq r1, zero, .LBB0_1660
# %bb.1659:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r9, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r9, r1, r9
.LBB0_1660:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	setlt.u r1, r23, r8
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	bneq r1, zero, .LBB0_1634
# %bb.1661:                             # %vector.body259
                                        #   in Loop: Header=BB0_1635 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r11, 16
	lui r8, 1048560
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r22
	and r10, r1, r8
	j .LBB0_1634
.LBB0_1662:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1748 7 is_stmt 1              # parallel-rne.mlir:1748:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
.LBB0_1663:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1794 7                        # parallel-rne.mlir:1794:7
	loadli.w r1,  -280(r30)                 # 4-byte Folded Reload
	zext_int2long r[12:13], zero
	store.d r[12:13], -232(r30)             # 8-byte Folded Spill
	beq r1, zero, .LBB0_1715
# %bb.1664:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -304(r30)                 # 4-byte Folded Reload
	loadli.w r7,  -308(r30)                 # 4-byte Folded Reload
	.loc	1 1794 7                        # parallel-rne.mlir:1794:7
	xfence
	mfence { lm, sm, gm }
	min.u r1, r1, r7
	addli r7, zero, 16
	setlt.u r1, r1, r7
	addli r7, zero, 28
	zext_int2long r[8:9], r7
	loadli.w r7,  -300(r30)                 # 4-byte Folded Reload
	or r1, r1, r7
	storeli.w r1, -224(r30)                 # 4-byte Folded Spill
	j .LBB0_1666
.LBB0_1665:                             # %middle.block
                                        #   in Loop: Header=BB0_1666 Depth=2
	.loc	1 1801 9 is_stmt 1              # parallel-rne.mlir:1801:9
	load.d r[7:8], -192(r30)                # 8-byte Folded Reload
	load.d r[9:10], -216(r30)               # 8-byte Folded Reload
	setlt.ul r1, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r10, zero, 5
	addli.d r[8:9], r[7:8], 0
	beq r1, zero, .LBB0_1714
.LBB0_1666:                             # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1687 Depth 3
                                        #       Child Loop BB0_1670 Depth 3
	.loc	1 1802 11                       # parallel-rne.mlir:1802:11
	loadli.w r1,  -224(r30)                 # 4-byte Folded Reload
	sll.d r[13:14], r[8:9], r10
	store.d r[8:9], -216(r30)               # 8-byte Folded Spill
	beq r1, zero, .LBB0_1685
# %bb.1667:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1666 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_1670
.LBB0_1668:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	srli r1, r10, 16
	andi r1, r1, 1
	add.s r1, r10, r1
	lui r10, 1048560
	add.s r1, r1, r22
	and r1, r1, r10
.LBB0_1669:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 1802 11                       # parallel-rne.mlir:1802:11
	load.d r[10:11], -192(r30)              # 8-byte Folded Reload
	.loc	1 1835 13 is_stmt 1             # parallel-rne.mlir:1835:13
	add.s r9, r24, r9
	stores.w r1, 0(r9)
	.loc	1 1802 11                       # parallel-rne.mlir:1802:11
	setlt.ul r10, r[7:8], r[10:11]
	addli.d r[7:8], r[7:8], 1
	beq r10, zero, .LBB0_1665
.LBB0_1670:                             # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1666 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1803 19                       # parallel-rne.mlir:1803:19
	add.ul r[9:10], r[7:8], r[13:14]
	lui r12, 523264
	slli r9, r9, 2
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	add.s r1, r2, r9
	.loc	1 1805 19                       # parallel-rne.mlir:1805:19
	add.s r10, r6, r9
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	loads.w r1, 0(r1)
	.loc	1 1805 19                       # parallel-rne.mlir:1805:19
	loads.w r17, 0(r10)
	lui r10, 523264
	.loc	1 1808 19                       # parallel-rne.mlir:1808:19
	and r1, r1, r21
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	beq r1, r27, .LBB0_1672
# %bb.1671:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r17, 0
.LBB0_1672:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	loadli.w r11,  -200(r30)                # 4-byte Folded Reload
	add.s r11, r11, r9
	loads.w r11, 0(r11)
	and r11, r11, r21
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	beq r11, zero, .LBB0_1682
# %bb.1673:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r17, 0
	lui r17, 523264
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r1, zero, .LBB0_1683
.LBB0_1674:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	beq r11, r27, .LBB0_1676
.LBB0_1675:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r17, r12, 0
.LBB0_1676:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	setlt.u r12, r27, r1
	lui r1, 523264
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r12, zero, .LBB0_1678
# %bb.1677:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r1, r17, 0
.LBB0_1678:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	setlt.u r11, r27, r11
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r11, zero, .LBB0_1680
# %bb.1679:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r10, r1, 0
.LBB0_1680:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 1823 20 is_stmt 1             # parallel-rne.mlir:1823:20
	and r11, r10, r21
	.loc	1 1825 20                       # parallel-rne.mlir:1825:20
	setlt.u r1, r27, r11
	.loc	1 1826 20                       # parallel-rne.mlir:1826:20
	bneq r1, zero, .LBB0_1684
# %bb.1681:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r1, r10, 0
	.loc	1 1832 20 is_stmt 1             # parallel-rne.mlir:1832:20
	setlt.u r11, r23, r11
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	bneq r11, zero, .LBB0_1669
	j .LBB0_1668
.LBB0_1682:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r17, 523264
	.loc	1 1822 20 is_stmt 1             # parallel-rne.mlir:1822:20
	beq r1, zero, .LBB0_1674
.LBB0_1683:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r17, r12, 0
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r11, r27, .LBB0_1675
	j .LBB0_1676
.LBB0_1684:                             #   in Loop: Header=BB0_1670 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r10, r1
	.loc	1 1832 20 is_stmt 1             # parallel-rne.mlir:1832:20
	setlt.u r11, r23, r11
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	bneq r11, zero, .LBB0_1669
	j .LBB0_1668
.LBB0_1685:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1666 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	load.d r[19:20], -232(r30)              # 8-byte Folded Reload
	j .LBB0_1687
.LBB0_1686:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 1802 11 is_stmt 1             # parallel-rne.mlir:1802:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1835 13                       # parallel-rne.mlir:1835:13
	add.s r8, r24, r26
	.loc	1 1802 11                       # parallel-rne.mlir:1802:11
	seteq.d r1, r[19:20], r[4:5]
	.loc	1 1835 13                       # parallel-rne.mlir:1835:13
	stores.w r7, 12(r8)
	stores.w r11, 8(r8)
	stores.w r28, 4(r8)
	stores.w r18, 0(r8)
	.loc	1 1802 11                       # parallel-rne.mlir:1802:11
	bneq r1, zero, .LBB0_1665
.LBB0_1687:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1666 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1803 19                       # parallel-rne.mlir:1803:19
	add.ul r[7:8], r[19:20], r[13:14]
	loadli.w r1,  -200(r30)                 # 4-byte Folded Reload
	slli r26, r7, 2
	add.s r7, r1, r26
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	add.s r10, r2, r26
	.loc	1 1803 19                       # parallel-rne.mlir:1803:19
	loads.w r1, 0(r7)
	.loc	1 1804 19                       # parallel-rne.mlir:1804:19
	loads.w r8, 0(r10)
	.loc	1 1810 19                       # parallel-rne.mlir:1810:19
	and r1, r1, r21
	.loc	1 1808 19                       # parallel-rne.mlir:1808:19
	and r8, r8, r21
	.loc	1 1811 19                       # parallel-rne.mlir:1811:19
	seteq r9, r1, r27
	.loc	1 1815 20                       # parallel-rne.mlir:1815:20
	seteq r15, r1, zero
	.loc	1 1812 19                       # parallel-rne.mlir:1812:19
	seteq r11, r8, zero
	.loc	1 1814 19                       # parallel-rne.mlir:1814:19
	seteq r12, r8, r27
	.loc	1 1820 20                       # parallel-rne.mlir:1820:20
	max.u r1, r1, r8
	setlt.u r1, r27, r1
	.loc	1 1813 19                       # parallel-rne.mlir:1813:19
	and r8, r9, r11
	.loc	1 1816 20                       # parallel-rne.mlir:1816:20
	and r9, r15, r12
	.loc	1 1805 19                       # parallel-rne.mlir:1805:19
	add.s r11, r6, r26
	.loc	1 1817 20                       # parallel-rne.mlir:1817:20
	or r8, r8, r9
	lui r9, 523264
	.loc	1 1821 20                       # parallel-rne.mlir:1821:20
	or r1, r1, r8
	lui r8, 523264
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r1, zero, .LBB0_1689
# %bb.1688:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r9, 0(r11)
.LBB0_1689:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	loads.w r1, 4(r7)
	loads.w r12, 4(r10)
	and r1, r1, r21
	and r12, r12, r21
	seteq r15, r1, r27
	seteq r18, r1, zero
	seteq r16, r12, zero
	seteq r17, r12, r27
	max.u r1, r1, r12
	setlt.u r1, r27, r1
	and r12, r15, r16
	and r15, r18, r17
	or r12, r12, r15
	or r1, r1, r12
	lui r12, 523264
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r1, zero, .LBB0_1691
# %bb.1690:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r11)
.LBB0_1691:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	loads.w r1, 8(r7)
	loads.w r15, 8(r10)
	and r1, r1, r21
	and r15, r15, r21
	seteq r16, r1, r27
	seteq r25, r1, zero
	seteq r17, r15, zero
	seteq r18, r15, r27
	max.u r1, r1, r15
	setlt.u r1, r27, r1
	and r15, r16, r17
	and r16, r25, r18
	lui r17, 523264
	or r15, r15, r16
	or r1, r1, r15
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r1, zero, .LBB0_1693
# %bb.1692:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r17, 8(r11)
.LBB0_1693:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	loads.w r1, 12(r7)
	loads.w r7, 12(r10)
	and r1, r1, r21
	and r7, r7, r21
	seteq r10, r1, r27
	seteq r18, r1, zero
	seteq r15, r7, zero
	seteq r16, r7, r27
	max.u r1, r1, r7
	setlt.u r1, r27, r1
	and r7, r10, r15
	and r10, r18, r16
	or r7, r7, r10
	or r1, r1, r7
	.loc	1 1822 20                       # parallel-rne.mlir:1822:20
	bneq r1, zero, .LBB0_1695
# %bb.1694:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 12(r11)
.LBB0_1695:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 1823 20 is_stmt 1             # parallel-rne.mlir:1823:20
	and r10, r8, r21
	.loc	1 1825 20                       # parallel-rne.mlir:1825:20
	setlt.u r1, r27, r10
	.loc	1 1826 20                       # parallel-rne.mlir:1826:20
	bneq r1, zero, .LBB0_1697
# %bb.1696:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r8, 0
	j .LBB0_1698
.LBB0_1697:                             #   in Loop: Header=BB0_1687 Depth=3
	lui r1, 1024
	or r7, r8, r1
.LBB0_1698:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	and r25, r17, r21
	setlt.u r1, r27, r25
	.loc	1 1826 20                       # parallel-rne.mlir:1826:20
	bneq r1, zero, .LBB0_1700
# %bb.1699:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r17, 0
	j .LBB0_1701
.LBB0_1700:                             #   in Loop: Header=BB0_1687 Depth=3
	lui r1, 1024
	or r11, r17, r1
.LBB0_1701:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	and r1, r12, r21
	setlt.u r15, r27, r1
	.loc	1 1826 20                       # parallel-rne.mlir:1826:20
	bneq r15, zero, .LBB0_1703
# %bb.1702:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r28, r12, 0
	j .LBB0_1704
.LBB0_1703:                             #   in Loop: Header=BB0_1687 Depth=3
	lui r15, 1024
	or r28, r12, r15
.LBB0_1704:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	and r15, r9, r21
	setlt.u r16, r27, r15
	.loc	1 1826 20                       # parallel-rne.mlir:1826:20
	bneq r16, zero, .LBB0_1706
# %bb.1705:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r18, r9, 0
	.loc	1 1832 20 is_stmt 1             # parallel-rne.mlir:1832:20
	setlt.u r15, r23, r15
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	beq r15, zero, .LBB0_1707
	j .LBB0_1708
.LBB0_1706:                             #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r16, 1024
	or r18, r9, r16
	.loc	1 1832 20 is_stmt 1             # parallel-rne.mlir:1832:20
	setlt.u r15, r23, r15
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	bneq r15, zero, .LBB0_1708
.LBB0_1707:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r15, r9, 16
	andi r15, r15, 1
	add.s r9, r9, r15
	lui r15, 1048560
	add.s r9, r9, r22
	and r18, r9, r15
.LBB0_1708:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	setlt.u r1, r23, r1
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	bneq r1, zero, .LBB0_1711
# %bb.1709:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r12, 16
	lui r9, 1048560
	andi r1, r1, 1
	add.s r1, r12, r1
	add.s r1, r1, r22
	and r28, r1, r9
	setlt.u r1, r23, r25
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	beq r1, zero, .LBB0_1712
.LBB0_1710:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r10
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	bneq r1, zero, .LBB0_1686
	j .LBB0_1713
.LBB0_1711:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r25
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	bneq r1, zero, .LBB0_1710
.LBB0_1712:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r9, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r11, r1, r9
	setlt.u r1, r23, r10
	.loc	1 1833 20                       # parallel-rne.mlir:1833:20
	bneq r1, zero, .LBB0_1686
.LBB0_1713:                             # %vector.body
                                        #   in Loop: Header=BB0_1687 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r8, 16
	lui r7, 1048560
	andi r1, r1, 1
	add.s r1, r8, r1
	add.s r1, r1, r22
	and r7, r1, r7
	j .LBB0_1686
.LBB0_1714:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1794 7 is_stmt 1              # parallel-rne.mlir:1794:7
	mfence { sm }
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r11
	load.d r[7:8], -296(r30)                # 8-byte Folded Reload
.LBB0_1715:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1840 7                        # parallel-rne.mlir:1840:7
	addli r1, zero, 255
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	addli r18, zero, 3
	.loc	1 1840 7                        # parallel-rne.mlir:1840:7
	csr_set csr5, r1
	sync_core
	.loc	1 1841 7                        # parallel-rne.mlir:1841:7
	beq r11, r18, .LBB0_5
# %bb.1716:                             # %.critedge43
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 2
	addli r15, zero, 64
	addli r16, zero, 1
	addli r17, zero, 12
	addli r19, zero, 6
	addli r20, zero, 7
	addli r24, zero, 23
	.loc	1 1852 7 is_stmt 1              # parallel-rne.mlir:1852:7
	bneq r11, zero, .LBB0_7
# %bb.1717:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -340(r30)                 # 4-byte Folded Reload
	.loc	1 1852 7                        # parallel-rne.mlir:1852:7
	addli r2, zero, 14
	addli r11, zero, 5
	load.d r[12:13], 24(r30)
	sll.d r[6:7], r[7:8], r2
	addli r8, zero, 20
	slli r1, r1, 5
	xwait r8, 0
	load.d r[8:9], -232(r30)                # 8-byte Folded Reload
	lock zero, r11
	add.ul r[6:7], r[12:13], r[6:7]
	sext_int2long r[1:2], r1
	dma_cfg r16, r16, zero, 0
	min.sl r[8:9], r[1:2], r[8:9]
	addli.d r[8:9], r[8:9], 32
	max.sl r[8:9], r[8:9], r[1:2]
	sub.sl r[1:2], r[8:9], r[1:2]
	load.d r[8:9], -208(r30)                # 8-byte Folded Reload
	dma_cfg zero, r16, zero, 1
	.loc	1 1848 13 is_stmt 1             # parallel-rne.mlir:1848:13
	min.sl r[1:2], r[1:2], r[4:5]
	lui r4, 12
	.loc	1 1852 7                        # parallel-rne.mlir:1852:7
	add.ul r[6:7], r[6:7], r[8:9]
	ori r4, r4, 320
	dma_cfg r7, zero, zero, 2
	loadli.w r5,  -344(r30)                 # 4-byte Folded Reload
	load.d r[8:9], -336(r30)                # 8-byte Folded Reload
	add.s r4, r5, r4
	addli r5, r8, 31
	dma_cfg r6, r4, r15, 3
	srli r4, r5, 5
	addli r6, zero, 128
	slli r5, r8, 1
	dma_cfg r15, r6, r4, 4
	andi r4, r5, 62
	addli r5, zero, 512
	dma_cfg r5, r6, r1, 5
	addli r1, zero, 21
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_1718:                             # %._crit_edge
	.loc	1 1854 5                        # parallel-rne.mlir:1854:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_1720
# %bb.1719:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1854 5                        # parallel-rne.mlir:1854:5
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
.LBB0_1720:
	.loc	1 1855 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1855:5
	addli sp, sp, 400
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
	.long	464                             # 0x1d0
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-2w4wz7nt" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
