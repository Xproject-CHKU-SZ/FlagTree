	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-vmssve19" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -592
	addli r2, zero, 1
.Ltmp0:
	.loc	1 38 5 prologue_end             # parallel-rne.mlir:38:5
	core_id r1
	core_id r8
	addli r30, sp, 528
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
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 3
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
	addli r2, zero, 7
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 21
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 41
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 34
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 36
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 38
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r1, zero, 44
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 46
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 40 10 is_stmt 1               # parallel-rne.mlir:40:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -20(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -40(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -60(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -80(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -100(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -120(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -140(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -160(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -180(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -200(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -220(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -244(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -264(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -288(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -308(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r1
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r4, r1, r4
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	addli r2, r2, -1
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	storeli.w r3, -144(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -176(r30)
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -196(r30)
	storeli.w r3, -192(r30)
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -216(r30)
	storeli.w r3, -212(r30)
	storeli.w r3, -208(r30)
	storeli.w r3, -204(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r3, -240(r30)
	storeli.w r3, -236(r30)
	storeli.w r3, -232(r30)
	storeli.w r3, -228(r30)
	storeli.w r3, -224(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -260(r30)
	storeli.w r3, -256(r30)
	storeli.w r3, -252(r30)
	storeli.w r3, -248(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w r3, -284(r30)
	storeli.w r3, -280(r30)
	storeli.w r3, -276(r30)
	storeli.w r3, -272(r30)
	storeli.w r3, -268(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w r3, -304(r30)
	storeli.w r3, -300(r30)
	storeli.w r3, -296(r30)
	storeli.w r3, -292(r30)
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	mul.s r1, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	fmac.s r2, r2, r6
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	min.s r2, r2, r4
	.loc	1 66 5                          # parallel-rne.mlir:66:5
	ble.s r2, r1, .LBB0_1682
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 49 11 is_stmt 1               # parallel-rne.mlir:49:11
	sext_int2long r[4:5], r1
	lui r1, 524287
	addli r14, zero, 4
	addli r15, zero, 64
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 13
	lui r24, 522240
	lui r25, 268288
	store.d r[2:3], -488(r30)               # 8-byte Folded Spill
	lui r2, 7
	ori r21, r1, 4095
	lui r1, 522239
	ori r22, r2, 4095
	lui r2, 144
	ori r23, r1, 4095
	ori r1, r2, 2048
	lui r2, 208
	storeli.w r1, -492(r30)                 # 4-byte Folded Spill
	lui r1, 176
	ori r1, r1, 2048
	storeli.w r1, -496(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 272
	storeli.w r1, -500(r30)                 # 4-byte Folded Spill
	lui r1, 240
	ori r1, r1, 2048
	storeli.w r1, -504(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 2047
	storeli.w r1, -508(r30)                 # 4-byte Folded Spill
	lui r1, 304
	ori r3, r2, 4095
	lui r2, 56
	ori r1, r1, 2048
	storeli.w r1, -512(r30)                 # 4-byte Folded Spill
	lui r1, 336
	ori r1, r1, 2048
	storeli.w r1, -516(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2115
	lui r2, 259268
	storeli.w r1, -520(r30)                 # 4-byte Folded Spill
	lui r1, 250738
	ori r1, r1, 1811
	storeli.w r1, -524(r30)                 # 4-byte Folded Spill
	ori r1, r2, 554
	storeli.w r1, -528(r30)                 # 4-byte Folded Spill
	j .LBB0_8
.LBB0_5:                                # %.critedge43.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1897 7                        # parallel-rne.mlir:1897:7
	addli r1, zero, 20
	addli r14, zero, 4
	addli r15, zero, 64
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 13
	xsignal r1, 0
	.loc	1 1898 7                        # parallel-rne.mlir:1898:7
	addli r1, zero, 32
	xsignal r1, 0
	.loc	1 1899 7                        # parallel-rne.mlir:1899:7
	addli r1, zero, 44
	xsignal r1, 0
	.loc	1 1900 7                        # parallel-rne.mlir:1900:7
	addli r1, zero, 46
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], -440(r30)                # 8-byte Folded Reload
	.loc	1 66 5 is_stmt 1                # parallel-rne.mlir:66:5
	load.d r[1:2], -488(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 1
	setlt.sl r1, r[4:5], r[1:2]
	beq r1, zero, .LBB0_1682
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_33 Depth 2
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_56 Depth 3
                                        #     Child Loop BB0_63 Depth 2
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_86 Depth 3
                                        #     Child Loop BB0_93 Depth 2
                                        #       Child Loop BB0_95 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #     Child Loop BB0_123 Depth 2
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_146 Depth 3
                                        #     Child Loop BB0_153 Depth 2
                                        #       Child Loop BB0_155 Depth 3
                                        #       Child Loop BB0_176 Depth 3
                                        #     Child Loop BB0_183 Depth 2
                                        #       Child Loop BB0_185 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_213 Depth 2
                                        #       Child Loop BB0_215 Depth 3
                                        #       Child Loop BB0_236 Depth 3
                                        #     Child Loop BB0_243 Depth 2
                                        #       Child Loop BB0_245 Depth 3
                                        #       Child Loop BB0_266 Depth 3
                                        #     Child Loop BB0_278 Depth 2
                                        #     Child Loop BB0_360 Depth 2
                                        #       Child Loop BB0_362 Depth 3
                                        #     Child Loop BB0_285 Depth 2
                                        #       Child Loop BB0_287 Depth 3
                                        #     Child Loop BB0_385 Depth 2
                                        #       Child Loop BB0_387 Depth 3
                                        #     Child Loop BB0_310 Depth 2
                                        #       Child Loop BB0_312 Depth 3
                                        #     Child Loop BB0_410 Depth 2
                                        #       Child Loop BB0_412 Depth 3
                                        #     Child Loop BB0_335 Depth 2
                                        #       Child Loop BB0_337 Depth 3
                                        #     Child Loop BB0_435 Depth 2
                                        #       Child Loop BB0_437 Depth 3
                                        #     Child Loop BB0_459 Depth 2
                                        #       Child Loop BB0_461 Depth 3
                                        #     Child Loop BB0_578 Depth 2
                                        #       Child Loop BB0_595 Depth 3
                                        #       Child Loop BB0_581 Depth 3
                                        #     Child Loop BB0_491 Depth 2
                                        #       Child Loop BB0_508 Depth 3
                                        #       Child Loop BB0_494 Depth 3
                                        #     Child Loop BB0_607 Depth 2
                                        #       Child Loop BB0_624 Depth 3
                                        #       Child Loop BB0_610 Depth 3
                                        #     Child Loop BB0_520 Depth 2
                                        #       Child Loop BB0_537 Depth 3
                                        #       Child Loop BB0_523 Depth 3
                                        #     Child Loop BB0_636 Depth 2
                                        #       Child Loop BB0_653 Depth 3
                                        #       Child Loop BB0_639 Depth 3
                                        #     Child Loop BB0_549 Depth 2
                                        #       Child Loop BB0_566 Depth 3
                                        #       Child Loop BB0_552 Depth 3
                                        #     Child Loop BB0_665 Depth 2
                                        #       Child Loop BB0_682 Depth 3
                                        #       Child Loop BB0_668 Depth 3
                                        #     Child Loop BB0_693 Depth 2
                                        #       Child Loop BB0_710 Depth 3
                                        #       Child Loop BB0_696 Depth 3
                                        #     Child Loop BB0_748 Depth 2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_749 Depth 3
                                        #     Child Loop BB0_727 Depth 2
                                        #       Child Loop BB0_729 Depth 3
                                        #       Child Loop BB0_728 Depth 3
                                        #     Child Loop BB0_755 Depth 2
                                        #       Child Loop BB0_757 Depth 3
                                        #       Child Loop BB0_756 Depth 3
                                        #     Child Loop BB0_734 Depth 2
                                        #       Child Loop BB0_736 Depth 3
                                        #       Child Loop BB0_735 Depth 3
                                        #     Child Loop BB0_762 Depth 2
                                        #       Child Loop BB0_764 Depth 3
                                        #       Child Loop BB0_763 Depth 3
                                        #     Child Loop BB0_741 Depth 2
                                        #       Child Loop BB0_743 Depth 3
                                        #       Child Loop BB0_742 Depth 3
                                        #     Child Loop BB0_769 Depth 2
                                        #       Child Loop BB0_771 Depth 3
                                        #       Child Loop BB0_770 Depth 3
                                        #     Child Loop BB0_775 Depth 2
                                        #       Child Loop BB0_777 Depth 3
                                        #       Child Loop BB0_776 Depth 3
                                        #     Child Loop BB0_851 Depth 2
                                        #       Child Loop BB0_853 Depth 3
                                        #     Child Loop BB0_785 Depth 2
                                        #       Child Loop BB0_787 Depth 3
                                        #     Child Loop BB0_873 Depth 2
                                        #       Child Loop BB0_875 Depth 3
                                        #     Child Loop BB0_807 Depth 2
                                        #       Child Loop BB0_809 Depth 3
                                        #     Child Loop BB0_895 Depth 2
                                        #       Child Loop BB0_897 Depth 3
                                        #     Child Loop BB0_829 Depth 2
                                        #       Child Loop BB0_831 Depth 3
                                        #     Child Loop BB0_917 Depth 2
                                        #       Child Loop BB0_919 Depth 3
                                        #     Child Loop BB0_938 Depth 2
                                        #       Child Loop BB0_940 Depth 3
                                        #     Child Loop BB0_1077 Depth 2
                                        #       Child Loop BB0_1087 Depth 3
                                        #       Child Loop BB0_1081 Depth 3
                                        #     Child Loop BB0_966 Depth 2
                                        #       Child Loop BB0_976 Depth 3
                                        #       Child Loop BB0_970 Depth 3
                                        #     Child Loop BB0_1114 Depth 2
                                        #       Child Loop BB0_1124 Depth 3
                                        #       Child Loop BB0_1118 Depth 3
                                        #     Child Loop BB0_1003 Depth 2
                                        #       Child Loop BB0_1013 Depth 3
                                        #       Child Loop BB0_1007 Depth 3
                                        #     Child Loop BB0_1151 Depth 2
                                        #       Child Loop BB0_1161 Depth 3
                                        #       Child Loop BB0_1155 Depth 3
                                        #     Child Loop BB0_1040 Depth 2
                                        #       Child Loop BB0_1050 Depth 3
                                        #       Child Loop BB0_1044 Depth 3
                                        #     Child Loop BB0_1188 Depth 2
                                        #       Child Loop BB0_1198 Depth 3
                                        #       Child Loop BB0_1192 Depth 3
                                        #     Child Loop BB0_1224 Depth 2
                                        #       Child Loop BB0_1234 Depth 3
                                        #       Child Loop BB0_1228 Depth 3
                                        #     Child Loop BB0_1422 Depth 2
                                        #       Child Loop BB0_1443 Depth 3
                                        #       Child Loop BB0_1426 Depth 3
                                        #     Child Loop BB0_1267 Depth 2
                                        #       Child Loop BB0_1288 Depth 3
                                        #       Child Loop BB0_1271 Depth 3
                                        #     Child Loop BB0_1474 Depth 2
                                        #       Child Loop BB0_1495 Depth 3
                                        #       Child Loop BB0_1478 Depth 3
                                        #     Child Loop BB0_1319 Depth 2
                                        #       Child Loop BB0_1340 Depth 3
                                        #       Child Loop BB0_1323 Depth 3
                                        #     Child Loop BB0_1526 Depth 2
                                        #       Child Loop BB0_1547 Depth 3
                                        #       Child Loop BB0_1530 Depth 3
                                        #     Child Loop BB0_1371 Depth 2
                                        #       Child Loop BB0_1392 Depth 3
                                        #       Child Loop BB0_1375 Depth 3
                                        #     Child Loop BB0_1578 Depth 2
                                        #       Child Loop BB0_1599 Depth 3
                                        #       Child Loop BB0_1582 Depth 3
                                        #     Child Loop BB0_1630 Depth 2
                                        #       Child Loop BB0_1651 Depth 3
                                        #       Child Loop BB0_1634 Depth 3
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	loadli.w r1,  48(r30)
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	loadli.w r2,  44(r30)
	store.d r[4:5], -440(r30)               # 8-byte Folded Spill
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	addli r10, zero, 8
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	loadli.w r12,  -264(r30)
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	addli r9, zero, 5
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	loadli.w r6,  -308(r30)
	.loc	1 68 13                         # parallel-rne.mlir:68:13
	div.s r1, r4, r1
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	mod.s r11, r12, r14
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	addli r5, r6, 1
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	addli r13, r12, 1
	.loc	1 71 13                         # parallel-rne.mlir:71:13
	storeli.w r5, -308(r30)
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	storeli.w r13, -264(r30)
	.loc	1 69 13                         # parallel-rne.mlir:69:13
	div.s r1, r1, r2
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	loadli.w r2,  -288(r30)
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	slli r5, r11, 14
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	mod.s r9, r2, r9
	addli r2, r2, 1
	storeli.w r2, -288(r30)
	.loc	1 72 13                         # parallel-rne.mlir:72:13
	div.s r7, r1, r15
	.loc	1 102 13                        # parallel-rne.mlir:102:13
	slli r2, r9, 14
	.loc	1 73 13                         # parallel-rne.mlir:73:13
	slli r4, r7, 3
	.loc	1 74 13                         # parallel-rne.mlir:74:13
	sub.s r8, r17, r4
	.loc	1 75 13                         # parallel-rne.mlir:75:13
	min.s r8, r8, r10
	.loc	1 76 13                         # parallel-rne.mlir:76:13
	mod.s r10, r1, r8
	.loc	1 77 13                         # parallel-rne.mlir:77:13
	add.s r4, r10, r4
	.loc	1 85 13                         # parallel-rne.mlir:85:13
	zext_int2long r[10:11], r4
	storeli.w r4, -476(r30)                 # 4-byte Folded Spill
	.loc	1 104 13                        # parallel-rne.mlir:104:13
	lui r4, 32
	add.s r9, r5, r4
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r4
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	store.d r[10:11], -472(r30)             # 8-byte Folded Spill
	bneq r4, r17, .LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[26:27], 0(r30)
	sll.d r[10:11], r[10:11], r19
	addli r13, zero, 3
	xwait r13, 0
	add.ul r[10:11], r[26:27], r[10:11]
	blt.s r13, r12, .LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 5
	addli r16, zero, 2
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	addli r4, zero, 6
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r19, 10
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
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r15, 3
	dma_cfg r4, zero, r16, 4
	addli r4, zero, 256
	dma_cfg r4, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
.LBB0_11:                               # %.thread104
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r4, 32
	storeli.w zero, -424(r30)               # 4-byte Folded Spill
	addli r16, zero, 256
	addli r12, zero, 6
	.loc	1 108 7                         # parallel-rne.mlir:108:7
	lock zero, r14
	ori r4, r4, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r11, zero, 2
	add.s r4, r5, r4
	addli r5, zero, 5
	dma_cfg r4, r10, r15, 3
	addli r10, zero, 2
	addli r11, zero, 128
	addli r4, zero, 8
	dma_cfg r11, r15, r10, 4
	dma_cfg r16, r11, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 9
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 11
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 12
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 14
	dma_cfg zero, zero, r19, 10
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
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r9, zero, r15, 3
	dma_cfg r11, zero, r10, 4
	dma_cfg r16, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	xsignal r10, 0
	.loc	1 109 7 is_stmt 1               # parallel-rne.mlir:109:7
	j .LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 2
	.loc	1 109 7                         # parallel-rne.mlir:109:7
	bneq r4, r5, .LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 5
	xwait r5, 0
	xwait r4, 0
	lock zero, zero
	addli r4, zero, 3
	ds_cfg r5, zero, 0
	ds_cfg r15, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r15, zero, 13
	shuffle_batch r2, r9, r15, 1
	unlock zero
	xsignal r4, 0
	addli r4, zero, 1
	storeli.w r4, -424(r30)                 # 4-byte Folded Spill
	xsignal r14, 0
	j .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -424(r30)               # 4-byte Folded Spill
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	addli r12, zero, 6
.LBB0_16:                               #   in Loop: Header=BB0_8 Depth=1
	slli r4, r7, 6
	.loc	1 119 13 is_stmt 1              # parallel-rne.mlir:119:13
	loadli.w r9,  -220(r30)
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	loadli.w r7,  -244(r30)
	addli r13, zero, 6
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sub.s r1, r1, r4
	mod.s r4, r6, r14
	.loc	1 119 13 is_stmt 1              # parallel-rne.mlir:119:13
	mod.s r6, r9, r14
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	addli r5, r7, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.s r8, r1, r8
	.loc	1 122 13 is_stmt 1              # parallel-rne.mlir:122:13
	loadli.w r1,  -200(r30)
	.loc	1 117 13                        # parallel-rne.mlir:117:13
	storeli.w r5, -244(r30)
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	slli r16, r4, 15
	.loc	1 119 13 is_stmt 1              # parallel-rne.mlir:119:13
	addli r4, r9, 1
	slli r5, r6, 15
	lui r6, 48
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[10:11], r8
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	storeli.w r4, -220(r30)
	.loc	1 122 13 is_stmt 1              # parallel-rne.mlir:122:13
	addli r4, r1, 1
	storeli.w r8, -336(r30)                 # 4-byte Folded Spill
	.loc	1 119 13                        # parallel-rne.mlir:119:13
	add.s r6, r5, r6
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sll.d r[10:11], r[10:11], r18
	.loc	1 122 13 is_stmt 1              # parallel-rne.mlir:122:13
	storeli.w r4, -200(r30)
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	sll.d r[26:27], r[10:11], r17
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	store.d r[26:27], -456(r30)             # 8-byte Folded Spill
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r10, r12, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], 8(r30)
	addli r11, zero, 3
	xwait r18, 0
	add.ul r[7:8], r[7:8], r[26:27]
	blt.s r11, r9, .LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 5
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	addli r2, zero, 2
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 16
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 18
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 19
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 20
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 21
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 22
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 23
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 24
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 25
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 26
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 27
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 28
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 29
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 30
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 31
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 128
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r15, 3
	dma_cfg r2, zero, r14, 4
	addli r2, zero, 512
	dma_cfg r2, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
.LBB0_19:                               # %.thread105
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	lui r2, 48
	storeli.w zero, -420(r30)               # 4-byte Folded Spill
	storeli.w zero, -416(r30)               # 4-byte Folded Spill
	addli r4, zero, 5
	addli r9, zero, 3
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	lock zero, r14
	ori r2, r2, 64
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r8, zero, 2
	add.s r2, r5, r2
	addli r5, zero, 14
	dma_cfg r2, r7, r15, 3
	addli r7, zero, 128
	addli r8, zero, 512
	addli r2, zero, 2048
	dma_cfg r7, r15, r14, 4
	dma_cfg r8, r2, r15, 5
	addli r2, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r19, 10
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
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 23
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
	dma_cfg r17, r17, zero, 0
	dma_cfg r17, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r15, 3
	dma_cfg r7, zero, r14, 4
	dma_cfg r8, zero, r15, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r2, 0
	j .LBB0_28
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r4, zero, 5
	mod.s r4, r7, r4
	slli r5, r4, 15
	.loc	1 126 7 is_stmt 1               # parallel-rne.mlir:126:7
	beq r10, r14, .LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 3
	addli r2, zero, 6
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	bneq r10, r18, .LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	storeli.w zero, -420(r30)               # 4-byte Folded Spill
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 128
	ds_cfg r2, zero, 1
	ds_cfg r15, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 1
	shuffle_coa r5, r6, r15, 2
	unlock zero
	xsignal r18, 0
	storeli.w r2, -416(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	j .LBB0_26
.LBB0_23:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 127 7 is_stmt 1               # parallel-rne.mlir:127:7
	addli r4, zero, 8
	xwait r14, 0
	addli r8, zero, 0
	addli r6, zero, 1
	addli r7, zero, 1
	addli r9, zero, 3
	xwait r4, 0
	addli r4, zero, 11
	xwait r4, 0
.LBB0_24:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli r4, r8, 14
	slli r8, r8, 8
	lock zero, r6
	mm_cfg r15, r15, r15, 0
	or r4, r4, r5
	or r8, r8, r16
	mm_cfg r14, r14, r6, 2
	mm r8, r2, r4, 8
	andi r4, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r6
	bneq r4, zero, .LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	storeli.w zero, -416(r30)               # 4-byte Folded Spill
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	addli r2, zero, 1
	storeli.w r2, -420(r30)                 # 4-byte Folded Spill
	addli r2, zero, 10
.LBB0_26:                               # %.thread106
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
	j .LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	storeli.w zero, -420(r30)               # 4-byte Folded Spill
	storeli.w zero, -416(r30)               # 4-byte Folded Spill
.LBB0_28:                               # %.thread106
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 141 13 is_stmt 1              # parallel-rne.mlir:141:13
	loadli.w r2,  -180(r30)
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	loadli.w r4,  -160(r30)
	storeli.w r2, -408(r30)                 # 4-byte Folded Spill
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	addli r2, r2, 1
	storeli.w r4, -444(r30)                 # 4-byte Folded Spill
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	addli r4, r4, 1
	.loc	1 141 13                        # parallel-rne.mlir:141:13
	storeli.w r2, -180(r30)
	.loc	1 144 13                        # parallel-rne.mlir:144:13
	storeli.w r4, -160(r30)
	.loc	1 146 7                         # parallel-rne.mlir:146:7
	bneq r10, r9, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 147 7                         # parallel-rne.mlir:147:7
	addli r2, zero, 21
	xwait r2, 0
.LBB0_30:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	mod.s r1, r1, r14
	addli r2, zero, 128
	zext_int2long r[4:5], r18
	.loc	1 149 7 is_stmt 1               # parallel-rne.mlir:149:7
	xfence
	zext_int2long r[14:15], r2
	.loc	1 150 7                         # parallel-rne.mlir:150:7
	store.d r[4:5], -400(r30)               # 8-byte Folded Spill
	mfence { lm, sm, gm }
	slli r2, r1, 15
	.loc	1 151 7                         # parallel-rne.mlir:151:7
	addli r1, zero, 255
	csr_set csr5, r1
	lui r1, 80
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	add.s r19, r2, r1
	addli r1, zero, 127
	zext_int2long r[1:2], r1
	store.d r[1:2], -320(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	bneq r10, zero, .LBB0_60
# %bb.31:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_33
.LBB0_32:                               # %middle.block891
                                        #   in Loop: Header=BB0_33 Depth=2
	.loc	1 160 9                         # parallel-rne.mlir:160:9
	load.d r[1:2], -400(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_59
.LBB0_33:                               # %.preheader179
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_56 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	.loc	1 161 11 is_stmt 1              # parallel-rne.mlir:161:11
	beq r19, r16, .LBB0_56
	j .LBB0_35
.LBB0_34:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 176 13                        # parallel-rne.mlir:176:13
	add.s r2, r19, r5
	.loc	1 161 11                        # parallel-rne.mlir:161:11
	seteq.d r1, r[8:9], r[14:15]
	.loc	1 176 13                        # parallel-rne.mlir:176:13
	stores.w r10, 12(r2)
	stores.w r13, 8(r2)
	stores.w r28, 4(r2)
	stores.w r20, 0(r2)
	.loc	1 161 11                        # parallel-rne.mlir:161:11
	bneq r1, zero, .LBB0_32
.LBB0_35:                               # %vector.body887
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	and r12, r11, r21
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	setlt.u r1, r24, r12
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r1, zero, .LBB0_37
# %bb.36:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_35 Depth=3
	lui r1, 1024
	or r10, r11, r1
.LBB0_38:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	loads.w r26, 8(r18)
	and r27, r26, r21
	setlt.u r1, r24, r27
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r1, zero, .LBB0_40
# %bb.39:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r26, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_35 Depth=3
	lui r1, 1024
	or r13, r26, r1
.LBB0_41:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	loads.w r17, 4(r18)
	and r1, r17, r21
	setlt.u r2, r24, r1
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r2, zero, .LBB0_43
# %bb.42:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_35 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_44:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	loads.w r2, 0(r18)
	and r18, r2, r21
	setlt.u r4, r24, r18
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r4, zero, .LBB0_46
# %bb.45:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r2, 0
	.loc	1 173 19 is_stmt 1              # parallel-rne.mlir:173:19
	setlt.u r4, r23, r18
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	beq r4, zero, .LBB0_47
	j .LBB0_48
.LBB0_46:                               #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r2, r4
	.loc	1 173 19 is_stmt 1              # parallel-rne.mlir:173:19
	setlt.u r4, r23, r18
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	bneq r4, zero, .LBB0_48
.LBB0_47:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r22
	and r20, r2, r4
.LBB0_48:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	setlt.u r1, r23, r1
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	bneq r1, zero, .LBB0_51
# %bb.49:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r28, r1, r2
	setlt.u r1, r23, r27
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	beq r1, zero, .LBB0_52
.LBB0_50:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r12
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	bneq r1, zero, .LBB0_34
	j .LBB0_53
.LBB0_51:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r27
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	bneq r1, zero, .LBB0_50
.LBB0_52:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r26, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r26, r1
	add.s r1, r1, r22
	and r13, r1, r2
	setlt.u r1, r23, r12
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	bneq r1, zero, .LBB0_34
.LBB0_53:                               # %vector.body887
                                        #   in Loop: Header=BB0_35 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r11, 16
	lui r2, 1048560
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r22
	and r10, r1, r2
	j .LBB0_34
.LBB0_54:                               # %scalar.ph885
                                        #   in Loop: Header=BB0_56 Depth=3
	srli r2, r5, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r5, r2
	add.s r2, r2, r22
	and r2, r2, r4
.LBB0_55:                               # %scalar.ph885
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 161 11 is_stmt 1              # parallel-rne.mlir:161:11
	load.d r[4:5], -320(r30)                # 8-byte Folded Reload
	.loc	1 176 13                        # parallel-rne.mlir:176:13
	add.s r1, r19, r1
	stores.w r2, 0(r1)
	.loc	1 161 11                        # parallel-rne.mlir:161:11
	setlt.ul r4, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r4, zero, .LBB0_32
.LBB0_56:                               # %scalar.ph885
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_33 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 162 19                        # parallel-rne.mlir:162:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r1, r1, 2
	add.s r2, r16, r1
	loads.w r5, 0(r2)
	.loc	1 164 19                        # parallel-rne.mlir:164:19
	and r10, r5, r21
	.loc	1 166 19                        # parallel-rne.mlir:166:19
	setlt.u r2, r24, r10
	.loc	1 167 19                        # parallel-rne.mlir:167:19
	bneq r2, zero, .LBB0_58
# %bb.57:                               # %scalar.ph885
                                        #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r5, 0
	.loc	1 173 19 is_stmt 1              # parallel-rne.mlir:173:19
	setlt.u r4, r23, r10
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	bneq r4, zero, .LBB0_55
	j .LBB0_54
.LBB0_58:                               #   in Loop: Header=BB0_56 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r5, r2
	.loc	1 173 19 is_stmt 1              # parallel-rne.mlir:173:19
	setlt.u r4, r23, r10
	.loc	1 174 20                        # parallel-rne.mlir:174:20
	bneq r4, zero, .LBB0_55
	j .LBB0_54
.LBB0_59:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 152 7                         # parallel-rne.mlir:152:7
	mfence { sm }
.LBB0_60:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	zext_int2long r[1:2], r1
	.loc	1 181 7 is_stmt 1               # parallel-rne.mlir:181:7
	store.d r[1:2], -392(r30)               # 8-byte Folded Spill
	addli r1, zero, 1
	bneq r10, r1, .LBB0_90
# %bb.61:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_63
.LBB0_62:                               # %middle.block882
                                        #   in Loop: Header=BB0_63 Depth=2
	.loc	1 189 9 is_stmt 1               # parallel-rne.mlir:189:9
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_89
.LBB0_63:                               # %.preheader178
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_86 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	zext_int2long r[1:2], zero
	.loc	1 190 11 is_stmt 1              # parallel-rne.mlir:190:11
	beq r19, r16, .LBB0_86
	j .LBB0_65
.LBB0_64:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 205 13                        # parallel-rne.mlir:205:13
	add.s r5, r19, r5
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 205 13                        # parallel-rne.mlir:205:13
	stores.w r10, 12(r5)
	stores.w r26, 8(r5)
	stores.w r28, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	bneq r4, zero, .LBB0_62
.LBB0_65:                               # %vector.body878
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	and r12, r11, r21
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	setlt.u r4, r24, r12
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r4, zero, .LBB0_67
# %bb.66:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_68
.LBB0_67:                               #   in Loop: Header=BB0_65 Depth=3
	lui r4, 1024
	or r10, r11, r4
.LBB0_68:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	loads.w r13, 8(r18)
	and r27, r13, r21
	setlt.u r4, r24, r27
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r4, zero, .LBB0_70
# %bb.69:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r13, 0
	j .LBB0_71
.LBB0_70:                               #   in Loop: Header=BB0_65 Depth=3
	lui r4, 1024
	or r26, r13, r4
.LBB0_71:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	loads.w r17, 4(r18)
	and r6, r17, r21
	setlt.u r4, r24, r6
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r4, zero, .LBB0_73
# %bb.72:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_74
.LBB0_73:                               #   in Loop: Header=BB0_65 Depth=3
	lui r4, 1024
	or r28, r17, r4
.LBB0_74:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	loads.w r7, 0(r18)
	and r18, r7, r21
	setlt.u r4, r24, r18
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r4, zero, .LBB0_76
# %bb.75:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r7, 0
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r4, r23, r18
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	beq r4, zero, .LBB0_77
	j .LBB0_78
.LBB0_76:                               #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r7, r4
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r4, r23, r18
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	bneq r4, zero, .LBB0_78
.LBB0_77:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	lui r7, 1048560
	add.s r4, r4, r22
	and r20, r4, r7
.LBB0_78:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	setlt.u r4, r23, r6
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	bneq r4, zero, .LBB0_81
# %bb.79:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r28, r4, r6
	setlt.u r4, r23, r27
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	beq r4, zero, .LBB0_82
.LBB0_80:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r12
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	bneq r4, zero, .LBB0_64
	j .LBB0_83
.LBB0_81:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r27
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	bneq r4, zero, .LBB0_80
.LBB0_82:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r26, r4, r6
	setlt.u r4, r23, r12
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	bneq r4, zero, .LBB0_64
.LBB0_83:                               # %vector.body878
                                        #   in Loop: Header=BB0_65 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r22
	and r10, r4, r6
	j .LBB0_64
.LBB0_84:                               # %scalar.ph876
                                        #   in Loop: Header=BB0_86 Depth=3
	srli r4, r7, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_85:                               # %scalar.ph876
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 190 11 is_stmt 1              # parallel-rne.mlir:190:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 205 13                        # parallel-rne.mlir:205:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 190 11                        # parallel-rne.mlir:190:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_62
.LBB0_86:                               # %scalar.ph876
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 191 19                        # parallel-rne.mlir:191:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r16, r5
	loads.w r7, 0(r4)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	and r10, r7, r21
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	setlt.u r4, r24, r10
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	bneq r4, zero, .LBB0_88
# %bb.87:                               # %scalar.ph876
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r4, r23, r10
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	bneq r4, zero, .LBB0_85
	j .LBB0_84
.LBB0_88:                               #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r7, r4
	.loc	1 202 19 is_stmt 1              # parallel-rne.mlir:202:19
	setlt.u r4, r23, r10
	.loc	1 203 20                        # parallel-rne.mlir:203:20
	bneq r4, zero, .LBB0_85
	j .LBB0_84
.LBB0_89:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 181 7                         # parallel-rne.mlir:181:7
	mfence { sm }
.LBB0_90:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	zext_int2long r[1:2], r1
	.loc	1 210 7 is_stmt 1               # parallel-rne.mlir:210:7
	store.d r[1:2], -384(r30)               # 8-byte Folded Spill
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_120
# %bb.91:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 210 7                         # parallel-rne.mlir:210:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_93
.LBB0_92:                               # %middle.block873
                                        #   in Loop: Header=BB0_93 Depth=2
	.loc	1 218 9 is_stmt 1               # parallel-rne.mlir:218:9
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_119
.LBB0_93:                               # %.preheader177
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_95 Depth 3
                                        #       Child Loop BB0_116 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	zext_int2long r[1:2], zero
	.loc	1 219 11 is_stmt 1              # parallel-rne.mlir:219:11
	beq r19, r16, .LBB0_116
	j .LBB0_95
.LBB0_94:                               # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	add.s r5, r19, r5
	.loc	1 219 11                        # parallel-rne.mlir:219:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	stores.w r10, 12(r5)
	stores.w r26, 8(r5)
	stores.w r28, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 219 11                        # parallel-rne.mlir:219:11
	bneq r4, zero, .LBB0_92
.LBB0_95:                               # %vector.body869
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	and r12, r11, r21
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	setlt.u r4, r24, r12
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r4, zero, .LBB0_97
# %bb.96:                               # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_98
.LBB0_97:                               #   in Loop: Header=BB0_95 Depth=3
	lui r4, 1024
	or r10, r11, r4
.LBB0_98:                               # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	loads.w r13, 8(r18)
	and r27, r13, r21
	setlt.u r4, r24, r27
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r4, zero, .LBB0_100
# %bb.99:                               # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r13, 0
	j .LBB0_101
.LBB0_100:                              #   in Loop: Header=BB0_95 Depth=3
	lui r4, 1024
	or r26, r13, r4
.LBB0_101:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	loads.w r17, 4(r18)
	and r6, r17, r21
	setlt.u r4, r24, r6
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r4, zero, .LBB0_103
# %bb.102:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_104
.LBB0_103:                              #   in Loop: Header=BB0_95 Depth=3
	lui r4, 1024
	or r28, r17, r4
.LBB0_104:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	loads.w r7, 0(r18)
	and r18, r7, r21
	setlt.u r4, r24, r18
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r4, zero, .LBB0_106
# %bb.105:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r7, 0
	.loc	1 231 19 is_stmt 1              # parallel-rne.mlir:231:19
	setlt.u r4, r23, r18
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	beq r4, zero, .LBB0_107
	j .LBB0_108
.LBB0_106:                              #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r7, r4
	.loc	1 231 19 is_stmt 1              # parallel-rne.mlir:231:19
	setlt.u r4, r23, r18
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r4, zero, .LBB0_108
.LBB0_107:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	lui r7, 1048560
	add.s r4, r4, r22
	and r20, r4, r7
.LBB0_108:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	setlt.u r4, r23, r6
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r4, zero, .LBB0_111
# %bb.109:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r28, r4, r6
	setlt.u r4, r23, r27
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	beq r4, zero, .LBB0_112
.LBB0_110:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r12
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r4, zero, .LBB0_94
	j .LBB0_113
.LBB0_111:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r27
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r4, zero, .LBB0_110
.LBB0_112:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r26, r4, r6
	setlt.u r4, r23, r12
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r4, zero, .LBB0_94
.LBB0_113:                              # %vector.body869
                                        #   in Loop: Header=BB0_95 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r22
	and r10, r4, r6
	j .LBB0_94
.LBB0_114:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_116 Depth=3
	srli r4, r7, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_115:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 219 11 is_stmt 1              # parallel-rne.mlir:219:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 234 13                        # parallel-rne.mlir:234:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 219 11                        # parallel-rne.mlir:219:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_92
.LBB0_116:                              # %scalar.ph867
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_93 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 220 19                        # parallel-rne.mlir:220:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r16, r5
	loads.w r7, 0(r4)
	.loc	1 222 19                        # parallel-rne.mlir:222:19
	and r10, r7, r21
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	setlt.u r4, r24, r10
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	bneq r4, zero, .LBB0_118
# %bb.117:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 231 19 is_stmt 1              # parallel-rne.mlir:231:19
	setlt.u r4, r23, r10
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r4, zero, .LBB0_115
	j .LBB0_114
.LBB0_118:                              #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r7, r4
	.loc	1 231 19 is_stmt 1              # parallel-rne.mlir:231:19
	setlt.u r4, r23, r10
	.loc	1 232 20                        # parallel-rne.mlir:232:20
	bneq r4, zero, .LBB0_115
	j .LBB0_114
.LBB0_119:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 210 7                         # parallel-rne.mlir:210:7
	mfence { sm }
.LBB0_120:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	zext_int2long r[1:2], r1
	.loc	1 239 7 is_stmt 1               # parallel-rne.mlir:239:7
	store.d r[1:2], -376(r30)               # 8-byte Folded Spill
	addli r1, zero, 3
	bneq r10, r1, .LBB0_150
# %bb.121:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 239 7                         # parallel-rne.mlir:239:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_123
.LBB0_122:                              # %middle.block864
                                        #   in Loop: Header=BB0_123 Depth=2
	.loc	1 247 9 is_stmt 1               # parallel-rne.mlir:247:9
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_149
.LBB0_123:                              # %.preheader176
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_125 Depth 3
                                        #       Child Loop BB0_146 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	zext_int2long r[1:2], zero
	.loc	1 248 11 is_stmt 1              # parallel-rne.mlir:248:11
	beq r19, r16, .LBB0_146
	j .LBB0_125
.LBB0_124:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	add.s r5, r19, r5
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	stores.w r10, 12(r5)
	stores.w r26, 8(r5)
	stores.w r28, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	bneq r4, zero, .LBB0_122
.LBB0_125:                              # %vector.body860
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	and r12, r11, r21
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	setlt.u r4, r24, r12
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r4, zero, .LBB0_127
# %bb.126:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_128
.LBB0_127:                              #   in Loop: Header=BB0_125 Depth=3
	lui r4, 1024
	or r10, r11, r4
.LBB0_128:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	loads.w r13, 8(r18)
	and r27, r13, r21
	setlt.u r4, r24, r27
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r4, zero, .LBB0_130
# %bb.129:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r13, 0
	j .LBB0_131
.LBB0_130:                              #   in Loop: Header=BB0_125 Depth=3
	lui r4, 1024
	or r26, r13, r4
.LBB0_131:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	loads.w r17, 4(r18)
	and r6, r17, r21
	setlt.u r4, r24, r6
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r4, zero, .LBB0_133
# %bb.132:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_134
.LBB0_133:                              #   in Loop: Header=BB0_125 Depth=3
	lui r4, 1024
	or r28, r17, r4
.LBB0_134:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	loads.w r7, 0(r18)
	and r18, r7, r21
	setlt.u r4, r24, r18
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r4, zero, .LBB0_136
# %bb.135:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r7, 0
	.loc	1 260 19 is_stmt 1              # parallel-rne.mlir:260:19
	setlt.u r4, r23, r18
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	beq r4, zero, .LBB0_137
	j .LBB0_138
.LBB0_136:                              #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r7, r4
	.loc	1 260 19 is_stmt 1              # parallel-rne.mlir:260:19
	setlt.u r4, r23, r18
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	bneq r4, zero, .LBB0_138
.LBB0_137:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	lui r7, 1048560
	add.s r4, r4, r22
	and r20, r4, r7
.LBB0_138:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	setlt.u r4, r23, r6
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	bneq r4, zero, .LBB0_141
# %bb.139:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r28, r4, r6
	setlt.u r4, r23, r27
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	beq r4, zero, .LBB0_142
.LBB0_140:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r12
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	bneq r4, zero, .LBB0_124
	j .LBB0_143
.LBB0_141:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r27
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	bneq r4, zero, .LBB0_140
.LBB0_142:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r26, r4, r6
	setlt.u r4, r23, r12
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	bneq r4, zero, .LBB0_124
.LBB0_143:                              # %vector.body860
                                        #   in Loop: Header=BB0_125 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r22
	and r10, r4, r6
	j .LBB0_124
.LBB0_144:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_146 Depth=3
	srli r4, r7, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_145:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 248 11 is_stmt 1              # parallel-rne.mlir:248:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 263 13                        # parallel-rne.mlir:263:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 248 11                        # parallel-rne.mlir:248:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_122
.LBB0_146:                              # %scalar.ph858
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_123 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 249 19                        # parallel-rne.mlir:249:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r16, r5
	loads.w r7, 0(r4)
	.loc	1 251 19                        # parallel-rne.mlir:251:19
	and r10, r7, r21
	.loc	1 253 19                        # parallel-rne.mlir:253:19
	setlt.u r4, r24, r10
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	bneq r4, zero, .LBB0_148
# %bb.147:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 260 19 is_stmt 1              # parallel-rne.mlir:260:19
	setlt.u r4, r23, r10
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	bneq r4, zero, .LBB0_145
	j .LBB0_144
.LBB0_148:                              #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r7, r4
	.loc	1 260 19 is_stmt 1              # parallel-rne.mlir:260:19
	setlt.u r4, r23, r10
	.loc	1 261 20                        # parallel-rne.mlir:261:20
	bneq r4, zero, .LBB0_145
	j .LBB0_144
.LBB0_149:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 239 7                         # parallel-rne.mlir:239:7
	mfence { sm }
.LBB0_150:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 39
	zext_int2long r[1:2], r1
	.loc	1 268 7 is_stmt 1               # parallel-rne.mlir:268:7
	store.d r[1:2], -368(r30)               # 8-byte Folded Spill
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_180
# %bb.151:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 268 7                         # parallel-rne.mlir:268:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_153
.LBB0_152:                              # %middle.block855
                                        #   in Loop: Header=BB0_153 Depth=2
	.loc	1 276 9 is_stmt 1               # parallel-rne.mlir:276:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_179
.LBB0_153:                              # %.preheader175
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_155 Depth 3
                                        #       Child Loop BB0_176 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	zext_int2long r[1:2], zero
	.loc	1 277 11 is_stmt 1              # parallel-rne.mlir:277:11
	beq r19, r16, .LBB0_176
	j .LBB0_155
.LBB0_154:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 292 13                        # parallel-rne.mlir:292:13
	add.s r5, r19, r5
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 292 13                        # parallel-rne.mlir:292:13
	stores.w r10, 12(r5)
	stores.w r26, 8(r5)
	stores.w r28, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	bneq r4, zero, .LBB0_152
.LBB0_155:                              # %vector.body851
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r12, r11, r21
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	setlt.u r4, r24, r12
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r4, zero, .LBB0_157
# %bb.156:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_155 Depth=3
	lui r4, 1024
	or r10, r11, r4
.LBB0_158:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	loads.w r13, 8(r18)
	and r27, r13, r21
	setlt.u r4, r24, r27
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r4, zero, .LBB0_160
# %bb.159:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r13, 0
	j .LBB0_161
.LBB0_160:                              #   in Loop: Header=BB0_155 Depth=3
	lui r4, 1024
	or r26, r13, r4
.LBB0_161:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	loads.w r17, 4(r18)
	and r6, r17, r21
	setlt.u r4, r24, r6
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r4, zero, .LBB0_163
# %bb.162:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_164
.LBB0_163:                              #   in Loop: Header=BB0_155 Depth=3
	lui r4, 1024
	or r28, r17, r4
.LBB0_164:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	loads.w r7, 0(r18)
	and r18, r7, r21
	setlt.u r4, r24, r18
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r4, zero, .LBB0_166
# %bb.165:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r7, 0
	.loc	1 289 19 is_stmt 1              # parallel-rne.mlir:289:19
	setlt.u r4, r23, r18
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	beq r4, zero, .LBB0_167
	j .LBB0_168
.LBB0_166:                              #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r7, r4
	.loc	1 289 19 is_stmt 1              # parallel-rne.mlir:289:19
	setlt.u r4, r23, r18
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	bneq r4, zero, .LBB0_168
.LBB0_167:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	lui r7, 1048560
	add.s r4, r4, r22
	and r20, r4, r7
.LBB0_168:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	setlt.u r4, r23, r6
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	bneq r4, zero, .LBB0_171
# %bb.169:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r28, r4, r6
	setlt.u r4, r23, r27
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	beq r4, zero, .LBB0_172
.LBB0_170:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r12
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	bneq r4, zero, .LBB0_154
	j .LBB0_173
.LBB0_171:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r27
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	bneq r4, zero, .LBB0_170
.LBB0_172:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r26, r4, r6
	setlt.u r4, r23, r12
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	bneq r4, zero, .LBB0_154
.LBB0_173:                              # %vector.body851
                                        #   in Loop: Header=BB0_155 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r22
	and r10, r4, r6
	j .LBB0_154
.LBB0_174:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_176 Depth=3
	srli r4, r7, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_175:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 277 11 is_stmt 1              # parallel-rne.mlir:277:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 292 13                        # parallel-rne.mlir:292:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 277 11                        # parallel-rne.mlir:277:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_152
.LBB0_176:                              # %scalar.ph849
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_153 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r16, r5
	loads.w r7, 0(r4)
	.loc	1 280 19                        # parallel-rne.mlir:280:19
	and r10, r7, r21
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	setlt.u r4, r24, r10
	.loc	1 283 19                        # parallel-rne.mlir:283:19
	bneq r4, zero, .LBB0_178
# %bb.177:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 289 19 is_stmt 1              # parallel-rne.mlir:289:19
	setlt.u r4, r23, r10
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	bneq r4, zero, .LBB0_175
	j .LBB0_174
.LBB0_178:                              #   in Loop: Header=BB0_176 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r7, r4
	.loc	1 289 19 is_stmt 1              # parallel-rne.mlir:289:19
	setlt.u r4, r23, r10
	.loc	1 290 20                        # parallel-rne.mlir:290:20
	bneq r4, zero, .LBB0_175
	j .LBB0_174
.LBB0_179:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 268 7                         # parallel-rne.mlir:268:7
	mfence { sm }
.LBB0_180:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	zext_int2long r[1:2], r1
	.loc	1 297 7 is_stmt 1               # parallel-rne.mlir:297:7
	store.d r[1:2], -360(r30)               # 8-byte Folded Spill
	addli r1, zero, 5
	bneq r10, r1, .LBB0_210
# %bb.181:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 297 7                         # parallel-rne.mlir:297:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_183
.LBB0_182:                              # %middle.block846
                                        #   in Loop: Header=BB0_183 Depth=2
	.loc	1 305 9 is_stmt 1               # parallel-rne.mlir:305:9
	load.d r[1:2], -360(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_209
.LBB0_183:                              # %.preheader174
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_185 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	zext_int2long r[1:2], zero
	.loc	1 306 11 is_stmt 1              # parallel-rne.mlir:306:11
	beq r19, r16, .LBB0_206
	j .LBB0_185
.LBB0_184:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 321 13                        # parallel-rne.mlir:321:13
	add.s r5, r19, r5
	.loc	1 306 11                        # parallel-rne.mlir:306:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 321 13                        # parallel-rne.mlir:321:13
	stores.w r10, 12(r5)
	stores.w r26, 8(r5)
	stores.w r28, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 306 11                        # parallel-rne.mlir:306:11
	bneq r4, zero, .LBB0_182
.LBB0_185:                              # %vector.body842
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r12, r11, r21
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	setlt.u r4, r24, r12
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r4, zero, .LBB0_187
# %bb.186:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_185 Depth=3
	lui r4, 1024
	or r10, r11, r4
.LBB0_188:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	loads.w r13, 8(r18)
	and r27, r13, r21
	setlt.u r4, r24, r27
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r4, zero, .LBB0_190
# %bb.189:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r13, 0
	j .LBB0_191
.LBB0_190:                              #   in Loop: Header=BB0_185 Depth=3
	lui r4, 1024
	or r26, r13, r4
.LBB0_191:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	loads.w r17, 4(r18)
	and r6, r17, r21
	setlt.u r4, r24, r6
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r4, zero, .LBB0_193
# %bb.192:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_194
.LBB0_193:                              #   in Loop: Header=BB0_185 Depth=3
	lui r4, 1024
	or r28, r17, r4
.LBB0_194:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	loads.w r7, 0(r18)
	and r18, r7, r21
	setlt.u r4, r24, r18
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r4, zero, .LBB0_196
# %bb.195:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r7, 0
	.loc	1 318 19 is_stmt 1              # parallel-rne.mlir:318:19
	setlt.u r4, r23, r18
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	beq r4, zero, .LBB0_197
	j .LBB0_198
.LBB0_196:                              #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r7, r4
	.loc	1 318 19 is_stmt 1              # parallel-rne.mlir:318:19
	setlt.u r4, r23, r18
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	bneq r4, zero, .LBB0_198
.LBB0_197:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	lui r7, 1048560
	add.s r4, r4, r22
	and r20, r4, r7
.LBB0_198:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	setlt.u r4, r23, r6
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	bneq r4, zero, .LBB0_201
# %bb.199:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r28, r4, r6
	setlt.u r4, r23, r27
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	beq r4, zero, .LBB0_202
.LBB0_200:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r12
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	bneq r4, zero, .LBB0_184
	j .LBB0_203
.LBB0_201:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r27
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	bneq r4, zero, .LBB0_200
.LBB0_202:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r26, r4, r6
	setlt.u r4, r23, r12
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	bneq r4, zero, .LBB0_184
.LBB0_203:                              # %vector.body842
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r22
	and r10, r4, r6
	j .LBB0_184
.LBB0_204:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_206 Depth=3
	srli r4, r7, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_205:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 306 11 is_stmt 1              # parallel-rne.mlir:306:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 321 13                        # parallel-rne.mlir:321:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 306 11                        # parallel-rne.mlir:306:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_182
.LBB0_206:                              # %scalar.ph840
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r16, r5
	loads.w r7, 0(r4)
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r10, r7, r21
	.loc	1 311 19                        # parallel-rne.mlir:311:19
	setlt.u r4, r24, r10
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	bneq r4, zero, .LBB0_208
# %bb.207:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 318 19 is_stmt 1              # parallel-rne.mlir:318:19
	setlt.u r4, r23, r10
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	bneq r4, zero, .LBB0_205
	j .LBB0_204
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r7, r4
	.loc	1 318 19 is_stmt 1              # parallel-rne.mlir:318:19
	setlt.u r4, r23, r10
	.loc	1 319 20                        # parallel-rne.mlir:319:20
	bneq r4, zero, .LBB0_205
	j .LBB0_204
.LBB0_209:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 297 7                         # parallel-rne.mlir:297:7
	mfence { sm }
.LBB0_210:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	zext_int2long r[1:2], r1
	.loc	1 326 7 is_stmt 1               # parallel-rne.mlir:326:7
	store.d r[1:2], -352(r30)               # 8-byte Folded Spill
	addli r1, zero, 6
	bneq r10, r1, .LBB0_240
# %bb.211:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 326 7                         # parallel-rne.mlir:326:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_213
.LBB0_212:                              # %middle.block837
                                        #   in Loop: Header=BB0_213 Depth=2
	.loc	1 334 9 is_stmt 1               # parallel-rne.mlir:334:9
	load.d r[1:2], -352(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_239
.LBB0_213:                              # %.preheader173
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_215 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	zext_int2long r[1:2], zero
	.loc	1 335 11 is_stmt 1              # parallel-rne.mlir:335:11
	beq r19, r16, .LBB0_236
	j .LBB0_215
.LBB0_214:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	add.s r5, r19, r5
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	stores.w r10, 12(r5)
	stores.w r26, 8(r5)
	stores.w r28, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	bneq r4, zero, .LBB0_212
.LBB0_215:                              # %vector.body833
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	and r12, r11, r21
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	setlt.u r4, r24, r12
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r4, zero, .LBB0_217
# %bb.216:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_215 Depth=3
	lui r4, 1024
	or r10, r11, r4
.LBB0_218:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	loads.w r13, 8(r18)
	and r27, r13, r21
	setlt.u r4, r24, r27
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r4, zero, .LBB0_220
# %bb.219:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r13, 0
	j .LBB0_221
.LBB0_220:                              #   in Loop: Header=BB0_215 Depth=3
	lui r4, 1024
	or r26, r13, r4
.LBB0_221:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	loads.w r17, 4(r18)
	and r6, r17, r21
	setlt.u r4, r24, r6
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r4, zero, .LBB0_223
# %bb.222:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_224
.LBB0_223:                              #   in Loop: Header=BB0_215 Depth=3
	lui r4, 1024
	or r28, r17, r4
.LBB0_224:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	loads.w r7, 0(r18)
	and r18, r7, r21
	setlt.u r4, r24, r18
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r4, zero, .LBB0_226
# %bb.225:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r7, 0
	.loc	1 347 19 is_stmt 1              # parallel-rne.mlir:347:19
	setlt.u r4, r23, r18
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	beq r4, zero, .LBB0_227
	j .LBB0_228
.LBB0_226:                              #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r7, r4
	.loc	1 347 19 is_stmt 1              # parallel-rne.mlir:347:19
	setlt.u r4, r23, r18
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	bneq r4, zero, .LBB0_228
.LBB0_227:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	lui r7, 1048560
	add.s r4, r4, r22
	and r20, r4, r7
.LBB0_228:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	setlt.u r4, r23, r6
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	bneq r4, zero, .LBB0_231
# %bb.229:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r28, r4, r6
	setlt.u r4, r23, r27
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	beq r4, zero, .LBB0_232
.LBB0_230:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r12
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	bneq r4, zero, .LBB0_214
	j .LBB0_233
.LBB0_231:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r27
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	bneq r4, zero, .LBB0_230
.LBB0_232:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r26, r4, r6
	setlt.u r4, r23, r12
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	bneq r4, zero, .LBB0_214
.LBB0_233:                              # %vector.body833
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r22
	and r10, r4, r6
	j .LBB0_214
.LBB0_234:                              # %scalar.ph831
                                        #   in Loop: Header=BB0_236 Depth=3
	srli r4, r7, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_235:                              # %scalar.ph831
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 335 11 is_stmt 1              # parallel-rne.mlir:335:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 350 13                        # parallel-rne.mlir:350:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 335 11                        # parallel-rne.mlir:335:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_212
.LBB0_236:                              # %scalar.ph831
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_213 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r16, r5
	loads.w r7, 0(r4)
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	and r10, r7, r21
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	setlt.u r4, r24, r10
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	bneq r4, zero, .LBB0_238
# %bb.237:                              # %scalar.ph831
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 347 19 is_stmt 1              # parallel-rne.mlir:347:19
	setlt.u r4, r23, r10
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	bneq r4, zero, .LBB0_235
	j .LBB0_234
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r7, r4
	.loc	1 347 19 is_stmt 1              # parallel-rne.mlir:347:19
	setlt.u r4, r23, r10
	.loc	1 348 20                        # parallel-rne.mlir:348:20
	bneq r4, zero, .LBB0_235
	j .LBB0_234
.LBB0_239:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 326 7                         # parallel-rne.mlir:326:7
	mfence { sm }
.LBB0_240:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 63
	zext_int2long r[1:2], r1
	.loc	1 355 7 is_stmt 1               # parallel-rne.mlir:355:7
	store.d r[1:2], -344(r30)               # 8-byte Folded Spill
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_270
# %bb.241:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_243
.LBB0_242:                              # %middle.block828
                                        #   in Loop: Header=BB0_243 Depth=2
	.loc	1 363 9 is_stmt 1               # parallel-rne.mlir:363:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_269
.LBB0_243:                              # %.preheader172
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_245 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	zext_int2long r[1:2], zero
	.loc	1 364 11 is_stmt 1              # parallel-rne.mlir:364:11
	beq r19, r16, .LBB0_266
	j .LBB0_245
.LBB0_244:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	addli.d r[1:2], r[1:2], 4
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	add.s r5, r19, r5
	.loc	1 364 11                        # parallel-rne.mlir:364:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	stores.w r10, 12(r5)
	stores.w r26, 8(r5)
	stores.w r28, 4(r5)
	stores.w r20, 0(r5)
	.loc	1 364 11                        # parallel-rne.mlir:364:11
	bneq r4, zero, .LBB0_242
.LBB0_245:                              # %vector.body824
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r18, r16, r5
	loads.w r11, 12(r18)
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	and r12, r11, r21
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	setlt.u r4, r24, r12
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r4, zero, .LBB0_247
# %bb.246:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_245 Depth=3
	lui r4, 1024
	or r10, r11, r4
.LBB0_248:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	loads.w r13, 8(r18)
	and r27, r13, r21
	setlt.u r4, r24, r27
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r4, zero, .LBB0_250
# %bb.249:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r13, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_245 Depth=3
	lui r4, 1024
	or r26, r13, r4
.LBB0_251:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	loads.w r17, 4(r18)
	and r6, r17, r21
	setlt.u r4, r24, r6
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r4, zero, .LBB0_253
# %bb.252:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_245 Depth=3
	lui r4, 1024
	or r28, r17, r4
.LBB0_254:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	loads.w r7, 0(r18)
	and r18, r7, r21
	setlt.u r4, r24, r18
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r4, zero, .LBB0_256
# %bb.255:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r7, 0
	.loc	1 376 19 is_stmt 1              # parallel-rne.mlir:376:19
	setlt.u r4, r23, r18
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	beq r4, zero, .LBB0_257
	j .LBB0_258
.LBB0_256:                              #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r20, r7, r4
	.loc	1 376 19 is_stmt 1              # parallel-rne.mlir:376:19
	setlt.u r4, r23, r18
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	bneq r4, zero, .LBB0_258
.LBB0_257:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r7, 16
	andi r4, r4, 1
	add.s r4, r7, r4
	lui r7, 1048560
	add.s r4, r4, r22
	and r20, r4, r7
.LBB0_258:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	setlt.u r4, r23, r6
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	bneq r4, zero, .LBB0_261
# %bb.259:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r28, r4, r6
	setlt.u r4, r23, r27
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	beq r4, zero, .LBB0_262
.LBB0_260:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r12
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	bneq r4, zero, .LBB0_244
	j .LBB0_263
.LBB0_261:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r27
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	bneq r4, zero, .LBB0_260
.LBB0_262:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r26, r4, r6
	setlt.u r4, r23, r12
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	bneq r4, zero, .LBB0_244
.LBB0_263:                              # %vector.body824
                                        #   in Loop: Header=BB0_245 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r22
	and r10, r4, r6
	j .LBB0_244
.LBB0_264:                              # %scalar.ph822
                                        #   in Loop: Header=BB0_266 Depth=3
	srli r4, r7, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r7, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_265:                              # %scalar.ph822
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 364 11 is_stmt 1              # parallel-rne.mlir:364:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 364 11                        # parallel-rne.mlir:364:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_242
.LBB0_266:                              # %scalar.ph822
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_243 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 365 19                        # parallel-rne.mlir:365:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r16, r5
	loads.w r7, 0(r4)
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	and r10, r7, r21
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	setlt.u r4, r24, r10
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	bneq r4, zero, .LBB0_268
# %bb.267:                              # %scalar.ph822
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	.loc	1 376 19 is_stmt 1              # parallel-rne.mlir:376:19
	setlt.u r4, r23, r10
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	bneq r4, zero, .LBB0_265
	j .LBB0_264
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r7, r4
	.loc	1 376 19 is_stmt 1              # parallel-rne.mlir:376:19
	setlt.u r4, r23, r10
	.loc	1 377 20                        # parallel-rne.mlir:377:20
	bneq r4, zero, .LBB0_265
	j .LBB0_264
.LBB0_269:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 355 7                         # parallel-rne.mlir:355:7
	mfence { sm }
.LBB0_270:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -336(r30)                 # 4-byte Folded Reload
	addli r2, zero, 896
	zext_int2long r[4:5], r2
	slli r1, r1, 7
	zext_int2long r[1:2], r1
	min.ul r[4:5], r[1:2], r[4:5]
	addli.d r[4:5], r[4:5], 128
	max.ul r[4:5], r[4:5], r[1:2]
	sub.sl r[1:2], r[4:5], r[1:2]
	min.ul r[1:2], r[1:2], r[14:15]
	.loc	1 384 7 is_stmt 1               # parallel-rne.mlir:384:7
	store.d r[1:2], -464(r30)               # 8-byte Folded Spill
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	addli r1, zero, 3
	.loc	1 384 7                         # parallel-rne.mlir:384:7
	sync_core
	.loc	1 385 7                         # parallel-rne.mlir:385:7
	bneq r10, r1, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	lui r16, 524288
	xsignal r1, 0
	.loc	1 386 7                         # parallel-rne.mlir:386:7
	addli r1, zero, 12
	xsignal r1, 0
	.loc	1 391 13                        # parallel-rne.mlir:391:13
	loadli.w r1,  -140(r30)
	addli r2, r1, 1
	storeli.w r2, -140(r30)
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	addli r2, zero, 13
	xwait r2, 0
	.loc	1 394 7                         # parallel-rne.mlir:394:7
	addli r2, zero, 29
	xwait r2, 0
	j .LBB0_281
.LBB0_272:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r8,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 4
	load.d r[6:7], -456(r30)                # 8-byte Folded Reload
	.loc	1 388 7 is_stmt 1               # parallel-rne.mlir:388:7
	addli r4, zero, 1
	lui r16, 524288
	mod.s r1, r8, r1
	slli r2, r1, 9
	lui r1, 112
	add.s r1, r2, r1
	bneq r10, r4, .LBB0_276
# %bb.273:                              #   in Loop: Header=BB0_8 Depth=1
	load.d r[4:5], 16(r30)
	addli r12, zero, 23
	addli r11, zero, 3
	xwait r12, 0
	add.ul r[5:6], r[4:5], r[6:7]
	blt.s r11, r8, .LBB0_275
# %bb.274:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 5
	addli r8, zero, 1
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	addli r4, zero, 2
	addli r7, zero, 6
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 4
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r9, 10
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
	addli r7, zero, 24
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 64
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r7, 3
	addli r7, zero, 128
	dma_cfg r7, zero, r4, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_275:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r7, zero, 4
	addli r9, zero, 1
	lui r4, 112
	addli r8, zero, 64
	addli r13, zero, 128
	.loc	1 388 7                         # parallel-rne.mlir:388:7
	lock zero, r7
	ori r4, r4, 64
	dma_cfg r9, r9, zero, 0
	dma_cfg zero, r6, zero, 2
	add.s r2, r2, r4
	load.d r[16:17], -464(r30)              # 8-byte Folded Reload
	dma_cfg r2, r5, r8, 3
	addli r5, zero, 256
	addli r6, zero, 5
	addli r4, r16, 31
	srli r2, r4, 5
	slli r4, r16, 1
	addli r16, zero, 512
	dma_cfg r13, r8, r2, 4
	andi r4, r4, 62
	dma_cfg r16, r5, r9, 5
	addli r5, zero, 2
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
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
	addli r5, zero, 22
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r1, zero, r8, 3
	dma_cfg r13, zero, r2, 4
	dma_cfg r16, zero, r9, 5
	lui r16, 524288
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r5, 0
	j .LBB0_280
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 389 7 is_stmt 1               # parallel-rne.mlir:389:7
	addli r2, zero, 5
	lui r5, 8
	bneq r10, r2, .LBB0_280
# %bb.277:                              #   in Loop: Header=BB0_8 Depth=1
	addli r4, zero, 12
	addli r2, zero, 0
	xwait r4, 0
	addli r4, zero, 22
	xwait r4, 0
	addli r4, zero, 2
	lock zero, r4
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	addli r4, zero, 1
	ew_cfg r4, zero, zero, 3
.LBB0_278:                              #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r19, r2
	addli r2, r2, 512
	dsmadd r4, r4, r1, 0
	bneq r2, r5, .LBB0_278
# %bb.279:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 2
	unlock r1
	addli r1, zero, 13
	xsignal r1, 0
	addli r1, zero, 23
	xsignal r1, 0
.LBB0_280:                              # %.thread110
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 391 13                        # parallel-rne.mlir:391:13
	loadli.w r1,  -140(r30)
	addli r2, r1, 1
	storeli.w r2, -140(r30)
.LBB0_281:                              # %.critedge6
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 4
	.loc	1 396 7                         # parallel-rne.mlir:396:7
	xfence
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	mfence { lm, sm, gm }
	.loc	1 391 13                        # parallel-rne.mlir:391:13
	mod.s r1, r1, r2
	loadli.w r2,  -492(r30)                 # 4-byte Folded Reload
	slli r1, r1, 15
	add.s r1, r1, r2
	.loc	1 398 7                         # parallel-rne.mlir:398:7
	storeli.w r1, -328(r30)                 # 4-byte Folded Spill
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 399 7                         # parallel-rne.mlir:399:7
	beq r10, zero, .LBB0_358
# %bb.282:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 428 7                         # parallel-rne.mlir:428:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_382
.LBB0_283:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 428 7                         # parallel-rne.mlir:428:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_285
.LBB0_284:                              # %middle.block810
                                        #   in Loop: Header=BB0_285 Depth=2
	.loc	1 436 9 is_stmt 1               # parallel-rne.mlir:436:9
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_306
.LBB0_285:                              # %.preheader170
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_287 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	j .LBB0_287
.LBB0_286:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 437 11 is_stmt 1              # parallel-rne.mlir:437:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 452 13                        # parallel-rne.mlir:452:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 437 11                        # parallel-rne.mlir:437:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 452 13                        # parallel-rne.mlir:452:13
	add.s r4, r4, r5
	stores.w r11, 12(r4)
	stores.w r13, 8(r4)
	stores.w r26, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 437 11                        # parallel-rne.mlir:437:11
	beq r2, zero, .LBB0_284
.LBB0_287:                              # %vector.body806
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 438 19                        # parallel-rne.mlir:438:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r10, 12(r1)
	loads.w r17, 0(r1)
	loads.w r28, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	and r12, r10, r21
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	setlt.u r1, r24, r12
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r1, zero, .LBB0_289
# %bb.288:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_290
.LBB0_289:                              #   in Loop: Header=BB0_287 Depth=3
	lui r1, 1024
	or r11, r10, r1
.LBB0_290:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	and r2, r20, r21
	setlt.u r1, r24, r2
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r1, zero, .LBB0_292
# %bb.291:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	j .LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_287 Depth=3
	lui r1, 1024
	or r13, r20, r1
.LBB0_293:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	and r18, r28, r21
	setlt.u r1, r24, r18
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r1, zero, .LBB0_295
# %bb.294:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_296
.LBB0_295:                              #   in Loop: Header=BB0_287 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_296:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	and r27, r17, r21
	setlt.u r1, r24, r27
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	bneq r1, zero, .LBB0_298
# %bb.297:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 449 19 is_stmt 1              # parallel-rne.mlir:449:19
	setlt.u r4, r23, r27
	.loc	1 450 20                        # parallel-rne.mlir:450:20
	beq r4, zero, .LBB0_299
	j .LBB0_300
.LBB0_298:                              #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r17, r1
	.loc	1 449 19 is_stmt 1              # parallel-rne.mlir:449:19
	setlt.u r4, r23, r27
	.loc	1 450 20                        # parallel-rne.mlir:450:20
	bneq r4, zero, .LBB0_300
.LBB0_299:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r1, r1, r4
.LBB0_300:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	setlt.u r4, r23, r18
	.loc	1 450 20                        # parallel-rne.mlir:450:20
	bneq r4, zero, .LBB0_303
# %bb.301:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r16, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r26, r4, r16
	lui r16, 524288
	setlt.u r2, r23, r2
	.loc	1 450 20                        # parallel-rne.mlir:450:20
	beq r2, zero, .LBB0_304
.LBB0_302:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r12
	.loc	1 450 20                        # parallel-rne.mlir:450:20
	bneq r2, zero, .LBB0_286
	j .LBB0_305
.LBB0_303:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 450 20                        # parallel-rne.mlir:450:20
	bneq r2, zero, .LBB0_302
.LBB0_304:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r20, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r22
	and r13, r2, r4
	setlt.u r2, r23, r12
	.loc	1 450 20                        # parallel-rne.mlir:450:20
	bneq r2, zero, .LBB0_286
.LBB0_305:                              # %vector.body806
                                        #   in Loop: Header=BB0_287 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r11, r2, r4
	j .LBB0_286
.LBB0_306:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 428 7                         # parallel-rne.mlir:428:7
	mfence { sm }
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_383
.LBB0_307:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_407
.LBB0_308:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_310
.LBB0_309:                              # %middle.block792
                                        #   in Loop: Header=BB0_310 Depth=2
	.loc	1 494 9 is_stmt 1               # parallel-rne.mlir:494:9
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_331
.LBB0_310:                              # %.preheader168
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_312 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	j .LBB0_312
.LBB0_311:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 495 11 is_stmt 1              # parallel-rne.mlir:495:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 510 13                        # parallel-rne.mlir:510:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 510 13                        # parallel-rne.mlir:510:13
	add.s r4, r4, r5
	stores.w r11, 12(r4)
	stores.w r13, 8(r4)
	stores.w r26, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 495 11                        # parallel-rne.mlir:495:11
	beq r2, zero, .LBB0_309
.LBB0_312:                              # %vector.body788
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_310 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 496 19                        # parallel-rne.mlir:496:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r10, 12(r1)
	loads.w r17, 0(r1)
	loads.w r28, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 498 19                        # parallel-rne.mlir:498:19
	and r12, r10, r21
	.loc	1 500 19                        # parallel-rne.mlir:500:19
	setlt.u r1, r24, r12
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	bneq r1, zero, .LBB0_314
# %bb.313:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_315
.LBB0_314:                              #   in Loop: Header=BB0_312 Depth=3
	lui r1, 1024
	or r11, r10, r1
.LBB0_315:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	and r2, r20, r21
	setlt.u r1, r24, r2
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	bneq r1, zero, .LBB0_317
# %bb.316:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	j .LBB0_318
.LBB0_317:                              #   in Loop: Header=BB0_312 Depth=3
	lui r1, 1024
	or r13, r20, r1
.LBB0_318:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	and r18, r28, r21
	setlt.u r1, r24, r18
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	bneq r1, zero, .LBB0_320
# %bb.319:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_321
.LBB0_320:                              #   in Loop: Header=BB0_312 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_321:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	and r27, r17, r21
	setlt.u r1, r24, r27
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	bneq r1, zero, .LBB0_323
# %bb.322:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 507 19 is_stmt 1              # parallel-rne.mlir:507:19
	setlt.u r4, r23, r27
	.loc	1 508 20                        # parallel-rne.mlir:508:20
	beq r4, zero, .LBB0_324
	j .LBB0_325
.LBB0_323:                              #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r17, r1
	.loc	1 507 19 is_stmt 1              # parallel-rne.mlir:507:19
	setlt.u r4, r23, r27
	.loc	1 508 20                        # parallel-rne.mlir:508:20
	bneq r4, zero, .LBB0_325
.LBB0_324:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r1, r1, r4
.LBB0_325:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	setlt.u r4, r23, r18
	.loc	1 508 20                        # parallel-rne.mlir:508:20
	bneq r4, zero, .LBB0_328
# %bb.326:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r16, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r26, r4, r16
	lui r16, 524288
	setlt.u r2, r23, r2
	.loc	1 508 20                        # parallel-rne.mlir:508:20
	beq r2, zero, .LBB0_329
.LBB0_327:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r12
	.loc	1 508 20                        # parallel-rne.mlir:508:20
	bneq r2, zero, .LBB0_311
	j .LBB0_330
.LBB0_328:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 508 20                        # parallel-rne.mlir:508:20
	bneq r2, zero, .LBB0_327
.LBB0_329:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r20, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r22
	and r13, r2, r4
	setlt.u r2, r23, r12
	.loc	1 508 20                        # parallel-rne.mlir:508:20
	bneq r2, zero, .LBB0_311
.LBB0_330:                              # %vector.body788
                                        #   in Loop: Header=BB0_312 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r11, r2, r4
	j .LBB0_311
.LBB0_331:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	mfence { sm }
	.loc	1 515 7                         # parallel-rne.mlir:515:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_408
.LBB0_332:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 544 7                         # parallel-rne.mlir:544:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_432
.LBB0_333:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 544 7                         # parallel-rne.mlir:544:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_335
.LBB0_334:                              # %middle.block774
                                        #   in Loop: Header=BB0_335 Depth=2
	.loc	1 552 9 is_stmt 1               # parallel-rne.mlir:552:9
	load.d r[1:2], -360(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_356
.LBB0_335:                              # %.preheader166
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_337 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	j .LBB0_337
.LBB0_336:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 553 11 is_stmt 1              # parallel-rne.mlir:553:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 568 13                        # parallel-rne.mlir:568:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 553 11                        # parallel-rne.mlir:553:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 568 13                        # parallel-rne.mlir:568:13
	add.s r4, r4, r5
	stores.w r11, 12(r4)
	stores.w r13, 8(r4)
	stores.w r26, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 553 11                        # parallel-rne.mlir:553:11
	beq r2, zero, .LBB0_334
.LBB0_337:                              # %vector.body770
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_335 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 554 19                        # parallel-rne.mlir:554:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r10, 12(r1)
	loads.w r17, 0(r1)
	loads.w r28, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 556 19                        # parallel-rne.mlir:556:19
	and r12, r10, r21
	.loc	1 558 19                        # parallel-rne.mlir:558:19
	setlt.u r1, r24, r12
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	bneq r1, zero, .LBB0_339
# %bb.338:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_340
.LBB0_339:                              #   in Loop: Header=BB0_337 Depth=3
	lui r1, 1024
	or r11, r10, r1
.LBB0_340:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	and r2, r20, r21
	setlt.u r1, r24, r2
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	bneq r1, zero, .LBB0_342
# %bb.341:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	j .LBB0_343
.LBB0_342:                              #   in Loop: Header=BB0_337 Depth=3
	lui r1, 1024
	or r13, r20, r1
.LBB0_343:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	and r18, r28, r21
	setlt.u r1, r24, r18
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	bneq r1, zero, .LBB0_345
# %bb.344:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_346
.LBB0_345:                              #   in Loop: Header=BB0_337 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_346:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	and r27, r17, r21
	setlt.u r1, r24, r27
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	bneq r1, zero, .LBB0_348
# %bb.347:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 565 19 is_stmt 1              # parallel-rne.mlir:565:19
	setlt.u r4, r23, r27
	.loc	1 566 20                        # parallel-rne.mlir:566:20
	beq r4, zero, .LBB0_349
	j .LBB0_350
.LBB0_348:                              #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r17, r1
	.loc	1 565 19 is_stmt 1              # parallel-rne.mlir:565:19
	setlt.u r4, r23, r27
	.loc	1 566 20                        # parallel-rne.mlir:566:20
	bneq r4, zero, .LBB0_350
.LBB0_349:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r1, r1, r4
.LBB0_350:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	setlt.u r4, r23, r18
	.loc	1 566 20                        # parallel-rne.mlir:566:20
	bneq r4, zero, .LBB0_353
# %bb.351:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r16, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r26, r4, r16
	lui r16, 524288
	setlt.u r2, r23, r2
	.loc	1 566 20                        # parallel-rne.mlir:566:20
	beq r2, zero, .LBB0_354
.LBB0_352:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r12
	.loc	1 566 20                        # parallel-rne.mlir:566:20
	bneq r2, zero, .LBB0_336
	j .LBB0_355
.LBB0_353:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 566 20                        # parallel-rne.mlir:566:20
	bneq r2, zero, .LBB0_352
.LBB0_354:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r20, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r22
	and r13, r2, r4
	setlt.u r2, r23, r12
	.loc	1 566 20                        # parallel-rne.mlir:566:20
	bneq r2, zero, .LBB0_336
.LBB0_355:                              # %vector.body770
                                        #   in Loop: Header=BB0_337 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r11, r2, r4
	j .LBB0_336
.LBB0_356:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 544 7                         # parallel-rne.mlir:544:7
	mfence { sm }
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	addli r1, zero, 6
	beq r10, r1, .LBB0_433
.LBB0_357:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_457
	j .LBB0_481
.LBB0_358:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 399 7 is_stmt 1               # parallel-rne.mlir:399:7
	xfence
	mfence { lm, sm, gm }
	addli.d r[4:5], r[1:2], 0
	store.d r[1:2], -408(r30)               # 8-byte Folded Spill
	j .LBB0_360
.LBB0_359:                              # %middle.block819
                                        #   in Loop: Header=BB0_360 Depth=2
	.loc	1 407 9                         # parallel-rne.mlir:407:9
	load.d r[1:2], -400(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_381
.LBB0_360:                              # %.preheader171
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_362 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[10:11], -408(r30)              # 8-byte Folded Reload
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	j .LBB0_362
.LBB0_361:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 408 11 is_stmt 1              # parallel-rne.mlir:408:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 423 13                        # parallel-rne.mlir:423:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	setneq.d r2, r[10:11], r[14:15]
	.loc	1 423 13                        # parallel-rne.mlir:423:13
	add.s r4, r4, r5
	stores.w r13, 12(r4)
	stores.w r26, 8(r4)
	stores.w r1, 4(r4)
	stores.w r6, 0(r4)
	.loc	1 408 11                        # parallel-rne.mlir:408:11
	beq r2, zero, .LBB0_359
.LBB0_362:                              # %vector.body815
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_360 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r12, 12(r1)
	loads.w r17, 0(r1)
	loads.w r2, 4(r1)
	loads.w r28, 8(r1)
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	and r20, r12, r21
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	setlt.u r1, r24, r20
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r1, zero, .LBB0_364
# %bb.363:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_365
.LBB0_364:                              #   in Loop: Header=BB0_362 Depth=3
	lui r1, 1024
	or r13, r12, r1
.LBB0_365:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	and r7, r28, r21
	setlt.u r1, r24, r7
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r1, zero, .LBB0_367
# %bb.366:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_368
.LBB0_367:                              #   in Loop: Header=BB0_362 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_368:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	and r18, r2, r21
	setlt.u r1, r24, r18
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r1, zero, .LBB0_370
# %bb.369:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r2, 0
	j .LBB0_371
.LBB0_370:                              #   in Loop: Header=BB0_362 Depth=3
	lui r1, 1024
	or r1, r2, r1
.LBB0_371:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	and r27, r17, r21
	setlt.u r4, r24, r27
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	bneq r4, zero, .LBB0_373
# %bb.372:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r17, 0
	.loc	1 420 19 is_stmt 1              # parallel-rne.mlir:420:19
	setlt.u r4, r23, r27
	.loc	1 421 20                        # parallel-rne.mlir:421:20
	beq r4, zero, .LBB0_374
	j .LBB0_375
.LBB0_373:                              #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r17, r4
	.loc	1 420 19 is_stmt 1              # parallel-rne.mlir:420:19
	setlt.u r4, r23, r27
	.loc	1 421 20                        # parallel-rne.mlir:421:20
	bneq r4, zero, .LBB0_375
.LBB0_374:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r17, 16
	lui r6, 1048560
	andi r4, r4, 1
	add.s r4, r17, r4
	add.s r4, r4, r22
	and r6, r4, r6
.LBB0_375:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	setlt.u r4, r23, r18
	.loc	1 421 20                        # parallel-rne.mlir:421:20
	bneq r4, zero, .LBB0_378
# %bb.376:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r2, 16
	andi r1, r1, 1
	add.s r1, r2, r1
	lui r2, 1048560
	add.s r1, r1, r22
	and r1, r1, r2
	setlt.u r2, r23, r7
	.loc	1 421 20                        # parallel-rne.mlir:421:20
	beq r2, zero, .LBB0_379
.LBB0_377:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r20
	.loc	1 421 20                        # parallel-rne.mlir:421:20
	bneq r2, zero, .LBB0_361
	j .LBB0_380
.LBB0_378:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r7
	.loc	1 421 20                        # parallel-rne.mlir:421:20
	bneq r2, zero, .LBB0_377
.LBB0_379:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r28, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r22
	and r26, r2, r4
	setlt.u r2, r23, r20
	.loc	1 421 20                        # parallel-rne.mlir:421:20
	bneq r2, zero, .LBB0_361
.LBB0_380:                              # %vector.body815
                                        #   in Loop: Header=BB0_362 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r12, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r13, r2, r4
	j .LBB0_361
.LBB0_381:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 399 7                         # parallel-rne.mlir:399:7
	mfence { sm }
	.loc	1 428 7                         # parallel-rne.mlir:428:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_283
.LBB0_382:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_307
.LBB0_383:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_385
.LBB0_384:                              # %middle.block801
                                        #   in Loop: Header=BB0_385 Depth=2
	.loc	1 465 9 is_stmt 1               # parallel-rne.mlir:465:9
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_406
.LBB0_385:                              # %.preheader169
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_387 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	j .LBB0_387
.LBB0_386:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 466 11 is_stmt 1              # parallel-rne.mlir:466:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 481 13                        # parallel-rne.mlir:481:13
	add.s r4, r4, r5
	stores.w r11, 12(r4)
	stores.w r13, 8(r4)
	stores.w r26, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 466 11                        # parallel-rne.mlir:466:11
	beq r2, zero, .LBB0_384
.LBB0_387:                              # %vector.body797
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_385 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 467 19                        # parallel-rne.mlir:467:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r10, 12(r1)
	loads.w r17, 0(r1)
	loads.w r28, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 469 19                        # parallel-rne.mlir:469:19
	and r12, r10, r21
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	setlt.u r1, r24, r12
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r1, zero, .LBB0_389
# %bb.388:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_390
.LBB0_389:                              #   in Loop: Header=BB0_387 Depth=3
	lui r1, 1024
	or r11, r10, r1
.LBB0_390:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	and r2, r20, r21
	setlt.u r1, r24, r2
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r1, zero, .LBB0_392
# %bb.391:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	j .LBB0_393
.LBB0_392:                              #   in Loop: Header=BB0_387 Depth=3
	lui r1, 1024
	or r13, r20, r1
.LBB0_393:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	and r18, r28, r21
	setlt.u r1, r24, r18
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r1, zero, .LBB0_395
# %bb.394:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_396
.LBB0_395:                              #   in Loop: Header=BB0_387 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_396:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	and r27, r17, r21
	setlt.u r1, r24, r27
	.loc	1 472 19                        # parallel-rne.mlir:472:19
	bneq r1, zero, .LBB0_398
# %bb.397:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r4, r23, r27
	.loc	1 479 20                        # parallel-rne.mlir:479:20
	beq r4, zero, .LBB0_399
	j .LBB0_400
.LBB0_398:                              #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r17, r1
	.loc	1 478 19 is_stmt 1              # parallel-rne.mlir:478:19
	setlt.u r4, r23, r27
	.loc	1 479 20                        # parallel-rne.mlir:479:20
	bneq r4, zero, .LBB0_400
.LBB0_399:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r1, r1, r4
.LBB0_400:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	setlt.u r4, r23, r18
	.loc	1 479 20                        # parallel-rne.mlir:479:20
	bneq r4, zero, .LBB0_403
# %bb.401:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r16, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r26, r4, r16
	lui r16, 524288
	setlt.u r2, r23, r2
	.loc	1 479 20                        # parallel-rne.mlir:479:20
	beq r2, zero, .LBB0_404
.LBB0_402:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r12
	.loc	1 479 20                        # parallel-rne.mlir:479:20
	bneq r2, zero, .LBB0_386
	j .LBB0_405
.LBB0_403:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 479 20                        # parallel-rne.mlir:479:20
	bneq r2, zero, .LBB0_402
.LBB0_404:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r20, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r22
	and r13, r2, r4
	setlt.u r2, r23, r12
	.loc	1 479 20                        # parallel-rne.mlir:479:20
	bneq r2, zero, .LBB0_386
.LBB0_405:                              # %vector.body797
                                        #   in Loop: Header=BB0_387 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r11, r2, r4
	j .LBB0_386
.LBB0_406:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 457 7                         # parallel-rne.mlir:457:7
	mfence { sm }
	.loc	1 486 7                         # parallel-rne.mlir:486:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_308
.LBB0_407:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 515 7                         # parallel-rne.mlir:515:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_332
.LBB0_408:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 515 7                         # parallel-rne.mlir:515:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_410
.LBB0_409:                              # %middle.block783
                                        #   in Loop: Header=BB0_410 Depth=2
	.loc	1 523 9 is_stmt 1               # parallel-rne.mlir:523:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_431
.LBB0_410:                              # %.preheader167
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_412 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	j .LBB0_412
.LBB0_411:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 524 11 is_stmt 1              # parallel-rne.mlir:524:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 539 13                        # parallel-rne.mlir:539:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 524 11                        # parallel-rne.mlir:524:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 539 13                        # parallel-rne.mlir:539:13
	add.s r4, r4, r5
	stores.w r11, 12(r4)
	stores.w r13, 8(r4)
	stores.w r26, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 524 11                        # parallel-rne.mlir:524:11
	beq r2, zero, .LBB0_409
.LBB0_412:                              # %vector.body779
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_410 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r10, 12(r1)
	loads.w r17, 0(r1)
	loads.w r28, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	and r12, r10, r21
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	setlt.u r1, r24, r12
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	bneq r1, zero, .LBB0_414
# %bb.413:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_415
.LBB0_414:                              #   in Loop: Header=BB0_412 Depth=3
	lui r1, 1024
	or r11, r10, r1
.LBB0_415:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	and r2, r20, r21
	setlt.u r1, r24, r2
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	bneq r1, zero, .LBB0_417
# %bb.416:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	j .LBB0_418
.LBB0_417:                              #   in Loop: Header=BB0_412 Depth=3
	lui r1, 1024
	or r13, r20, r1
.LBB0_418:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	and r18, r28, r21
	setlt.u r1, r24, r18
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	bneq r1, zero, .LBB0_420
# %bb.419:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_421
.LBB0_420:                              #   in Loop: Header=BB0_412 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_421:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	and r27, r17, r21
	setlt.u r1, r24, r27
	.loc	1 530 19                        # parallel-rne.mlir:530:19
	bneq r1, zero, .LBB0_423
# %bb.422:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 536 19 is_stmt 1              # parallel-rne.mlir:536:19
	setlt.u r4, r23, r27
	.loc	1 537 20                        # parallel-rne.mlir:537:20
	beq r4, zero, .LBB0_424
	j .LBB0_425
.LBB0_423:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r17, r1
	.loc	1 536 19 is_stmt 1              # parallel-rne.mlir:536:19
	setlt.u r4, r23, r27
	.loc	1 537 20                        # parallel-rne.mlir:537:20
	bneq r4, zero, .LBB0_425
.LBB0_424:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r1, r1, r4
.LBB0_425:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	setlt.u r4, r23, r18
	.loc	1 537 20                        # parallel-rne.mlir:537:20
	bneq r4, zero, .LBB0_428
# %bb.426:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r16, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r26, r4, r16
	lui r16, 524288
	setlt.u r2, r23, r2
	.loc	1 537 20                        # parallel-rne.mlir:537:20
	beq r2, zero, .LBB0_429
.LBB0_427:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r12
	.loc	1 537 20                        # parallel-rne.mlir:537:20
	bneq r2, zero, .LBB0_411
	j .LBB0_430
.LBB0_428:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 537 20                        # parallel-rne.mlir:537:20
	bneq r2, zero, .LBB0_427
.LBB0_429:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r20, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r22
	and r13, r2, r4
	setlt.u r2, r23, r12
	.loc	1 537 20                        # parallel-rne.mlir:537:20
	bneq r2, zero, .LBB0_411
.LBB0_430:                              # %vector.body779
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r11, r2, r4
	j .LBB0_411
.LBB0_431:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 515 7                         # parallel-rne.mlir:515:7
	mfence { sm }
	.loc	1 544 7                         # parallel-rne.mlir:544:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_333
.LBB0_432:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_357
.LBB0_433:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_435
.LBB0_434:                              # %middle.block765
                                        #   in Loop: Header=BB0_435 Depth=2
	.loc	1 581 9 is_stmt 1               # parallel-rne.mlir:581:9
	load.d r[1:2], -352(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_456
.LBB0_435:                              # %.preheader165
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_437 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	j .LBB0_437
.LBB0_436:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 582 11 is_stmt 1              # parallel-rne.mlir:582:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r4, r4, r5
	stores.w r11, 12(r4)
	stores.w r13, 8(r4)
	stores.w r26, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	beq r2, zero, .LBB0_434
.LBB0_437:                              # %vector.body761
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_435 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r10, 12(r1)
	loads.w r17, 0(r1)
	loads.w r28, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	and r12, r10, r21
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	setlt.u r1, r24, r12
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r1, zero, .LBB0_439
# %bb.438:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_440
.LBB0_439:                              #   in Loop: Header=BB0_437 Depth=3
	lui r1, 1024
	or r11, r10, r1
.LBB0_440:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	and r2, r20, r21
	setlt.u r1, r24, r2
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r1, zero, .LBB0_442
# %bb.441:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	j .LBB0_443
.LBB0_442:                              #   in Loop: Header=BB0_437 Depth=3
	lui r1, 1024
	or r13, r20, r1
.LBB0_443:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	and r18, r28, r21
	setlt.u r1, r24, r18
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r1, zero, .LBB0_445
# %bb.444:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_446
.LBB0_445:                              #   in Loop: Header=BB0_437 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_446:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	and r27, r17, r21
	setlt.u r1, r24, r27
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r1, zero, .LBB0_448
# %bb.447:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r4, r23, r27
	.loc	1 595 20                        # parallel-rne.mlir:595:20
	beq r4, zero, .LBB0_449
	j .LBB0_450
.LBB0_448:                              #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r17, r1
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r4, r23, r27
	.loc	1 595 20                        # parallel-rne.mlir:595:20
	bneq r4, zero, .LBB0_450
.LBB0_449:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r1, r1, r4
.LBB0_450:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	setlt.u r4, r23, r18
	.loc	1 595 20                        # parallel-rne.mlir:595:20
	bneq r4, zero, .LBB0_453
# %bb.451:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r16, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r26, r4, r16
	lui r16, 524288
	setlt.u r2, r23, r2
	.loc	1 595 20                        # parallel-rne.mlir:595:20
	beq r2, zero, .LBB0_454
.LBB0_452:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r12
	.loc	1 595 20                        # parallel-rne.mlir:595:20
	bneq r2, zero, .LBB0_436
	j .LBB0_455
.LBB0_453:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 595 20                        # parallel-rne.mlir:595:20
	bneq r2, zero, .LBB0_452
.LBB0_454:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r20, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r22
	and r13, r2, r4
	setlt.u r2, r23, r12
	.loc	1 595 20                        # parallel-rne.mlir:595:20
	bneq r2, zero, .LBB0_436
.LBB0_455:                              # %vector.body761
                                        #   in Loop: Header=BB0_437 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r11, r2, r4
	j .LBB0_436
.LBB0_456:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 573 7                         # parallel-rne.mlir:573:7
	mfence { sm }
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_481
.LBB0_457:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_459
.LBB0_458:                              # %middle.block756
                                        #   in Loop: Header=BB0_459 Depth=2
	.loc	1 610 9 is_stmt 1               # parallel-rne.mlir:610:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[4:5], -336(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_480
.LBB0_459:                              # %.preheader164
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_461 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	store.d r[4:5], -336(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[4:5], r1
	j .LBB0_461
.LBB0_460:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 611 11 is_stmt 1              # parallel-rne.mlir:611:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 626 13                        # parallel-rne.mlir:626:13
	add.s r4, r4, r5
	stores.w r11, 12(r4)
	stores.w r13, 8(r4)
	stores.w r26, 4(r4)
	stores.w r1, 0(r4)
	.loc	1 611 11                        # parallel-rne.mlir:611:11
	beq r2, zero, .LBB0_458
.LBB0_461:                              # %vector.body752
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_459 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 612 19                        # parallel-rne.mlir:612:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r1, r19, r5
	loads.w r10, 12(r1)
	loads.w r17, 0(r1)
	loads.w r28, 4(r1)
	loads.w r20, 8(r1)
	.loc	1 614 19                        # parallel-rne.mlir:614:19
	and r12, r10, r21
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	setlt.u r1, r24, r12
	.loc	1 617 19                        # parallel-rne.mlir:617:19
	bneq r1, zero, .LBB0_463
# %bb.462:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_464
.LBB0_463:                              #   in Loop: Header=BB0_461 Depth=3
	lui r1, 1024
	or r11, r10, r1
.LBB0_464:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	and r2, r20, r21
	setlt.u r1, r24, r2
	.loc	1 617 19                        # parallel-rne.mlir:617:19
	bneq r1, zero, .LBB0_466
# %bb.465:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r20, 0
	j .LBB0_467
.LBB0_466:                              #   in Loop: Header=BB0_461 Depth=3
	lui r1, 1024
	or r13, r20, r1
.LBB0_467:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	and r18, r28, r21
	setlt.u r1, r24, r18
	.loc	1 617 19                        # parallel-rne.mlir:617:19
	bneq r1, zero, .LBB0_469
# %bb.468:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r28, 0
	j .LBB0_470
.LBB0_469:                              #   in Loop: Header=BB0_461 Depth=3
	lui r1, 1024
	or r26, r28, r1
.LBB0_470:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	and r27, r17, r21
	setlt.u r1, r24, r27
	.loc	1 617 19                        # parallel-rne.mlir:617:19
	bneq r1, zero, .LBB0_472
# %bb.471:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r17, 0
	.loc	1 623 19 is_stmt 1              # parallel-rne.mlir:623:19
	setlt.u r4, r23, r27
	.loc	1 624 20                        # parallel-rne.mlir:624:20
	beq r4, zero, .LBB0_473
	j .LBB0_474
.LBB0_472:                              #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r17, r1
	.loc	1 623 19 is_stmt 1              # parallel-rne.mlir:623:19
	setlt.u r4, r23, r27
	.loc	1 624 20                        # parallel-rne.mlir:624:20
	bneq r4, zero, .LBB0_474
.LBB0_473:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r1, r17, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r17, r1
	add.s r1, r1, r22
	and r1, r1, r4
.LBB0_474:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	setlt.u r4, r23, r18
	.loc	1 624 20                        # parallel-rne.mlir:624:20
	bneq r4, zero, .LBB0_477
# %bb.475:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r16, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r26, r4, r16
	lui r16, 524288
	setlt.u r2, r23, r2
	.loc	1 624 20                        # parallel-rne.mlir:624:20
	beq r2, zero, .LBB0_478
.LBB0_476:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r12
	.loc	1 624 20                        # parallel-rne.mlir:624:20
	bneq r2, zero, .LBB0_460
	j .LBB0_479
.LBB0_477:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 624 20                        # parallel-rne.mlir:624:20
	bneq r2, zero, .LBB0_476
.LBB0_478:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r20, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r22
	and r13, r2, r4
	setlt.u r2, r23, r12
	.loc	1 624 20                        # parallel-rne.mlir:624:20
	bneq r2, zero, .LBB0_460
.LBB0_479:                              # %vector.body752
                                        #   in Loop: Header=BB0_461 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r11, r2, r4
	j .LBB0_460
.LBB0_480:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	mfence { sm }
.LBB0_481:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	addli r1, zero, 3
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	sync_core
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	bneq r10, r1, .LBB0_483
# %bb.482:                              # %.critedge11.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	addli r5, zero, 4
	xsignal r1, 0
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r1, zero, 26
	xsignal r1, 0
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r1, zero, 27
	xsignal r1, 0
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r1, zero, 30
	xsignal r1, 0
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	addli r1, zero, 24
	xsignal r1, 0
	.loc	1 638 13                        # parallel-rne.mlir:638:13
	loadli.w r1,  -120(r30)
	loadli.w r4,  -496(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -120(r30)
	slli r2, r2, 15
	add.s r2, r2, r4
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	j .LBB0_485
.LBB0_483:                              # %.critedge11
                                        #   in Loop: Header=BB0_8 Depth=1
	loadli.w r1,  -120(r30)
	addli r5, zero, 4
	loadli.w r4,  -496(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -120(r30)
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	addli r1, zero, 5
	.loc	1 638 13                        # parallel-rne.mlir:638:13
	slli r2, r2, 15
	add.s r2, r2, r4
	.loc	1 639 7                         # parallel-rne.mlir:639:7
	storeli.w r2, -336(r30)                 # 4-byte Folded Spill
	bneq r10, r1, .LBB0_485
# %bb.484:                              # %.thread116
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	addli r4, zero, 2
	addli r7, zero, 2047
	lui r6, 260096
	xwait r1, 0
	addli r1, zero, 32
	xwait r1, 0
	lock zero, r4
	lui r1, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, zero, 0
	addli r1, zero, 31
	ew_cfg zero, r7, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	loadli.w r8,  -328(r30)                 # 4-byte Folded Reload
	hp_ssmul r2, r8, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r1, 0
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	loadli.w r1,  -100(r30)
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -100(r30)
	.loc	1 642 7                         # parallel-rne.mlir:642:7
	addli r1, zero, 26
	xwait r1, 0
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	slli r1, r2, 15
	.loc	1 642 7                         # parallel-rne.mlir:642:7
	addli r2, zero, 34
	xwait r2, 0
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	loadli.w r2,  -500(r30)                 # 4-byte Folded Reload
	.loc	1 642 7                         # parallel-rne.mlir:642:7
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	ew_cfg zero, r7, zero, 2
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	add.s r20, r1, r2
	.loc	1 642 7                         # parallel-rne.mlir:642:7
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmul r20, r8, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	loadli.w r1,  -80(r30)
	mod.s r2, r1, r5
	addli r1, r1, 1
	storeli.w r1, -80(r30)
	slli r1, r2, 15
	.loc	1 645 7                         # parallel-rne.mlir:645:7
	addli r2, zero, 27
	xwait r2, 0
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	loadli.w r2,  -504(r30)                 # 4-byte Folded Reload
	add.s r26, r1, r2
	.loc	1 645 7                         # parallel-rne.mlir:645:7
	addli r1, zero, 36
	xwait r1, 0
	lock zero, r4
	addli r1, zero, 25
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r6, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmul r26, r20, r8, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r1, 0
	addli r1, zero, 33
	xsignal r1, 0
	addli r1, zero, 35
	xsignal r1, 0
	j .LBB0_487
.LBB0_485:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	loadli.w r1,  -100(r30)
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	loadli.w r2,  -80(r30)
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	mod.s r4, r1, r5
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	mod.s r5, r2, r5
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	addli r1, r1, 1
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	addli r2, r2, 1
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	storeli.w r1, -100(r30)
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	storeli.w r2, -80(r30)
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	slli r1, r4, 15
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	slli r4, r5, 15
	.loc	1 641 13                        # parallel-rne.mlir:641:13
	loadli.w r5,  -500(r30)                 # 4-byte Folded Reload
	add.s r20, r1, r5
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	loadli.w r1,  -504(r30)                 # 4-byte Folded Reload
	add.s r26, r4, r1
	.loc	1 647 7                         # parallel-rne.mlir:647:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_487
# %bb.486:                              # %.critedge13
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 14
	xwait r1, 0
	.loc	1 648 7                         # parallel-rne.mlir:648:7
	addli r1, zero, 25
	xwait r1, 0
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	addli r1, zero, 33
	xwait r1, 0
	.loc	1 650 7                         # parallel-rne.mlir:650:7
	addli r1, zero, 35
	xwait r1, 0
.LBB0_487:                              # %.critedge15
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	addli r1, zero, 255
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	xfence
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	mfence { lm, sm, gm }
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	csr_set csr5, r1
	sub.s r1, r19, r20
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	sub.s r1, r19, r26
	storeli.w r1, -432(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 655 7                         # parallel-rne.mlir:655:7
	beq r10, zero, .LBB0_576
# %bb.488:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_604
.LBB0_489:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_491
.LBB0_490:                              # %middle.block732
                                        #   in Loop: Header=BB0_491 Depth=2
	.loc	1 699 9 is_stmt 1               # parallel-rne.mlir:699:9
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_516
.LBB0_491:                              # %.preheader162
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_508 Depth 3
                                        #       Child Loop BB0_494 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 700 11 is_stmt 1              # parallel-rne.mlir:700:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_506
# %bb.492:                              # %scalar.ph724.preheader
                                        #   in Loop: Header=BB0_491 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_494
.LBB0_493:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 700 11                        # parallel-rne.mlir:700:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 722 13 is_stmt 1              # parallel-rne.mlir:722:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 700 11                        # parallel-rne.mlir:700:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_490
.LBB0_494:                              # %scalar.ph724
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	add.s r6, r26, r5
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	add.s r4, r4, r5
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	loads.w r4, 0(r4)
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	and r7, r4, r21
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	beq r7, r24, .LBB0_496
# %bb.495:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_496:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	beq r8, zero, .LBB0_504
# %bb.497:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r7, zero, .LBB0_505
.LBB0_498:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	beq r8, r24, .LBB0_500
.LBB0_499:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_500:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r7, zero, .LBB0_502
# %bb.501:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_502:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	setlt.u r7, r24, r8
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r7, zero, .LBB0_493
# %bb.503:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_493
.LBB0_504:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	lui r12, 523264
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	beq r7, zero, .LBB0_498
.LBB0_505:                              # %scalar.ph724
                                        #   in Loop: Header=BB0_494 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r8, r24, .LBB0_499
	j .LBB0_500
.LBB0_506:                              # %vector.body726.preheader
                                        #   in Loop: Header=BB0_491 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_508
.LBB0_507:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 700 11 is_stmt 1              # parallel-rne.mlir:700:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 722 13                        # parallel-rne.mlir:722:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 700 11                        # parallel-rne.mlir:700:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 722 13                        # parallel-rne.mlir:722:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 700 11                        # parallel-rne.mlir:700:11
	bneq r4, zero, .LBB0_490
.LBB0_508:                              # %vector.body726
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_491 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	add.s r13, r20, r11
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	add.s r28, r4, r11
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	loads.w r4, 0(r13)
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	loads.w r5, 0(r28)
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	and r4, r4, r21
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	and r5, r5, r21
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	seteq r6, r4, r24
	.loc	1 713 20                        # parallel-rne.mlir:713:20
	seteq r12, r4, zero
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	seteq r7, r5, zero
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	seteq r8, r5, r24
	.loc	1 718 20                        # parallel-rne.mlir:718:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	and r5, r6, r7
	.loc	1 714 20                        # parallel-rne.mlir:714:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 715 20                        # parallel-rne.mlir:715:20
	or r5, r5, r6
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	add.s r6, r26, r11
	.loc	1 719 20                        # parallel-rne.mlir:719:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r4, zero, .LBB0_510
# %bb.509:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_510:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r16
	and r8, r18, r17
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r4, zero, .LBB0_512
# %bb.511:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_512:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r8, zero
	seteq r18, r8, r24
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r16, r17
	and r16, r27, r18
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r4, zero, .LBB0_514
# %bb.513:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_514:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 720 20                        # parallel-rne.mlir:720:20
	bneq r4, zero, .LBB0_507
# %bb.515:                              # %vector.body726
                                        #   in Loop: Header=BB0_508 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_507
.LBB0_516:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	mfence { sm }
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_605
.LBB0_517:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 763 7                         # parallel-rne.mlir:763:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_633
.LBB0_518:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 763 7                         # parallel-rne.mlir:763:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_520
.LBB0_519:                              # %middle.block702
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 771 9 is_stmt 1               # parallel-rne.mlir:771:9
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_545
.LBB0_520:                              # %.preheader160
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_537 Depth 3
                                        #       Child Loop BB0_523 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 772 11 is_stmt 1              # parallel-rne.mlir:772:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_535
# %bb.521:                              # %scalar.ph694.preheader
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_523
.LBB0_522:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 772 11                        # parallel-rne.mlir:772:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 794 13 is_stmt 1              # parallel-rne.mlir:794:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 772 11                        # parallel-rne.mlir:772:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_519
.LBB0_523:                              # %scalar.ph694
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_520 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	add.s r6, r26, r5
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	add.s r4, r4, r5
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	loads.w r4, 0(r4)
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	and r7, r4, r21
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	beq r7, r24, .LBB0_525
# %bb.524:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_525:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	beq r8, zero, .LBB0_533
# %bb.526:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r7, zero, .LBB0_534
.LBB0_527:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	beq r8, r24, .LBB0_529
.LBB0_528:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_529:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r7, zero, .LBB0_531
# %bb.530:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_531:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	setlt.u r7, r24, r8
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r7, zero, .LBB0_522
# %bb.532:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_522
.LBB0_533:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	lui r12, 523264
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	beq r7, zero, .LBB0_527
.LBB0_534:                              # %scalar.ph694
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r8, r24, .LBB0_528
	j .LBB0_529
.LBB0_535:                              # %vector.body696.preheader
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_537
.LBB0_536:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 772 11 is_stmt 1              # parallel-rne.mlir:772:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 794 13                        # parallel-rne.mlir:794:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 772 11                        # parallel-rne.mlir:772:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 794 13                        # parallel-rne.mlir:794:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 772 11                        # parallel-rne.mlir:772:11
	bneq r4, zero, .LBB0_519
.LBB0_537:                              # %vector.body696
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_520 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	add.s r13, r20, r11
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	add.s r28, r4, r11
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	loads.w r4, 0(r13)
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	loads.w r5, 0(r28)
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	and r4, r4, r21
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	and r5, r5, r21
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	seteq r6, r4, r24
	.loc	1 785 20                        # parallel-rne.mlir:785:20
	seteq r12, r4, zero
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	seteq r7, r5, zero
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	seteq r8, r5, r24
	.loc	1 790 20                        # parallel-rne.mlir:790:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	and r5, r6, r7
	.loc	1 786 20                        # parallel-rne.mlir:786:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 787 20                        # parallel-rne.mlir:787:20
	or r5, r5, r6
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	add.s r6, r26, r11
	.loc	1 791 20                        # parallel-rne.mlir:791:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r4, zero, .LBB0_539
# %bb.538:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_539:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r16
	and r8, r18, r17
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r4, zero, .LBB0_541
# %bb.540:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_541:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r8, zero
	seteq r18, r8, r24
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r16, r17
	and r16, r27, r18
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r4, zero, .LBB0_543
# %bb.542:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_543:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 792 20                        # parallel-rne.mlir:792:20
	bneq r4, zero, .LBB0_536
# %bb.544:                              # %vector.body696
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_536
.LBB0_545:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 763 7                         # parallel-rne.mlir:763:7
	mfence { sm }
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_634
.LBB0_546:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_662
.LBB0_547:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	addli r1, zero, 40
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_549
.LBB0_548:                              # %middle.block672
                                        #   in Loop: Header=BB0_549 Depth=2
	.loc	1 843 9 is_stmt 1               # parallel-rne.mlir:843:9
	load.d r[1:2], -360(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_574
.LBB0_549:                              # %.preheader158
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_566 Depth 3
                                        #       Child Loop BB0_552 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 844 11 is_stmt 1              # parallel-rne.mlir:844:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_564
# %bb.550:                              # %scalar.ph664.preheader
                                        #   in Loop: Header=BB0_549 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_552
.LBB0_551:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 844 11                        # parallel-rne.mlir:844:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 866 13 is_stmt 1              # parallel-rne.mlir:866:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 844 11                        # parallel-rne.mlir:844:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_548
.LBB0_552:                              # %scalar.ph664
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_549 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	add.s r6, r26, r5
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	add.s r4, r4, r5
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	loads.w r4, 0(r4)
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	and r7, r4, r21
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	beq r7, r24, .LBB0_554
# %bb.553:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_554:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	beq r8, zero, .LBB0_562
# %bb.555:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r7, zero, .LBB0_563
.LBB0_556:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	beq r8, r24, .LBB0_558
.LBB0_557:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_558:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r7, zero, .LBB0_560
# %bb.559:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_560:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	setlt.u r7, r24, r8
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r7, zero, .LBB0_551
# %bb.561:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_551
.LBB0_562:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	lui r12, 523264
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	beq r7, zero, .LBB0_556
.LBB0_563:                              # %scalar.ph664
                                        #   in Loop: Header=BB0_552 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r8, r24, .LBB0_557
	j .LBB0_558
.LBB0_564:                              # %vector.body666.preheader
                                        #   in Loop: Header=BB0_549 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_566
.LBB0_565:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 844 11 is_stmt 1              # parallel-rne.mlir:844:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 844 11                        # parallel-rne.mlir:844:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 866 13                        # parallel-rne.mlir:866:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 844 11                        # parallel-rne.mlir:844:11
	bneq r4, zero, .LBB0_548
.LBB0_566:                              # %vector.body666
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_549 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	add.s r13, r20, r11
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	add.s r28, r4, r11
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	loads.w r4, 0(r13)
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	loads.w r5, 0(r28)
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	and r4, r4, r21
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	and r5, r5, r21
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	seteq r6, r4, r24
	.loc	1 857 20                        # parallel-rne.mlir:857:20
	seteq r12, r4, zero
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	seteq r7, r5, zero
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	seteq r8, r5, r24
	.loc	1 862 20                        # parallel-rne.mlir:862:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	and r5, r6, r7
	.loc	1 858 20                        # parallel-rne.mlir:858:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 859 20                        # parallel-rne.mlir:859:20
	or r5, r5, r6
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	add.s r6, r26, r11
	.loc	1 863 20                        # parallel-rne.mlir:863:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r4, zero, .LBB0_568
# %bb.567:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_568:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r16
	and r8, r18, r17
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r4, zero, .LBB0_570
# %bb.569:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_570:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r8, zero
	seteq r18, r8, r24
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r16, r17
	and r16, r27, r18
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r4, zero, .LBB0_572
# %bb.571:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_572:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 864 20                        # parallel-rne.mlir:864:20
	bneq r4, zero, .LBB0_565
# %bb.573:                              # %vector.body666
                                        #   in Loop: Header=BB0_566 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_565
.LBB0_574:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	mfence { sm }
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r1, zero, 6
	beq r10, r1, .LBB0_663
.LBB0_575:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 907 7                         # parallel-rne.mlir:907:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_691
	j .LBB0_719
.LBB0_576:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	zext_int2long r[4:5], zero
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 655 7 is_stmt 1               # parallel-rne.mlir:655:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_578
.LBB0_577:                              # %middle.block747
                                        #   in Loop: Header=BB0_578 Depth=2
	.loc	1 663 9                         # parallel-rne.mlir:663:9
	load.d r[1:2], -400(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_603
.LBB0_578:                              # %.preheader163
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_595 Depth 3
                                        #       Child Loop BB0_581 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 664 11 is_stmt 1              # parallel-rne.mlir:664:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_593
# %bb.579:                              # %scalar.ph739.preheader
                                        #   in Loop: Header=BB0_578 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_581
.LBB0_580:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 686 13 is_stmt 1              # parallel-rne.mlir:686:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_577
.LBB0_581:                              # %scalar.ph739
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_578 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	add.s r6, r26, r5
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	add.s r4, r4, r5
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	loads.w r4, 0(r4)
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	and r7, r4, r21
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	beq r7, r24, .LBB0_583
# %bb.582:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_583:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	beq r8, zero, .LBB0_591
# %bb.584:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r7, zero, .LBB0_592
.LBB0_585:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	beq r8, r24, .LBB0_587
.LBB0_586:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_587:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r7, zero, .LBB0_589
# %bb.588:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_589:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	setlt.u r7, r24, r8
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r7, zero, .LBB0_580
# %bb.590:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_580
.LBB0_591:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	lui r12, 523264
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	beq r7, zero, .LBB0_585
.LBB0_592:                              # %scalar.ph739
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r8, r24, .LBB0_586
	j .LBB0_587
.LBB0_593:                              # %vector.body741.preheader
                                        #   in Loop: Header=BB0_578 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_595
.LBB0_594:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 664 11 is_stmt 1              # parallel-rne.mlir:664:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 686 13                        # parallel-rne.mlir:686:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 686 13                        # parallel-rne.mlir:686:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	bneq r4, zero, .LBB0_577
.LBB0_595:                              # %vector.body741
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_578 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.s r13, r20, r11
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	add.s r28, r4, r11
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	loads.w r4, 0(r13)
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	loads.w r5, 0(r28)
	.loc	1 672 19                        # parallel-rne.mlir:672:19
	and r4, r4, r21
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	and r5, r5, r21
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	seteq r6, r4, r24
	.loc	1 677 20                        # parallel-rne.mlir:677:20
	seteq r12, r4, zero
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	seteq r7, r5, zero
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	seteq r8, r5, r24
	.loc	1 682 20                        # parallel-rne.mlir:682:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	and r5, r6, r7
	.loc	1 678 20                        # parallel-rne.mlir:678:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 679 20                        # parallel-rne.mlir:679:20
	or r5, r5, r6
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	add.s r6, r26, r11
	.loc	1 683 20                        # parallel-rne.mlir:683:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r4, zero, .LBB0_597
# %bb.596:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_597:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r27, r4, zero
	seteq r17, r7, zero
	seteq r18, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r17
	and r8, r27, r18
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r4, zero, .LBB0_599
# %bb.598:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_599:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r17, r4, r24
	seteq r16, r4, zero
	seteq r27, r8, r24
	seteq r18, r8, zero
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r17, r18
	and r16, r16, r27
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r4, zero, .LBB0_601
# %bb.600:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_601:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 684 20                        # parallel-rne.mlir:684:20
	bneq r4, zero, .LBB0_594
# %bb.602:                              # %vector.body741
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_594
.LBB0_603:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 655 7                         # parallel-rne.mlir:655:7
	mfence { sm }
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_489
.LBB0_604:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_517
.LBB0_605:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[4:5], r2
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_607
.LBB0_606:                              # %middle.block717
                                        #   in Loop: Header=BB0_607 Depth=2
	.loc	1 735 9 is_stmt 1               # parallel-rne.mlir:735:9
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_632
.LBB0_607:                              # %.preheader161
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_624 Depth 3
                                        #       Child Loop BB0_610 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 736 11 is_stmt 1              # parallel-rne.mlir:736:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_622
# %bb.608:                              # %scalar.ph709.preheader
                                        #   in Loop: Header=BB0_607 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_610
.LBB0_609:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 758 13 is_stmt 1              # parallel-rne.mlir:758:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_606
.LBB0_610:                              # %scalar.ph709
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_607 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	add.s r6, r26, r5
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	add.s r4, r4, r5
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	loads.w r4, 0(r4)
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	and r7, r4, r21
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	beq r7, r24, .LBB0_612
# %bb.611:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_612:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	beq r8, zero, .LBB0_620
# %bb.613:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r7, zero, .LBB0_621
.LBB0_614:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	beq r8, r24, .LBB0_616
.LBB0_615:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_616:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r7, zero, .LBB0_618
# %bb.617:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_618:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	setlt.u r7, r24, r8
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r7, zero, .LBB0_609
# %bb.619:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_609
.LBB0_620:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	lui r12, 523264
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	beq r7, zero, .LBB0_614
.LBB0_621:                              # %scalar.ph709
                                        #   in Loop: Header=BB0_610 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r8, r24, .LBB0_615
	j .LBB0_616
.LBB0_622:                              # %vector.body711.preheader
                                        #   in Loop: Header=BB0_607 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_624
.LBB0_623:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	.loc	1 736 11 is_stmt 1              # parallel-rne.mlir:736:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 758 13                        # parallel-rne.mlir:758:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 758 13                        # parallel-rne.mlir:758:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 736 11                        # parallel-rne.mlir:736:11
	bneq r4, zero, .LBB0_606
.LBB0_624:                              # %vector.body711
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_607 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.s r13, r20, r11
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	add.s r28, r4, r11
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	loads.w r4, 0(r13)
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	loads.w r5, 0(r28)
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	and r4, r4, r21
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	and r5, r5, r21
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	seteq r6, r4, r24
	.loc	1 749 20                        # parallel-rne.mlir:749:20
	seteq r12, r4, zero
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	seteq r7, r5, zero
	.loc	1 748 19                        # parallel-rne.mlir:748:19
	seteq r8, r5, r24
	.loc	1 754 20                        # parallel-rne.mlir:754:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 747 19                        # parallel-rne.mlir:747:19
	and r5, r6, r7
	.loc	1 750 20                        # parallel-rne.mlir:750:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 751 20                        # parallel-rne.mlir:751:20
	or r5, r5, r6
	.loc	1 739 19                        # parallel-rne.mlir:739:19
	add.s r6, r26, r11
	.loc	1 755 20                        # parallel-rne.mlir:755:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r4, zero, .LBB0_626
# %bb.625:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_626:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r16
	and r8, r18, r17
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r4, zero, .LBB0_628
# %bb.627:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_628:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r8, zero
	seteq r18, r8, r24
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r16, r17
	and r16, r27, r18
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r4, zero, .LBB0_630
# %bb.629:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_630:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 756 20                        # parallel-rne.mlir:756:20
	bneq r4, zero, .LBB0_623
# %bb.631:                              # %vector.body711
                                        #   in Loop: Header=BB0_624 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_623
.LBB0_632:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 727 7                         # parallel-rne.mlir:727:7
	mfence { sm }
	.loc	1 763 7                         # parallel-rne.mlir:763:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_518
.LBB0_633:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_546
.LBB0_634:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	addli r1, zero, 32
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_636
.LBB0_635:                              # %middle.block687
                                        #   in Loop: Header=BB0_636 Depth=2
	.loc	1 807 9 is_stmt 1               # parallel-rne.mlir:807:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_661
.LBB0_636:                              # %.preheader159
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_653 Depth 3
                                        #       Child Loop BB0_639 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 808 11 is_stmt 1              # parallel-rne.mlir:808:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_651
# %bb.637:                              # %scalar.ph679.preheader
                                        #   in Loop: Header=BB0_636 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_639
.LBB0_638:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 830 13 is_stmt 1              # parallel-rne.mlir:830:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_635
.LBB0_639:                              # %scalar.ph679
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_636 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	add.s r6, r26, r5
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	add.s r4, r4, r5
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	loads.w r4, 0(r4)
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	and r7, r4, r21
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	beq r7, r24, .LBB0_641
# %bb.640:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_641:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	beq r8, zero, .LBB0_649
# %bb.642:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r7, zero, .LBB0_650
.LBB0_643:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	beq r8, r24, .LBB0_645
.LBB0_644:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_645:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r7, zero, .LBB0_647
# %bb.646:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_647:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	setlt.u r7, r24, r8
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r7, zero, .LBB0_638
# %bb.648:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_638
.LBB0_649:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	lui r12, 523264
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	beq r7, zero, .LBB0_643
.LBB0_650:                              # %scalar.ph679
                                        #   in Loop: Header=BB0_639 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r8, r24, .LBB0_644
	j .LBB0_645
.LBB0_651:                              # %vector.body681.preheader
                                        #   in Loop: Header=BB0_636 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_653
.LBB0_652:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 808 11 is_stmt 1              # parallel-rne.mlir:808:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 830 13                        # parallel-rne.mlir:830:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 830 13                        # parallel-rne.mlir:830:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 808 11                        # parallel-rne.mlir:808:11
	bneq r4, zero, .LBB0_635
.LBB0_653:                              # %vector.body681
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_636 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	add.s r13, r20, r11
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	add.s r28, r4, r11
	.loc	1 809 19                        # parallel-rne.mlir:809:19
	loads.w r4, 0(r13)
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	loads.w r5, 0(r28)
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	and r4, r4, r21
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	and r5, r5, r21
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	seteq r6, r4, r24
	.loc	1 821 20                        # parallel-rne.mlir:821:20
	seteq r12, r4, zero
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	seteq r7, r5, zero
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	seteq r8, r5, r24
	.loc	1 826 20                        # parallel-rne.mlir:826:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	and r5, r6, r7
	.loc	1 822 20                        # parallel-rne.mlir:822:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 823 20                        # parallel-rne.mlir:823:20
	or r5, r5, r6
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	add.s r6, r26, r11
	.loc	1 827 20                        # parallel-rne.mlir:827:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r4, zero, .LBB0_655
# %bb.654:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_655:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r16
	and r8, r18, r17
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r4, zero, .LBB0_657
# %bb.656:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_657:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r8, zero
	seteq r18, r8, r24
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r16, r17
	and r16, r27, r18
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r4, zero, .LBB0_659
# %bb.658:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_659:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 828 20                        # parallel-rne.mlir:828:20
	bneq r4, zero, .LBB0_652
# %bb.660:                              # %vector.body681
                                        #   in Loop: Header=BB0_653 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_652
.LBB0_661:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 799 7                         # parallel-rne.mlir:799:7
	mfence { sm }
	.loc	1 835 7                         # parallel-rne.mlir:835:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_547
.LBB0_662:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_575
.LBB0_663:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	addli r1, zero, 48
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_665
.LBB0_664:                              # %middle.block657
                                        #   in Loop: Header=BB0_665 Depth=2
	.loc	1 879 9 is_stmt 1               # parallel-rne.mlir:879:9
	load.d r[1:2], -352(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_690
.LBB0_665:                              # %.preheader157
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_682 Depth 3
                                        #       Child Loop BB0_668 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 880 11 is_stmt 1              # parallel-rne.mlir:880:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_680
# %bb.666:                              # %scalar.ph649.preheader
                                        #   in Loop: Header=BB0_665 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_668
.LBB0_667:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 902 13 is_stmt 1              # parallel-rne.mlir:902:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_664
.LBB0_668:                              # %scalar.ph649
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_665 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	add.s r6, r26, r5
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.s r4, r4, r5
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	loads.w r4, 0(r4)
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r7, r4, r21
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	beq r7, r24, .LBB0_670
# %bb.669:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_670:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	beq r8, zero, .LBB0_678
# %bb.671:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r7, zero, .LBB0_679
.LBB0_672:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	beq r8, r24, .LBB0_674
.LBB0_673:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_674:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r7, zero, .LBB0_676
# %bb.675:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_676:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	setlt.u r7, r24, r8
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r7, zero, .LBB0_667
# %bb.677:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_667
.LBB0_678:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	lui r12, 523264
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	beq r7, zero, .LBB0_672
.LBB0_679:                              # %scalar.ph649
                                        #   in Loop: Header=BB0_668 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r8, r24, .LBB0_673
	j .LBB0_674
.LBB0_680:                              # %vector.body651.preheader
                                        #   in Loop: Header=BB0_665 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_682
.LBB0_681:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	.loc	1 880 11 is_stmt 1              # parallel-rne.mlir:880:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 902 13                        # parallel-rne.mlir:902:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 902 13                        # parallel-rne.mlir:902:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 880 11                        # parallel-rne.mlir:880:11
	bneq r4, zero, .LBB0_664
.LBB0_682:                              # %vector.body651
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_665 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.s r13, r20, r11
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	add.s r28, r4, r11
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	loads.w r4, 0(r13)
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	loads.w r5, 0(r28)
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r4, r4, r21
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r5, r5, r21
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	seteq r6, r4, r24
	.loc	1 893 20                        # parallel-rne.mlir:893:20
	seteq r12, r4, zero
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	seteq r7, r5, zero
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	seteq r8, r5, r24
	.loc	1 898 20                        # parallel-rne.mlir:898:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	and r5, r6, r7
	.loc	1 894 20                        # parallel-rne.mlir:894:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 895 20                        # parallel-rne.mlir:895:20
	or r5, r5, r6
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	add.s r6, r26, r11
	.loc	1 899 20                        # parallel-rne.mlir:899:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r4, zero, .LBB0_684
# %bb.683:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_684:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r16
	and r8, r18, r17
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r4, zero, .LBB0_686
# %bb.685:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_686:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r8, zero
	seteq r18, r8, r24
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r16, r17
	and r16, r27, r18
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r4, zero, .LBB0_688
# %bb.687:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_688:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 900 20                        # parallel-rne.mlir:900:20
	bneq r4, zero, .LBB0_681
# %bb.689:                              # %vector.body651
                                        #   in Loop: Header=BB0_682 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_681
.LBB0_690:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 871 7                         # parallel-rne.mlir:871:7
	mfence { sm }
	.loc	1 907 7                         # parallel-rne.mlir:907:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_719
.LBB0_691:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -428(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -432(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 907 7                         # parallel-rne.mlir:907:7
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	addli r1, zero, 56
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_693
.LBB0_692:                              # %middle.block642
                                        #   in Loop: Header=BB0_693 Depth=2
	.loc	1 915 9 is_stmt 1               # parallel-rne.mlir:915:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_718
.LBB0_693:                              # %.preheader156
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_710 Depth 3
                                        #       Child Loop BB0_696 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 916 11 is_stmt 1              # parallel-rne.mlir:916:11
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_708
# %bb.694:                              # %scalar.ph634.preheader
                                        #   in Loop: Header=BB0_693 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_696
.LBB0_695:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	.loc	1 916 11                        # parallel-rne.mlir:916:11
	load.d r[7:8], -320(r30)                # 8-byte Folded Reload
	.loc	1 938 13 is_stmt 1              # parallel-rne.mlir:938:13
	add.s r5, r19, r5
	stores.w r6, 0(r5)
	.loc	1 916 11                        # parallel-rne.mlir:916:11
	setlt.ul r4, r[1:2], r[7:8]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_692
.LBB0_696:                              # %scalar.ph634
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_693 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	add.s r6, r26, r5
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	add.s r4, r4, r5
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	loads.w r4, 0(r4)
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	and r7, r4, r21
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	beq r7, r24, .LBB0_698
# %bb.697:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_698:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	add.s r4, r20, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	beq r8, zero, .LBB0_706
# %bb.699:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r7, zero, .LBB0_707
.LBB0_700:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	beq r8, r24, .LBB0_702
.LBB0_701:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_702:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r7, zero, .LBB0_704
# %bb.703:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_704:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	setlt.u r7, r24, r8
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r7, zero, .LBB0_695
# %bb.705:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
	j .LBB0_695
.LBB0_706:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	lui r12, 523264
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	beq r7, zero, .LBB0_700
.LBB0_707:                              # %scalar.ph634
                                        #   in Loop: Header=BB0_696 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r8, r24, .LBB0_701
	j .LBB0_702
.LBB0_708:                              # %vector.body636.preheader
                                        #   in Loop: Header=BB0_693 Depth=2
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	zext_int2long r[1:2], zero
	j .LBB0_710
.LBB0_709:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 916 11 is_stmt 1              # parallel-rne.mlir:916:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 938 13                        # parallel-rne.mlir:938:13
	add.s r6, r19, r11
	lui r16, 524288
	.loc	1 916 11                        # parallel-rne.mlir:916:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 938 13                        # parallel-rne.mlir:938:13
	stores.w r12, 12(r6)
	stores.w r8, 8(r6)
	stores.w r7, 4(r6)
	stores.w r5, 0(r6)
	.loc	1 916 11                        # parallel-rne.mlir:916:11
	bneq r4, zero, .LBB0_692
.LBB0_710:                              # %vector.body636
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_693 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	add.ul r[4:5], r[1:2], r[9:10]
	slli r11, r4, 2
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	loadli.w r4,  -328(r30)                 # 4-byte Folded Reload
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	add.s r13, r20, r11
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	add.s r28, r4, r11
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	loads.w r4, 0(r13)
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	loads.w r5, 0(r28)
	.loc	1 924 19                        # parallel-rne.mlir:924:19
	and r4, r4, r21
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	and r5, r5, r21
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	seteq r6, r4, r24
	.loc	1 929 20                        # parallel-rne.mlir:929:20
	seteq r12, r4, zero
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	seteq r7, r5, zero
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	seteq r8, r5, r24
	.loc	1 934 20                        # parallel-rne.mlir:934:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	and r5, r6, r7
	.loc	1 930 20                        # parallel-rne.mlir:930:20
	and r6, r12, r8
	lui r12, 523264
	.loc	1 931 20                        # parallel-rne.mlir:931:20
	or r5, r5, r6
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	add.s r6, r26, r11
	.loc	1 935 20                        # parallel-rne.mlir:935:20
	or r4, r4, r5
	lui r5, 523264
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r4, zero, .LBB0_712
# %bb.711:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r5, 0(r6)
.LBB0_712:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r4, 4(r13)
	loads.w r7, 4(r28)
	and r4, r4, r21
	and r7, r7, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r8, r16
	and r8, r18, r17
	or r7, r7, r8
	or r4, r4, r7
	lui r7, 523264
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r4, zero, .LBB0_714
# %bb.713:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r7, 4(r6)
.LBB0_714:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r4, 8(r13)
	loads.w r8, 8(r28)
	and r4, r4, r21
	and r8, r8, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r8, zero
	seteq r18, r8, r24
	max.u r4, r4, r8
	setlt.u r4, r24, r4
	and r8, r16, r17
	and r16, r27, r18
	or r8, r8, r16
	or r4, r4, r8
	lui r8, 523264
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r4, zero, .LBB0_716
# %bb.715:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r8, 8(r6)
.LBB0_716:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	loads.w r4, 12(r13)
	loads.w r13, 12(r28)
	and r4, r4, r21
	and r13, r13, r21
	seteq r16, r4, r24
	seteq r27, r4, zero
	seteq r17, r13, zero
	seteq r18, r13, r24
	max.u r4, r4, r13
	setlt.u r4, r24, r4
	and r13, r16, r17
	and r16, r27, r18
	or r13, r13, r16
	or r4, r4, r13
	.loc	1 936 20                        # parallel-rne.mlir:936:20
	bneq r4, zero, .LBB0_709
# %bb.717:                              # %vector.body636
                                        #   in Loop: Header=BB0_710 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 12(r6)
	j .LBB0_709
.LBB0_718:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 907 7                         # parallel-rne.mlir:907:7
	mfence { sm }
.LBB0_719:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 943 7                         # parallel-rne.mlir:943:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	addli r1, zero, 3
	.loc	1 943 7                         # parallel-rne.mlir:943:7
	sync_core
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	bneq r10, r1, .LBB0_721
# %bb.720:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 15
	addli r4, zero, 4
	xsignal r1, 0
	.loc	1 945 7                         # parallel-rne.mlir:945:7
	addli r1, zero, 28
	xsignal r1, 0
	.loc	1 946 7                         # parallel-rne.mlir:946:7
	addli r1, zero, 34
	xsignal r1, 0
	.loc	1 947 7                         # parallel-rne.mlir:947:7
	addli r1, zero, 36
	xsignal r1, 0
	.loc	1 949 13                        # parallel-rne.mlir:949:13
	loadli.w r1,  -60(r30)
	mod.s r2, r1, r4
	addli r1, r1, 1
	storeli.w r1, -60(r30)
	loadli.w r1,  -508(r30)                 # 4-byte Folded Reload
	slli r2, r2, 15
	add.s r26, r2, r1
	.loc	1 953 7                         # parallel-rne.mlir:953:7
	addli r1, zero, 37
	xwait r1, 0
	.loc	1 954 7                         # parallel-rne.mlir:954:7
	addli r1, zero, 41
	xwait r1, 0
	j .LBB0_723
.LBB0_721:                              # %.critedge19
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 949 13                        # parallel-rne.mlir:949:13
	loadli.w r1,  -60(r30)
	addli r4, zero, 4
	loadli.w r5,  -508(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r4
	addli r1, r1, 1
	storeli.w r1, -60(r30)
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	addli r1, zero, 5
	.loc	1 949 13                        # parallel-rne.mlir:949:13
	slli r2, r2, 15
	add.s r26, r2, r5
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	bneq r10, r1, .LBB0_723
# %bb.722:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 15
	lui r5, 260096
	xwait r1, 0
	addli r1, zero, 28
	xwait r1, 0
	addli r1, zero, 38
	xwait r1, 0
	addli r1, zero, 2
	lock zero, r1
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -524(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, r2, zero, 0
	addli r5, zero, 2047
	ew_cfg zero, r5, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	loadli.w r2,  -328(r30)                 # 4-byte Folded Reload
	dsmadd r26, r2, r19, 0
	addli r2, zero, 16
	ew_cfg zero, zero, zero, 19
	unlock r1
	xsignal r2, 0
	.loc	1 951 7                         # parallel-rne.mlir:951:7
	lock zero, r1
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, zero, 0
	ew_cfg zero, r5, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	hp_ssmul r26, r26, r26, 0
	ew_cfg zero, zero, zero, 19
	unlock r1
	addli r1, zero, 37
	xsignal r1, 0
.LBB0_723:                              # %.critedge23
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -444(r30)                 # 4-byte Folded Reload
	lui r2, 112
	.loc	1 956 7 is_stmt 1               # parallel-rne.mlir:956:7
	xfence
	.loc	1 957 7                         # parallel-rne.mlir:957:7
	mfence { lm, sm, gm }
	ori r2, r2, 2048
	mod.s r1, r1, r4
	slli r1, r1, 15
	add.s r20, r1, r2
	.loc	1 958 7                         # parallel-rne.mlir:958:7
	addli r1, zero, 255
	csr_set csr5, r1
	sub.s r1, r20, r26
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 959 7                         # parallel-rne.mlir:959:7
	beq r10, zero, .LBB0_746
# %bb.724:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_752
.LBB0_725:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 8
	zext_int2long r[5:6], r2
	j .LBB0_727
.LBB0_726:                              # %middle.block617
                                        #   in Loop: Header=BB0_727 Depth=2
	.loc	1 984 9 is_stmt 1               # parallel-rne.mlir:984:9
	load.d r[7:8], -392(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_730
.LBB0_727:                              # %.preheader154
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_729 Depth 3
                                        #       Child Loop BB0_728 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 985 11 is_stmt 1              # parallel-rne.mlir:985:11
	beq r1, zero, .LBB0_729
.LBB0_728:                              # %scalar.ph610
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_727 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.s r4, r26, r2
	.loc	1 988 13                        # parallel-rne.mlir:988:13
	add.s r2, r20, r2
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	loads.w r4, 0(r4)
	.loc	1 988 13                        # parallel-rne.mlir:988:13
	stores.w r4, 0(r2)
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	bneq r11, zero, .LBB0_728
	j .LBB0_726
.LBB0_729:                              # %vector.body612
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_727 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	slli r2, r11, 2
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	add.s r11, r26, r2
	.loc	1 988 13                        # parallel-rne.mlir:988:13
	add.s r2, r20, r2
	.loc	1 986 19                        # parallel-rne.mlir:986:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 988 13                        # parallel-rne.mlir:988:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 985 11                        # parallel-rne.mlir:985:11
	beq r4, zero, .LBB0_729
	j .LBB0_726
.LBB0_730:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	mfence { sm }
	.loc	1 993 7                         # parallel-rne.mlir:993:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_753
.LBB0_731:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_759
.LBB0_732:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 24
	zext_int2long r[5:6], r2
	j .LBB0_734
.LBB0_733:                              # %middle.block597
                                        #   in Loop: Header=BB0_734 Depth=2
	.loc	1 1018 9 is_stmt 1              # parallel-rne.mlir:1018:9
	load.d r[7:8], -376(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_737
.LBB0_734:                              # %.preheader152
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_736 Depth 3
                                        #       Child Loop BB0_735 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 1019 11 is_stmt 1             # parallel-rne.mlir:1019:11
	beq r1, zero, .LBB0_736
.LBB0_735:                              # %scalar.ph590
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_734 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.s r4, r26, r2
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	add.s r2, r20, r2
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	loads.w r4, 0(r4)
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	stores.w r4, 0(r2)
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	bneq r11, zero, .LBB0_735
	j .LBB0_733
.LBB0_736:                              # %vector.body592
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_734 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	slli r2, r11, 2
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	add.s r11, r26, r2
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	add.s r2, r20, r2
	.loc	1 1020 19                       # parallel-rne.mlir:1020:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1022 13                       # parallel-rne.mlir:1022:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 1019 11                       # parallel-rne.mlir:1019:11
	beq r4, zero, .LBB0_736
	j .LBB0_733
.LBB0_737:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	mfence { sm }
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_760
.LBB0_738:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_766
.LBB0_739:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 40
	zext_int2long r[5:6], r2
	j .LBB0_741
.LBB0_740:                              # %middle.block577
                                        #   in Loop: Header=BB0_741 Depth=2
	.loc	1 1052 9 is_stmt 1              # parallel-rne.mlir:1052:9
	load.d r[7:8], -360(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_744
.LBB0_741:                              # %.preheader150
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_743 Depth 3
                                        #       Child Loop BB0_742 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 1053 11 is_stmt 1             # parallel-rne.mlir:1053:11
	beq r1, zero, .LBB0_743
.LBB0_742:                              # %scalar.ph570
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_741 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.s r4, r26, r2
	.loc	1 1056 13                       # parallel-rne.mlir:1056:13
	add.s r2, r20, r2
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	loads.w r4, 0(r4)
	.loc	1 1056 13                       # parallel-rne.mlir:1056:13
	stores.w r4, 0(r2)
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	bneq r11, zero, .LBB0_742
	j .LBB0_740
.LBB0_743:                              # %vector.body572
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_741 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	slli r2, r11, 2
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.s r11, r26, r2
	.loc	1 1056 13                       # parallel-rne.mlir:1056:13
	add.s r2, r20, r2
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1056 13                       # parallel-rne.mlir:1056:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 1053 11                       # parallel-rne.mlir:1053:11
	beq r4, zero, .LBB0_743
	j .LBB0_740
.LBB0_744:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	mfence { sm }
	.loc	1 1061 7                        # parallel-rne.mlir:1061:7
	addli r1, zero, 6
	beq r10, r1, .LBB0_767
.LBB0_745:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_773
	j .LBB0_779
.LBB0_746:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 959 7 is_stmt 1               # parallel-rne.mlir:959:7
	xfence
	zext_int2long r[5:6], zero
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	j .LBB0_748
.LBB0_747:                              # %middle.block627
                                        #   in Loop: Header=BB0_748 Depth=2
	.loc	1 967 9                         # parallel-rne.mlir:967:9
	load.d r[7:8], -400(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_751
.LBB0_748:                              # %.preheader155
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_750 Depth 3
                                        #       Child Loop BB0_749 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 968 11 is_stmt 1              # parallel-rne.mlir:968:11
	beq r1, zero, .LBB0_750
.LBB0_749:                              # %scalar.ph620
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_748 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 968 11                        # parallel-rne.mlir:968:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.s r4, r26, r2
	.loc	1 971 13                        # parallel-rne.mlir:971:13
	add.s r2, r20, r2
	.loc	1 968 11                        # parallel-rne.mlir:968:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	loads.w r4, 0(r4)
	.loc	1 971 13                        # parallel-rne.mlir:971:13
	stores.w r4, 0(r2)
	.loc	1 968 11                        # parallel-rne.mlir:968:11
	bneq r11, zero, .LBB0_749
	j .LBB0_747
.LBB0_750:                              # %vector.body622
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_748 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 968 11                        # parallel-rne.mlir:968:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	slli r2, r11, 2
	.loc	1 968 11                        # parallel-rne.mlir:968:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	add.s r11, r26, r2
	.loc	1 971 13                        # parallel-rne.mlir:971:13
	add.s r2, r20, r2
	.loc	1 969 19                        # parallel-rne.mlir:969:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 971 13                        # parallel-rne.mlir:971:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 968 11                        # parallel-rne.mlir:968:11
	beq r4, zero, .LBB0_750
	j .LBB0_747
.LBB0_751:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 959 7                         # parallel-rne.mlir:959:7
	mfence { sm }
	.loc	1 976 7                         # parallel-rne.mlir:976:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_725
.LBB0_752:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 993 7                         # parallel-rne.mlir:993:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_731
.LBB0_753:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 993 7                         # parallel-rne.mlir:993:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 16
	zext_int2long r[5:6], r2
	j .LBB0_755
.LBB0_754:                              # %middle.block607
                                        #   in Loop: Header=BB0_755 Depth=2
	.loc	1 1001 9 is_stmt 1              # parallel-rne.mlir:1001:9
	load.d r[7:8], -384(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_758
.LBB0_755:                              # %.preheader153
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_757 Depth 3
                                        #       Child Loop BB0_756 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 1002 11 is_stmt 1             # parallel-rne.mlir:1002:11
	beq r1, zero, .LBB0_757
.LBB0_756:                              # %scalar.ph600
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_755 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 1002 11                       # parallel-rne.mlir:1002:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	add.s r4, r26, r2
	.loc	1 1005 13                       # parallel-rne.mlir:1005:13
	add.s r2, r20, r2
	.loc	1 1002 11                       # parallel-rne.mlir:1002:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	loads.w r4, 0(r4)
	.loc	1 1005 13                       # parallel-rne.mlir:1005:13
	stores.w r4, 0(r2)
	.loc	1 1002 11                       # parallel-rne.mlir:1002:11
	bneq r11, zero, .LBB0_756
	j .LBB0_754
.LBB0_757:                              # %vector.body602
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_755 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 1002 11                       # parallel-rne.mlir:1002:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	slli r2, r11, 2
	.loc	1 1002 11                       # parallel-rne.mlir:1002:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	add.s r11, r26, r2
	.loc	1 1005 13                       # parallel-rne.mlir:1005:13
	add.s r2, r20, r2
	.loc	1 1003 19                       # parallel-rne.mlir:1003:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1005 13                       # parallel-rne.mlir:1005:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 1002 11                       # parallel-rne.mlir:1002:11
	beq r4, zero, .LBB0_757
	j .LBB0_754
.LBB0_758:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 993 7                         # parallel-rne.mlir:993:7
	mfence { sm }
	.loc	1 1010 7                        # parallel-rne.mlir:1010:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_732
.LBB0_759:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_738
.LBB0_760:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -408(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[5:6], r2
	setlt.u r1, r1, r2
	j .LBB0_762
.LBB0_761:                              # %middle.block587
                                        #   in Loop: Header=BB0_762 Depth=2
	.loc	1 1035 9 is_stmt 1              # parallel-rne.mlir:1035:9
	load.d r[7:8], -368(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_765
.LBB0_762:                              # %.preheader151
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_764 Depth 3
                                        #       Child Loop BB0_763 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 1036 11 is_stmt 1             # parallel-rne.mlir:1036:11
	beq r1, zero, .LBB0_764
.LBB0_763:                              # %scalar.ph580
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_762 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	add.s r4, r26, r2
	.loc	1 1039 13                       # parallel-rne.mlir:1039:13
	add.s r2, r20, r2
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	loads.w r4, 0(r4)
	.loc	1 1039 13                       # parallel-rne.mlir:1039:13
	stores.w r4, 0(r2)
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	bneq r11, zero, .LBB0_763
	j .LBB0_761
.LBB0_764:                              # %vector.body582
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_762 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	slli r2, r11, 2
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	add.s r11, r26, r2
	.loc	1 1039 13                       # parallel-rne.mlir:1039:13
	add.s r2, r20, r2
	.loc	1 1037 19                       # parallel-rne.mlir:1037:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1039 13                       # parallel-rne.mlir:1039:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 1036 11                       # parallel-rne.mlir:1036:11
	beq r4, zero, .LBB0_764
	j .LBB0_761
.LBB0_765:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	mfence { sm }
	.loc	1 1044 7                        # parallel-rne.mlir:1044:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_739
.LBB0_766:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1061 7                        # parallel-rne.mlir:1061:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_745
.LBB0_767:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1061 7                        # parallel-rne.mlir:1061:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 48
	zext_int2long r[5:6], r2
	j .LBB0_769
.LBB0_768:                              # %middle.block567
                                        #   in Loop: Header=BB0_769 Depth=2
	.loc	1 1069 9 is_stmt 1              # parallel-rne.mlir:1069:9
	load.d r[7:8], -352(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_772
.LBB0_769:                              # %.preheader149
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_771 Depth 3
                                        #       Child Loop BB0_770 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 1070 11 is_stmt 1             # parallel-rne.mlir:1070:11
	beq r1, zero, .LBB0_771
.LBB0_770:                              # %scalar.ph560
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_769 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.s r4, r26, r2
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	add.s r2, r20, r2
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	loads.w r4, 0(r4)
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	stores.w r4, 0(r2)
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	bneq r11, zero, .LBB0_770
	j .LBB0_768
.LBB0_771:                              # %vector.body562
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_769 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	slli r2, r11, 2
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.s r11, r26, r2
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	add.s r2, r20, r2
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	beq r4, zero, .LBB0_771
	j .LBB0_768
.LBB0_772:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 1061 7                        # parallel-rne.mlir:1061:7
	mfence { sm }
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_779
.LBB0_773:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -408(r30)                 # 4-byte Folded Reload
	addli r1, zero, 32
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r1, r2, r1
	addli r2, zero, 56
	zext_int2long r[5:6], r2
	j .LBB0_775
.LBB0_774:                              # %middle.block557
                                        #   in Loop: Header=BB0_775 Depth=2
	.loc	1 1086 9 is_stmt 1              # parallel-rne.mlir:1086:9
	load.d r[7:8], -344(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[5:6], r[7:8]
	addli.d r[5:6], r[5:6], 1
	beq r2, zero, .LBB0_778
.LBB0_775:                              # %.preheader148
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_777 Depth 3
                                        #       Child Loop BB0_776 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[9:10], zero
	sll.d r[7:8], r[5:6], r2
	.loc	1 1087 11 is_stmt 1             # parallel-rne.mlir:1087:11
	beq r1, zero, .LBB0_777
.LBB0_776:                              # %scalar.ph550
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_775 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	add.ul r[11:12], r[9:10], r[7:8]
	slli r2, r11, 2
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	add.s r4, r26, r2
	.loc	1 1090 13                       # parallel-rne.mlir:1090:13
	add.s r2, r20, r2
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	setlt.ul r11, r[9:10], r[11:12]
	addli.d r[9:10], r[9:10], 1
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	loads.w r4, 0(r4)
	.loc	1 1090 13                       # parallel-rne.mlir:1090:13
	stores.w r4, 0(r2)
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	bneq r11, zero, .LBB0_776
	j .LBB0_774
.LBB0_777:                              # %vector.body552
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_775 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	add.ul r[11:12], r[9:10], r[7:8]
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	slli r2, r11, 2
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	seteq.d r4, r[9:10], r[14:15]
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	add.s r11, r26, r2
	.loc	1 1090 13                       # parallel-rne.mlir:1090:13
	add.s r2, r20, r2
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	loads.w r12, 12(r11)
	loads.w r13, 8(r11)
	loads.w r16, 4(r11)
	loads.w r17, 0(r11)
	loads.w r18, 28(r11)
	loads.w r27, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1090 13                       # parallel-rne.mlir:1090:13
	stores.w r12, 12(r2)
	stores.w r13, 8(r2)
	stores.w r16, 4(r2)
	stores.w r17, 0(r2)
	stores.w r18, 28(r2)
	stores.w r27, 24(r2)
	stores.w r28, 20(r2)
	stores.w r11, 16(r2)
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	beq r4, zero, .LBB0_777
	j .LBB0_774
.LBB0_778:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r10
	lui r16, 524288
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	mfence { sm }
.LBB0_779:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1095 7                        # parallel-rne.mlir:1095:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1096 7                        # parallel-rne.mlir:1096:7
	addli r1, zero, 3
	.loc	1 1095 7                        # parallel-rne.mlir:1095:7
	sync_core
	.loc	1 1096 7                        # parallel-rne.mlir:1096:7
	bneq r10, r1, .LBB0_781
# %bb.780:                              # %.critedge25
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 38
	addli r2, zero, 39
	xsignal r1, 0
	.loc	1 1099 7                        # parallel-rne.mlir:1099:7
	addli r1, zero, 16
	.loc	1 1097 7                        # parallel-rne.mlir:1097:7
	xsignal r2, 0
	.loc	1 1099 7                        # parallel-rne.mlir:1099:7
	xwait r1, 0
	.loc	1 1100 7                        # parallel-rne.mlir:1100:7
	xwait r2, 0
.LBB0_781:                              # %.critedge27
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1102 7                        # parallel-rne.mlir:1102:7
	xfence
	.loc	1 1104 7                        # parallel-rne.mlir:1104:7
	addli r1, zero, 255
	.loc	1 1103 7                        # parallel-rne.mlir:1103:7
	mfence { lm, sm, gm }
	.loc	1 1104 7                        # parallel-rne.mlir:1104:7
	csr_set csr5, r1
	sync_core
	.loc	1 1105 7                        # parallel-rne.mlir:1105:7
	beq r10, zero, .LBB0_849
# %bb.782:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1127 7                        # parallel-rne.mlir:1127:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_870
.LBB0_783:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 1127 7                        # parallel-rne.mlir:1127:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r1
	j .LBB0_785
.LBB0_784:                              # %middle.block537
                                        #   in Loop: Header=BB0_785 Depth=2
	.loc	1 1135 9 is_stmt 1              # parallel-rne.mlir:1135:9
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	addli.d r[17:18], r[4:5], 0
	beq r1, zero, .LBB0_803
.LBB0_785:                              # %.preheader146
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_787 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[17:18], r1
	j .LBB0_787
.LBB0_786:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	.loc	1 1144 13 is_stmt 1             # parallel-rne.mlir:1144:13
	add.s r4, r19, r5
	.loc	1 1136 11                       # parallel-rne.mlir:1136:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1144 13                       # parallel-rne.mlir:1144:13
	stores.w r2, 12(r4)
	.loc	1 1136 11                       # parallel-rne.mlir:1136:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 1144 13                       # parallel-rne.mlir:1144:13
	stores.w r1, 8(r4)
	stores.w r13, 4(r4)
	stores.w r10, 0(r4)
	stores.w r28, 28(r4)
	stores.w r26, 24(r4)
	stores.w r12, 20(r4)
	stores.w r11, 16(r4)
	.loc	1 1136 11                       # parallel-rne.mlir:1136:11
	beq r2, zero, .LBB0_784
.LBB0_787:                              # %vector.body532
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_785 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	loads.w r2, 12(r4)
	loads.w r1, 8(r4)
	loads.w r13, 4(r4)
	loads.w r28, 28(r4)
	loads.w r26, 24(r4)
	loads.w r12, 20(r4)
	loads.w r11, 16(r4)
	.loc	1 1140 19                       # parallel-rne.mlir:1140:19
	and r4, r10, r21
	.loc	1 1141 19                       # parallel-rne.mlir:1141:19
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_789
# %bb.788:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r10, r16
	or r10, r4, r25
.LBB0_789:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_791
# %bb.790:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_791:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_793
# %bb.792:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_793:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_795
# %bb.794:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
.LBB0_795:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	and r4, r11, r21
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_797
# %bb.796:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r11, r16
	or r11, r4, r25
.LBB0_797:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	and r4, r12, r21
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_799
# %bb.798:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_799:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_801
# %bb.800:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_801:                              # %vector.body532
                                        #   in Loop: Header=BB0_787 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	beq r4, zero, .LBB0_786
# %bb.802:                              #   in Loop: Header=BB0_787 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
	j .LBB0_786
.LBB0_803:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1127 7                        # parallel-rne.mlir:1127:7
	mfence { sm }
	.loc	1 1149 7                        # parallel-rne.mlir:1149:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_871
.LBB0_804:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_892
.LBB0_805:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r1
	j .LBB0_807
.LBB0_806:                              # %middle.block517
                                        #   in Loop: Header=BB0_807 Depth=2
	.loc	1 1179 9 is_stmt 1              # parallel-rne.mlir:1179:9
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	addli.d r[17:18], r[4:5], 0
	beq r1, zero, .LBB0_825
.LBB0_807:                              # %.preheader144
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_809 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[17:18], r1
	j .LBB0_809
.LBB0_808:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	.loc	1 1188 13 is_stmt 1             # parallel-rne.mlir:1188:13
	add.s r4, r19, r5
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1188 13                       # parallel-rne.mlir:1188:13
	stores.w r2, 12(r4)
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 1188 13                       # parallel-rne.mlir:1188:13
	stores.w r1, 8(r4)
	stores.w r13, 4(r4)
	stores.w r10, 0(r4)
	stores.w r28, 28(r4)
	stores.w r26, 24(r4)
	stores.w r12, 20(r4)
	stores.w r11, 16(r4)
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	beq r2, zero, .LBB0_806
.LBB0_809:                              # %vector.body512
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_807 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	loads.w r2, 12(r4)
	loads.w r1, 8(r4)
	loads.w r13, 4(r4)
	loads.w r28, 28(r4)
	loads.w r26, 24(r4)
	loads.w r12, 20(r4)
	loads.w r11, 16(r4)
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	and r4, r10, r21
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_811
# %bb.810:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r10, r16
	or r10, r4, r25
.LBB0_811:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_813
# %bb.812:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_813:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_815
# %bb.814:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_815:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_817
# %bb.816:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
.LBB0_817:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	and r4, r11, r21
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_819
# %bb.818:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r11, r16
	or r11, r4, r25
.LBB0_819:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	and r4, r12, r21
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_821
# %bb.820:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_821:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_823
# %bb.822:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_823:                              # %vector.body512
                                        #   in Loop: Header=BB0_809 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r4, zero, .LBB0_808
# %bb.824:                              #   in Loop: Header=BB0_809 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
	j .LBB0_808
.LBB0_825:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	mfence { sm }
	.loc	1 1193 7                        # parallel-rne.mlir:1193:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_893
.LBB0_826:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1215 7                        # parallel-rne.mlir:1215:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_914
.LBB0_827:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 1215 7                        # parallel-rne.mlir:1215:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r1
	j .LBB0_829
.LBB0_828:                              # %middle.block497
                                        #   in Loop: Header=BB0_829 Depth=2
	.loc	1 1223 9 is_stmt 1              # parallel-rne.mlir:1223:9
	load.d r[1:2], -360(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	addli.d r[17:18], r[4:5], 0
	beq r1, zero, .LBB0_847
.LBB0_829:                              # %.preheader142
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_831 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[17:18], r1
	j .LBB0_831
.LBB0_830:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	.loc	1 1232 13 is_stmt 1             # parallel-rne.mlir:1232:13
	add.s r4, r19, r5
	.loc	1 1224 11                       # parallel-rne.mlir:1224:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1232 13                       # parallel-rne.mlir:1232:13
	stores.w r2, 12(r4)
	.loc	1 1224 11                       # parallel-rne.mlir:1224:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 1232 13                       # parallel-rne.mlir:1232:13
	stores.w r1, 8(r4)
	stores.w r13, 4(r4)
	stores.w r10, 0(r4)
	stores.w r28, 28(r4)
	stores.w r26, 24(r4)
	stores.w r12, 20(r4)
	stores.w r11, 16(r4)
	.loc	1 1224 11                       # parallel-rne.mlir:1224:11
	beq r2, zero, .LBB0_828
.LBB0_831:                              # %vector.body492
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_829 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1225 19                       # parallel-rne.mlir:1225:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	loads.w r2, 12(r4)
	loads.w r1, 8(r4)
	loads.w r13, 4(r4)
	loads.w r28, 28(r4)
	loads.w r26, 24(r4)
	loads.w r12, 20(r4)
	loads.w r11, 16(r4)
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	and r4, r10, r21
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_833
# %bb.832:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r10, r16
	or r10, r4, r25
.LBB0_833:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_835
# %bb.834:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_835:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_837
# %bb.836:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_837:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_839
# %bb.838:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
.LBB0_839:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	and r4, r11, r21
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_841
# %bb.840:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r11, r16
	or r11, r4, r25
.LBB0_841:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	and r4, r12, r21
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_843
# %bb.842:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_843:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_845
# %bb.844:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_845:                              # %vector.body492
                                        #   in Loop: Header=BB0_831 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r4, zero, .LBB0_830
# %bb.846:                              #   in Loop: Header=BB0_831 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
	j .LBB0_830
.LBB0_847:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1215 7                        # parallel-rne.mlir:1215:7
	mfence { sm }
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	addli r1, zero, 6
	beq r10, r1, .LBB0_915
.LBB0_848:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_936
	j .LBB0_957
.LBB0_849:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1105 7                        # parallel-rne.mlir:1105:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	j .LBB0_851
.LBB0_850:                              # %middle.block547
                                        #   in Loop: Header=BB0_851 Depth=2
	.loc	1 1113 9                        # parallel-rne.mlir:1113:9
	load.d r[1:2], -400(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	beq r1, zero, .LBB0_869
.LBB0_851:                              # %.preheader147
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_853 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	load.d r[10:11], -408(r30)              # 8-byte Folded Reload
	addli.d r[17:18], r[4:5], 0
	sll.d r[8:9], r[4:5], r1
	j .LBB0_853
.LBB0_852:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	.loc	1 1114 11 is_stmt 1             # parallel-rne.mlir:1114:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1122 13                       # parallel-rne.mlir:1122:13
	add.s r4, r19, r5
	.loc	1 1114 11                       # parallel-rne.mlir:1114:11
	setneq.d r5, r[10:11], r[14:15]
	.loc	1 1122 13                       # parallel-rne.mlir:1122:13
	stores.w r13, 12(r4)
	stores.w r7, 8(r4)
	stores.w r6, 4(r4)
	stores.w r12, 0(r4)
	stores.w r2, 28(r4)
	stores.w r1, 24(r4)
	stores.w r28, 20(r4)
	stores.w r26, 16(r4)
	.loc	1 1114 11                       # parallel-rne.mlir:1114:11
	beq r5, zero, .LBB0_850
.LBB0_853:                              # %vector.body542
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_851 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1115 19                       # parallel-rne.mlir:1115:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r12, 0(r4)
	loads.w r13, 12(r4)
	loads.w r7, 8(r4)
	loads.w r6, 4(r4)
	loads.w r2, 28(r4)
	loads.w r1, 24(r4)
	loads.w r28, 20(r4)
	loads.w r26, 16(r4)
	.loc	1 1118 19                       # parallel-rne.mlir:1118:19
	and r4, r12, r21
	.loc	1 1119 19                       # parallel-rne.mlir:1119:19
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_855
# %bb.854:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_855:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	and r4, r6, r21
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_857
# %bb.856:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r6, r16
	or r6, r4, r25
.LBB0_857:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	and r4, r7, r21
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_859
# %bb.858:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r7, r16
	or r7, r4, r25
.LBB0_859:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_861
# %bb.860:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_861:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_863
# %bb.862:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_863:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_865
# %bb.864:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
.LBB0_865:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_867
# %bb.866:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_867:                              # %vector.body542
                                        #   in Loop: Header=BB0_853 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	beq r4, zero, .LBB0_852
# %bb.868:                              #   in Loop: Header=BB0_853 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
	j .LBB0_852
.LBB0_869:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1105 7                        # parallel-rne.mlir:1105:7
	mfence { sm }
	.loc	1 1127 7                        # parallel-rne.mlir:1127:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_783
.LBB0_870:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1149 7                        # parallel-rne.mlir:1149:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_804
.LBB0_871:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 1149 7                        # parallel-rne.mlir:1149:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r1
	j .LBB0_873
.LBB0_872:                              # %middle.block527
                                        #   in Loop: Header=BB0_873 Depth=2
	.loc	1 1157 9 is_stmt 1              # parallel-rne.mlir:1157:9
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	addli.d r[17:18], r[4:5], 0
	beq r1, zero, .LBB0_891
.LBB0_873:                              # %.preheader145
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_875 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[17:18], r1
	j .LBB0_875
.LBB0_874:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 1166 13 is_stmt 1             # parallel-rne.mlir:1166:13
	add.s r4, r19, r5
	.loc	1 1158 11                       # parallel-rne.mlir:1158:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1166 13                       # parallel-rne.mlir:1166:13
	stores.w r2, 12(r4)
	.loc	1 1158 11                       # parallel-rne.mlir:1158:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 1166 13                       # parallel-rne.mlir:1166:13
	stores.w r1, 8(r4)
	stores.w r13, 4(r4)
	stores.w r10, 0(r4)
	stores.w r28, 28(r4)
	stores.w r26, 24(r4)
	stores.w r12, 20(r4)
	stores.w r11, 16(r4)
	.loc	1 1158 11                       # parallel-rne.mlir:1158:11
	beq r2, zero, .LBB0_872
.LBB0_875:                              # %vector.body522
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_873 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1159 19                       # parallel-rne.mlir:1159:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	loads.w r2, 12(r4)
	loads.w r1, 8(r4)
	loads.w r13, 4(r4)
	loads.w r28, 28(r4)
	loads.w r26, 24(r4)
	loads.w r12, 20(r4)
	loads.w r11, 16(r4)
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	and r4, r10, r21
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_877
# %bb.876:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r10, r16
	or r10, r4, r25
.LBB0_877:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_879
# %bb.878:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_879:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_881
# %bb.880:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_881:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_883
# %bb.882:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
.LBB0_883:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	and r4, r11, r21
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_885
# %bb.884:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r11, r16
	or r11, r4, r25
.LBB0_885:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	and r4, r12, r21
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_887
# %bb.886:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_887:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_889
# %bb.888:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_889:                              # %vector.body522
                                        #   in Loop: Header=BB0_875 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	beq r4, zero, .LBB0_874
# %bb.890:                              #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
	j .LBB0_874
.LBB0_891:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1149 7                        # parallel-rne.mlir:1149:7
	mfence { sm }
	.loc	1 1171 7                        # parallel-rne.mlir:1171:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_805
.LBB0_892:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1193 7                        # parallel-rne.mlir:1193:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_826
.LBB0_893:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 1193 7                        # parallel-rne.mlir:1193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r1
	j .LBB0_895
.LBB0_894:                              # %middle.block507
                                        #   in Loop: Header=BB0_895 Depth=2
	.loc	1 1201 9 is_stmt 1              # parallel-rne.mlir:1201:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	addli.d r[17:18], r[4:5], 0
	beq r1, zero, .LBB0_913
.LBB0_895:                              # %.preheader143
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_897 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[17:18], r1
	j .LBB0_897
.LBB0_896:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	.loc	1 1210 13 is_stmt 1             # parallel-rne.mlir:1210:13
	add.s r4, r19, r5
	.loc	1 1202 11                       # parallel-rne.mlir:1202:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1210 13                       # parallel-rne.mlir:1210:13
	stores.w r2, 12(r4)
	.loc	1 1202 11                       # parallel-rne.mlir:1202:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 1210 13                       # parallel-rne.mlir:1210:13
	stores.w r1, 8(r4)
	stores.w r13, 4(r4)
	stores.w r10, 0(r4)
	stores.w r28, 28(r4)
	stores.w r26, 24(r4)
	stores.w r12, 20(r4)
	stores.w r11, 16(r4)
	.loc	1 1202 11                       # parallel-rne.mlir:1202:11
	beq r2, zero, .LBB0_894
.LBB0_897:                              # %vector.body502
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_895 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	loads.w r2, 12(r4)
	loads.w r1, 8(r4)
	loads.w r13, 4(r4)
	loads.w r28, 28(r4)
	loads.w r26, 24(r4)
	loads.w r12, 20(r4)
	loads.w r11, 16(r4)
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	and r4, r10, r21
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_899
# %bb.898:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r10, r16
	or r10, r4, r25
.LBB0_899:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_901
# %bb.900:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_901:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_903
# %bb.902:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_903:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_905
# %bb.904:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
.LBB0_905:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	and r4, r11, r21
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_907
# %bb.906:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r11, r16
	or r11, r4, r25
.LBB0_907:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	and r4, r12, r21
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_909
# %bb.908:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_909:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_911
# %bb.910:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_911:                              # %vector.body502
                                        #   in Loop: Header=BB0_897 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	beq r4, zero, .LBB0_896
# %bb.912:                              #   in Loop: Header=BB0_897 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
	j .LBB0_896
.LBB0_913:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1193 7                        # parallel-rne.mlir:1193:7
	mfence { sm }
	.loc	1 1215 7                        # parallel-rne.mlir:1215:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_827
.LBB0_914:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_848
.LBB0_915:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r1
	j .LBB0_917
.LBB0_916:                              # %middle.block487
                                        #   in Loop: Header=BB0_917 Depth=2
	.loc	1 1245 9 is_stmt 1              # parallel-rne.mlir:1245:9
	load.d r[1:2], -352(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	addli.d r[17:18], r[4:5], 0
	beq r1, zero, .LBB0_935
.LBB0_917:                              # %.preheader141
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_919 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[17:18], r1
	j .LBB0_919
.LBB0_918:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	.loc	1 1254 13 is_stmt 1             # parallel-rne.mlir:1254:13
	add.s r4, r19, r5
	.loc	1 1246 11                       # parallel-rne.mlir:1246:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1254 13                       # parallel-rne.mlir:1254:13
	stores.w r2, 12(r4)
	.loc	1 1246 11                       # parallel-rne.mlir:1246:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 1254 13                       # parallel-rne.mlir:1254:13
	stores.w r1, 8(r4)
	stores.w r13, 4(r4)
	stores.w r10, 0(r4)
	stores.w r28, 28(r4)
	stores.w r26, 24(r4)
	stores.w r12, 20(r4)
	stores.w r11, 16(r4)
	.loc	1 1246 11                       # parallel-rne.mlir:1246:11
	beq r2, zero, .LBB0_916
.LBB0_919:                              # %vector.body482
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_917 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	loads.w r2, 12(r4)
	loads.w r1, 8(r4)
	loads.w r13, 4(r4)
	loads.w r28, 28(r4)
	loads.w r26, 24(r4)
	loads.w r12, 20(r4)
	loads.w r11, 16(r4)
	.loc	1 1250 19                       # parallel-rne.mlir:1250:19
	and r4, r10, r21
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_921
# %bb.920:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r10, r16
	or r10, r4, r25
.LBB0_921:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_923
# %bb.922:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_923:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_925
# %bb.924:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_925:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_927
# %bb.926:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
.LBB0_927:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	and r4, r11, r21
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_929
# %bb.928:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r11, r16
	or r11, r4, r25
.LBB0_929:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	and r4, r12, r21
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_931
# %bb.930:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_931:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_933
# %bb.932:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_933:                              # %vector.body482
                                        #   in Loop: Header=BB0_919 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r4, zero, .LBB0_918
# %bb.934:                              #   in Loop: Header=BB0_919 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
	j .LBB0_918
.LBB0_935:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	mfence { sm }
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_957
.LBB0_936:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r1
	j .LBB0_938
.LBB0_937:                              # %middle.block477
                                        #   in Loop: Header=BB0_938 Depth=2
	.loc	1 1267 9 is_stmt 1              # parallel-rne.mlir:1267:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	addli.d r[4:5], r[17:18], 1
	setlt.ul r1, r[17:18], r[1:2]
	addli.d r[17:18], r[4:5], 0
	beq r1, zero, .LBB0_956
.LBB0_938:                              # %.preheader140
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_940 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	zext_int2long r[8:9], zero
	sll.d r[6:7], r[17:18], r1
	j .LBB0_940
.LBB0_939:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	.loc	1 1276 13 is_stmt 1             # parallel-rne.mlir:1276:13
	add.s r4, r19, r5
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 1276 13                       # parallel-rne.mlir:1276:13
	stores.w r2, 12(r4)
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	setneq.d r2, r[8:9], r[14:15]
	.loc	1 1276 13                       # parallel-rne.mlir:1276:13
	stores.w r1, 8(r4)
	stores.w r13, 4(r4)
	stores.w r10, 0(r4)
	stores.w r28, 28(r4)
	stores.w r26, 24(r4)
	stores.w r12, 20(r4)
	stores.w r11, 16(r4)
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	beq r2, zero, .LBB0_937
.LBB0_940:                              # %vector.body472
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_938 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	add.ul r[1:2], r[8:9], r[6:7]
	slli r5, r1, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	loads.w r2, 12(r4)
	loads.w r1, 8(r4)
	loads.w r13, 4(r4)
	loads.w r28, 28(r4)
	loads.w r26, 24(r4)
	loads.w r12, 20(r4)
	loads.w r11, 16(r4)
	.loc	1 1272 19                       # parallel-rne.mlir:1272:19
	and r4, r10, r21
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_942
# %bb.941:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r10, r16
	or r10, r4, r25
.LBB0_942:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	and r4, r13, r21
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_944
# %bb.943:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r13, r16
	or r13, r4, r25
.LBB0_944:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	and r4, r1, r21
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_946
# %bb.945:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r1, r1, r16
	or r1, r1, r25
.LBB0_946:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	and r4, r2, r21
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_948
# %bb.947:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r16
	or r2, r2, r25
.LBB0_948:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	and r4, r11, r21
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_950
# %bb.949:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r11, r16
	or r11, r4, r25
.LBB0_950:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	and r4, r12, r21
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_952
# %bb.951:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r12, r16
	or r12, r4, r25
.LBB0_952:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	and r4, r26, r21
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_954
# %bb.953:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r26, r16
	or r26, r4, r25
.LBB0_954:                              # %vector.body472
                                        #   in Loop: Header=BB0_940 Depth=3
	and r4, r28, r21
	setlt.u r4, r25, r4
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	beq r4, zero, .LBB0_939
# %bb.955:                              #   in Loop: Header=BB0_940 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r28, r16
	or r28, r4, r25
	j .LBB0_939
.LBB0_956:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	mfence { sm }
.LBB0_957:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1281 7                        # parallel-rne.mlir:1281:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1282 7                        # parallel-rne.mlir:1282:7
	addli r1, zero, 3
	.loc	1 1281 7                        # parallel-rne.mlir:1281:7
	sync_core
	.loc	1 1282 7                        # parallel-rne.mlir:1282:7
	bneq r10, r1, .LBB0_959
# %bb.958:                              # %.critedge31
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	addli r4, zero, 40
	xsignal r1, 0
	.loc	1 1283 7                        # parallel-rne.mlir:1283:7
	xsignal r4, 0
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	loadli.w r1,  -40(r30)
	addli r2, r1, 1
	storeli.w r2, -40(r30)
	.loc	1 1288 7                        # parallel-rne.mlir:1288:7
	addli r2, zero, 18
	xwait r2, 0
	.loc	1 1290 7                        # parallel-rne.mlir:1290:7
	addli r2, zero, 44
	.loc	1 1289 7                        # parallel-rne.mlir:1289:7
	xwait r4, 0
	.loc	1 1290 7                        # parallel-rne.mlir:1290:7
	xwait r2, 0
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	j .LBB0_962
.LBB0_959:                              # %.critedge29
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	.loc	1 1284 7 is_stmt 1              # parallel-rne.mlir:1284:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_961
# %bb.960:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 17
	addli r4, zero, 2
	addli r2, zero, 3
	xwait r1, 0
	lock zero, r4
	addli r1, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r1, zero, 2
	addli r1, zero, 4
	ew_cfg r1, zero, zero, 3
	ew_cfg r1, r1, zero, 19
	ew_cfg r2, zero, zero, 10
	addli r2, zero, 1
	loadli.w r5,  -520(r30)                 # 4-byte Folded Reload
	ew_cfg r4, r2, r5, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r1, r2, 14
	addli r1, zero, 18
	ew_cfg zero, zero, zero, 15
	sslut r19, r19, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r1, 0
.LBB0_961:                              # %.thread118
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	loadli.w r1,  -40(r30)
	addli r2, r1, 1
	storeli.w r2, -40(r30)
.LBB0_962:                              # %.critedge32
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 4
	.loc	1 1292 7                        # parallel-rne.mlir:1292:7
	xfence
	.loc	1 1293 7                        # parallel-rne.mlir:1293:7
	mfence { lm, sm, gm }
	.loc	1 1286 13                       # parallel-rne.mlir:1286:13
	mod.s r1, r1, r2
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	slli r1, r1, 15
	add.s r26, r1, r2
	.loc	1 1294 7                        # parallel-rne.mlir:1294:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	beq r10, zero, .LBB0_1075
# %bb.963:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1321 7                        # parallel-rne.mlir:1321:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_1111
.LBB0_964:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 1321 7                        # parallel-rne.mlir:1321:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_966
.LBB0_965:                              # %middle.block453
                                        #   in Loop: Header=BB0_966 Depth=2
	.loc	1 1329 9 is_stmt 1              # parallel-rne.mlir:1329:9
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_999
.LBB0_966:                              # %.preheader138
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_976 Depth 3
                                        #       Child Loop BB0_970 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1330 11 is_stmt 1             # parallel-rne.mlir:1330:11
	bneq r26, r20, .LBB0_973
# %bb.967:                              # %scalar.ph444.preheader
                                        #   in Loop: Header=BB0_966 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_970
.LBB0_968:                              # %scalar.ph444
                                        #   in Loop: Header=BB0_970 Depth=3
	addli r6, r7, 0
.LBB0_969:                              # %scalar.ph444
                                        #   in Loop: Header=BB0_970 Depth=3
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1342 13 is_stmt 1             # parallel-rne.mlir:1342:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_965
.LBB0_970:                              # %scalar.ph444
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_966 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1331 19                       # parallel-rne.mlir:1331:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1332 19                       # parallel-rne.mlir:1332:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1337 19                       # parallel-rne.mlir:1337:19
	and r4, r10, r3
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r4, zero, .LBB0_972
# %bb.971:                              # %scalar.ph444
                                        #   in Loop: Header=BB0_970 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	beq r4, r24, .LBB0_969
	j .LBB0_968
.LBB0_972:                              #   in Loop: Header=BB0_970 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	beq r4, r24, .LBB0_969
	j .LBB0_968
.LBB0_973:                              # %vector.body446.preheader
                                        #   in Loop: Header=BB0_966 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_976
.LBB0_974:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r12, 28(r12)
.LBB0_975:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 1330 11 is_stmt 1             # parallel-rne.mlir:1330:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1342 13                       # parallel-rne.mlir:1342:13
	add.s r1, r26, r1
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1342 13                       # parallel-rne.mlir:1342:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	bneq r4, zero, .LBB0_965
.LBB0_976:                              # %vector.body446
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_966 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1331 19                       # parallel-rne.mlir:1331:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1332 19                       # parallel-rne.mlir:1332:19
	add.s r12, r19, r1
	.loc	1 1331 19                       # parallel-rne.mlir:1331:19
	loads.w r2, 0(r28)
	.loc	1 1335 19                       # parallel-rne.mlir:1335:19
	and r4, r2, r24
	.loc	1 1337 19                       # parallel-rne.mlir:1337:19
	and r5, r2, r3
	.loc	1 1336 19                       # parallel-rne.mlir:1336:19
	seteq r4, r4, r24
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	setneq r5, r5, zero
	.loc	1 1339 19                       # parallel-rne.mlir:1339:19
	and r4, r4, r5
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r4, zero, .LBB0_978
# %bb.977:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_979
.LBB0_978:                              #   in Loop: Header=BB0_976 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_979:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r5, zero, .LBB0_981
# %bb.980:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_982
.LBB0_981:                              #   in Loop: Header=BB0_976 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_982:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r5, zero, .LBB0_984
# %bb.983:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_985
.LBB0_984:                              #   in Loop: Header=BB0_976 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_985:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r7, zero, .LBB0_987
# %bb.986:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_988
.LBB0_987:                              #   in Loop: Header=BB0_976 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_988:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r13, zero, .LBB0_990
# %bb.989:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_991
.LBB0_990:                              #   in Loop: Header=BB0_976 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_991:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r16, zero, .LBB0_993
# %bb.992:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_994
.LBB0_993:                              #   in Loop: Header=BB0_976 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_994:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r16, zero, .LBB0_996
# %bb.995:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_997
.LBB0_996:                              #   in Loop: Header=BB0_976 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_997:                              # %vector.body446
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	beq r16, zero, .LBB0_974
# %bb.998:                              #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	j .LBB0_975
.LBB0_999:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1321 7                        # parallel-rne.mlir:1321:7
	mfence { sm }
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1112
.LBB0_1000:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1373 7                        # parallel-rne.mlir:1373:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_1148
.LBB0_1001:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 24
	.loc	1 1373 7                        # parallel-rne.mlir:1373:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_1003
.LBB0_1002:                             # %middle.block425
                                        #   in Loop: Header=BB0_1003 Depth=2
	.loc	1 1381 9 is_stmt 1              # parallel-rne.mlir:1381:9
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1036
.LBB0_1003:                             # %.preheader136
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1013 Depth 3
                                        #       Child Loop BB0_1007 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1382 11 is_stmt 1             # parallel-rne.mlir:1382:11
	bneq r26, r20, .LBB0_1010
# %bb.1004:                             # %scalar.ph416.preheader
                                        #   in Loop: Header=BB0_1003 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1007
.LBB0_1005:                             # %scalar.ph416
                                        #   in Loop: Header=BB0_1007 Depth=3
	addli r6, r7, 0
.LBB0_1006:                             # %scalar.ph416
                                        #   in Loop: Header=BB0_1007 Depth=3
	.loc	1 1382 11                       # parallel-rne.mlir:1382:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1394 13 is_stmt 1             # parallel-rne.mlir:1394:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1382 11                       # parallel-rne.mlir:1382:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1002
.LBB0_1007:                             # %scalar.ph416
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1003 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1383 19                       # parallel-rne.mlir:1383:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1384 19                       # parallel-rne.mlir:1384:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1389 19                       # parallel-rne.mlir:1389:19
	and r4, r10, r3
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r4, zero, .LBB0_1009
# %bb.1008:                             # %scalar.ph416
                                        #   in Loop: Header=BB0_1007 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	beq r4, r24, .LBB0_1006
	j .LBB0_1005
.LBB0_1009:                             #   in Loop: Header=BB0_1007 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	beq r4, r24, .LBB0_1006
	j .LBB0_1005
.LBB0_1010:                             # %vector.body418.preheader
                                        #   in Loop: Header=BB0_1003 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_1013
.LBB0_1011:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r12, 28(r12)
.LBB0_1012:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 1382 11 is_stmt 1             # parallel-rne.mlir:1382:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1394 13                       # parallel-rne.mlir:1394:13
	add.s r1, r26, r1
	.loc	1 1382 11                       # parallel-rne.mlir:1382:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1394 13                       # parallel-rne.mlir:1394:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1382 11                       # parallel-rne.mlir:1382:11
	bneq r4, zero, .LBB0_1002
.LBB0_1013:                             # %vector.body418
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1003 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1383 19                       # parallel-rne.mlir:1383:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1384 19                       # parallel-rne.mlir:1384:19
	add.s r12, r19, r1
	.loc	1 1383 19                       # parallel-rne.mlir:1383:19
	loads.w r2, 0(r28)
	.loc	1 1387 19                       # parallel-rne.mlir:1387:19
	and r4, r2, r24
	.loc	1 1389 19                       # parallel-rne.mlir:1389:19
	and r5, r2, r3
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	seteq r4, r4, r24
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	setneq r5, r5, zero
	.loc	1 1391 19                       # parallel-rne.mlir:1391:19
	and r4, r4, r5
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r4, zero, .LBB0_1015
# %bb.1014:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_1016
.LBB0_1015:                             #   in Loop: Header=BB0_1013 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_1016:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r5, zero, .LBB0_1018
# %bb.1017:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_1019
.LBB0_1018:                             #   in Loop: Header=BB0_1013 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_1019:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r5, zero, .LBB0_1021
# %bb.1020:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_1022
.LBB0_1021:                             #   in Loop: Header=BB0_1013 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_1022:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r7, zero, .LBB0_1024
# %bb.1023:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_1025
.LBB0_1024:                             #   in Loop: Header=BB0_1013 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_1025:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r13, zero, .LBB0_1027
# %bb.1026:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_1028
.LBB0_1027:                             #   in Loop: Header=BB0_1013 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_1028:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r16, zero, .LBB0_1030
# %bb.1029:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_1031
.LBB0_1030:                             #   in Loop: Header=BB0_1013 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_1031:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	bneq r16, zero, .LBB0_1033
# %bb.1032:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_1034
.LBB0_1033:                             #   in Loop: Header=BB0_1013 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_1034:                             # %vector.body418
                                        #   in Loop: Header=BB0_1013 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	beq r16, zero, .LBB0_1011
# %bb.1035:                             #   in Loop: Header=BB0_1013 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1392 19                       # parallel-rne.mlir:1392:19
	j .LBB0_1012
.LBB0_1036:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1373 7                        # parallel-rne.mlir:1373:7
	mfence { sm }
	.loc	1 1399 7                        # parallel-rne.mlir:1399:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1149
.LBB0_1037:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1425 7                        # parallel-rne.mlir:1425:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_1185
.LBB0_1038:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 1425 7                        # parallel-rne.mlir:1425:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_1040
.LBB0_1039:                             # %middle.block397
                                        #   in Loop: Header=BB0_1040 Depth=2
	.loc	1 1433 9 is_stmt 1              # parallel-rne.mlir:1433:9
	load.d r[1:2], -360(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1073
.LBB0_1040:                             # %.preheader134
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1050 Depth 3
                                        #       Child Loop BB0_1044 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1434 11 is_stmt 1             # parallel-rne.mlir:1434:11
	bneq r26, r20, .LBB0_1047
# %bb.1041:                             # %scalar.ph388.preheader
                                        #   in Loop: Header=BB0_1040 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1044
.LBB0_1042:                             # %scalar.ph388
                                        #   in Loop: Header=BB0_1044 Depth=3
	addli r6, r7, 0
.LBB0_1043:                             # %scalar.ph388
                                        #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 1434 11                       # parallel-rne.mlir:1434:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1446 13 is_stmt 1             # parallel-rne.mlir:1446:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1434 11                       # parallel-rne.mlir:1434:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1039
.LBB0_1044:                             # %scalar.ph388
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1040 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1436 19                       # parallel-rne.mlir:1436:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1441 19                       # parallel-rne.mlir:1441:19
	and r4, r10, r3
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r4, zero, .LBB0_1046
# %bb.1045:                             # %scalar.ph388
                                        #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r4, r24, .LBB0_1043
	j .LBB0_1042
.LBB0_1046:                             #   in Loop: Header=BB0_1044 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r4, r24, .LBB0_1043
	j .LBB0_1042
.LBB0_1047:                             # %vector.body390.preheader
                                        #   in Loop: Header=BB0_1040 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_1050
.LBB0_1048:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r12, 28(r12)
.LBB0_1049:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 1434 11 is_stmt 1             # parallel-rne.mlir:1434:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1446 13                       # parallel-rne.mlir:1446:13
	add.s r1, r26, r1
	.loc	1 1434 11                       # parallel-rne.mlir:1434:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1446 13                       # parallel-rne.mlir:1446:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1434 11                       # parallel-rne.mlir:1434:11
	bneq r4, zero, .LBB0_1039
.LBB0_1050:                             # %vector.body390
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1040 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1436 19                       # parallel-rne.mlir:1436:19
	add.s r12, r19, r1
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	loads.w r2, 0(r28)
	.loc	1 1439 19                       # parallel-rne.mlir:1439:19
	and r4, r2, r24
	.loc	1 1441 19                       # parallel-rne.mlir:1441:19
	and r5, r2, r3
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	seteq r4, r4, r24
	.loc	1 1442 19                       # parallel-rne.mlir:1442:19
	setneq r5, r5, zero
	.loc	1 1443 19                       # parallel-rne.mlir:1443:19
	and r4, r4, r5
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r4, zero, .LBB0_1052
# %bb.1051:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_1053
.LBB0_1052:                             #   in Loop: Header=BB0_1050 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_1053:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r5, zero, .LBB0_1055
# %bb.1054:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_1056
.LBB0_1055:                             #   in Loop: Header=BB0_1050 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_1056:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r5, zero, .LBB0_1058
# %bb.1057:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_1059
.LBB0_1058:                             #   in Loop: Header=BB0_1050 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_1059:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r7, zero, .LBB0_1061
# %bb.1060:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_1062
.LBB0_1061:                             #   in Loop: Header=BB0_1050 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_1062:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r13, zero, .LBB0_1064
# %bb.1063:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_1065
.LBB0_1064:                             #   in Loop: Header=BB0_1050 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_1065:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r16, zero, .LBB0_1067
# %bb.1066:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_1068
.LBB0_1067:                             #   in Loop: Header=BB0_1050 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_1068:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	bneq r16, zero, .LBB0_1070
# %bb.1069:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_1071
.LBB0_1070:                             #   in Loop: Header=BB0_1050 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_1071:                             # %vector.body390
                                        #   in Loop: Header=BB0_1050 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	beq r16, zero, .LBB0_1048
# %bb.1072:                             #   in Loop: Header=BB0_1050 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1444 19                       # parallel-rne.mlir:1444:19
	j .LBB0_1049
.LBB0_1073:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1425 7                        # parallel-rne.mlir:1425:7
	mfence { sm }
	.loc	1 1451 7                        # parallel-rne.mlir:1451:7
	addli r1, zero, 6
	beq r10, r1, .LBB0_1186
.LBB0_1074:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1222
	j .LBB0_1258
.LBB0_1075:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_1077
.LBB0_1076:                             # %middle.block467
                                        #   in Loop: Header=BB0_1077 Depth=2
	.loc	1 1303 9                        # parallel-rne.mlir:1303:9
	load.d r[1:2], -400(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1110
.LBB0_1077:                             # %.preheader139
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1087 Depth 3
                                        #       Child Loop BB0_1081 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1304 11 is_stmt 1             # parallel-rne.mlir:1304:11
	bneq r26, r20, .LBB0_1084
# %bb.1078:                             # %scalar.ph458.preheader
                                        #   in Loop: Header=BB0_1077 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1081
.LBB0_1079:                             # %scalar.ph458
                                        #   in Loop: Header=BB0_1081 Depth=3
	addli r6, r7, 0
.LBB0_1080:                             # %scalar.ph458
                                        #   in Loop: Header=BB0_1081 Depth=3
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1316 13 is_stmt 1             # parallel-rne.mlir:1316:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1076
.LBB0_1081:                             # %scalar.ph458
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1077 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	and r4, r10, r3
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r4, zero, .LBB0_1083
# %bb.1082:                             # %scalar.ph458
                                        #   in Loop: Header=BB0_1081 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	beq r4, r24, .LBB0_1080
	j .LBB0_1079
.LBB0_1083:                             #   in Loop: Header=BB0_1081 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	beq r4, r24, .LBB0_1080
	j .LBB0_1079
.LBB0_1084:                             # %vector.body460.preheader
                                        #   in Loop: Header=BB0_1077 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_1087
.LBB0_1085:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r12, 28(r12)
.LBB0_1086:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 1304 11 is_stmt 1             # parallel-rne.mlir:1304:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1316 13                       # parallel-rne.mlir:1316:13
	add.s r1, r26, r1
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1316 13                       # parallel-rne.mlir:1316:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	bneq r4, zero, .LBB0_1076
.LBB0_1087:                             # %vector.body460
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1077 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.s r12, r19, r1
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	loads.w r2, 0(r28)
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	and r4, r2, r24
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	and r5, r2, r3
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	seteq r4, r4, r24
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	setneq r5, r5, zero
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	and r4, r4, r5
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r4, zero, .LBB0_1089
# %bb.1088:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_1090
.LBB0_1089:                             #   in Loop: Header=BB0_1087 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_1090:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r5, zero, .LBB0_1092
# %bb.1091:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_1093
.LBB0_1092:                             #   in Loop: Header=BB0_1087 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_1093:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r5, zero, .LBB0_1095
# %bb.1094:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_1096
.LBB0_1095:                             #   in Loop: Header=BB0_1087 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_1096:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r7, zero, .LBB0_1098
# %bb.1097:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_1099
.LBB0_1098:                             #   in Loop: Header=BB0_1087 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_1099:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r13, zero, .LBB0_1101
# %bb.1100:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_1102
.LBB0_1101:                             #   in Loop: Header=BB0_1087 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_1102:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r16, zero, .LBB0_1104
# %bb.1103:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_1105
.LBB0_1104:                             #   in Loop: Header=BB0_1087 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_1105:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	bneq r16, zero, .LBB0_1107
# %bb.1106:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_1108
.LBB0_1107:                             #   in Loop: Header=BB0_1087 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_1108:                             # %vector.body460
                                        #   in Loop: Header=BB0_1087 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	beq r16, zero, .LBB0_1085
# %bb.1109:                             #   in Loop: Header=BB0_1087 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	j .LBB0_1086
.LBB0_1110:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	mfence { sm }
	.loc	1 1321 7                        # parallel-rne.mlir:1321:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_964
.LBB0_1111:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1000
.LBB0_1112:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_1114
.LBB0_1113:                             # %middle.block439
                                        #   in Loop: Header=BB0_1114 Depth=2
	.loc	1 1355 9 is_stmt 1              # parallel-rne.mlir:1355:9
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1147
.LBB0_1114:                             # %.preheader137
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1124 Depth 3
                                        #       Child Loop BB0_1118 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1356 11 is_stmt 1             # parallel-rne.mlir:1356:11
	bneq r26, r20, .LBB0_1121
# %bb.1115:                             # %scalar.ph430.preheader
                                        #   in Loop: Header=BB0_1114 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1118
.LBB0_1116:                             # %scalar.ph430
                                        #   in Loop: Header=BB0_1118 Depth=3
	addli r6, r7, 0
.LBB0_1117:                             # %scalar.ph430
                                        #   in Loop: Header=BB0_1118 Depth=3
	.loc	1 1356 11                       # parallel-rne.mlir:1356:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1368 13 is_stmt 1             # parallel-rne.mlir:1368:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1356 11                       # parallel-rne.mlir:1356:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1113
.LBB0_1118:                             # %scalar.ph430
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1357 19                       # parallel-rne.mlir:1357:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1358 19                       # parallel-rne.mlir:1358:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	and r4, r10, r3
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r4, zero, .LBB0_1120
# %bb.1119:                             # %scalar.ph430
                                        #   in Loop: Header=BB0_1118 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	beq r4, r24, .LBB0_1117
	j .LBB0_1116
.LBB0_1120:                             #   in Loop: Header=BB0_1118 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	beq r4, r24, .LBB0_1117
	j .LBB0_1116
.LBB0_1121:                             # %vector.body432.preheader
                                        #   in Loop: Header=BB0_1114 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_1124
.LBB0_1122:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r12, 28(r12)
.LBB0_1123:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 1356 11 is_stmt 1             # parallel-rne.mlir:1356:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1368 13                       # parallel-rne.mlir:1368:13
	add.s r1, r26, r1
	.loc	1 1356 11                       # parallel-rne.mlir:1356:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1368 13                       # parallel-rne.mlir:1368:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1356 11                       # parallel-rne.mlir:1356:11
	bneq r4, zero, .LBB0_1113
.LBB0_1124:                             # %vector.body432
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1114 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1357 19                       # parallel-rne.mlir:1357:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1358 19                       # parallel-rne.mlir:1358:19
	add.s r12, r19, r1
	.loc	1 1357 19                       # parallel-rne.mlir:1357:19
	loads.w r2, 0(r28)
	.loc	1 1361 19                       # parallel-rne.mlir:1361:19
	and r4, r2, r24
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	and r5, r2, r3
	.loc	1 1362 19                       # parallel-rne.mlir:1362:19
	seteq r4, r4, r24
	.loc	1 1364 19                       # parallel-rne.mlir:1364:19
	setneq r5, r5, zero
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	and r4, r4, r5
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r4, zero, .LBB0_1126
# %bb.1125:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_1127
.LBB0_1126:                             #   in Loop: Header=BB0_1124 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_1127:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r5, zero, .LBB0_1129
# %bb.1128:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_1130
.LBB0_1129:                             #   in Loop: Header=BB0_1124 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_1130:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r5, zero, .LBB0_1132
# %bb.1131:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_1133
.LBB0_1132:                             #   in Loop: Header=BB0_1124 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_1133:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r7, zero, .LBB0_1135
# %bb.1134:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_1136
.LBB0_1135:                             #   in Loop: Header=BB0_1124 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_1136:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r13, zero, .LBB0_1138
# %bb.1137:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_1139
.LBB0_1138:                             #   in Loop: Header=BB0_1124 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_1139:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r16, zero, .LBB0_1141
# %bb.1140:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_1142
.LBB0_1141:                             #   in Loop: Header=BB0_1124 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_1142:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	bneq r16, zero, .LBB0_1144
# %bb.1143:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_1145
.LBB0_1144:                             #   in Loop: Header=BB0_1124 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_1145:                             # %vector.body432
                                        #   in Loop: Header=BB0_1124 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	beq r16, zero, .LBB0_1122
# %bb.1146:                             #   in Loop: Header=BB0_1124 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1366 19                       # parallel-rne.mlir:1366:19
	j .LBB0_1123
.LBB0_1147:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	mfence { sm }
	.loc	1 1373 7                        # parallel-rne.mlir:1373:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_1001
.LBB0_1148:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1399 7                        # parallel-rne.mlir:1399:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1037
.LBB0_1149:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 1399 7                        # parallel-rne.mlir:1399:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_1151
.LBB0_1150:                             # %middle.block411
                                        #   in Loop: Header=BB0_1151 Depth=2
	.loc	1 1407 9 is_stmt 1              # parallel-rne.mlir:1407:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1184
.LBB0_1151:                             # %.preheader135
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1161 Depth 3
                                        #       Child Loop BB0_1155 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1408 11 is_stmt 1             # parallel-rne.mlir:1408:11
	bneq r26, r20, .LBB0_1158
# %bb.1152:                             # %scalar.ph402.preheader
                                        #   in Loop: Header=BB0_1151 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1155
.LBB0_1153:                             # %scalar.ph402
                                        #   in Loop: Header=BB0_1155 Depth=3
	addli r6, r7, 0
.LBB0_1154:                             # %scalar.ph402
                                        #   in Loop: Header=BB0_1155 Depth=3
	.loc	1 1408 11                       # parallel-rne.mlir:1408:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1420 13 is_stmt 1             # parallel-rne.mlir:1420:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1408 11                       # parallel-rne.mlir:1408:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1150
.LBB0_1155:                             # %scalar.ph402
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1409 19                       # parallel-rne.mlir:1409:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1410 19                       # parallel-rne.mlir:1410:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	and r4, r10, r3
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r4, zero, .LBB0_1157
# %bb.1156:                             # %scalar.ph402
                                        #   in Loop: Header=BB0_1155 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	beq r4, r24, .LBB0_1154
	j .LBB0_1153
.LBB0_1157:                             #   in Loop: Header=BB0_1155 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	beq r4, r24, .LBB0_1154
	j .LBB0_1153
.LBB0_1158:                             # %vector.body404.preheader
                                        #   in Loop: Header=BB0_1151 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_1161
.LBB0_1159:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r12, 28(r12)
.LBB0_1160:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 1408 11 is_stmt 1             # parallel-rne.mlir:1408:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1420 13                       # parallel-rne.mlir:1420:13
	add.s r1, r26, r1
	.loc	1 1408 11                       # parallel-rne.mlir:1408:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1420 13                       # parallel-rne.mlir:1420:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1408 11                       # parallel-rne.mlir:1408:11
	bneq r4, zero, .LBB0_1150
.LBB0_1161:                             # %vector.body404
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1151 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1409 19                       # parallel-rne.mlir:1409:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1410 19                       # parallel-rne.mlir:1410:19
	add.s r12, r19, r1
	.loc	1 1409 19                       # parallel-rne.mlir:1409:19
	loads.w r2, 0(r28)
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	and r4, r2, r24
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	and r5, r2, r3
	.loc	1 1414 19                       # parallel-rne.mlir:1414:19
	seteq r4, r4, r24
	.loc	1 1416 19                       # parallel-rne.mlir:1416:19
	setneq r5, r5, zero
	.loc	1 1417 19                       # parallel-rne.mlir:1417:19
	and r4, r4, r5
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r4, zero, .LBB0_1163
# %bb.1162:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_1164
.LBB0_1163:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_1164:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r5, zero, .LBB0_1166
# %bb.1165:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_1167
.LBB0_1166:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_1167:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r5, zero, .LBB0_1169
# %bb.1168:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_1170
.LBB0_1169:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_1170:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r7, zero, .LBB0_1172
# %bb.1171:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_1173
.LBB0_1172:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_1173:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r13, zero, .LBB0_1175
# %bb.1174:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_1176
.LBB0_1175:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_1176:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r16, zero, .LBB0_1178
# %bb.1177:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_1179
.LBB0_1178:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_1179:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	bneq r16, zero, .LBB0_1181
# %bb.1180:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_1182
.LBB0_1181:                             #   in Loop: Header=BB0_1161 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_1182:                             # %vector.body404
                                        #   in Loop: Header=BB0_1161 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	beq r16, zero, .LBB0_1159
# %bb.1183:                             #   in Loop: Header=BB0_1161 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1418 19                       # parallel-rne.mlir:1418:19
	j .LBB0_1160
.LBB0_1184:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1399 7                        # parallel-rne.mlir:1399:7
	mfence { sm }
	.loc	1 1425 7                        # parallel-rne.mlir:1425:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_1038
.LBB0_1185:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1451 7                        # parallel-rne.mlir:1451:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_1074
.LBB0_1186:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 1451 7                        # parallel-rne.mlir:1451:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_1188
.LBB0_1187:                             # %middle.block383
                                        #   in Loop: Header=BB0_1188 Depth=2
	.loc	1 1459 9 is_stmt 1              # parallel-rne.mlir:1459:9
	load.d r[1:2], -352(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1221
.LBB0_1188:                             # %.preheader133
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1198 Depth 3
                                        #       Child Loop BB0_1192 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1460 11 is_stmt 1             # parallel-rne.mlir:1460:11
	bneq r26, r20, .LBB0_1195
# %bb.1189:                             # %scalar.ph374.preheader
                                        #   in Loop: Header=BB0_1188 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1192
.LBB0_1190:                             # %scalar.ph374
                                        #   in Loop: Header=BB0_1192 Depth=3
	addli r6, r7, 0
.LBB0_1191:                             # %scalar.ph374
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 1460 11                       # parallel-rne.mlir:1460:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1472 13 is_stmt 1             # parallel-rne.mlir:1472:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1460 11                       # parallel-rne.mlir:1460:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1187
.LBB0_1192:                             # %scalar.ph374
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1461 19                       # parallel-rne.mlir:1461:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1462 19                       # parallel-rne.mlir:1462:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1467 19                       # parallel-rne.mlir:1467:19
	and r4, r10, r3
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r4, zero, .LBB0_1194
# %bb.1193:                             # %scalar.ph374
                                        #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	beq r4, r24, .LBB0_1191
	j .LBB0_1190
.LBB0_1194:                             #   in Loop: Header=BB0_1192 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	beq r4, r24, .LBB0_1191
	j .LBB0_1190
.LBB0_1195:                             # %vector.body376.preheader
                                        #   in Loop: Header=BB0_1188 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_1198
.LBB0_1196:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r12, 28(r12)
.LBB0_1197:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 1460 11 is_stmt 1             # parallel-rne.mlir:1460:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1472 13                       # parallel-rne.mlir:1472:13
	add.s r1, r26, r1
	.loc	1 1460 11                       # parallel-rne.mlir:1460:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1472 13                       # parallel-rne.mlir:1472:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1460 11                       # parallel-rne.mlir:1460:11
	bneq r4, zero, .LBB0_1187
.LBB0_1198:                             # %vector.body376
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1188 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1461 19                       # parallel-rne.mlir:1461:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1462 19                       # parallel-rne.mlir:1462:19
	add.s r12, r19, r1
	.loc	1 1461 19                       # parallel-rne.mlir:1461:19
	loads.w r2, 0(r28)
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	and r4, r2, r24
	.loc	1 1467 19                       # parallel-rne.mlir:1467:19
	and r5, r2, r3
	.loc	1 1466 19                       # parallel-rne.mlir:1466:19
	seteq r4, r4, r24
	.loc	1 1468 19                       # parallel-rne.mlir:1468:19
	setneq r5, r5, zero
	.loc	1 1469 19                       # parallel-rne.mlir:1469:19
	and r4, r4, r5
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r4, zero, .LBB0_1200
# %bb.1199:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_1201
.LBB0_1200:                             #   in Loop: Header=BB0_1198 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_1201:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r5, zero, .LBB0_1203
# %bb.1202:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_1204
.LBB0_1203:                             #   in Loop: Header=BB0_1198 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_1204:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r5, zero, .LBB0_1206
# %bb.1205:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_1207
.LBB0_1206:                             #   in Loop: Header=BB0_1198 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_1207:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r7, zero, .LBB0_1209
# %bb.1208:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_1210
.LBB0_1209:                             #   in Loop: Header=BB0_1198 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_1210:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r13, zero, .LBB0_1212
# %bb.1211:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_1213
.LBB0_1212:                             #   in Loop: Header=BB0_1198 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_1213:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r16, zero, .LBB0_1215
# %bb.1214:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_1216
.LBB0_1215:                             #   in Loop: Header=BB0_1198 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_1216:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	bneq r16, zero, .LBB0_1218
# %bb.1217:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_1219
.LBB0_1218:                             #   in Loop: Header=BB0_1198 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_1219:                             # %vector.body376
                                        #   in Loop: Header=BB0_1198 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	beq r16, zero, .LBB0_1196
# %bb.1220:                             #   in Loop: Header=BB0_1198 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1470 19                       # parallel-rne.mlir:1470:19
	j .LBB0_1197
.LBB0_1221:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1451 7                        # parallel-rne.mlir:1451:7
	mfence { sm }
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1258
.LBB0_1222:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r1
	j .LBB0_1224
.LBB0_1223:                             # %middle.block369
                                        #   in Loop: Header=BB0_1224 Depth=2
	.loc	1 1485 9 is_stmt 1              # parallel-rne.mlir:1485:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[4:5], -408(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1257
.LBB0_1224:                             # %.preheader132
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1234 Depth 3
                                        #       Child Loop BB0_1228 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -408(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1486 11 is_stmt 1             # parallel-rne.mlir:1486:11
	bneq r26, r20, .LBB0_1231
# %bb.1225:                             # %scalar.ph360.preheader
                                        #   in Loop: Header=BB0_1224 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1228
.LBB0_1226:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1228 Depth=3
	addli r6, r7, 0
.LBB0_1227:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1228 Depth=3
	.loc	1 1486 11                       # parallel-rne.mlir:1486:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1498 13 is_stmt 1             # parallel-rne.mlir:1498:13
	add.s r5, r26, r5
	stores.w r6, 0(r5)
	.loc	1 1486 11                       # parallel-rne.mlir:1486:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1223
.LBB0_1228:                             # %scalar.ph360
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1487 19                       # parallel-rne.mlir:1487:19
	add.ul r[4:5], r[1:2], r[8:9]
	slli r5, r4, 2
	add.s r4, r20, r5
	loads.w r10, 0(r4)
	.loc	1 1488 19                       # parallel-rne.mlir:1488:19
	add.s r4, r19, r5
	loads.w r7, 0(r4)
	.loc	1 1493 19                       # parallel-rne.mlir:1493:19
	and r4, r10, r3
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r4, zero, .LBB0_1230
# %bb.1229:                             # %scalar.ph360
                                        #   in Loop: Header=BB0_1228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r7, 0
	and r4, r10, r24
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	beq r4, r24, .LBB0_1227
	j .LBB0_1226
.LBB0_1230:                             #   in Loop: Header=BB0_1228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r6, r10, r4
	and r4, r10, r24
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	beq r4, r24, .LBB0_1227
	j .LBB0_1226
.LBB0_1231:                             # %vector.body362.preheader
                                        #   in Loop: Header=BB0_1224 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_1234
.LBB0_1232:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r12, 28(r12)
.LBB0_1233:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 1486 11 is_stmt 1             # parallel-rne.mlir:1486:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 1498 13                       # parallel-rne.mlir:1498:13
	add.s r1, r26, r1
	.loc	1 1486 11                       # parallel-rne.mlir:1486:11
	seteq.d r4, r[10:11], r[14:15]
	.loc	1 1498 13                       # parallel-rne.mlir:1498:13
	stores.w r13, 16(r1)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 12(r1)
	stores.w r5, 8(r1)
	stores.w r6, 4(r1)
	stores.w r2, 0(r1)
	stores.w r12, 28(r1)
	stores.w r17, 24(r1)
	stores.w r27, 20(r1)
	.loc	1 1486 11                       # parallel-rne.mlir:1486:11
	bneq r4, zero, .LBB0_1223
.LBB0_1234:                             # %vector.body362
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1487 19                       # parallel-rne.mlir:1487:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r1, r1, 2
	add.s r28, r20, r1
	.loc	1 1488 19                       # parallel-rne.mlir:1488:19
	add.s r12, r19, r1
	.loc	1 1487 19                       # parallel-rne.mlir:1487:19
	loads.w r2, 0(r28)
	.loc	1 1491 19                       # parallel-rne.mlir:1491:19
	and r4, r2, r24
	.loc	1 1493 19                       # parallel-rne.mlir:1493:19
	and r5, r2, r3
	.loc	1 1492 19                       # parallel-rne.mlir:1492:19
	seteq r4, r4, r24
	.loc	1 1494 19                       # parallel-rne.mlir:1494:19
	setneq r5, r5, zero
	.loc	1 1495 19                       # parallel-rne.mlir:1495:19
	and r4, r4, r5
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r4, zero, .LBB0_1236
# %bb.1235:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r2, 0(r12)
	j .LBB0_1237
.LBB0_1236:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r4, 1024
	or r2, r2, r4
.LBB0_1237:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r4, 4(r28)
	and r5, r4, r24
	and r6, r4, r3
	seteq r5, r5, r24
	setneq r6, r6, zero
	and r5, r5, r6
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r5, zero, .LBB0_1239
# %bb.1238:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 4(r12)
	j .LBB0_1240
.LBB0_1239:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r5, 1024
	or r6, r4, r5
.LBB0_1240:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r4, 8(r28)
	and r5, r4, r24
	and r7, r4, r3
	seteq r5, r5, r24
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r5, zero, .LBB0_1242
# %bb.1241:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r5, 8(r12)
	j .LBB0_1243
.LBB0_1242:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r5, 1024
	or r5, r4, r5
.LBB0_1243:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r4, 12(r28)
	and r7, r4, r24
	and r13, r4, r3
	seteq r7, r7, r24
	setneq r13, r13, zero
	and r7, r7, r13
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r7, zero, .LBB0_1245
# %bb.1244:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 12(r12)
	j .LBB0_1246
.LBB0_1245:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r7, 1024
	or r7, r4, r7
.LBB0_1246:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r4, 16(r28)
	and r13, r4, r24
	and r16, r4, r3
	seteq r13, r13, r24
	setneq r16, r16, zero
	and r13, r13, r16
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r13, zero, .LBB0_1248
# %bb.1247:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 16(r12)
	j .LBB0_1249
.LBB0_1248:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r13, 1024
	or r13, r4, r13
.LBB0_1249:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r4, 20(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r16, zero, .LBB0_1251
# %bb.1250:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 20(r12)
	j .LBB0_1252
.LBB0_1251:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r16, 1024
	or r27, r4, r16
.LBB0_1252:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r4, 24(r28)
	and r16, r4, r24
	and r17, r4, r3
	seteq r16, r16, r24
	setneq r17, r17, zero
	and r16, r16, r17
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	bneq r16, zero, .LBB0_1254
# %bb.1253:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r12)
	j .LBB0_1255
.LBB0_1254:                             #   in Loop: Header=BB0_1234 Depth=3
	lui r16, 1024
	or r17, r4, r16
.LBB0_1255:                             # %vector.body362
                                        #   in Loop: Header=BB0_1234 Depth=3
	loads.w r4, 28(r28)
	and r16, r4, r24
	and r18, r4, r3
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	beq r16, zero, .LBB0_1232
# %bb.1256:                             #   in Loop: Header=BB0_1234 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r4, r12
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	j .LBB0_1233
.LBB0_1257:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	mfence { sm }
.LBB0_1258:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1503 7                        # parallel-rne.mlir:1503:7
	addli r1, zero, 255
	csr_set csr5, r1
	.loc	1 1504 7                        # parallel-rne.mlir:1504:7
	addli r1, zero, 3
	.loc	1 1503 7                        # parallel-rne.mlir:1503:7
	sync_core
	.loc	1 1504 7                        # parallel-rne.mlir:1504:7
	bneq r10, r1, .LBB0_1260
# %bb.1259:                             # %.critedge37
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 19
	.loc	1 1505 7 is_stmt 1              # parallel-rne.mlir:1505:7
	addli r1, zero, 41
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	addli r2, zero, 4
	.loc	1 1504 7                        # parallel-rne.mlir:1504:7
	xsignal r4, 0
	.loc	1 1505 7                        # parallel-rne.mlir:1505:7
	xsignal r1, 0
	.loc	1 1506 7                        # parallel-rne.mlir:1506:7
	addli r1, zero, 42
	xsignal r1, 0
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	loadli.w r1,  -20(r30)
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -20(r30)
	.loc	1 1512 7                        # parallel-rne.mlir:1512:7
	xwait r4, 0
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	slli r1, r2, 15
	.loc	1 1513 7                        # parallel-rne.mlir:1513:7
	addli r2, zero, 31
	xwait r2, 0
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	add.s r20, r1, r2
	.loc	1 1514 7                        # parallel-rne.mlir:1514:7
	addli r1, zero, 43
	xwait r1, 0
	.loc	1 1515 7                        # parallel-rne.mlir:1515:7
	addli r1, zero, 45
	xwait r1, 0
	j .LBB0_1263
.LBB0_1260:                             # %.critedge35
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1507 7                        # parallel-rne.mlir:1507:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_1262
# %bb.1261:                             # %.thread122
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 42
	addli r5, zero, 2
	addli r6, zero, 2047
	addli r4, zero, 4
	xwait r1, 0
	lock zero, r5
	lui r1, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r1, zero, r1, 0
	ew_cfg zero, r6, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	dsmadd r26, r26, r26, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	loadli.w r1,  -20(r30)
	addli r2, r1, 1
	mod.s r1, r1, r4
	storeli.w r2, -20(r30)
	.loc	1 1510 7                        # parallel-rne.mlir:1510:7
	addli r2, zero, 30
	xwait r2, 0
	addli r2, zero, 46
	xwait r2, 0
	lock zero, r5
	lui r2, 258048
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	slli r1, r1, 15
	.loc	1 1510 7                        # parallel-rne.mlir:1510:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r2, 0
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	loadli.w r2,  -516(r30)                 # 4-byte Folded Reload
	.loc	1 1510 7                        # parallel-rne.mlir:1510:7
	ew_cfg zero, r6, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	add.s r20, r1, r2
	.loc	1 1510 7                        # parallel-rne.mlir:1510:7
	loadli.w r1,  -328(r30)                 # 4-byte Folded Reload
	dsmul r20, r1, r26, 0
	addli r1, zero, 29
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r1, 0
	addli r1, zero, 43
	xsignal r1, 0
	addli r1, zero, 45
	xsignal r1, 0
	.loc	1 1512 7                        # parallel-rne.mlir:1512:7
	j .LBB0_1263
.LBB0_1262:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1509 13                       # parallel-rne.mlir:1509:13
	loadli.w r1,  -20(r30)
	addli r2, zero, 4
	loadli.w r4,  -516(r30)                 # 4-byte Folded Reload
	mod.s r2, r1, r2
	addli r1, r1, 1
	storeli.w r1, -20(r30)
	slli r2, r2, 15
	add.s r20, r2, r4
.LBB0_1263:                             # %.critedge39
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1519 7                        # parallel-rne.mlir:1519:7
	addli r1, zero, 255
	.loc	1 1517 7                        # parallel-rne.mlir:1517:7
	xfence
	.loc	1 1518 7                        # parallel-rne.mlir:1518:7
	mfence { lm, sm, gm }
	.loc	1 1519 7                        # parallel-rne.mlir:1519:7
	csr_set csr5, r1
	sub.s r1, r19, r13
	storeli.w r1, -412(r30)                 # 4-byte Folded Spill
	sub.s r1, r19, r20
	storeli.w r1, -428(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 1520 7                        # parallel-rne.mlir:1520:7
	beq r10, zero, .LBB0_1420
# %bb.1264:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1567 7                        # parallel-rne.mlir:1567:7
	addli r1, zero, 1
	bneq r10, r1, .LBB0_1471
.LBB0_1265:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -400(r30)                 # 4-byte Folded Spill
	addli r1, zero, 8
	.loc	1 1567 7                        # parallel-rne.mlir:1567:7
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_1267
.LBB0_1266:                             # %middle.block340
                                        #   in Loop: Header=BB0_1267 Depth=2
	.loc	1 1575 9 is_stmt 1              # parallel-rne.mlir:1575:9
	load.d r[1:2], -392(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1315
.LBB0_1267:                             # %.preheader130
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1288 Depth 3
                                        #       Child Loop BB0_1271 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1576 11 is_stmt 1             # parallel-rne.mlir:1576:11
	loadli.w r1,  -400(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1286
# %bb.1268:                             # %scalar.ph332.preheader
                                        #   in Loop: Header=BB0_1267 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1271
.LBB0_1269:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	lui r6, 1048560
	add.s r4, r4, r22
	and r7, r4, r6
.LBB0_1270:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 1576 11                       # parallel-rne.mlir:1576:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1609 13 is_stmt 1             # parallel-rne.mlir:1609:13
	add.s r5, r19, r5
	stores.w r7, 0(r5)
	.loc	1 1576 11                       # parallel-rne.mlir:1576:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1266
.LBB0_1271:                             # %scalar.ph332
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1577 19                       # parallel-rne.mlir:1577:19
	add.ul r[4:5], r[1:2], r[8:9]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 1578 19                       # parallel-rne.mlir:1578:19
	add.s r4, r26, r5
	.loc	1 1579 19                       # parallel-rne.mlir:1579:19
	add.s r6, r20, r5
	.loc	1 1578 19                       # parallel-rne.mlir:1578:19
	loads.w r4, 0(r4)
	.loc	1 1579 19                       # parallel-rne.mlir:1579:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 1582 19                       # parallel-rne.mlir:1582:19
	and r7, r4, r21
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	beq r7, r24, .LBB0_1273
# %bb.1272:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_1273:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	add.s r4, r13, r5
	loads.w r4, 0(r4)
	and r10, r4, r21
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	beq r10, zero, .LBB0_1283
# %bb.1274:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r7, zero, .LBB0_1284
.LBB0_1275:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	beq r10, r24, .LBB0_1277
.LBB0_1276:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_1277:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r7, zero, .LBB0_1279
# %bb.1278:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1279:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	setlt.u r7, r24, r10
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r7, zero, .LBB0_1281
# %bb.1280:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
.LBB0_1281:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 1597 20 is_stmt 1             # parallel-rne.mlir:1597:20
	and r4, r6, r21
	.loc	1 1599 20                       # parallel-rne.mlir:1599:20
	setlt.u r7, r24, r4
	.loc	1 1600 20                       # parallel-rne.mlir:1600:20
	bneq r7, zero, .LBB0_1285
# %bb.1282:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r6, 0
	.loc	1 1606 20 is_stmt 1             # parallel-rne.mlir:1606:20
	setlt.u r4, r23, r4
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	bneq r4, zero, .LBB0_1270
	j .LBB0_1269
.LBB0_1283:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1596 20 is_stmt 1             # parallel-rne.mlir:1596:20
	beq r7, zero, .LBB0_1275
.LBB0_1284:                             # %scalar.ph332
                                        #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r10, r24, .LBB0_1276
	j .LBB0_1277
.LBB0_1285:                             #   in Loop: Header=BB0_1271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r6, r7
	.loc	1 1606 20 is_stmt 1             # parallel-rne.mlir:1606:20
	setlt.u r4, r23, r4
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	bneq r4, zero, .LBB0_1270
	j .LBB0_1269
.LBB0_1286:                             # %vector.body334.preheader
                                        #   in Loop: Header=BB0_1267 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[10:11], zero
	j .LBB0_1288
.LBB0_1287:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 1576 11 is_stmt 1             # parallel-rne.mlir:1576:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1609 13                       # parallel-rne.mlir:1609:13
	add.s r2, r19, r28
	.loc	1 1576 11                       # parallel-rne.mlir:1576:11
	seteq.d r1, r[10:11], r[14:15]
	.loc	1 1609 13                       # parallel-rne.mlir:1609:13
	stores.w r13, 12(r2)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 8(r2)
	stores.w r16, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 1576 11                       # parallel-rne.mlir:1576:11
	bneq r1, zero, .LBB0_1266
.LBB0_1288:                             # %vector.body334
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1577 19                       # parallel-rne.mlir:1577:19
	add.ul r[1:2], r[10:11], r[8:9]
	slli r28, r1, 2
	add.s r13, r13, r28
	.loc	1 1578 19                       # parallel-rne.mlir:1578:19
	add.s r16, r26, r28
	.loc	1 1577 19                       # parallel-rne.mlir:1577:19
	loads.w r1, 0(r13)
	.loc	1 1578 19                       # parallel-rne.mlir:1578:19
	loads.w r2, 0(r16)
	.loc	1 1584 19                       # parallel-rne.mlir:1584:19
	and r1, r1, r21
	.loc	1 1582 19                       # parallel-rne.mlir:1582:19
	and r2, r2, r21
	.loc	1 1585 19                       # parallel-rne.mlir:1585:19
	seteq r4, r1, r24
	.loc	1 1589 20                       # parallel-rne.mlir:1589:20
	seteq r7, r1, zero
	.loc	1 1586 19                       # parallel-rne.mlir:1586:19
	seteq r5, r2, zero
	.loc	1 1588 19                       # parallel-rne.mlir:1588:19
	seteq r6, r2, r24
	.loc	1 1594 20                       # parallel-rne.mlir:1594:20
	max.u r1, r1, r2
	setlt.u r1, r24, r1
	.loc	1 1587 19                       # parallel-rne.mlir:1587:19
	and r2, r4, r5
	.loc	1 1590 20                       # parallel-rne.mlir:1590:20
	and r4, r7, r6
	.loc	1 1579 19                       # parallel-rne.mlir:1579:19
	add.s r6, r20, r28
	.loc	1 1591 20                       # parallel-rne.mlir:1591:20
	or r2, r2, r4
	.loc	1 1595 20                       # parallel-rne.mlir:1595:20
	or r4, r1, r2
	lui r1, 523264
	lui r2, 523264
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r4, zero, .LBB0_1290
# %bb.1289:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r2, 0(r6)
.LBB0_1290:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	loads.w r4, 4(r13)
	loads.w r5, 4(r16)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r18, r4, zero
	seteq r12, r5, zero
	seteq r17, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r12
	and r7, r18, r17
	lui r12, 523264
	or r5, r5, r7
	or r4, r4, r5
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r4, zero, .LBB0_1292
# %bb.1291:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r6)
.LBB0_1292:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	loads.w r4, 8(r13)
	loads.w r5, 8(r16)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r27, r4, zero
	seteq r17, r5, zero
	seteq r18, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r17
	and r7, r27, r18
	or r5, r5, r7
	or r4, r4, r5
	lui r5, 523264
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r4, zero, .LBB0_1294
# %bb.1293:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r6)
.LBB0_1294:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	loads.w r4, 12(r13)
	loads.w r7, 12(r16)
	and r4, r4, r21
	and r7, r7, r21
	seteq r13, r4, r24
	seteq r18, r4, zero
	seteq r16, r7, zero
	seteq r17, r7, r24
	max.u r4, r4, r7
	setlt.u r4, r24, r4
	and r7, r13, r16
	and r13, r18, r17
	or r7, r7, r13
	or r4, r4, r7
	.loc	1 1596 20                       # parallel-rne.mlir:1596:20
	bneq r4, zero, .LBB0_1296
# %bb.1295:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 12(r6)
.LBB0_1296:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 1597 20 is_stmt 1             # parallel-rne.mlir:1597:20
	and r6, r1, r21
	.loc	1 1599 20                       # parallel-rne.mlir:1599:20
	setlt.u r4, r24, r6
	.loc	1 1600 20                       # parallel-rne.mlir:1600:20
	bneq r4, zero, .LBB0_1298
# %bb.1297:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r1, 0
	j .LBB0_1299
.LBB0_1298:                             #   in Loop: Header=BB0_1288 Depth=3
	lui r4, 1024
	or r13, r1, r4
.LBB0_1299:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	and r17, r5, r21
	setlt.u r4, r24, r17
	.loc	1 1600 20                       # parallel-rne.mlir:1600:20
	bneq r4, zero, .LBB0_1301
# %bb.1300:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r5, 0
	j .LBB0_1302
.LBB0_1301:                             #   in Loop: Header=BB0_1288 Depth=3
	lui r4, 1024
	or r7, r5, r4
.LBB0_1302:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	and r18, r12, r21
	setlt.u r4, r24, r18
	.loc	1 1600 20                       # parallel-rne.mlir:1600:20
	bneq r4, zero, .LBB0_1304
# %bb.1303:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r16, r12, 0
	j .LBB0_1305
.LBB0_1304:                             #   in Loop: Header=BB0_1288 Depth=3
	lui r4, 1024
	or r16, r12, r4
.LBB0_1305:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	and r4, r2, r21
	setlt.u r27, r24, r4
	.loc	1 1600 20                       # parallel-rne.mlir:1600:20
	bneq r27, zero, .LBB0_1307
# %bb.1306:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r27, r2, 0
	.loc	1 1606 20 is_stmt 1             # parallel-rne.mlir:1606:20
	setlt.u r4, r23, r4
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	beq r4, zero, .LBB0_1308
	j .LBB0_1309
.LBB0_1307:                             #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r2, r27
	.loc	1 1606 20 is_stmt 1             # parallel-rne.mlir:1606:20
	setlt.u r4, r23, r4
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	bneq r4, zero, .LBB0_1309
.LBB0_1308:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r22
	and r27, r2, r4
.LBB0_1309:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	setlt.u r2, r23, r18
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	bneq r2, zero, .LBB0_1312
# %bb.1310:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r12, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r16, r2, r4
	setlt.u r2, r23, r17
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	beq r2, zero, .LBB0_1313
.LBB0_1311:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r6
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	bneq r2, zero, .LBB0_1287
	j .LBB0_1314
.LBB0_1312:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r17
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	bneq r2, zero, .LBB0_1311
.LBB0_1313:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r5, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r5, r2
	add.s r2, r2, r22
	and r7, r2, r4
	setlt.u r2, r23, r6
	.loc	1 1607 20                       # parallel-rne.mlir:1607:20
	bneq r2, zero, .LBB0_1287
.LBB0_1314:                             # %vector.body334
                                        #   in Loop: Header=BB0_1288 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r1, 16
	andi r2, r2, 1
	add.s r1, r1, r2
	lui r2, 1048560
	add.s r1, r1, r22
	and r13, r1, r2
	j .LBB0_1287
.LBB0_1315:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1567 7                        # parallel-rne.mlir:1567:7
	mfence { sm }
	.loc	1 1614 7                        # parallel-rne.mlir:1614:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1472
.LBB0_1316:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1661 7                        # parallel-rne.mlir:1661:7
	addli r1, zero, 3
	bneq r10, r1, .LBB0_1523
.LBB0_1317:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -384(r30)                 # 4-byte Folded Spill
	addli r1, zero, 24
	.loc	1 1661 7                        # parallel-rne.mlir:1661:7
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_1319
.LBB0_1318:                             # %middle.block310
                                        #   in Loop: Header=BB0_1319 Depth=2
	.loc	1 1669 9 is_stmt 1              # parallel-rne.mlir:1669:9
	load.d r[1:2], -376(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1367
.LBB0_1319:                             # %.preheader128
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1340 Depth 3
                                        #       Child Loop BB0_1323 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1670 11 is_stmt 1             # parallel-rne.mlir:1670:11
	loadli.w r1,  -384(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1338
# %bb.1320:                             # %scalar.ph302.preheader
                                        #   in Loop: Header=BB0_1319 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1323
.LBB0_1321:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r22
	and r5, r2, r4
.LBB0_1322:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 1670 11                       # parallel-rne.mlir:1670:11
	load.d r[6:7], -320(r30)                # 8-byte Folded Reload
	.loc	1 1703 13 is_stmt 1             # parallel-rne.mlir:1703:13
	add.s r1, r19, r1
	stores.w r5, 0(r1)
	.loc	1 1670 11                       # parallel-rne.mlir:1670:11
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r2, zero, .LBB0_1318
.LBB0_1323:                             # %scalar.ph302
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1671 19                       # parallel-rne.mlir:1671:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r7, 523264
	slli r1, r1, 2
	.loc	1 1672 19                       # parallel-rne.mlir:1672:19
	add.s r2, r26, r1
	.loc	1 1673 19                       # parallel-rne.mlir:1673:19
	add.s r4, r20, r1
	.loc	1 1672 19                       # parallel-rne.mlir:1672:19
	loads.w r2, 0(r2)
	.loc	1 1673 19                       # parallel-rne.mlir:1673:19
	loads.w r12, 0(r4)
	.loc	1 1676 19                       # parallel-rne.mlir:1676:19
	and r5, r2, r21
	lui r2, 523264
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	beq r5, r24, .LBB0_1325
# %bb.1324:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r12, 0
.LBB0_1325:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	add.s r4, r13, r1
	loads.w r4, 0(r4)
	and r6, r4, r21
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	beq r6, zero, .LBB0_1335
# %bb.1326:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	lui r12, 523264
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r5, zero, .LBB0_1336
.LBB0_1327:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	beq r6, r24, .LBB0_1329
.LBB0_1328:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r7, 0
.LBB0_1329:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	setlt.u r5, r24, r5
	lui r4, 523264
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r5, zero, .LBB0_1331
# %bb.1330:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1331:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	setlt.u r5, r24, r6
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r5, zero, .LBB0_1333
# %bb.1332:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r2, r4, 0
.LBB0_1333:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 1691 20 is_stmt 1             # parallel-rne.mlir:1691:20
	and r4, r2, r21
	.loc	1 1693 20                       # parallel-rne.mlir:1693:20
	setlt.u r5, r24, r4
	.loc	1 1694 20                       # parallel-rne.mlir:1694:20
	bneq r5, zero, .LBB0_1337
# %bb.1334:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r5, r2, 0
	.loc	1 1700 20 is_stmt 1             # parallel-rne.mlir:1700:20
	setlt.u r4, r23, r4
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	bneq r4, zero, .LBB0_1322
	j .LBB0_1321
.LBB0_1335:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1690 20 is_stmt 1             # parallel-rne.mlir:1690:20
	beq r5, zero, .LBB0_1327
.LBB0_1336:                             # %scalar.ph302
                                        #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r7, 0
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r6, r24, .LBB0_1328
	j .LBB0_1329
.LBB0_1337:                             #   in Loop: Header=BB0_1323 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 1700 20 is_stmt 1             # parallel-rne.mlir:1700:20
	setlt.u r4, r23, r4
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	bneq r4, zero, .LBB0_1322
	j .LBB0_1321
.LBB0_1338:                             # %vector.body304.preheader
                                        #   in Loop: Header=BB0_1319 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[10:11], zero
	j .LBB0_1340
.LBB0_1339:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 1670 11 is_stmt 1             # parallel-rne.mlir:1670:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1703 13                       # parallel-rne.mlir:1703:13
	add.s r2, r19, r2
	.loc	1 1670 11                       # parallel-rne.mlir:1670:11
	seteq.d r1, r[10:11], r[14:15]
	.loc	1 1703 13                       # parallel-rne.mlir:1703:13
	stores.w r13, 12(r2)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 1670 11                       # parallel-rne.mlir:1670:11
	bneq r1, zero, .LBB0_1318
.LBB0_1340:                             # %vector.body304
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1671 19                       # parallel-rne.mlir:1671:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r28, 523264
	slli r2, r1, 2
	add.s r13, r13, r2
	.loc	1 1672 19                       # parallel-rne.mlir:1672:19
	add.s r1, r26, r2
	.loc	1 1671 19                       # parallel-rne.mlir:1671:19
	loads.w r4, 0(r13)
	.loc	1 1672 19                       # parallel-rne.mlir:1672:19
	loads.w r5, 0(r1)
	.loc	1 1678 19                       # parallel-rne.mlir:1678:19
	and r4, r4, r21
	.loc	1 1676 19                       # parallel-rne.mlir:1676:19
	and r5, r5, r21
	.loc	1 1679 19                       # parallel-rne.mlir:1679:19
	seteq r6, r4, r24
	.loc	1 1683 20                       # parallel-rne.mlir:1683:20
	seteq r16, r4, zero
	.loc	1 1680 19                       # parallel-rne.mlir:1680:19
	seteq r7, r5, zero
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	seteq r12, r5, r24
	.loc	1 1688 20                       # parallel-rne.mlir:1688:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1681 19                       # parallel-rne.mlir:1681:19
	and r5, r6, r7
	.loc	1 1684 20                       # parallel-rne.mlir:1684:20
	and r6, r16, r12
	lui r16, 523264
	.loc	1 1685 20                       # parallel-rne.mlir:1685:20
	or r5, r5, r6
	.loc	1 1673 19                       # parallel-rne.mlir:1673:19
	add.s r6, r20, r2
	.loc	1 1689 20                       # parallel-rne.mlir:1689:20
	or r4, r4, r5
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r4, zero, .LBB0_1342
# %bb.1341:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r28, 0(r6)
.LBB0_1342:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	loads.w r4, 4(r13)
	loads.w r5, 4(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r18, r4, zero
	seteq r12, r5, zero
	seteq r17, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r12
	and r7, r18, r17
	lui r12, 523264
	or r5, r5, r7
	or r4, r4, r5
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r4, zero, .LBB0_1344
# %bb.1343:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r6)
.LBB0_1344:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	loads.w r4, 8(r13)
	loads.w r5, 8(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r27, r4, zero
	seteq r17, r5, zero
	seteq r18, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r17
	and r7, r27, r18
	or r5, r5, r7
	or r4, r4, r5
	lui r5, 523264
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r4, zero, .LBB0_1346
# %bb.1345:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r6)
.LBB0_1346:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	loads.w r4, 12(r13)
	loads.w r1, 12(r1)
	and r4, r4, r21
	and r1, r1, r21
	seteq r7, r4, r24
	seteq r13, r1, zero
	seteq r17, r1, r24
	seteq r18, r4, zero
	max.u r1, r4, r1
	setlt.u r1, r24, r1
	and r4, r7, r13
	and r7, r18, r17
	or r4, r4, r7
	or r1, r1, r4
	.loc	1 1690 20                       # parallel-rne.mlir:1690:20
	bneq r1, zero, .LBB0_1348
# %bb.1347:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 12(r6)
.LBB0_1348:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 1691 20 is_stmt 1             # parallel-rne.mlir:1691:20
	and r1, r16, r21
	.loc	1 1693 20                       # parallel-rne.mlir:1693:20
	setlt.u r4, r24, r1
	.loc	1 1694 20                       # parallel-rne.mlir:1694:20
	bneq r4, zero, .LBB0_1350
# %bb.1349:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r16, 0
	j .LBB0_1351
.LBB0_1350:                             #   in Loop: Header=BB0_1340 Depth=3
	lui r4, 1024
	or r13, r16, r4
.LBB0_1351:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	and r17, r5, r21
	setlt.u r4, r24, r17
	.loc	1 1694 20                       # parallel-rne.mlir:1694:20
	bneq r4, zero, .LBB0_1353
# %bb.1352:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r5, 0
	j .LBB0_1354
.LBB0_1353:                             #   in Loop: Header=BB0_1340 Depth=3
	lui r4, 1024
	or r6, r5, r4
.LBB0_1354:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	and r18, r12, r21
	setlt.u r4, r24, r18
	.loc	1 1694 20                       # parallel-rne.mlir:1694:20
	bneq r4, zero, .LBB0_1356
# %bb.1355:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	j .LBB0_1357
.LBB0_1356:                             #   in Loop: Header=BB0_1340 Depth=3
	lui r4, 1024
	or r7, r12, r4
.LBB0_1357:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	and r4, r28, r21
	setlt.u r27, r24, r4
	.loc	1 1694 20                       # parallel-rne.mlir:1694:20
	bneq r27, zero, .LBB0_1359
# %bb.1358:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r27, r28, 0
	.loc	1 1700 20 is_stmt 1             # parallel-rne.mlir:1700:20
	setlt.u r4, r23, r4
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	beq r4, zero, .LBB0_1360
	j .LBB0_1361
.LBB0_1359:                             #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r28, r27
	.loc	1 1700 20 is_stmt 1             # parallel-rne.mlir:1700:20
	setlt.u r4, r23, r4
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	bneq r4, zero, .LBB0_1361
.LBB0_1360:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r27, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r27, r4, r27
.LBB0_1361:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	setlt.u r4, r23, r18
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	bneq r4, zero, .LBB0_1364
# %bb.1362:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r12, 16
	lui r7, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r22
	and r7, r4, r7
	setlt.u r4, r23, r17
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	beq r4, zero, .LBB0_1365
.LBB0_1363:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r1
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	bneq r1, zero, .LBB0_1339
	j .LBB0_1366
.LBB0_1364:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	bneq r4, zero, .LBB0_1363
.LBB0_1365:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r22
	and r6, r4, r5
	setlt.u r1, r23, r1
	.loc	1 1701 20                       # parallel-rne.mlir:1701:20
	bneq r1, zero, .LBB0_1339
.LBB0_1366:                             # %vector.body304
                                        #   in Loop: Header=BB0_1340 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r16, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r22
	and r13, r1, r4
	j .LBB0_1339
.LBB0_1367:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1661 7                        # parallel-rne.mlir:1661:7
	mfence { sm }
	.loc	1 1708 7                        # parallel-rne.mlir:1708:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_1524
.LBB0_1368:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1755 7                        # parallel-rne.mlir:1755:7
	addli r1, zero, 5
	bneq r10, r1, .LBB0_1575
.LBB0_1369:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -368(r30)                 # 4-byte Folded Spill
	addli r1, zero, 40
	.loc	1 1755 7                        # parallel-rne.mlir:1755:7
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_1371
.LBB0_1370:                             # %middle.block280
                                        #   in Loop: Header=BB0_1371 Depth=2
	.loc	1 1763 9 is_stmt 1              # parallel-rne.mlir:1763:9
	load.d r[1:2], -360(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1419
.LBB0_1371:                             # %.preheader126
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1392 Depth 3
                                        #       Child Loop BB0_1375 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1764 11 is_stmt 1             # parallel-rne.mlir:1764:11
	loadli.w r1,  -368(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1390
# %bb.1372:                             # %scalar.ph272.preheader
                                        #   in Loop: Header=BB0_1371 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1375
.LBB0_1373:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r22
	and r5, r2, r4
.LBB0_1374:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 1764 11                       # parallel-rne.mlir:1764:11
	load.d r[6:7], -320(r30)                # 8-byte Folded Reload
	.loc	1 1797 13 is_stmt 1             # parallel-rne.mlir:1797:13
	add.s r1, r19, r1
	stores.w r5, 0(r1)
	.loc	1 1764 11                       # parallel-rne.mlir:1764:11
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r2, zero, .LBB0_1370
.LBB0_1375:                             # %scalar.ph272
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1371 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1765 19                       # parallel-rne.mlir:1765:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r7, 523264
	slli r1, r1, 2
	.loc	1 1766 19                       # parallel-rne.mlir:1766:19
	add.s r2, r26, r1
	.loc	1 1767 19                       # parallel-rne.mlir:1767:19
	add.s r4, r20, r1
	.loc	1 1766 19                       # parallel-rne.mlir:1766:19
	loads.w r2, 0(r2)
	.loc	1 1767 19                       # parallel-rne.mlir:1767:19
	loads.w r12, 0(r4)
	.loc	1 1770 19                       # parallel-rne.mlir:1770:19
	and r5, r2, r21
	lui r2, 523264
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	beq r5, r24, .LBB0_1377
# %bb.1376:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r12, 0
.LBB0_1377:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	add.s r4, r13, r1
	loads.w r4, 0(r4)
	and r6, r4, r21
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	beq r6, zero, .LBB0_1387
# %bb.1378:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	lui r12, 523264
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r5, zero, .LBB0_1388
.LBB0_1379:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	beq r6, r24, .LBB0_1381
.LBB0_1380:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r7, 0
.LBB0_1381:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	setlt.u r5, r24, r5
	lui r4, 523264
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r5, zero, .LBB0_1383
# %bb.1382:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1383:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	setlt.u r5, r24, r6
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r5, zero, .LBB0_1385
# %bb.1384:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r2, r4, 0
.LBB0_1385:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 1785 20 is_stmt 1             # parallel-rne.mlir:1785:20
	and r4, r2, r21
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	setlt.u r5, r24, r4
	.loc	1 1788 20                       # parallel-rne.mlir:1788:20
	bneq r5, zero, .LBB0_1389
# %bb.1386:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r5, r2, 0
	.loc	1 1794 20 is_stmt 1             # parallel-rne.mlir:1794:20
	setlt.u r4, r23, r4
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	bneq r4, zero, .LBB0_1374
	j .LBB0_1373
.LBB0_1387:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1784 20 is_stmt 1             # parallel-rne.mlir:1784:20
	beq r5, zero, .LBB0_1379
.LBB0_1388:                             # %scalar.ph272
                                        #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r7, 0
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r6, r24, .LBB0_1380
	j .LBB0_1381
.LBB0_1389:                             #   in Loop: Header=BB0_1375 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 1794 20 is_stmt 1             # parallel-rne.mlir:1794:20
	setlt.u r4, r23, r4
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	bneq r4, zero, .LBB0_1374
	j .LBB0_1373
.LBB0_1390:                             # %vector.body274.preheader
                                        #   in Loop: Header=BB0_1371 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[10:11], zero
	j .LBB0_1392
.LBB0_1391:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 1764 11 is_stmt 1             # parallel-rne.mlir:1764:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1797 13                       # parallel-rne.mlir:1797:13
	add.s r2, r19, r2
	.loc	1 1764 11                       # parallel-rne.mlir:1764:11
	seteq.d r1, r[10:11], r[14:15]
	.loc	1 1797 13                       # parallel-rne.mlir:1797:13
	stores.w r13, 12(r2)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 1764 11                       # parallel-rne.mlir:1764:11
	bneq r1, zero, .LBB0_1370
.LBB0_1392:                             # %vector.body274
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1371 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1765 19                       # parallel-rne.mlir:1765:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r28, 523264
	slli r2, r1, 2
	add.s r13, r13, r2
	.loc	1 1766 19                       # parallel-rne.mlir:1766:19
	add.s r1, r26, r2
	.loc	1 1765 19                       # parallel-rne.mlir:1765:19
	loads.w r4, 0(r13)
	.loc	1 1766 19                       # parallel-rne.mlir:1766:19
	loads.w r5, 0(r1)
	.loc	1 1772 19                       # parallel-rne.mlir:1772:19
	and r4, r4, r21
	.loc	1 1770 19                       # parallel-rne.mlir:1770:19
	and r5, r5, r21
	.loc	1 1773 19                       # parallel-rne.mlir:1773:19
	seteq r6, r4, r24
	.loc	1 1777 20                       # parallel-rne.mlir:1777:20
	seteq r16, r4, zero
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	seteq r7, r5, zero
	.loc	1 1776 19                       # parallel-rne.mlir:1776:19
	seteq r12, r5, r24
	.loc	1 1782 20                       # parallel-rne.mlir:1782:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	and r5, r6, r7
	.loc	1 1778 20                       # parallel-rne.mlir:1778:20
	and r6, r16, r12
	lui r16, 523264
	.loc	1 1779 20                       # parallel-rne.mlir:1779:20
	or r5, r5, r6
	.loc	1 1767 19                       # parallel-rne.mlir:1767:19
	add.s r6, r20, r2
	.loc	1 1783 20                       # parallel-rne.mlir:1783:20
	or r4, r4, r5
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r4, zero, .LBB0_1394
# %bb.1393:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r28, 0(r6)
.LBB0_1394:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	loads.w r4, 4(r13)
	loads.w r5, 4(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r18, r4, zero
	seteq r12, r5, zero
	seteq r17, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r12
	and r7, r18, r17
	lui r12, 523264
	or r5, r5, r7
	or r4, r4, r5
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r4, zero, .LBB0_1396
# %bb.1395:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r6)
.LBB0_1396:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	loads.w r4, 8(r13)
	loads.w r5, 8(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r27, r4, zero
	seteq r17, r5, zero
	seteq r18, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r17
	and r7, r27, r18
	or r5, r5, r7
	or r4, r4, r5
	lui r5, 523264
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r4, zero, .LBB0_1398
# %bb.1397:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r6)
.LBB0_1398:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	loads.w r4, 12(r13)
	loads.w r1, 12(r1)
	and r4, r4, r21
	and r1, r1, r21
	seteq r7, r4, r24
	seteq r13, r1, zero
	seteq r17, r1, r24
	seteq r18, r4, zero
	max.u r1, r4, r1
	setlt.u r1, r24, r1
	and r4, r7, r13
	and r7, r18, r17
	or r4, r4, r7
	or r1, r1, r4
	.loc	1 1784 20                       # parallel-rne.mlir:1784:20
	bneq r1, zero, .LBB0_1400
# %bb.1399:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 12(r6)
.LBB0_1400:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 1785 20 is_stmt 1             # parallel-rne.mlir:1785:20
	and r1, r16, r21
	.loc	1 1787 20                       # parallel-rne.mlir:1787:20
	setlt.u r4, r24, r1
	.loc	1 1788 20                       # parallel-rne.mlir:1788:20
	bneq r4, zero, .LBB0_1402
# %bb.1401:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r16, 0
	j .LBB0_1403
.LBB0_1402:                             #   in Loop: Header=BB0_1392 Depth=3
	lui r4, 1024
	or r13, r16, r4
.LBB0_1403:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	and r17, r5, r21
	setlt.u r4, r24, r17
	.loc	1 1788 20                       # parallel-rne.mlir:1788:20
	bneq r4, zero, .LBB0_1405
# %bb.1404:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r5, 0
	j .LBB0_1406
.LBB0_1405:                             #   in Loop: Header=BB0_1392 Depth=3
	lui r4, 1024
	or r6, r5, r4
.LBB0_1406:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	and r18, r12, r21
	setlt.u r4, r24, r18
	.loc	1 1788 20                       # parallel-rne.mlir:1788:20
	bneq r4, zero, .LBB0_1408
# %bb.1407:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	j .LBB0_1409
.LBB0_1408:                             #   in Loop: Header=BB0_1392 Depth=3
	lui r4, 1024
	or r7, r12, r4
.LBB0_1409:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	and r4, r28, r21
	setlt.u r27, r24, r4
	.loc	1 1788 20                       # parallel-rne.mlir:1788:20
	bneq r27, zero, .LBB0_1411
# %bb.1410:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r27, r28, 0
	.loc	1 1794 20 is_stmt 1             # parallel-rne.mlir:1794:20
	setlt.u r4, r23, r4
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	beq r4, zero, .LBB0_1412
	j .LBB0_1413
.LBB0_1411:                             #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r28, r27
	.loc	1 1794 20 is_stmt 1             # parallel-rne.mlir:1794:20
	setlt.u r4, r23, r4
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	bneq r4, zero, .LBB0_1413
.LBB0_1412:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r27, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r27, r4, r27
.LBB0_1413:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	setlt.u r4, r23, r18
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	bneq r4, zero, .LBB0_1416
# %bb.1414:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r12, 16
	lui r7, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r22
	and r7, r4, r7
	setlt.u r4, r23, r17
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	beq r4, zero, .LBB0_1417
.LBB0_1415:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r1
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	bneq r1, zero, .LBB0_1391
	j .LBB0_1418
.LBB0_1416:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	bneq r4, zero, .LBB0_1415
.LBB0_1417:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r22
	and r6, r4, r5
	setlt.u r1, r23, r1
	.loc	1 1795 20                       # parallel-rne.mlir:1795:20
	bneq r1, zero, .LBB0_1391
.LBB0_1418:                             # %vector.body274
                                        #   in Loop: Header=BB0_1392 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r16, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r22
	and r13, r1, r4
	j .LBB0_1391
.LBB0_1419:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1755 7                        # parallel-rne.mlir:1755:7
	mfence { sm }
	.loc	1 1802 7                        # parallel-rne.mlir:1802:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_1627
	j .LBB0_1576
.LBB0_1420:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	zext_int2long r[4:5], zero
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	.loc	1 1520 7 is_stmt 1              # parallel-rne.mlir:1520:7
	storeli.w r1, -408(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1422
.LBB0_1421:                             # %middle.block355
                                        #   in Loop: Header=BB0_1422 Depth=2
	.loc	1 1528 9                        # parallel-rne.mlir:1528:9
	load.d r[1:2], -400(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1470
.LBB0_1422:                             # %.preheader131
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1443 Depth 3
                                        #       Child Loop BB0_1426 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1529 11 is_stmt 1             # parallel-rne.mlir:1529:11
	loadli.w r1,  -408(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1441
# %bb.1423:                             # %scalar.ph347.preheader
                                        #   in Loop: Header=BB0_1422 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1426
.LBB0_1424:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	lui r6, 1048560
	add.s r4, r4, r22
	and r7, r4, r6
.LBB0_1425:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 1529 11                       # parallel-rne.mlir:1529:11
	load.d r[10:11], -320(r30)              # 8-byte Folded Reload
	.loc	1 1562 13 is_stmt 1             # parallel-rne.mlir:1562:13
	add.s r5, r19, r5
	stores.w r7, 0(r5)
	.loc	1 1529 11                       # parallel-rne.mlir:1529:11
	setlt.ul r4, r[1:2], r[10:11]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1421
.LBB0_1426:                             # %scalar.ph347
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1422 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1530 19                       # parallel-rne.mlir:1530:19
	add.ul r[4:5], r[1:2], r[8:9]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 1531 19                       # parallel-rne.mlir:1531:19
	add.s r4, r26, r5
	.loc	1 1532 19                       # parallel-rne.mlir:1532:19
	add.s r6, r20, r5
	.loc	1 1531 19                       # parallel-rne.mlir:1531:19
	loads.w r4, 0(r4)
	.loc	1 1532 19                       # parallel-rne.mlir:1532:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 1535 19                       # parallel-rne.mlir:1535:19
	and r7, r4, r21
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	beq r7, r24, .LBB0_1428
# %bb.1427:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_1428:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	add.s r4, r13, r5
	loads.w r4, 0(r4)
	and r10, r4, r21
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	beq r10, zero, .LBB0_1438
# %bb.1429:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r7, zero, .LBB0_1439
.LBB0_1430:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	beq r10, r24, .LBB0_1432
.LBB0_1431:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_1432:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r7, zero, .LBB0_1434
# %bb.1433:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1434:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	setlt.u r7, r24, r10
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r7, zero, .LBB0_1436
# %bb.1435:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
.LBB0_1436:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 1550 20 is_stmt 1             # parallel-rne.mlir:1550:20
	and r4, r6, r21
	.loc	1 1552 20                       # parallel-rne.mlir:1552:20
	setlt.u r7, r24, r4
	.loc	1 1553 20                       # parallel-rne.mlir:1553:20
	bneq r7, zero, .LBB0_1440
# %bb.1437:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r6, 0
	.loc	1 1559 20 is_stmt 1             # parallel-rne.mlir:1559:20
	setlt.u r4, r23, r4
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	bneq r4, zero, .LBB0_1425
	j .LBB0_1424
.LBB0_1438:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1549 20 is_stmt 1             # parallel-rne.mlir:1549:20
	beq r7, zero, .LBB0_1430
.LBB0_1439:                             # %scalar.ph347
                                        #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r10, r24, .LBB0_1431
	j .LBB0_1432
.LBB0_1440:                             #   in Loop: Header=BB0_1426 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r6, r7
	.loc	1 1559 20 is_stmt 1             # parallel-rne.mlir:1559:20
	setlt.u r4, r23, r4
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	bneq r4, zero, .LBB0_1425
	j .LBB0_1424
.LBB0_1441:                             # %vector.body349.preheader
                                        #   in Loop: Header=BB0_1422 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[10:11], zero
	j .LBB0_1443
.LBB0_1442:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 1529 11 is_stmt 1             # parallel-rne.mlir:1529:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1562 13                       # parallel-rne.mlir:1562:13
	add.s r4, r19, r28
	.loc	1 1529 11                       # parallel-rne.mlir:1529:11
	seteq.d r1, r[10:11], r[14:15]
	.loc	1 1562 13                       # parallel-rne.mlir:1562:13
	stores.w r13, 12(r4)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 8(r4)
	stores.w r16, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 1529 11                       # parallel-rne.mlir:1529:11
	bneq r1, zero, .LBB0_1421
.LBB0_1443:                             # %vector.body349
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1422 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1530 19                       # parallel-rne.mlir:1530:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r27, 523264
	slli r28, r1, 2
	add.s r13, r13, r28
	.loc	1 1531 19                       # parallel-rne.mlir:1531:19
	add.s r16, r26, r28
	.loc	1 1530 19                       # parallel-rne.mlir:1530:19
	loads.w r1, 0(r13)
	.loc	1 1531 19                       # parallel-rne.mlir:1531:19
	loads.w r2, 0(r16)
	.loc	1 1537 19                       # parallel-rne.mlir:1537:19
	and r1, r1, r21
	.loc	1 1535 19                       # parallel-rne.mlir:1535:19
	and r2, r2, r21
	.loc	1 1538 19                       # parallel-rne.mlir:1538:19
	seteq r4, r1, r24
	.loc	1 1542 20                       # parallel-rne.mlir:1542:20
	seteq r7, r1, zero
	.loc	1 1539 19                       # parallel-rne.mlir:1539:19
	seteq r5, r2, zero
	.loc	1 1541 19                       # parallel-rne.mlir:1541:19
	seteq r6, r2, r24
	.loc	1 1547 20                       # parallel-rne.mlir:1547:20
	max.u r1, r1, r2
	setlt.u r1, r24, r1
	.loc	1 1540 19                       # parallel-rne.mlir:1540:19
	and r2, r4, r5
	.loc	1 1543 20                       # parallel-rne.mlir:1543:20
	and r4, r7, r6
	.loc	1 1532 19                       # parallel-rne.mlir:1532:19
	add.s r6, r20, r28
	.loc	1 1544 20                       # parallel-rne.mlir:1544:20
	or r2, r2, r4
	.loc	1 1548 20                       # parallel-rne.mlir:1548:20
	or r2, r1, r2
	lui r1, 523264
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r2, zero, .LBB0_1445
# %bb.1444:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r27, 0(r6)
.LBB0_1445:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	loads.w r2, 4(r13)
	loads.w r4, 4(r16)
	and r2, r2, r21
	and r4, r4, r21
	seteq r5, r2, r24
	seteq r17, r2, zero
	seteq r7, r4, zero
	seteq r12, r4, r24
	max.u r2, r2, r4
	setlt.u r2, r24, r2
	and r4, r5, r7
	and r5, r17, r12
	lui r12, 523264
	or r4, r4, r5
	or r2, r2, r4
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r2, zero, .LBB0_1447
# %bb.1446:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r6)
.LBB0_1447:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	loads.w r2, 8(r13)
	loads.w r4, 8(r16)
	and r2, r2, r21
	and r4, r4, r21
	seteq r5, r2, r24
	seteq r18, r2, zero
	seteq r7, r4, zero
	seteq r17, r4, r24
	max.u r2, r2, r4
	setlt.u r2, r24, r2
	and r4, r5, r7
	and r5, r18, r17
	or r4, r4, r5
	lui r5, 523264
	or r2, r2, r4
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r2, zero, .LBB0_1449
# %bb.1448:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r6)
.LBB0_1449:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	loads.w r2, 12(r13)
	loads.w r4, 12(r16)
	and r2, r2, r21
	and r4, r4, r21
	seteq r7, r2, r24
	seteq r17, r2, zero
	seteq r13, r4, zero
	seteq r16, r4, r24
	max.u r2, r2, r4
	setlt.u r2, r24, r2
	and r4, r7, r13
	and r7, r17, r16
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 1549 20                       # parallel-rne.mlir:1549:20
	bneq r2, zero, .LBB0_1451
# %bb.1450:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r1, 12(r6)
.LBB0_1451:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 1550 20 is_stmt 1             # parallel-rne.mlir:1550:20
	and r6, r1, r21
	.loc	1 1552 20                       # parallel-rne.mlir:1552:20
	setlt.u r2, r24, r6
	.loc	1 1553 20                       # parallel-rne.mlir:1553:20
	bneq r2, zero, .LBB0_1453
# %bb.1452:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r1, 0
	j .LBB0_1454
.LBB0_1453:                             #   in Loop: Header=BB0_1443 Depth=3
	lui r2, 1024
	or r13, r1, r2
.LBB0_1454:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	and r17, r5, r21
	setlt.u r2, r24, r17
	.loc	1 1553 20                       # parallel-rne.mlir:1553:20
	bneq r2, zero, .LBB0_1456
# %bb.1455:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r5, 0
	j .LBB0_1457
.LBB0_1456:                             #   in Loop: Header=BB0_1443 Depth=3
	lui r2, 1024
	or r7, r5, r2
.LBB0_1457:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	and r18, r12, r21
	setlt.u r2, r24, r18
	.loc	1 1553 20                       # parallel-rne.mlir:1553:20
	bneq r2, zero, .LBB0_1459
# %bb.1458:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r16, r12, 0
	j .LBB0_1460
.LBB0_1459:                             #   in Loop: Header=BB0_1443 Depth=3
	lui r2, 1024
	or r16, r12, r2
.LBB0_1460:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	and r4, r27, r21
	setlt.u r2, r24, r4
	.loc	1 1553 20                       # parallel-rne.mlir:1553:20
	bneq r2, zero, .LBB0_1462
# %bb.1461:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r2, r27, 0
	.loc	1 1559 20 is_stmt 1             # parallel-rne.mlir:1559:20
	setlt.u r4, r23, r4
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	beq r4, zero, .LBB0_1463
	j .LBB0_1464
.LBB0_1462:                             #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r27, r2
	.loc	1 1559 20 is_stmt 1             # parallel-rne.mlir:1559:20
	setlt.u r4, r23, r4
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	bneq r4, zero, .LBB0_1464
.LBB0_1463:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r2, r27, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r27, r2
	add.s r2, r2, r22
	and r2, r2, r4
.LBB0_1464:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	setlt.u r4, r23, r18
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	bneq r4, zero, .LBB0_1467
# %bb.1465:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r22
	and r16, r4, r12
	setlt.u r4, r23, r17
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	beq r4, zero, .LBB0_1468
.LBB0_1466:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r6
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	bneq r4, zero, .LBB0_1442
	j .LBB0_1469
.LBB0_1467:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	bneq r4, zero, .LBB0_1466
.LBB0_1468:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r22
	and r7, r4, r5
	setlt.u r4, r23, r6
	.loc	1 1560 20                       # parallel-rne.mlir:1560:20
	bneq r4, zero, .LBB0_1442
.LBB0_1469:                             # %vector.body349
                                        #   in Loop: Header=BB0_1443 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r1, 16
	andi r4, r4, 1
	add.s r1, r1, r4
	lui r4, 1048560
	add.s r1, r1, r22
	and r13, r1, r4
	j .LBB0_1442
.LBB0_1470:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1520 7                        # parallel-rne.mlir:1520:7
	mfence { sm }
	.loc	1 1567 7                        # parallel-rne.mlir:1567:7
	addli r1, zero, 1
	beq r10, r1, .LBB0_1265
.LBB0_1471:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1614 7                        # parallel-rne.mlir:1614:7
	loadli.w r1,  -424(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1316
.LBB0_1472:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	zext_int2long r[4:5], r2
	storeli.w r1, -392(r30)                 # 4-byte Folded Spill
	.loc	1 1614 7                        # parallel-rne.mlir:1614:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1474
.LBB0_1473:                             # %middle.block325
                                        #   in Loop: Header=BB0_1474 Depth=2
	.loc	1 1622 9 is_stmt 1              # parallel-rne.mlir:1622:9
	load.d r[1:2], -384(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1522
.LBB0_1474:                             # %.preheader129
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1495 Depth 3
                                        #       Child Loop BB0_1478 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1623 11 is_stmt 1             # parallel-rne.mlir:1623:11
	loadli.w r1,  -392(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1493
# %bb.1475:                             # %scalar.ph317.preheader
                                        #   in Loop: Header=BB0_1474 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1478
.LBB0_1476:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r22
	and r5, r2, r4
.LBB0_1477:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 1623 11                       # parallel-rne.mlir:1623:11
	load.d r[6:7], -320(r30)                # 8-byte Folded Reload
	.loc	1 1656 13 is_stmt 1             # parallel-rne.mlir:1656:13
	add.s r1, r19, r1
	stores.w r5, 0(r1)
	.loc	1 1623 11                       # parallel-rne.mlir:1623:11
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r2, zero, .LBB0_1473
.LBB0_1478:                             # %scalar.ph317
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1474 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1624 19                       # parallel-rne.mlir:1624:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r7, 523264
	slli r1, r1, 2
	.loc	1 1625 19                       # parallel-rne.mlir:1625:19
	add.s r2, r26, r1
	.loc	1 1626 19                       # parallel-rne.mlir:1626:19
	add.s r4, r20, r1
	.loc	1 1625 19                       # parallel-rne.mlir:1625:19
	loads.w r2, 0(r2)
	.loc	1 1626 19                       # parallel-rne.mlir:1626:19
	loads.w r12, 0(r4)
	.loc	1 1629 19                       # parallel-rne.mlir:1629:19
	and r5, r2, r21
	lui r2, 523264
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	beq r5, r24, .LBB0_1480
# %bb.1479:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r12, 0
.LBB0_1480:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	add.s r4, r13, r1
	loads.w r4, 0(r4)
	and r6, r4, r21
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	beq r6, zero, .LBB0_1490
# %bb.1481:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	lui r12, 523264
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r5, zero, .LBB0_1491
.LBB0_1482:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	beq r6, r24, .LBB0_1484
.LBB0_1483:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r7, 0
.LBB0_1484:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	setlt.u r5, r24, r5
	lui r4, 523264
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r5, zero, .LBB0_1486
# %bb.1485:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1486:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	setlt.u r5, r24, r6
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r5, zero, .LBB0_1488
# %bb.1487:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r2, r4, 0
.LBB0_1488:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 1644 20 is_stmt 1             # parallel-rne.mlir:1644:20
	and r4, r2, r21
	.loc	1 1646 20                       # parallel-rne.mlir:1646:20
	setlt.u r5, r24, r4
	.loc	1 1647 20                       # parallel-rne.mlir:1647:20
	bneq r5, zero, .LBB0_1492
# %bb.1489:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r5, r2, 0
	.loc	1 1653 20 is_stmt 1             # parallel-rne.mlir:1653:20
	setlt.u r4, r23, r4
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	bneq r4, zero, .LBB0_1477
	j .LBB0_1476
.LBB0_1490:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1643 20 is_stmt 1             # parallel-rne.mlir:1643:20
	beq r5, zero, .LBB0_1482
.LBB0_1491:                             # %scalar.ph317
                                        #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r7, 0
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r6, r24, .LBB0_1483
	j .LBB0_1484
.LBB0_1492:                             #   in Loop: Header=BB0_1478 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 1653 20 is_stmt 1             # parallel-rne.mlir:1653:20
	setlt.u r4, r23, r4
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	bneq r4, zero, .LBB0_1477
	j .LBB0_1476
.LBB0_1493:                             # %vector.body319.preheader
                                        #   in Loop: Header=BB0_1474 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[10:11], zero
	j .LBB0_1495
.LBB0_1494:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 1623 11 is_stmt 1             # parallel-rne.mlir:1623:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1656 13                       # parallel-rne.mlir:1656:13
	add.s r2, r19, r2
	.loc	1 1623 11                       # parallel-rne.mlir:1623:11
	seteq.d r1, r[10:11], r[14:15]
	.loc	1 1656 13                       # parallel-rne.mlir:1656:13
	stores.w r13, 12(r2)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 1623 11                       # parallel-rne.mlir:1623:11
	bneq r1, zero, .LBB0_1473
.LBB0_1495:                             # %vector.body319
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1474 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1624 19                       # parallel-rne.mlir:1624:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r28, 523264
	slli r2, r1, 2
	add.s r13, r13, r2
	.loc	1 1625 19                       # parallel-rne.mlir:1625:19
	add.s r1, r26, r2
	.loc	1 1624 19                       # parallel-rne.mlir:1624:19
	loads.w r4, 0(r13)
	.loc	1 1625 19                       # parallel-rne.mlir:1625:19
	loads.w r5, 0(r1)
	.loc	1 1631 19                       # parallel-rne.mlir:1631:19
	and r4, r4, r21
	.loc	1 1629 19                       # parallel-rne.mlir:1629:19
	and r5, r5, r21
	.loc	1 1632 19                       # parallel-rne.mlir:1632:19
	seteq r6, r4, r24
	.loc	1 1636 20                       # parallel-rne.mlir:1636:20
	seteq r16, r4, zero
	.loc	1 1633 19                       # parallel-rne.mlir:1633:19
	seteq r7, r5, zero
	.loc	1 1635 19                       # parallel-rne.mlir:1635:19
	seteq r12, r5, r24
	.loc	1 1641 20                       # parallel-rne.mlir:1641:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1634 19                       # parallel-rne.mlir:1634:19
	and r5, r6, r7
	.loc	1 1637 20                       # parallel-rne.mlir:1637:20
	and r6, r16, r12
	lui r16, 523264
	.loc	1 1638 20                       # parallel-rne.mlir:1638:20
	or r5, r5, r6
	.loc	1 1626 19                       # parallel-rne.mlir:1626:19
	add.s r6, r20, r2
	.loc	1 1642 20                       # parallel-rne.mlir:1642:20
	or r4, r4, r5
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r4, zero, .LBB0_1497
# %bb.1496:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r28, 0(r6)
.LBB0_1497:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	loads.w r4, 4(r13)
	loads.w r5, 4(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r18, r4, zero
	seteq r12, r5, zero
	seteq r17, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r12
	and r7, r18, r17
	lui r12, 523264
	or r5, r5, r7
	or r4, r4, r5
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r4, zero, .LBB0_1499
# %bb.1498:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r6)
.LBB0_1499:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	loads.w r4, 8(r13)
	loads.w r5, 8(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r27, r4, zero
	seteq r17, r5, zero
	seteq r18, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r17
	and r7, r27, r18
	or r5, r5, r7
	or r4, r4, r5
	lui r5, 523264
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r4, zero, .LBB0_1501
# %bb.1500:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r6)
.LBB0_1501:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	loads.w r4, 12(r13)
	loads.w r1, 12(r1)
	and r4, r4, r21
	and r1, r1, r21
	seteq r7, r4, r24
	seteq r13, r1, zero
	seteq r17, r1, r24
	seteq r18, r4, zero
	max.u r1, r4, r1
	setlt.u r1, r24, r1
	and r4, r7, r13
	and r7, r18, r17
	or r4, r4, r7
	or r1, r1, r4
	.loc	1 1643 20                       # parallel-rne.mlir:1643:20
	bneq r1, zero, .LBB0_1503
# %bb.1502:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 12(r6)
.LBB0_1503:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 1644 20 is_stmt 1             # parallel-rne.mlir:1644:20
	and r1, r16, r21
	.loc	1 1646 20                       # parallel-rne.mlir:1646:20
	setlt.u r4, r24, r1
	.loc	1 1647 20                       # parallel-rne.mlir:1647:20
	bneq r4, zero, .LBB0_1505
# %bb.1504:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r16, 0
	j .LBB0_1506
.LBB0_1505:                             #   in Loop: Header=BB0_1495 Depth=3
	lui r4, 1024
	or r13, r16, r4
.LBB0_1506:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	and r17, r5, r21
	setlt.u r4, r24, r17
	.loc	1 1647 20                       # parallel-rne.mlir:1647:20
	bneq r4, zero, .LBB0_1508
# %bb.1507:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r5, 0
	j .LBB0_1509
.LBB0_1508:                             #   in Loop: Header=BB0_1495 Depth=3
	lui r4, 1024
	or r6, r5, r4
.LBB0_1509:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	and r18, r12, r21
	setlt.u r4, r24, r18
	.loc	1 1647 20                       # parallel-rne.mlir:1647:20
	bneq r4, zero, .LBB0_1511
# %bb.1510:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	j .LBB0_1512
.LBB0_1511:                             #   in Loop: Header=BB0_1495 Depth=3
	lui r4, 1024
	or r7, r12, r4
.LBB0_1512:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	and r4, r28, r21
	setlt.u r27, r24, r4
	.loc	1 1647 20                       # parallel-rne.mlir:1647:20
	bneq r27, zero, .LBB0_1514
# %bb.1513:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r27, r28, 0
	.loc	1 1653 20 is_stmt 1             # parallel-rne.mlir:1653:20
	setlt.u r4, r23, r4
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	beq r4, zero, .LBB0_1515
	j .LBB0_1516
.LBB0_1514:                             #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r28, r27
	.loc	1 1653 20 is_stmt 1             # parallel-rne.mlir:1653:20
	setlt.u r4, r23, r4
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	bneq r4, zero, .LBB0_1516
.LBB0_1515:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r27, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r27, r4, r27
.LBB0_1516:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	setlt.u r4, r23, r18
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	bneq r4, zero, .LBB0_1519
# %bb.1517:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r12, 16
	lui r7, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r22
	and r7, r4, r7
	setlt.u r4, r23, r17
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	beq r4, zero, .LBB0_1520
.LBB0_1518:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r1
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	bneq r1, zero, .LBB0_1494
	j .LBB0_1521
.LBB0_1519:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	bneq r4, zero, .LBB0_1518
.LBB0_1520:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r22
	and r6, r4, r5
	setlt.u r1, r23, r1
	.loc	1 1654 20                       # parallel-rne.mlir:1654:20
	bneq r1, zero, .LBB0_1494
.LBB0_1521:                             # %vector.body319
                                        #   in Loop: Header=BB0_1495 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r16, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r22
	and r13, r1, r4
	j .LBB0_1494
.LBB0_1522:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1614 7                        # parallel-rne.mlir:1614:7
	mfence { sm }
	.loc	1 1661 7                        # parallel-rne.mlir:1661:7
	addli r1, zero, 3
	beq r10, r1, .LBB0_1317
.LBB0_1523:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1708 7                        # parallel-rne.mlir:1708:7
	loadli.w r1,  -420(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1368
.LBB0_1524:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -376(r30)                 # 4-byte Folded Spill
	addli r1, zero, 32
	.loc	1 1708 7                        # parallel-rne.mlir:1708:7
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_1526
.LBB0_1525:                             # %middle.block295
                                        #   in Loop: Header=BB0_1526 Depth=2
	.loc	1 1716 9 is_stmt 1              # parallel-rne.mlir:1716:9
	load.d r[1:2], -368(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1574
.LBB0_1526:                             # %.preheader127
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1547 Depth 3
                                        #       Child Loop BB0_1530 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1717 11 is_stmt 1             # parallel-rne.mlir:1717:11
	loadli.w r1,  -376(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1545
# %bb.1527:                             # %scalar.ph287.preheader
                                        #   in Loop: Header=BB0_1526 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1530
.LBB0_1528:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r22
	and r5, r2, r4
.LBB0_1529:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 1717 11                       # parallel-rne.mlir:1717:11
	load.d r[6:7], -320(r30)                # 8-byte Folded Reload
	.loc	1 1750 13 is_stmt 1             # parallel-rne.mlir:1750:13
	add.s r1, r19, r1
	stores.w r5, 0(r1)
	.loc	1 1717 11                       # parallel-rne.mlir:1717:11
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r2, zero, .LBB0_1525
.LBB0_1530:                             # %scalar.ph287
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1526 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1718 19                       # parallel-rne.mlir:1718:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r7, 523264
	slli r1, r1, 2
	.loc	1 1719 19                       # parallel-rne.mlir:1719:19
	add.s r2, r26, r1
	.loc	1 1720 19                       # parallel-rne.mlir:1720:19
	add.s r4, r20, r1
	.loc	1 1719 19                       # parallel-rne.mlir:1719:19
	loads.w r2, 0(r2)
	.loc	1 1720 19                       # parallel-rne.mlir:1720:19
	loads.w r12, 0(r4)
	.loc	1 1723 19                       # parallel-rne.mlir:1723:19
	and r5, r2, r21
	lui r2, 523264
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	beq r5, r24, .LBB0_1532
# %bb.1531:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r12, 0
.LBB0_1532:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	add.s r4, r13, r1
	loads.w r4, 0(r4)
	and r6, r4, r21
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	beq r6, zero, .LBB0_1542
# %bb.1533:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	lui r12, 523264
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r5, zero, .LBB0_1543
.LBB0_1534:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	beq r6, r24, .LBB0_1536
.LBB0_1535:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r7, 0
.LBB0_1536:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	setlt.u r5, r24, r5
	lui r4, 523264
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r5, zero, .LBB0_1538
# %bb.1537:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1538:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	setlt.u r5, r24, r6
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r5, zero, .LBB0_1540
# %bb.1539:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r2, r4, 0
.LBB0_1540:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 1738 20 is_stmt 1             # parallel-rne.mlir:1738:20
	and r4, r2, r21
	.loc	1 1740 20                       # parallel-rne.mlir:1740:20
	setlt.u r5, r24, r4
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r5, zero, .LBB0_1544
# %bb.1541:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r5, r2, 0
	.loc	1 1747 20 is_stmt 1             # parallel-rne.mlir:1747:20
	setlt.u r4, r23, r4
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	bneq r4, zero, .LBB0_1529
	j .LBB0_1528
.LBB0_1542:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1737 20 is_stmt 1             # parallel-rne.mlir:1737:20
	beq r5, zero, .LBB0_1534
.LBB0_1543:                             # %scalar.ph287
                                        #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r7, 0
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r6, r24, .LBB0_1535
	j .LBB0_1536
.LBB0_1544:                             #   in Loop: Header=BB0_1530 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 1747 20 is_stmt 1             # parallel-rne.mlir:1747:20
	setlt.u r4, r23, r4
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	bneq r4, zero, .LBB0_1529
	j .LBB0_1528
.LBB0_1545:                             # %vector.body289.preheader
                                        #   in Loop: Header=BB0_1526 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[10:11], zero
	j .LBB0_1547
.LBB0_1546:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 1717 11 is_stmt 1             # parallel-rne.mlir:1717:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1750 13                       # parallel-rne.mlir:1750:13
	add.s r2, r19, r2
	.loc	1 1717 11                       # parallel-rne.mlir:1717:11
	seteq.d r1, r[10:11], r[14:15]
	.loc	1 1750 13                       # parallel-rne.mlir:1750:13
	stores.w r13, 12(r2)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 1717 11                       # parallel-rne.mlir:1717:11
	bneq r1, zero, .LBB0_1525
.LBB0_1547:                             # %vector.body289
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1526 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1718 19                       # parallel-rne.mlir:1718:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r28, 523264
	slli r2, r1, 2
	add.s r13, r13, r2
	.loc	1 1719 19                       # parallel-rne.mlir:1719:19
	add.s r1, r26, r2
	.loc	1 1718 19                       # parallel-rne.mlir:1718:19
	loads.w r4, 0(r13)
	.loc	1 1719 19                       # parallel-rne.mlir:1719:19
	loads.w r5, 0(r1)
	.loc	1 1725 19                       # parallel-rne.mlir:1725:19
	and r4, r4, r21
	.loc	1 1723 19                       # parallel-rne.mlir:1723:19
	and r5, r5, r21
	.loc	1 1726 19                       # parallel-rne.mlir:1726:19
	seteq r6, r4, r24
	.loc	1 1730 20                       # parallel-rne.mlir:1730:20
	seteq r16, r4, zero
	.loc	1 1727 19                       # parallel-rne.mlir:1727:19
	seteq r7, r5, zero
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	seteq r12, r5, r24
	.loc	1 1735 20                       # parallel-rne.mlir:1735:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	and r5, r6, r7
	.loc	1 1731 20                       # parallel-rne.mlir:1731:20
	and r6, r16, r12
	lui r16, 523264
	.loc	1 1732 20                       # parallel-rne.mlir:1732:20
	or r5, r5, r6
	.loc	1 1720 19                       # parallel-rne.mlir:1720:19
	add.s r6, r20, r2
	.loc	1 1736 20                       # parallel-rne.mlir:1736:20
	or r4, r4, r5
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r4, zero, .LBB0_1549
# %bb.1548:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r28, 0(r6)
.LBB0_1549:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	loads.w r4, 4(r13)
	loads.w r5, 4(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r18, r4, zero
	seteq r12, r5, zero
	seteq r17, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r12
	and r7, r18, r17
	lui r12, 523264
	or r5, r5, r7
	or r4, r4, r5
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r4, zero, .LBB0_1551
# %bb.1550:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r6)
.LBB0_1551:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	loads.w r4, 8(r13)
	loads.w r5, 8(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r27, r4, zero
	seteq r17, r5, zero
	seteq r18, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r17
	and r7, r27, r18
	or r5, r5, r7
	or r4, r4, r5
	lui r5, 523264
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r4, zero, .LBB0_1553
# %bb.1552:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r6)
.LBB0_1553:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	loads.w r4, 12(r13)
	loads.w r1, 12(r1)
	and r4, r4, r21
	and r1, r1, r21
	seteq r7, r4, r24
	seteq r13, r1, zero
	seteq r17, r1, r24
	seteq r18, r4, zero
	max.u r1, r4, r1
	setlt.u r1, r24, r1
	and r4, r7, r13
	and r7, r18, r17
	or r4, r4, r7
	or r1, r1, r4
	.loc	1 1737 20                       # parallel-rne.mlir:1737:20
	bneq r1, zero, .LBB0_1555
# %bb.1554:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 12(r6)
.LBB0_1555:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 1738 20 is_stmt 1             # parallel-rne.mlir:1738:20
	and r1, r16, r21
	.loc	1 1740 20                       # parallel-rne.mlir:1740:20
	setlt.u r4, r24, r1
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r4, zero, .LBB0_1557
# %bb.1556:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r16, 0
	j .LBB0_1558
.LBB0_1557:                             #   in Loop: Header=BB0_1547 Depth=3
	lui r4, 1024
	or r13, r16, r4
.LBB0_1558:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	and r17, r5, r21
	setlt.u r4, r24, r17
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r4, zero, .LBB0_1560
# %bb.1559:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r5, 0
	j .LBB0_1561
.LBB0_1560:                             #   in Loop: Header=BB0_1547 Depth=3
	lui r4, 1024
	or r6, r5, r4
.LBB0_1561:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	and r18, r12, r21
	setlt.u r4, r24, r18
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r4, zero, .LBB0_1563
# %bb.1562:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	j .LBB0_1564
.LBB0_1563:                             #   in Loop: Header=BB0_1547 Depth=3
	lui r4, 1024
	or r7, r12, r4
.LBB0_1564:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	and r4, r28, r21
	setlt.u r27, r24, r4
	.loc	1 1741 20                       # parallel-rne.mlir:1741:20
	bneq r27, zero, .LBB0_1566
# %bb.1565:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r27, r28, 0
	.loc	1 1747 20 is_stmt 1             # parallel-rne.mlir:1747:20
	setlt.u r4, r23, r4
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	beq r4, zero, .LBB0_1567
	j .LBB0_1568
.LBB0_1566:                             #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r28, r27
	.loc	1 1747 20 is_stmt 1             # parallel-rne.mlir:1747:20
	setlt.u r4, r23, r4
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	bneq r4, zero, .LBB0_1568
.LBB0_1567:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r27, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r27, r4, r27
.LBB0_1568:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	setlt.u r4, r23, r18
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	bneq r4, zero, .LBB0_1571
# %bb.1569:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r12, 16
	lui r7, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r22
	and r7, r4, r7
	setlt.u r4, r23, r17
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	beq r4, zero, .LBB0_1572
.LBB0_1570:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r1
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	bneq r1, zero, .LBB0_1546
	j .LBB0_1573
.LBB0_1571:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	bneq r4, zero, .LBB0_1570
.LBB0_1572:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r22
	and r6, r4, r5
	setlt.u r1, r23, r1
	.loc	1 1748 20                       # parallel-rne.mlir:1748:20
	bneq r1, zero, .LBB0_1546
.LBB0_1573:                             # %vector.body289
                                        #   in Loop: Header=BB0_1547 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r16, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r22
	and r13, r1, r4
	j .LBB0_1546
.LBB0_1574:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1708 7                        # parallel-rne.mlir:1708:7
	mfence { sm }
	.loc	1 1755 7                        # parallel-rne.mlir:1755:7
	addli r1, zero, 5
	beq r10, r1, .LBB0_1369
.LBB0_1575:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1802 7                        # parallel-rne.mlir:1802:7
	addli r1, zero, 6
	bneq r10, r1, .LBB0_1627
.LBB0_1576:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -360(r30)                 # 4-byte Folded Spill
	addli r1, zero, 48
	.loc	1 1802 7                        # parallel-rne.mlir:1802:7
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_1578
.LBB0_1577:                             # %middle.block265
                                        #   in Loop: Header=BB0_1578 Depth=2
	.loc	1 1810 9 is_stmt 1              # parallel-rne.mlir:1810:9
	load.d r[1:2], -352(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1626
.LBB0_1578:                             # %.preheader125
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1599 Depth 3
                                        #       Child Loop BB0_1582 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r1
	.loc	1 1811 11 is_stmt 1             # parallel-rne.mlir:1811:11
	loadli.w r1,  -360(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1597
# %bb.1579:                             # %scalar.ph257.preheader
                                        #   in Loop: Header=BB0_1578 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1582
.LBB0_1580:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r22
	and r5, r2, r4
.LBB0_1581:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 1811 11                       # parallel-rne.mlir:1811:11
	load.d r[6:7], -320(r30)                # 8-byte Folded Reload
	.loc	1 1844 13 is_stmt 1             # parallel-rne.mlir:1844:13
	add.s r1, r19, r1
	stores.w r5, 0(r1)
	.loc	1 1811 11                       # parallel-rne.mlir:1811:11
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	beq r2, zero, .LBB0_1577
.LBB0_1582:                             # %scalar.ph257
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1578 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1812 19                       # parallel-rne.mlir:1812:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r7, 523264
	slli r1, r1, 2
	.loc	1 1813 19                       # parallel-rne.mlir:1813:19
	add.s r2, r26, r1
	.loc	1 1814 19                       # parallel-rne.mlir:1814:19
	add.s r4, r20, r1
	.loc	1 1813 19                       # parallel-rne.mlir:1813:19
	loads.w r2, 0(r2)
	.loc	1 1814 19                       # parallel-rne.mlir:1814:19
	loads.w r12, 0(r4)
	.loc	1 1817 19                       # parallel-rne.mlir:1817:19
	and r5, r2, r21
	lui r2, 523264
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	beq r5, r24, .LBB0_1584
# %bb.1583:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r12, 0
.LBB0_1584:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	add.s r4, r13, r1
	loads.w r4, 0(r4)
	and r6, r4, r21
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	beq r6, zero, .LBB0_1594
# %bb.1585:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	lui r12, 523264
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r5, zero, .LBB0_1595
.LBB0_1586:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	beq r6, r24, .LBB0_1588
.LBB0_1587:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r7, 0
.LBB0_1588:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	setlt.u r5, r24, r5
	lui r4, 523264
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r5, zero, .LBB0_1590
# %bb.1589:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1590:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	setlt.u r5, r24, r6
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r5, zero, .LBB0_1592
# %bb.1591:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r2, r4, 0
.LBB0_1592:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 1832 20 is_stmt 1             # parallel-rne.mlir:1832:20
	and r4, r2, r21
	.loc	1 1834 20                       # parallel-rne.mlir:1834:20
	setlt.u r5, r24, r4
	.loc	1 1835 20                       # parallel-rne.mlir:1835:20
	bneq r5, zero, .LBB0_1596
# %bb.1593:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r5, r2, 0
	.loc	1 1841 20 is_stmt 1             # parallel-rne.mlir:1841:20
	setlt.u r4, r23, r4
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	bneq r4, zero, .LBB0_1581
	j .LBB0_1580
.LBB0_1594:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1831 20 is_stmt 1             # parallel-rne.mlir:1831:20
	beq r5, zero, .LBB0_1586
.LBB0_1595:                             # %scalar.ph257
                                        #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r7, 0
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r6, r24, .LBB0_1587
	j .LBB0_1588
.LBB0_1596:                             #   in Loop: Header=BB0_1582 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r5, r2, r5
	.loc	1 1841 20 is_stmt 1             # parallel-rne.mlir:1841:20
	setlt.u r4, r23, r4
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	bneq r4, zero, .LBB0_1581
	j .LBB0_1580
.LBB0_1597:                             # %vector.body259.preheader
                                        #   in Loop: Header=BB0_1578 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	zext_int2long r[10:11], zero
	j .LBB0_1599
.LBB0_1598:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 1811 11 is_stmt 1             # parallel-rne.mlir:1811:11
	addli.d r[10:11], r[10:11], 4
	.loc	1 1844 13                       # parallel-rne.mlir:1844:13
	add.s r2, r19, r2
	.loc	1 1811 11                       # parallel-rne.mlir:1811:11
	seteq.d r1, r[10:11], r[14:15]
	.loc	1 1844 13                       # parallel-rne.mlir:1844:13
	stores.w r13, 12(r2)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r6, 8(r2)
	stores.w r7, 4(r2)
	stores.w r27, 0(r2)
	.loc	1 1811 11                       # parallel-rne.mlir:1811:11
	bneq r1, zero, .LBB0_1577
.LBB0_1599:                             # %vector.body259
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1578 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1812 19                       # parallel-rne.mlir:1812:19
	add.ul r[1:2], r[10:11], r[8:9]
	lui r28, 523264
	slli r2, r1, 2
	add.s r13, r13, r2
	.loc	1 1813 19                       # parallel-rne.mlir:1813:19
	add.s r1, r26, r2
	.loc	1 1812 19                       # parallel-rne.mlir:1812:19
	loads.w r4, 0(r13)
	.loc	1 1813 19                       # parallel-rne.mlir:1813:19
	loads.w r5, 0(r1)
	.loc	1 1819 19                       # parallel-rne.mlir:1819:19
	and r4, r4, r21
	.loc	1 1817 19                       # parallel-rne.mlir:1817:19
	and r5, r5, r21
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	seteq r6, r4, r24
	.loc	1 1824 20                       # parallel-rne.mlir:1824:20
	seteq r16, r4, zero
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	seteq r7, r5, zero
	.loc	1 1823 19                       # parallel-rne.mlir:1823:19
	seteq r12, r5, r24
	.loc	1 1829 20                       # parallel-rne.mlir:1829:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1822 19                       # parallel-rne.mlir:1822:19
	and r5, r6, r7
	.loc	1 1825 20                       # parallel-rne.mlir:1825:20
	and r6, r16, r12
	lui r16, 523264
	.loc	1 1826 20                       # parallel-rne.mlir:1826:20
	or r5, r5, r6
	.loc	1 1814 19                       # parallel-rne.mlir:1814:19
	add.s r6, r20, r2
	.loc	1 1830 20                       # parallel-rne.mlir:1830:20
	or r4, r4, r5
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r4, zero, .LBB0_1601
# %bb.1600:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r28, 0(r6)
.LBB0_1601:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	loads.w r4, 4(r13)
	loads.w r5, 4(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r18, r4, zero
	seteq r12, r5, zero
	seteq r17, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r12
	and r7, r18, r17
	lui r12, 523264
	or r5, r5, r7
	or r4, r4, r5
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r4, zero, .LBB0_1603
# %bb.1602:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r6)
.LBB0_1603:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	loads.w r4, 8(r13)
	loads.w r5, 8(r1)
	and r4, r4, r21
	and r5, r5, r21
	seteq r7, r4, r24
	seteq r27, r4, zero
	seteq r17, r5, zero
	seteq r18, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r7, r17
	and r7, r27, r18
	or r5, r5, r7
	or r4, r4, r5
	lui r5, 523264
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r4, zero, .LBB0_1605
# %bb.1604:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r6)
.LBB0_1605:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	loads.w r4, 12(r13)
	loads.w r1, 12(r1)
	and r4, r4, r21
	and r1, r1, r21
	seteq r7, r4, r24
	seteq r13, r1, zero
	seteq r17, r1, r24
	seteq r18, r4, zero
	max.u r1, r4, r1
	setlt.u r1, r24, r1
	and r4, r7, r13
	and r7, r18, r17
	or r4, r4, r7
	or r1, r1, r4
	.loc	1 1831 20                       # parallel-rne.mlir:1831:20
	bneq r1, zero, .LBB0_1607
# %bb.1606:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 12(r6)
.LBB0_1607:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 1832 20 is_stmt 1             # parallel-rne.mlir:1832:20
	and r1, r16, r21
	.loc	1 1834 20                       # parallel-rne.mlir:1834:20
	setlt.u r4, r24, r1
	.loc	1 1835 20                       # parallel-rne.mlir:1835:20
	bneq r4, zero, .LBB0_1609
# %bb.1608:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r16, 0
	j .LBB0_1610
.LBB0_1609:                             #   in Loop: Header=BB0_1599 Depth=3
	lui r4, 1024
	or r13, r16, r4
.LBB0_1610:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	and r17, r5, r21
	setlt.u r4, r24, r17
	.loc	1 1835 20                       # parallel-rne.mlir:1835:20
	bneq r4, zero, .LBB0_1612
# %bb.1611:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r5, 0
	j .LBB0_1613
.LBB0_1612:                             #   in Loop: Header=BB0_1599 Depth=3
	lui r4, 1024
	or r6, r5, r4
.LBB0_1613:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	and r18, r12, r21
	setlt.u r4, r24, r18
	.loc	1 1835 20                       # parallel-rne.mlir:1835:20
	bneq r4, zero, .LBB0_1615
# %bb.1614:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r12, 0
	j .LBB0_1616
.LBB0_1615:                             #   in Loop: Header=BB0_1599 Depth=3
	lui r4, 1024
	or r7, r12, r4
.LBB0_1616:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	and r4, r28, r21
	setlt.u r27, r24, r4
	.loc	1 1835 20                       # parallel-rne.mlir:1835:20
	bneq r27, zero, .LBB0_1618
# %bb.1617:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r27, r28, 0
	.loc	1 1841 20 is_stmt 1             # parallel-rne.mlir:1841:20
	setlt.u r4, r23, r4
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	beq r4, zero, .LBB0_1619
	j .LBB0_1620
.LBB0_1618:                             #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r28, r27
	.loc	1 1841 20 is_stmt 1             # parallel-rne.mlir:1841:20
	setlt.u r4, r23, r4
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	bneq r4, zero, .LBB0_1620
.LBB0_1619:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r27, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r27, r4, r27
.LBB0_1620:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	setlt.u r4, r23, r18
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	bneq r4, zero, .LBB0_1623
# %bb.1621:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r12, 16
	lui r7, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r22
	and r7, r4, r7
	setlt.u r4, r23, r17
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	beq r4, zero, .LBB0_1624
.LBB0_1622:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r23, r1
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	bneq r1, zero, .LBB0_1598
	j .LBB0_1625
.LBB0_1623:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	bneq r4, zero, .LBB0_1622
.LBB0_1624:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r22
	and r6, r4, r5
	setlt.u r1, r23, r1
	.loc	1 1842 20                       # parallel-rne.mlir:1842:20
	bneq r1, zero, .LBB0_1598
.LBB0_1625:                             # %vector.body259
                                        #   in Loop: Header=BB0_1599 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r1, r16, 16
	lui r4, 1048560
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r22
	and r13, r1, r4
	j .LBB0_1598
.LBB0_1626:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1802 7                        # parallel-rne.mlir:1802:7
	mfence { sm }
.LBB0_1627:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[1:2], zero
	.loc	1 1849 7 is_stmt 1              # parallel-rne.mlir:1849:7
	store.d r[1:2], -360(r30)               # 8-byte Folded Spill
	loadli.w r1,  -416(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1679
# %bb.1628:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  -412(r30)                 # 4-byte Folded Reload
	loadli.w r2,  -428(r30)                 # 4-byte Folded Reload
	min.u r1, r1, r2
	addli r2, zero, 16
	setlt.u r1, r1, r2
	storeli.w r1, -352(r30)                 # 4-byte Folded Spill
	addli r1, zero, 56
	.loc	1 1849 7                        # parallel-rne.mlir:1849:7
	xfence
	zext_int2long r[4:5], r1
	mfence { lm, sm, gm }
	j .LBB0_1630
.LBB0_1629:                             # %middle.block
                                        #   in Loop: Header=BB0_1630 Depth=2
	.loc	1 1857 9 is_stmt 1              # parallel-rne.mlir:1857:9
	load.d r[1:2], -344(r30)                # 8-byte Folded Reload
	load.d r[4:5], -328(r30)                # 8-byte Folded Reload
	setlt.ul r1, r[4:5], r[1:2]
	addli.d r[4:5], r[4:5], 1
	beq r1, zero, .LBB0_1678
.LBB0_1630:                             # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1651 Depth 3
                                        #       Child Loop BB0_1634 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 7
	store.d r[4:5], -328(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[4:5], r1
	.loc	1 1858 11 is_stmt 1             # parallel-rne.mlir:1858:11
	loadli.w r1,  -352(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_1649
# %bb.1631:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1630 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[1:2], zero
	j .LBB0_1634
.LBB0_1632:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	lui r6, 1048560
	add.s r4, r4, r22
	and r7, r4, r6
.LBB0_1633:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 1858 11                       # parallel-rne.mlir:1858:11
	load.d r[11:12], -320(r30)              # 8-byte Folded Reload
	.loc	1 1891 13 is_stmt 1             # parallel-rne.mlir:1891:13
	add.s r5, r19, r5
	stores.w r7, 0(r5)
	.loc	1 1858 11                       # parallel-rne.mlir:1858:11
	setlt.ul r4, r[1:2], r[11:12]
	addli.d r[1:2], r[1:2], 1
	beq r4, zero, .LBB0_1629
.LBB0_1634:                             # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1630 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1859 19                       # parallel-rne.mlir:1859:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r11, 523264
	slli r5, r4, 2
	.loc	1 1860 19                       # parallel-rne.mlir:1860:19
	add.s r4, r26, r5
	.loc	1 1861 19                       # parallel-rne.mlir:1861:19
	add.s r6, r20, r5
	.loc	1 1860 19                       # parallel-rne.mlir:1860:19
	loads.w r4, 0(r4)
	.loc	1 1861 19                       # parallel-rne.mlir:1861:19
	loads.w r12, 0(r6)
	lui r6, 523264
	.loc	1 1864 19                       # parallel-rne.mlir:1864:19
	and r7, r4, r21
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	beq r7, r24, .LBB0_1636
# %bb.1635:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r12, 0
.LBB0_1636:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	add.s r4, r13, r5
	loads.w r4, 0(r4)
	and r8, r4, r21
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	beq r8, zero, .LBB0_1646
# %bb.1637:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r11, r12, 0
	lui r12, 523264
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r7, zero, .LBB0_1647
.LBB0_1638:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	beq r8, r24, .LBB0_1640
.LBB0_1639:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r12, r11, 0
.LBB0_1640:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	setlt.u r7, r24, r7
	lui r4, 523264
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r7, zero, .LBB0_1642
# %bb.1641:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r4, r12, 0
.LBB0_1642:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	setlt.u r7, r24, r8
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r7, zero, .LBB0_1644
# %bb.1643:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r6, r4, 0
.LBB0_1644:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 1879 20 is_stmt 1             # parallel-rne.mlir:1879:20
	and r4, r6, r21
	.loc	1 1881 20                       # parallel-rne.mlir:1881:20
	setlt.u r7, r24, r4
	.loc	1 1882 20                       # parallel-rne.mlir:1882:20
	bneq r7, zero, .LBB0_1648
# %bb.1645:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r7, r6, 0
	.loc	1 1888 20 is_stmt 1             # parallel-rne.mlir:1888:20
	setlt.u r4, r23, r4
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	bneq r4, zero, .LBB0_1633
	j .LBB0_1632
.LBB0_1646:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	lui r12, 523264
	.loc	1 1878 20 is_stmt 1             # parallel-rne.mlir:1878:20
	beq r7, zero, .LBB0_1638
.LBB0_1647:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r12, r11, 0
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r8, r24, .LBB0_1639
	j .LBB0_1640
.LBB0_1648:                             #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r6, r7
	.loc	1 1888 20 is_stmt 1             # parallel-rne.mlir:1888:20
	setlt.u r4, r23, r4
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	bneq r4, zero, .LBB0_1633
	j .LBB0_1632
.LBB0_1649:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1630 Depth=2
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	load.d r[1:2], -360(r30)                # 8-byte Folded Reload
	j .LBB0_1651
.LBB0_1650:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 1858 11 is_stmt 1             # parallel-rne.mlir:1858:11
	addli.d r[1:2], r[1:2], 4
	.loc	1 1891 13                       # parallel-rne.mlir:1891:13
	add.s r5, r19, r11
	.loc	1 1858 11                       # parallel-rne.mlir:1858:11
	seteq.d r4, r[1:2], r[14:15]
	.loc	1 1891 13                       # parallel-rne.mlir:1891:13
	stores.w r13, 12(r5)
	loadli.w r13,  -336(r30)                # 4-byte Folded Reload
	stores.w r7, 8(r5)
	stores.w r8, 4(r5)
	stores.w r27, 0(r5)
	.loc	1 1858 11                       # parallel-rne.mlir:1858:11
	bneq r4, zero, .LBB0_1629
.LBB0_1651:                             # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_1630 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1859 19                       # parallel-rne.mlir:1859:19
	add.ul r[4:5], r[1:2], r[9:10]
	lui r28, 523264
	slli r11, r4, 2
	add.s r13, r13, r11
	.loc	1 1860 19                       # parallel-rne.mlir:1860:19
	add.s r6, r26, r11
	.loc	1 1859 19                       # parallel-rne.mlir:1859:19
	loads.w r4, 0(r13)
	.loc	1 1860 19                       # parallel-rne.mlir:1860:19
	loads.w r5, 0(r6)
	.loc	1 1866 19                       # parallel-rne.mlir:1866:19
	and r4, r4, r21
	.loc	1 1864 19                       # parallel-rne.mlir:1864:19
	and r5, r5, r21
	.loc	1 1867 19                       # parallel-rne.mlir:1867:19
	seteq r7, r4, r24
	.loc	1 1871 20                       # parallel-rne.mlir:1871:20
	seteq r16, r4, zero
	.loc	1 1868 19                       # parallel-rne.mlir:1868:19
	seteq r8, r5, zero
	.loc	1 1870 19                       # parallel-rne.mlir:1870:19
	seteq r12, r5, r24
	.loc	1 1876 20                       # parallel-rne.mlir:1876:20
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1869 19                       # parallel-rne.mlir:1869:19
	and r5, r7, r8
	.loc	1 1872 20                       # parallel-rne.mlir:1872:20
	and r7, r16, r12
	lui r16, 523264
	.loc	1 1873 20                       # parallel-rne.mlir:1873:20
	or r5, r5, r7
	.loc	1 1861 19                       # parallel-rne.mlir:1861:19
	add.s r7, r20, r11
	.loc	1 1877 20                       # parallel-rne.mlir:1877:20
	or r4, r4, r5
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r4, zero, .LBB0_1653
# %bb.1652:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	loads.w r28, 0(r7)
.LBB0_1653:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	loads.w r4, 4(r13)
	loads.w r5, 4(r6)
	and r4, r4, r21
	and r5, r5, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r12, r5, zero
	seteq r17, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r8, r12
	and r8, r18, r17
	lui r12, 523264
	or r5, r5, r8
	or r4, r4, r5
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r4, zero, .LBB0_1655
# %bb.1654:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r12, 4(r7)
.LBB0_1655:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	loads.w r4, 8(r13)
	loads.w r5, 8(r6)
	and r4, r4, r21
	and r5, r5, r21
	seteq r8, r4, r24
	seteq r27, r4, zero
	seteq r17, r5, zero
	seteq r18, r5, r24
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	and r5, r8, r17
	and r8, r27, r18
	or r5, r5, r8
	or r4, r4, r5
	lui r5, 523264
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r4, zero, .LBB0_1657
# %bb.1656:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r5, 8(r7)
.LBB0_1657:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	loads.w r4, 12(r13)
	loads.w r6, 12(r6)
	and r4, r4, r21
	and r6, r6, r21
	seteq r8, r4, r24
	seteq r18, r4, zero
	seteq r13, r6, zero
	seteq r17, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r8, r13
	and r8, r18, r17
	or r6, r6, r8
	or r4, r4, r6
	.loc	1 1878 20                       # parallel-rne.mlir:1878:20
	bneq r4, zero, .LBB0_1659
# %bb.1658:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	loads.w r16, 12(r7)
.LBB0_1659:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 1879 20 is_stmt 1             # parallel-rne.mlir:1879:20
	and r6, r16, r21
	.loc	1 1881 20                       # parallel-rne.mlir:1881:20
	setlt.u r4, r24, r6
	.loc	1 1882 20                       # parallel-rne.mlir:1882:20
	bneq r4, zero, .LBB0_1661
# %bb.1660:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r13, r16, 0
	j .LBB0_1662
.LBB0_1661:                             #   in Loop: Header=BB0_1651 Depth=3
	lui r4, 1024
	or r13, r16, r4
.LBB0_1662:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	and r17, r5, r21
	setlt.u r4, r24, r17
	.loc	1 1882 20                       # parallel-rne.mlir:1882:20
	bneq r4, zero, .LBB0_1664
# %bb.1663:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r7, r5, 0
	j .LBB0_1665
.LBB0_1664:                             #   in Loop: Header=BB0_1651 Depth=3
	lui r4, 1024
	or r7, r5, r4
.LBB0_1665:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	and r18, r12, r21
	setlt.u r4, r24, r18
	.loc	1 1882 20                       # parallel-rne.mlir:1882:20
	bneq r4, zero, .LBB0_1667
# %bb.1666:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r8, r12, 0
	j .LBB0_1668
.LBB0_1667:                             #   in Loop: Header=BB0_1651 Depth=3
	lui r4, 1024
	or r8, r12, r4
.LBB0_1668:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	and r4, r28, r21
	setlt.u r27, r24, r4
	.loc	1 1882 20                       # parallel-rne.mlir:1882:20
	bneq r27, zero, .LBB0_1670
# %bb.1669:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	addli r27, r28, 0
	.loc	1 1888 20 is_stmt 1             # parallel-rne.mlir:1888:20
	setlt.u r4, r23, r4
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	beq r4, zero, .LBB0_1671
	j .LBB0_1672
.LBB0_1670:                             #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r28, r27
	.loc	1 1888 20 is_stmt 1             # parallel-rne.mlir:1888:20
	setlt.u r4, r23, r4
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	bneq r4, zero, .LBB0_1672
.LBB0_1671:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r28, 16
	lui r27, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r22
	and r27, r4, r27
.LBB0_1672:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	setlt.u r4, r23, r18
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	bneq r4, zero, .LBB0_1675
# %bb.1673:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r22
	and r8, r4, r8
	setlt.u r4, r23, r17
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	beq r4, zero, .LBB0_1676
.LBB0_1674:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r6
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	bneq r4, zero, .LBB0_1650
	j .LBB0_1677
.LBB0_1675:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r23, r17
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	bneq r4, zero, .LBB0_1674
.LBB0_1676:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r5, 16
	andi r4, r4, 1
	add.s r4, r5, r4
	lui r5, 1048560
	add.s r4, r4, r22
	and r7, r4, r5
	setlt.u r4, r23, r6
	.loc	1 1889 20                       # parallel-rne.mlir:1889:20
	bneq r4, zero, .LBB0_1650
.LBB0_1677:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r16, 16
	lui r5, 1048560
	andi r4, r4, 1
	add.s r4, r16, r4
	add.s r4, r4, r22
	and r13, r4, r5
	j .LBB0_1650
.LBB0_1678:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 38 5 is_stmt 1                # parallel-rne.mlir:38:5
	core_id r10
	.loc	1 1849 7                        # parallel-rne.mlir:1849:7
	mfence { sm }
.LBB0_1679:                             #   in Loop: Header=BB0_8 Depth=1
	.loc	1 1896 7                        # parallel-rne.mlir:1896:7
	addli r1, zero, 255
	.loc	1 38 5                          # parallel-rne.mlir:38:5
	core_id r8
	.loc	1 1896 7                        # parallel-rne.mlir:1896:7
	csr_set csr5, r1
	.loc	1 1897 7                        # parallel-rne.mlir:1897:7
	addli r1, zero, 3
	.loc	1 1896 7                        # parallel-rne.mlir:1896:7
	sync_core
	.loc	1 1897 7                        # parallel-rne.mlir:1897:7
	beq r10, r1, .LBB0_5
# %bb.1680:                             # %.critedge43
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 4
	addli r15, zero, 64
	addli r17, zero, 1
	addli r18, zero, 7
	addli r19, zero, 13
	.loc	1 1908 7 is_stmt 1              # parallel-rne.mlir:1908:7
	bneq r10, zero, .LBB0_7
# %bb.1681:                             #   in Loop: Header=BB0_8 Depth=1
	load.d r[9:10], -472(r30)               # 8-byte Folded Reload
	loadli.w r1,  -476(r30)                 # 4-byte Folded Reload
	addli r6, zero, 17
	load.d r[4:5], -360(r30)                # 8-byte Folded Reload
	sll.d r[6:7], r[9:10], r6
	addli r9, zero, 20
	slli r1, r1, 6
	xwait r9, 0
	load.d r[9:10], 24(r30)
	sext_int2long r[1:2], r1
	min.sl r[4:5], r[1:2], r[4:5]
	add.ul r[6:7], r[9:10], r[6:7]
	addli r9, zero, 5
	addli.d r[4:5], r[4:5], 64
	lock zero, r9
	load.d r[10:11], -456(r30)              # 8-byte Folded Reload
	max.sl r[4:5], r[4:5], r[1:2]
	dma_cfg r17, r17, zero, 0
	dma_cfg zero, r17, zero, 1
	sub.sl r[1:2], r[4:5], r[1:2]
	zext_int2long r[4:5], r15
	add.ul r[6:7], r[6:7], r[10:11]
	.loc	1 1904 13                       # parallel-rne.mlir:1904:13
	min.sl r[1:2], r[1:2], r[4:5]
	lui r4, 80
	.loc	1 1908 7                        # parallel-rne.mlir:1908:7
	dma_cfg r7, zero, zero, 2
	loadli.w r5,  -480(r30)                 # 4-byte Folded Reload
	load.d r[10:11], -464(r30)              # 8-byte Folded Reload
	ori r4, r4, 64
	add.s r4, r5, r4
	addli r5, r10, 31
	dma_cfg r6, r4, r15, 3
	srli r4, r5, 5
	addli r6, zero, 128
	slli r5, r10, 1
	dma_cfg r15, r6, r4, 4
	andi r4, r5, 62
	addli r5, zero, 512
	addli r6, zero, 2048
	dma_cfg r6, r5, r1, 5
	addli r1, zero, 21
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	j .LBB0_6
.LBB0_1682:                             # %._crit_edge
	.loc	1 1910 5                        # parallel-rne.mlir:1910:5
	xsignal zero, 0
	bneq r8, zero, .LBB0_1684
# %bb.1683:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1910 5                        # parallel-rne.mlir:1910:5
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
.LBB0_1684:
	.loc	1 1911 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1911:5
	addli sp, sp, 528
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
	.long	592                             # 0x250
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-vmssve19" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
