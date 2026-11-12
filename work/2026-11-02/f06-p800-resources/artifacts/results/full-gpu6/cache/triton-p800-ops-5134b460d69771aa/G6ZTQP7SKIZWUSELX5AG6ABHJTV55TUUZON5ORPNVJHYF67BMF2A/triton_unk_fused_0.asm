	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-4is8b3nn" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -728
	addli r2, zero, 1
.Ltmp0:
	.loc	1 41 5 prologue_end             # parallel-rne.mlir:41:5
	core_id r1
	addli r30, sp, 664
	xsignal_mode_cfg r2
	beq r1, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 41 5                          # parallel-rne.mlir:41:5
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
	.loc	1 41 5                          # parallel-rne.mlir:41:5
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
	addli r3, zero, 11
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
	addli r2, zero, 21
	sync_group
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 5
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 3
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
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 7
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
	addli r2, zero, 23
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 41
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
	.loc	1 43 10 is_stmt 1               # parallel-rne.mlir:43:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -12(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -24(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -36(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -48(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -60(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -72(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -84(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -96(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -108(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -128(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -292(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -312(r30)
	.loc	1 66 11                         # parallel-rne.mlir:66:11
	storeli.w zero, -412(r30)
	.loc	1 67 11                         # parallel-rne.mlir:67:11
	storeli.w zero, -424(r30)
	.loc	1 68 11                         # parallel-rne.mlir:68:11
	storeli.w zero, -436(r30)
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	mul.s r1, r2, r1
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r4, r1, r4
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	addli r2, r2, -1
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
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
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w r3, -308(r30)
	storeli.w r3, -304(r30)
	storeli.w r3, -300(r30)
	storeli.w r3, -296(r30)
	.loc	1 66 11                         # parallel-rne.mlir:66:11
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
	storeli.w r3, -328(r30)
	storeli.w r3, -324(r30)
	storeli.w r3, -320(r30)
	storeli.w r3, -316(r30)
	.loc	1 67 11                         # parallel-rne.mlir:67:11
	storeli.w r3, -420(r30)
	storeli.w r3, -416(r30)
	.loc	1 68 11                         # parallel-rne.mlir:68:11
	storeli.w r3, -432(r30)
	storeli.w r3, -428(r30)
	.loc	1 49 10                         # parallel-rne.mlir:49:10
	mul.s r1, r2, r6
	.loc	1 50 10                         # parallel-rne.mlir:50:10
	fmac.s r2, r2, r6
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 51 10                         # parallel-rne.mlir:51:10
	min.s r2, r2, r4
	.loc	1 69 5                          # parallel-rne.mlir:69:5
	ble.s r2, r1, .LBB0_1682
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 52 11 is_stmt 1               # parallel-rne.mlir:52:11
	sext_int2long r[8:9], r1
	lui r1, 15
	addli r7, zero, 64
	addli r11, zero, 4
	addli r13, zero, 2
	lui r24, 522240
	lui r17, 268288
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r3, 56
	lui r1, 1048448
	store.d r[1:2], -624(r30)               # 8-byte Folded Spill
	lui r1, 127
	lui r2, 7
	ori r1, r1, 4095
	ori r22, r2, 4095
	lui r2, 160
	storeli.w r1, -540(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r21, r1, 4095
	lui r1, 522239
	ori r23, r1, 4095
	ori r1, r2, 1024
	lui r2, 224
	storeli.w r1, -628(r30)                 # 4-byte Folded Spill
	lui r1, 192
	ori r1, r1, 1024
	storeli.w r1, -632(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 288
	storeli.w r1, -636(r30)                 # 4-byte Folded Spill
	lui r1, 256
	ori r1, r1, 1024
	storeli.w r1, -640(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1024
	lui r2, 2047
	storeli.w r1, -644(r30)                 # 4-byte Folded Spill
	lui r1, 320
	ori r1, r1, 1024
	storeli.w r1, -648(r30)                 # 4-byte Folded Spill
	ori r1, r2, 4095
	lui r2, 352
	ori r2, r2, 1024
	storeli.w r2, -652(r30)                 # 4-byte Folded Spill
	ori r2, r3, 2115
	lui r3, 259268
	storeli.w r2, -656(r30)                 # 4-byte Folded Spill
	lui r2, 250738
	ori r2, r2, 1811
	storeli.w r2, -660(r30)                 # 4-byte Folded Spill
	ori r2, r3, 554
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge43.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1858 7                        # parallel-rne.mlir:1858:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 1859 7                        # parallel-rne.mlir:1859:7
	addli r2, zero, 32
	xsignal r2, 0
	.loc	1 1860 7                        # parallel-rne.mlir:1860:7
	addli r2, zero, 44
	xsignal r2, 0
	.loc	1 1861 7                        # parallel-rne.mlir:1861:7
	addli r2, zero, 46
	xsignal r2, 0
	load.d r[8:9], -568(r30)                # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 69 5                          # parallel-rne.mlir:69:5
	load.d r[2:3], -616(r30)                # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	addli r7, zero, 64
	addli r11, zero, 4
	addli r13, zero, 2
	setlt.sl r2, r[8:9], r[2:3]
	beq r2, zero, .LBB0_1682
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_134 Depth 2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_136 Depth 3
                                        #     Child Loop BB0_164 Depth 2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_166 Depth 3
                                        #     Child Loop BB0_194 Depth 2
                                        #       Child Loop BB0_201 Depth 3
                                        #       Child Loop BB0_196 Depth 3
                                        #     Child Loop BB0_224 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
                                        #     Child Loop BB0_254 Depth 2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_256 Depth 3
                                        #     Child Loop BB0_289 Depth 2
                                        #     Child Loop BB0_295 Depth 2
                                        #       Child Loop BB0_297 Depth 3
                                        #     Child Loop BB0_320 Depth 2
                                        #       Child Loop BB0_322 Depth 3
                                        #     Child Loop BB0_350 Depth 2
                                        #       Child Loop BB0_352 Depth 3
                                        #     Child Loop BB0_374 Depth 2
                                        #       Child Loop BB0_376 Depth 3
                                        #     Child Loop BB0_398 Depth 2
                                        #       Child Loop BB0_400 Depth 3
                                        #     Child Loop BB0_422 Depth 2
                                        #       Child Loop BB0_424 Depth 3
                                        #     Child Loop BB0_446 Depth 2
                                        #       Child Loop BB0_448 Depth 3
                                        #     Child Loop BB0_470 Depth 2
                                        #       Child Loop BB0_472 Depth 3
                                        #     Child Loop BB0_508 Depth 2
                                        #       Child Loop BB0_525 Depth 3
                                        #       Child Loop BB0_511 Depth 3
                                        #     Child Loop BB0_536 Depth 2
                                        #       Child Loop BB0_553 Depth 3
                                        #       Child Loop BB0_539 Depth 3
                                        #     Child Loop BB0_564 Depth 2
                                        #       Child Loop BB0_581 Depth 3
                                        #       Child Loop BB0_567 Depth 3
                                        #     Child Loop BB0_592 Depth 2
                                        #       Child Loop BB0_609 Depth 3
                                        #       Child Loop BB0_595 Depth 3
                                        #     Child Loop BB0_620 Depth 2
                                        #       Child Loop BB0_637 Depth 3
                                        #       Child Loop BB0_623 Depth 3
                                        #     Child Loop BB0_648 Depth 2
                                        #       Child Loop BB0_665 Depth 3
                                        #       Child Loop BB0_651 Depth 3
                                        #     Child Loop BB0_676 Depth 2
                                        #       Child Loop BB0_693 Depth 3
                                        #       Child Loop BB0_679 Depth 3
                                        #     Child Loop BB0_704 Depth 2
                                        #       Child Loop BB0_721 Depth 3
                                        #       Child Loop BB0_707 Depth 3
                                        #     Child Loop BB0_744 Depth 2
                                        #       Child Loop BB0_746 Depth 3
                                        #       Child Loop BB0_745 Depth 3
                                        #     Child Loop BB0_750 Depth 2
                                        #       Child Loop BB0_752 Depth 3
                                        #       Child Loop BB0_751 Depth 3
                                        #     Child Loop BB0_756 Depth 2
                                        #       Child Loop BB0_758 Depth 3
                                        #       Child Loop BB0_757 Depth 3
                                        #     Child Loop BB0_762 Depth 2
                                        #       Child Loop BB0_764 Depth 3
                                        #       Child Loop BB0_763 Depth 3
                                        #     Child Loop BB0_768 Depth 2
                                        #       Child Loop BB0_770 Depth 3
                                        #       Child Loop BB0_769 Depth 3
                                        #     Child Loop BB0_774 Depth 2
                                        #       Child Loop BB0_776 Depth 3
                                        #       Child Loop BB0_775 Depth 3
                                        #     Child Loop BB0_780 Depth 2
                                        #       Child Loop BB0_782 Depth 3
                                        #       Child Loop BB0_781 Depth 3
                                        #     Child Loop BB0_786 Depth 2
                                        #       Child Loop BB0_788 Depth 3
                                        #       Child Loop BB0_787 Depth 3
                                        #     Child Loop BB0_802 Depth 2
                                        #       Child Loop BB0_804 Depth 3
                                        #     Child Loop BB0_823 Depth 2
                                        #       Child Loop BB0_825 Depth 3
                                        #     Child Loop BB0_844 Depth 2
                                        #       Child Loop BB0_846 Depth 3
                                        #     Child Loop BB0_865 Depth 2
                                        #       Child Loop BB0_867 Depth 3
                                        #     Child Loop BB0_886 Depth 2
                                        #       Child Loop BB0_888 Depth 3
                                        #     Child Loop BB0_907 Depth 2
                                        #       Child Loop BB0_909 Depth 3
                                        #     Child Loop BB0_928 Depth 2
                                        #       Child Loop BB0_930 Depth 3
                                        #     Child Loop BB0_949 Depth 2
                                        #       Child Loop BB0_951 Depth 3
                                        #     Child Loop BB0_977 Depth 2
                                        #       Child Loop BB0_987 Depth 3
                                        #       Child Loop BB0_980 Depth 3
                                        #     Child Loop BB0_1013 Depth 2
                                        #       Child Loop BB0_1023 Depth 3
                                        #       Child Loop BB0_1016 Depth 3
                                        #     Child Loop BB0_1055 Depth 2
                                        #       Child Loop BB0_1065 Depth 3
                                        #       Child Loop BB0_1058 Depth 3
                                        #     Child Loop BB0_1091 Depth 2
                                        #       Child Loop BB0_1101 Depth 3
                                        #       Child Loop BB0_1094 Depth 3
                                        #     Child Loop BB0_1127 Depth 2
                                        #       Child Loop BB0_1137 Depth 3
                                        #       Child Loop BB0_1130 Depth 3
                                        #     Child Loop BB0_1163 Depth 2
                                        #       Child Loop BB0_1173 Depth 3
                                        #       Child Loop BB0_1166 Depth 3
                                        #     Child Loop BB0_1199 Depth 2
                                        #       Child Loop BB0_1209 Depth 3
                                        #       Child Loop BB0_1202 Depth 3
                                        #     Child Loop BB0_1235 Depth 2
                                        #       Child Loop BB0_1245 Depth 3
                                        #       Child Loop BB0_1238 Depth 3
                                        #     Child Loop BB0_1284 Depth 2
                                        #       Child Loop BB0_1303 Depth 3
                                        #       Child Loop BB0_1286 Depth 3
                                        #     Child Loop BB0_1333 Depth 2
                                        #       Child Loop BB0_1354 Depth 3
                                        #       Child Loop BB0_1336 Depth 3
                                        #     Child Loop BB0_1385 Depth 2
                                        #       Child Loop BB0_1406 Depth 3
                                        #       Child Loop BB0_1388 Depth 3
                                        #     Child Loop BB0_1436 Depth 2
                                        #       Child Loop BB0_1455 Depth 3
                                        #       Child Loop BB0_1438 Depth 3
                                        #     Child Loop BB0_1485 Depth 2
                                        #       Child Loop BB0_1504 Depth 3
                                        #       Child Loop BB0_1487 Depth 3
                                        #     Child Loop BB0_1534 Depth 2
                                        #       Child Loop BB0_1553 Depth 3
                                        #       Child Loop BB0_1536 Depth 3
                                        #     Child Loop BB0_1583 Depth 2
                                        #       Child Loop BB0_1602 Depth 3
                                        #       Child Loop BB0_1585 Depth 3
                                        #     Child Loop BB0_1632 Depth 2
                                        #       Child Loop BB0_1651 Depth 3
                                        #       Child Loop BB0_1634 Depth 3
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	loadli.w r3,  -436(r30)
	.loc	1 95 13                         # parallel-rne.mlir:95:13
	loadli.w r4,  -424(r30)
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	addli r2, r3, 1
	.loc	1 95 13                         # parallel-rne.mlir:95:13
	addli r5, r4, 1
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	storeli.w r2, -436(r30)
	.loc	1 95 13                         # parallel-rne.mlir:95:13
	storeli.w r5, -424(r30)
	.loc	1 96 7                          # parallel-rne.mlir:96:7
	bneq r6, r11, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  48(r30)
	loadli.w r6,  44(r30)
	store.d r[8:9], -568(r30)               # 8-byte Folded Spill
	mod.s r4, r4, r13
	.loc	1 116 15 is_stmt 1              # parallel-rne.mlir:116:15
	loadli.w r26,  -312(r30)
	addli r20, zero, 0
	addli r10, zero, 64
	addli r16, zero, 0
	div.s r5, r8, r5
	slli r4, r4, 16
	div.s r12, r5, r6
	addli r5, zero, 4
	div.s r6, r12, r7
	mod.s r7, r3, r13
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r3,  -412(r30)
	slli r8, r6, 3
	slli r6, r6, 6
	slli r15, r7, 16
	lui r7, 32
	sub.s r9, r11, r8
	addli r11, zero, 8
	sub.s r6, r12, r6
	add.s r13, r4, r7
	min.s r9, r9, r11
	mod.s r11, r12, r9
	div.s r6, r6, r9
	addli r9, zero, 7
	add.s r4, r8, r11
	slli r2, r6, 7
	zext_int2long r[6:7], r6
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	slli r2, r4, 7
	zext_int2long r[11:12], r4
	addli r4, zero, 17
	sll.d r[6:7], r[6:7], r9
	storeli.w r2, -604(r30)                 # 4-byte Folded Spill
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	addli r2, zero, 1
	sll.d r[18:19], r[11:12], r4
	store.d r[11:12], -600(r30)             # 8-byte Folded Spill
	sll.d r[11:12], r[6:7], r2
	load.d r[6:7], -624(r30)                # 8-byte Folded Reload
	store.d r[18:19], -456(r30)             # 8-byte Folded Spill
	store.d r[11:12], -584(r30)             # 8-byte Folded Spill
	and.d r[6:7], r[18:19], r[6:7]
	store.d r[6:7], -464(r30)               # 8-byte Folded Spill
	load.d r[6:7], 8(r30)
	add.ul r[6:7], r[6:7], r[11:12]
	store.d r[6:7], -472(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 64
	addli r10, zero, 4
	addli r7, zero, 64
	addli r5, zero, 2
	addli r8, zero, 128
	addli r14, zero, 256
	ori r6, r4, 64
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	lock zero, r10
	addli r4, zero, 2048
	dma_cfg r2, r2, zero, 0
	add.s r6, r20, r6
	dma_cfg zero, r28, zero, 2
	dma_cfg r6, r27, r7, 3
	addli r6, zero, 64
	addli r7, zero, 5
	dma_cfg r8, r6, r5, 4
	dma_cfg r14, r4, r11, 5
	addli r4, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r9, 10
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
	dma_cfg r2, r2, zero, 0
	dma_cfg r2, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r6, 3
	dma_cfg r8, zero, r5, 4
	dma_cfg r14, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r5, 0
.LBB0_11:                               # %.thread107
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	loadli.w r6,  -292(r30)
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	loadli.w r7,  -128(r30)
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	addli r6, r6, 1
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	addli r7, r7, 1
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	storeli.w r6, -292(r30)
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	storeli.w r7, -128(r30)
.LBB0_12:                               # %.thread110
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	loadli.w r20,  -448(r30)                # 4-byte Folded Reload
	.loc	1 97 7 is_stmt 1                # parallel-rne.mlir:97:7
	addli r16, r16, 1
	addli r2, zero, 16
	beq r16, r2, .LBB0_35
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 4
	addli r10, zero, 64
	.loc	1 141 15 is_stmt 1              # parallel-rne.mlir:141:15
	addli r20, r20, 1
	addli r26, r18, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_33 Depth 3
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	zext_int2long r[27:28], r16
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	addli r2, zero, 6
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	load.d r[11:12], -456(r30)              # 8-byte Folded Reload
	storeli.w r20, -448(r30)                # 4-byte Folded Spill
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	sll.d r[6:7], r[27:28], r2
	loadli.w r2,  -540(r30)                 # 4-byte Folded Reload
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	add.ul r[11:12], r[6:7], r[11:12]
	zext_int2long r[6:7], r2
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	setlt.ul r6, r[6:7], r[11:12]
	load.d r[7:8], -464(r30)                # 8-byte Folded Reload
	.loc	1 106 15                        # parallel-rne.mlir:106:15
	bneq r6, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[7:8], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 114 15 is_stmt 1              # parallel-rne.mlir:114:15
	addli r2, zero, 24
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	mod.s r18, r26, r5
	lui r25, 1024
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r4, zero, 2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r6, r3, r2
	addli r2, zero, 384
	addli r3, r3, 1
	zext_int2long r[19:20], r2
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	lui r2, 64
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r3, -412(r30)
	store.d r[19:20], -536(r30)             # 8-byte Folded Spill
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	slli r20, r18, 15
	addli r18, r26, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r14, r6, 15
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	add.s r19, r20, r2
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	storeli.w r18, -312(r30)
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	beq r6, r4, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r4
	addli r2, zero, 1
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	bneq r4, r2, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r4, zero, 1024
	sub.sl r[6:7], r[11:12], r[7:8]
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	sll.d r[11:12], r[11:12], r2
	zext_int2long r[27:28], r4
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[6:7], r[6:7], r[27:28]
	load.d r[27:28], -536(r30)              # 8-byte Folded Reload
	min.sl r[27:28], r[6:7], r[27:28]
	sub.sl r[6:7], r[27:28], r[6:7]
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	load.d r[27:28], 0(r30)
	add.ul r[27:28], r[27:28], r[11:12]
	addli r12, zero, 3
	addli r11, r6, 128
	xwait r12, 0
	blt.s r12, r26, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 5
	addli r6, zero, 2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r4, zero, 6
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 256
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r9, 10
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
	addli r4, zero, 128
	dma_cfg r2, r2, zero, 0
	dma_cfg r2, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r10, 3
	dma_cfg r4, zero, r6, 4
	dma_cfg r5, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	addli r2, zero, 5
	addli r6, zero, 64
	addli r10, zero, 4
	xwait r4, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r4, zero, 0
	ds_cfg r6, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 3
	shuffle_batch r14, r19, r6, 1
	unlock zero
	xsignal r2, 0
	xsignal r10, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	loadli.w r6,  -128(r30)
	addli r10, zero, 4
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	loadli.w r7,  -292(r30)
	addli r2, zero, 40
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	mod.s r11, r6, r10
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	mod.s r8, r7, r2
	addli r7, r7, 1
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	lui r2, 96
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	storeli.w r7, -292(r30)
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	addli r7, r6, 1
	storeli.w r7, -128(r30)
	slli r20, r11, 15
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	slli r19, r8, 15
	.loc	1 133 15                        # parallel-rne.mlir:133:15
	add.s r11, r20, r2
	.loc	1 138 9                         # parallel-rne.mlir:138:9
	addli r2, zero, 6
	.loc	1 137 9                         # parallel-rne.mlir:137:9
	beq r4, r9, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r4, r2, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 17
	.loc	1 137 9                         # parallel-rne.mlir:137:9
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r14, zero, 3
	xwait r9, 0
	sll.d r[7:8], r[27:28], r12
	add.ul r[26:27], r[4:5], r[7:8]
	blt.s r14, r6, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 5
	addli r2, zero, 1
	.loc	1 137 9                         # parallel-rne.mlir:137:9
	addli r4, zero, 2
	addli r5, zero, 6
	addli r6, zero, 64
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 4
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r9, 10
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
	addli r5, zero, 18
	dma_cfg zero, zero, r12, 10
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
	addli r5, zero, 128
	dma_cfg r2, r2, zero, 0
	dma_cfg r2, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r6, 3
	dma_cfg r5, zero, r4, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r2, 96
	addli r4, zero, 4
	addli r7, zero, 64
	addli r10, zero, 4
	addli r8, zero, 128
	addli r19, zero, 512
	addli r5, zero, 6
	ori r6, r2, 64
	addli r2, zero, 1
	.loc	1 137 9                         # parallel-rne.mlir:137:9
	lock zero, r4
	addli r4, zero, 2048
	dma_cfg r2, r2, zero, 0
	add.s r6, r20, r6
	dma_cfg zero, r27, zero, 2
	dma_cfg r6, r26, r7, 3
	addli r6, zero, 64
	addli r7, zero, 5
	dma_cfg r8, r6, r10, 4
	dma_cfg r19, r4, r6, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r9, 10
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
	addli r4, zero, 18
	dma_cfg zero, zero, r12, 10
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
	dma_cfg r2, r2, zero, 0
	dma_cfg r2, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r6, 3
	dma_cfg r8, zero, r10, 4
	dma_cfg r19, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r5, 0
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 138 9 is_stmt 1               # parallel-rne.mlir:138:9
	xwait r2, 0
	addli r2, zero, 9
	addli r4, zero, 2
	addli r6, zero, 64
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r4, zero, 0
	addli r4, zero, 8
	ds_cfg r2, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r19, r11, r6, 2
	unlock zero
	xsignal r9, 0
	xsignal r4, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 140 9                         # parallel-rne.mlir:140:9
	bneq r6, r10, .LBB0_31
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 8
	xwait r10, 0
	addli r9, zero, 64
	addli r2, zero, 128
	xwait r4, 0
	loadli.w r20,  -448(r30)                # 4-byte Folded Reload
	beq r20, zero, .LBB0_32
# %bb.29:                               # %.preheader184.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r6, zero, 1
	addli r7, zero, 1
	addli r8, zero, 0
.LBB0_30:                               # %.preheader184
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 140 9                         # parallel-rne.mlir:140:9
	slli r11, r8, 14
	slli r8, r8, 8
	lock zero, r6
	mm_cfg r9, r9, r2, 0
	or r11, r11, r19
	or r8, r8, r13
	mm_cfg r10, r10, r6, 2
	mm_acc r8, r14, r11, 8
	andi r11, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r6
	bneq r11, zero, .LBB0_30
	j .LBB0_34
.LBB0_31:                               # %.thread110.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	loadli.w r20,  -448(r30)                # 4-byte Folded Reload
	.loc	1 97 7 is_stmt 1                # parallel-rne.mlir:97:7
	addli r16, r16, 1
	addli r2, zero, 16
	bneq r16, r2, .LBB0_13
	j .LBB0_37
.LBB0_32:                               # %.preheader183.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 1
	addli r7, zero, 1
	addli r8, zero, 0
.LBB0_33:                               # %.preheader183
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 140 9 is_stmt 1               # parallel-rne.mlir:140:9
	slli r11, r8, 14
	slli r8, r8, 8
	lock zero, r6
	mm_cfg r9, r9, r2, 0
	or r11, r11, r19
	or r8, r8, r13
	mm_cfg r10, r10, r6, 2
	mm r8, r14, r11, 8
	andi r11, r7, 1
	addli r8, zero, 1
	addli r7, zero, 0
	unlock r6
	bneq r11, zero, .LBB0_33
.LBB0_34:                               # %.thread110.thread256
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 5
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	addli r16, r16, 1
	addli r9, zero, 7
	.loc	1 140 9                         # parallel-rne.mlir:140:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 97 7                          # parallel-rne.mlir:97:7
	addli r2, zero, 16
	bneq r16, r2, .LBB0_13
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 144 7                         # parallel-rne.mlir:144:7
	core_id r2
	bneq r2, r10, .LBB0_37
.LBB0_36:                               # %.thread258
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_37:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	loadli.w r2,  -108(r30)
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	loadli.w r3,  -96(r30)
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	addli r2, r2, 1
	storeli.w r3, -572(r30)                 # 4-byte Folded Spill
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	addli r3, r3, 1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	storeli.w r2, -108(r30)
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 3
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	storeli.w r3, -96(r30)
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	bneq r6, r2, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r2, zero, 21
	xwait r2, 0
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 166 7 is_stmt 1               # parallel-rne.mlir:166:7
	xfence
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	mfence { lm, sm, gm }
	zext_int2long r[26:27], r2
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 15
	zext_int2long r[2:3], r2
	store.d r[2:3], -528(r30)               # 8-byte Folded Spill
	addli r2, zero, 127
	zext_int2long r[2:3], r2
	store.d r[2:3], -448(r30)               # 8-byte Folded Spill
	addli r2, zero, 1
	sync_core
	.loc	1 169 7                         # parallel-rne.mlir:169:7
	bneq r6, zero, .LBB0_71
# %bb.40:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[3:4], zero
	lui r25, 1024
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block909
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 176 9                         # parallel-rne.mlir:176:9
	load.d r[2:3], -528(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_70
.LBB0_42:                               # %.preheader182
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_45 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	bneq r15, r13, .LBB0_49
# %bb.43:                               # %scalar.ph903.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[6:7], zero
	j .LBB0_45
.LBB0_44:                               # %scalar.ph903
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[6:7], r[2:3]
	.loc	1 192 13 is_stmt 1              # parallel-rne.mlir:192:13
	add.s r3, r15, r8
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	addli.d r[6:7], r[6:7], 1
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r9, 0(r3)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	beq r2, zero, .LBB0_41
.LBB0_45:                               # %scalar.ph903
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[2:3], r[6:7], r[4:5]
	slli r8, r2, 2
	add.s r2, r13, r8
	loads.w r2, 0(r2)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r3, r2, r21
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r9, r24, r3
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r9, zero, .LBB0_47
# %bb.46:                               # %scalar.ph903
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r3, r23, r3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r3, zero, .LBB0_44
	j .LBB0_48
.LBB0_47:                               #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r3, r23, r3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r3, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph903
                                        #   in Loop: Header=BB0_45 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_44
.LBB0_49:                               # %vector.body905.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	zext_int2long r[7:8], zero
	j .LBB0_51
.LBB0_50:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	add.s r6, r15, r9
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	seteq.d r3, r[7:8], r[26:27]
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r10, 12(r6)
	stores.w r12, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	bneq r3, zero, .LBB0_41
.LBB0_51:                               # %vector.body905
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r14, r11, r21
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r2, r24, r14
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_53
# %bb.52:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	or r10, r11, r25
.LBB0_54:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r18, 8(r16)
	and r6, r18, r21
	setlt.u r2, r24, r6
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_56
# %bb.55:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	or r12, r18, r25
.LBB0_57:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_59
# %bb.58:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	or r28, r19, r25
.LBB0_60:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_62
# %bb.61:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r3, r23, r3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r3, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r3, r23, r3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r3, zero, .LBB0_64
.LBB0_63:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_64:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r3, r23, r20
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r3, zero, .LBB0_67
# %bb.65:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r3, zero, .LBB0_68
.LBB0_66:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r3, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r3, zero, .LBB0_66
.LBB0_68:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r22
	and r12, r3, r6
	setlt.u r3, r23, r14
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r3, zero, .LBB0_50
.LBB0_69:                               # %vector.body905
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_7 Depth=1
	lui r25, 1024
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r2, zero, 1
	.loc	1 169 7                         # parallel-rne.mlir:169:7
	mfence { sm }
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 31
	zext_int2long r[3:4], r3
	.loc	1 197 7 is_stmt 1               # parallel-rne.mlir:197:7
	store.d r[3:4], -520(r30)               # 8-byte Folded Spill
	bneq r6, r2, .LBB0_101
# %bb.72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_74
.LBB0_73:                               # %middle.block900
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 204 9 is_stmt 1               # parallel-rne.mlir:204:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_100
.LBB0_74:                               # %.preheader181
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[4:5], zero
	.loc	1 205 11 is_stmt 1              # parallel-rne.mlir:205:11
	beq r15, r13, .LBB0_76
	j .LBB0_81
.LBB0_75:                               # %scalar.ph894
                                        #   in Loop: Header=BB0_76 Depth=3
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[4:5], r[2:3]
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	add.s r3, r15, r6
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	stores.w r9, 0(r3)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	beq r2, zero, .LBB0_73
.LBB0_76:                               # %scalar.ph894
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r6, r2, 2
	add.s r2, r13, r6
	loads.w r2, 0(r2)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	and r3, r2, r21
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	setlt.u r9, r24, r3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r9, zero, .LBB0_78
# %bb.77:                               # %scalar.ph894
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r3, r23, r3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r3, zero, .LBB0_75
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r3, r23, r3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r3, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph894
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_75
.LBB0_80:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 205 11 is_stmt 1              # parallel-rne.mlir:205:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	add.s r6, r15, r9
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	seteq.d r3, r[4:5], r[26:27]
	.loc	1 220 13                        # parallel-rne.mlir:220:13
	stores.w r10, 12(r6)
	stores.w r18, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 205 11                        # parallel-rne.mlir:205:11
	bneq r3, zero, .LBB0_73
.LBB0_81:                               # %vector.body896
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	and r14, r11, r21
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	setlt.u r2, r24, r14
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r2, zero, .LBB0_83
# %bb.82:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	or r10, r11, r25
.LBB0_84:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r12, 8(r16)
	and r6, r12, r21
	setlt.u r2, r24, r6
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r2, zero, .LBB0_86
# %bb.85:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	or r18, r12, r25
.LBB0_87:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r2, zero, .LBB0_89
# %bb.88:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	or r28, r19, r25
.LBB0_90:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	bneq r2, zero, .LBB0_92
# %bb.91:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r3, r23, r3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r3, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 217 19 is_stmt 1              # parallel-rne.mlir:217:19
	setlt.u r3, r23, r3
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r3, zero, .LBB0_94
.LBB0_93:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_94:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r3, r23, r20
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r3, zero, .LBB0_97
# %bb.95:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	beq r3, zero, .LBB0_98
.LBB0_96:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r3, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r3, zero, .LBB0_96
.LBB0_98:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r18, r3, r6
	setlt.u r3, r23, r14
	.loc	1 218 19                        # parallel-rne.mlir:218:19
	bneq r3, zero, .LBB0_80
.LBB0_99:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 197 7                         # parallel-rne.mlir:197:7
	mfence { sm }
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[2:3], r2
	.loc	1 225 7 is_stmt 1               # parallel-rne.mlir:225:7
	store.d r[2:3], -512(r30)               # 8-byte Folded Spill
	addli r2, zero, 2
	bneq r6, r2, .LBB0_131
# %bb.102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 225 7                         # parallel-rne.mlir:225:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block891
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 232 9 is_stmt 1               # parallel-rne.mlir:232:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_130
.LBB0_104:                              # %.preheader180
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[4:5], zero
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	beq r15, r13, .LBB0_106
	j .LBB0_111
.LBB0_105:                              # %scalar.ph885
                                        #   in Loop: Header=BB0_106 Depth=3
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[4:5], r[2:3]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r3, r15, r6
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r9, 0(r3)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	beq r2, zero, .LBB0_103
.LBB0_106:                              # %scalar.ph885
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r6, r2, 2
	add.s r2, r13, r6
	loads.w r2, 0(r2)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r3, r2, r21
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r9, r24, r3
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r9, zero, .LBB0_108
# %bb.107:                              # %scalar.ph885
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r23, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_105
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r23, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph885
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_105
.LBB0_110:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r6, r15, r9
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	seteq.d r3, r[4:5], r[26:27]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r10, 12(r6)
	stores.w r18, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	bneq r3, zero, .LBB0_103
.LBB0_111:                              # %vector.body887
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r14, r11, r21
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r2, r24, r14
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_113
# %bb.112:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	or r10, r11, r25
.LBB0_114:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r12, 8(r16)
	and r6, r12, r21
	setlt.u r2, r24, r6
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	or r18, r12, r25
.LBB0_117:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	or r28, r19, r25
.LBB0_120:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_122
# %bb.121:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r23, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r3, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r23, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_124
.LBB0_123:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_124:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r3, r23, r20
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r3, zero, .LBB0_127
# %bb.125:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r3, zero, .LBB0_128
.LBB0_126:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_126
.LBB0_128:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r18, r3, r6
	setlt.u r3, r23, r14
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_110
.LBB0_129:                              # %vector.body887
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_110
.LBB0_130:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 225 7                         # parallel-rne.mlir:225:7
	mfence { sm }
.LBB0_131:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[2:3], r2
	.loc	1 253 7 is_stmt 1               # parallel-rne.mlir:253:7
	store.d r[2:3], -504(r30)               # 8-byte Folded Spill
	addli r2, zero, 3
	bneq r6, r2, .LBB0_161
# %bb.132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_134
.LBB0_133:                              # %middle.block882
                                        #   in Loop: Header=BB0_134 Depth=2
	.loc	1 260 9 is_stmt 1               # parallel-rne.mlir:260:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_160
.LBB0_134:                              # %.preheader179
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_141 Depth 3
                                        #       Child Loop BB0_136 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[4:5], zero
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	beq r15, r13, .LBB0_136
	j .LBB0_141
.LBB0_135:                              # %scalar.ph876
                                        #   in Loop: Header=BB0_136 Depth=3
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[4:5], r[2:3]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r3, r15, r6
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r9, 0(r3)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	beq r2, zero, .LBB0_133
.LBB0_136:                              # %scalar.ph876
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r6, r2, 2
	add.s r2, r13, r6
	loads.w r2, 0(r2)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r3, r2, r21
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r9, r24, r3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r9, zero, .LBB0_138
# %bb.137:                              # %scalar.ph876
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r23, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_135
	j .LBB0_139
.LBB0_138:                              #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r23, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_135
.LBB0_139:                              # %scalar.ph876
                                        #   in Loop: Header=BB0_136 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_135
.LBB0_140:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 261 11 is_stmt 1              # parallel-rne.mlir:261:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	add.s r6, r15, r9
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	seteq.d r3, r[4:5], r[26:27]
	.loc	1 276 13                        # parallel-rne.mlir:276:13
	stores.w r10, 12(r6)
	stores.w r18, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 261 11                        # parallel-rne.mlir:261:11
	bneq r3, zero, .LBB0_133
.LBB0_141:                              # %vector.body878
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_134 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r14, r11, r21
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	setlt.u r2, r24, r14
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_143
# %bb.142:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	or r10, r11, r25
.LBB0_144:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r12, 8(r16)
	and r6, r12, r21
	setlt.u r2, r24, r6
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_146
# %bb.145:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_141 Depth=3
	or r18, r12, r25
.LBB0_147:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_149
# %bb.148:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_141 Depth=3
	or r28, r19, r25
.LBB0_150:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	bneq r2, zero, .LBB0_152
# %bb.151:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r23, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r3, zero, .LBB0_153
	j .LBB0_154
.LBB0_152:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 273 19 is_stmt 1              # parallel-rne.mlir:273:19
	setlt.u r3, r23, r3
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_154
.LBB0_153:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_154:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	setlt.u r3, r23, r20
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r3, zero, .LBB0_157
# %bb.155:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	beq r3, zero, .LBB0_158
.LBB0_156:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_140
	j .LBB0_159
.LBB0_157:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_156
.LBB0_158:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r18, r3, r6
	setlt.u r3, r23, r14
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	bneq r3, zero, .LBB0_140
.LBB0_159:                              # %vector.body878
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_140
.LBB0_160:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
.LBB0_161:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	zext_int2long r[2:3], r2
	.loc	1 281 7 is_stmt 1               # parallel-rne.mlir:281:7
	store.d r[2:3], -496(r30)               # 8-byte Folded Spill
	addli r2, zero, 4
	bneq r6, r2, .LBB0_191
# %bb.162:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_164
.LBB0_163:                              # %middle.block873
                                        #   in Loop: Header=BB0_164 Depth=2
	.loc	1 288 9 is_stmt 1               # parallel-rne.mlir:288:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_190
.LBB0_164:                              # %.preheader178
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_166 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[4:5], zero
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	beq r15, r13, .LBB0_166
	j .LBB0_171
.LBB0_165:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_166 Depth=3
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[4:5], r[2:3]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r3, r15, r6
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r9, 0(r3)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	beq r2, zero, .LBB0_163
.LBB0_166:                              # %scalar.ph867
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r6, r2, 2
	add.s r2, r13, r6
	loads.w r2, 0(r2)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r3, r2, r21
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r9, r24, r3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r9, zero, .LBB0_168
# %bb.167:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r3, r23, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_165
	j .LBB0_169
.LBB0_168:                              #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r3, r23, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_165
.LBB0_169:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_165
.LBB0_170:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 289 11 is_stmt 1              # parallel-rne.mlir:289:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	add.s r6, r15, r9
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	seteq.d r3, r[4:5], r[26:27]
	.loc	1 304 13                        # parallel-rne.mlir:304:13
	stores.w r10, 12(r6)
	stores.w r18, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 289 11                        # parallel-rne.mlir:289:11
	bneq r3, zero, .LBB0_163
.LBB0_171:                              # %vector.body869
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_164 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	and r14, r11, r21
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	setlt.u r2, r24, r14
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_173
# %bb.172:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_171 Depth=3
	or r10, r11, r25
.LBB0_174:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r12, 8(r16)
	and r6, r12, r21
	setlt.u r2, r24, r6
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_176
# %bb.175:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_171 Depth=3
	or r18, r12, r25
.LBB0_177:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_171 Depth=3
	or r28, r19, r25
.LBB0_180:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	bneq r2, zero, .LBB0_182
# %bb.181:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r3, r23, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r3, zero, .LBB0_183
	j .LBB0_184
.LBB0_182:                              #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 301 19 is_stmt 1              # parallel-rne.mlir:301:19
	setlt.u r3, r23, r3
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_184
.LBB0_183:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_184:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	setlt.u r3, r23, r20
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r3, zero, .LBB0_187
# %bb.185:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	beq r3, zero, .LBB0_188
.LBB0_186:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_170
	j .LBB0_189
.LBB0_187:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_186
.LBB0_188:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r18, r3, r6
	setlt.u r3, r23, r14
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	bneq r3, zero, .LBB0_170
.LBB0_189:                              # %vector.body869
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_170
.LBB0_190:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 281 7                         # parallel-rne.mlir:281:7
	mfence { sm }
.LBB0_191:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 95
	zext_int2long r[2:3], r2
	.loc	1 309 7 is_stmt 1               # parallel-rne.mlir:309:7
	store.d r[2:3], -488(r30)               # 8-byte Folded Spill
	addli r2, zero, 5
	bneq r6, r2, .LBB0_221
# %bb.192:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_194
.LBB0_193:                              # %middle.block864
                                        #   in Loop: Header=BB0_194 Depth=2
	.loc	1 316 9 is_stmt 1               # parallel-rne.mlir:316:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_220
.LBB0_194:                              # %.preheader177
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_201 Depth 3
                                        #       Child Loop BB0_196 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[4:5], zero
	.loc	1 317 11 is_stmt 1              # parallel-rne.mlir:317:11
	beq r15, r13, .LBB0_196
	j .LBB0_201
.LBB0_195:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_196 Depth=3
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[4:5], r[2:3]
	.loc	1 332 13                        # parallel-rne.mlir:332:13
	add.s r3, r15, r6
	.loc	1 317 11                        # parallel-rne.mlir:317:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 332 13                        # parallel-rne.mlir:332:13
	stores.w r9, 0(r3)
	.loc	1 317 11                        # parallel-rne.mlir:317:11
	beq r2, zero, .LBB0_193
.LBB0_196:                              # %scalar.ph858
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_194 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r6, r2, 2
	add.s r2, r13, r6
	loads.w r2, 0(r2)
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	and r3, r2, r21
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	setlt.u r9, r24, r3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r9, zero, .LBB0_198
# %bb.197:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 329 19 is_stmt 1              # parallel-rne.mlir:329:19
	setlt.u r3, r23, r3
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r3, zero, .LBB0_195
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 329 19 is_stmt 1              # parallel-rne.mlir:329:19
	setlt.u r3, r23, r3
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r3, zero, .LBB0_195
.LBB0_199:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_195
.LBB0_200:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 317 11 is_stmt 1              # parallel-rne.mlir:317:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 332 13                        # parallel-rne.mlir:332:13
	add.s r6, r15, r9
	.loc	1 317 11                        # parallel-rne.mlir:317:11
	seteq.d r3, r[4:5], r[26:27]
	.loc	1 332 13                        # parallel-rne.mlir:332:13
	stores.w r10, 12(r6)
	stores.w r18, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 317 11                        # parallel-rne.mlir:317:11
	bneq r3, zero, .LBB0_193
.LBB0_201:                              # %vector.body860
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_194 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	and r14, r11, r21
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	setlt.u r2, r24, r14
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r2, zero, .LBB0_203
# %bb.202:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_204
.LBB0_203:                              #   in Loop: Header=BB0_201 Depth=3
	or r10, r11, r25
.LBB0_204:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	loads.w r12, 8(r16)
	and r6, r12, r21
	setlt.u r2, r24, r6
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r2, zero, .LBB0_206
# %bb.205:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_201 Depth=3
	or r18, r12, r25
.LBB0_207:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r2, zero, .LBB0_209
# %bb.208:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_210
.LBB0_209:                              #   in Loop: Header=BB0_201 Depth=3
	or r28, r19, r25
.LBB0_210:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	bneq r2, zero, .LBB0_212
# %bb.211:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 329 19 is_stmt 1              # parallel-rne.mlir:329:19
	setlt.u r3, r23, r3
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	beq r3, zero, .LBB0_213
	j .LBB0_214
.LBB0_212:                              #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 329 19 is_stmt 1              # parallel-rne.mlir:329:19
	setlt.u r3, r23, r3
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r3, zero, .LBB0_214
.LBB0_213:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_214:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	setlt.u r3, r23, r20
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	beq r3, zero, .LBB0_217
# %bb.215:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	beq r3, zero, .LBB0_218
.LBB0_216:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r3, zero, .LBB0_200
	j .LBB0_219
.LBB0_217:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r3, zero, .LBB0_216
.LBB0_218:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r18, r3, r6
	setlt.u r3, r23, r14
	.loc	1 330 19                        # parallel-rne.mlir:330:19
	bneq r3, zero, .LBB0_200
.LBB0_219:                              # %vector.body860
                                        #   in Loop: Header=BB0_201 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_200
.LBB0_220:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 309 7                         # parallel-rne.mlir:309:7
	mfence { sm }
.LBB0_221:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	zext_int2long r[2:3], r2
	.loc	1 337 7 is_stmt 1               # parallel-rne.mlir:337:7
	store.d r[2:3], -480(r30)               # 8-byte Folded Spill
	addli r2, zero, 6
	bneq r6, r2, .LBB0_251
# %bb.222:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 337 7                         # parallel-rne.mlir:337:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_224
.LBB0_223:                              # %middle.block855
                                        #   in Loop: Header=BB0_224 Depth=2
	.loc	1 344 9 is_stmt 1               # parallel-rne.mlir:344:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_250
.LBB0_224:                              # %.preheader176
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[4:5], zero
	.loc	1 345 11 is_stmt 1              # parallel-rne.mlir:345:11
	beq r15, r13, .LBB0_226
	j .LBB0_231
.LBB0_225:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_226 Depth=3
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[4:5], r[2:3]
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	add.s r3, r15, r6
	.loc	1 345 11                        # parallel-rne.mlir:345:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	stores.w r9, 0(r3)
	.loc	1 345 11                        # parallel-rne.mlir:345:11
	beq r2, zero, .LBB0_223
.LBB0_226:                              # %scalar.ph849
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r6, r2, 2
	add.s r2, r13, r6
	loads.w r2, 0(r2)
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	and r3, r2, r21
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	setlt.u r9, r24, r3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r9, zero, .LBB0_228
# %bb.227:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 357 19 is_stmt 1              # parallel-rne.mlir:357:19
	setlt.u r3, r23, r3
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r3, zero, .LBB0_225
	j .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 357 19 is_stmt 1              # parallel-rne.mlir:357:19
	setlt.u r3, r23, r3
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r3, zero, .LBB0_225
.LBB0_229:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_225
.LBB0_230:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 345 11 is_stmt 1              # parallel-rne.mlir:345:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	add.s r6, r15, r9
	.loc	1 345 11                        # parallel-rne.mlir:345:11
	seteq.d r3, r[4:5], r[26:27]
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	stores.w r10, 12(r6)
	stores.w r18, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 345 11                        # parallel-rne.mlir:345:11
	bneq r3, zero, .LBB0_223
.LBB0_231:                              # %vector.body851
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	and r14, r11, r21
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	setlt.u r2, r24, r14
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_233
# %bb.232:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_231 Depth=3
	or r10, r11, r25
.LBB0_234:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r12, 8(r16)
	and r6, r12, r21
	setlt.u r2, r24, r6
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_236
# %bb.235:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_231 Depth=3
	or r18, r12, r25
.LBB0_237:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_239
# %bb.238:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_231 Depth=3
	or r28, r19, r25
.LBB0_240:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_242
# %bb.241:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 357 19 is_stmt 1              # parallel-rne.mlir:357:19
	setlt.u r3, r23, r3
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	beq r3, zero, .LBB0_243
	j .LBB0_244
.LBB0_242:                              #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 357 19 is_stmt 1              # parallel-rne.mlir:357:19
	setlt.u r3, r23, r3
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r3, zero, .LBB0_244
.LBB0_243:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_244:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	setlt.u r3, r23, r20
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	beq r3, zero, .LBB0_247
# %bb.245:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	beq r3, zero, .LBB0_248
.LBB0_246:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r3, zero, .LBB0_230
	j .LBB0_249
.LBB0_247:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r3, zero, .LBB0_246
.LBB0_248:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r18, r3, r6
	setlt.u r3, r23, r14
	.loc	1 358 19                        # parallel-rne.mlir:358:19
	bneq r3, zero, .LBB0_230
.LBB0_249:                              # %vector.body851
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_230
.LBB0_250:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 337 7                         # parallel-rne.mlir:337:7
	mfence { sm }
.LBB0_251:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	bneq r6, r9, .LBB0_281
# %bb.252:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_254
.LBB0_253:                              # %middle.block846
                                        #   in Loop: Header=BB0_254 Depth=2
	.loc	1 372 9 is_stmt 1               # parallel-rne.mlir:372:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_280
.LBB0_254:                              # %.preheader175
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_256 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[4:5], zero
	.loc	1 373 11 is_stmt 1              # parallel-rne.mlir:373:11
	beq r15, r13, .LBB0_256
	j .LBB0_261
.LBB0_255:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_256 Depth=3
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[4:5], r[2:3]
	.loc	1 388 13                        # parallel-rne.mlir:388:13
	add.s r3, r15, r6
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 388 13                        # parallel-rne.mlir:388:13
	stores.w r9, 0(r3)
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	beq r2, zero, .LBB0_253
.LBB0_256:                              # %scalar.ph840
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r6, r2, 2
	add.s r2, r13, r6
	loads.w r2, 0(r2)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	and r3, r2, r21
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	setlt.u r9, r24, r3
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	bneq r9, zero, .LBB0_258
# %bb.257:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 385 19 is_stmt 1              # parallel-rne.mlir:385:19
	setlt.u r3, r23, r3
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r3, zero, .LBB0_255
	j .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r9, r2, r25
	.loc	1 385 19 is_stmt 1              # parallel-rne.mlir:385:19
	setlt.u r3, r23, r3
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r3, zero, .LBB0_255
.LBB0_259:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_255
.LBB0_260:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 373 11 is_stmt 1              # parallel-rne.mlir:373:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 388 13                        # parallel-rne.mlir:388:13
	add.s r6, r15, r9
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	seteq.d r3, r[4:5], r[26:27]
	.loc	1 388 13                        # parallel-rne.mlir:388:13
	stores.w r10, 12(r6)
	stores.w r18, 8(r6)
	stores.w r28, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 373 11                        # parallel-rne.mlir:373:11
	bneq r3, zero, .LBB0_253
.LBB0_261:                              # %vector.body842
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_254 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	add.ul r[2:3], r[4:5], r[7:8]
	slli r9, r2, 2
	add.s r16, r13, r9
	loads.w r11, 12(r16)
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	and r14, r11, r21
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	setlt.u r2, r24, r14
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	bneq r2, zero, .LBB0_263
# %bb.262:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_264
.LBB0_263:                              #   in Loop: Header=BB0_261 Depth=3
	or r10, r11, r25
.LBB0_264:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r12, 8(r16)
	and r6, r12, r21
	setlt.u r2, r24, r6
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	bneq r2, zero, .LBB0_266
# %bb.265:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	j .LBB0_267
.LBB0_266:                              #   in Loop: Header=BB0_261 Depth=3
	or r18, r12, r25
.LBB0_267:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r19, 4(r16)
	and r20, r19, r21
	setlt.u r2, r24, r20
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	bneq r2, zero, .LBB0_269
# %bb.268:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_261 Depth=3
	or r28, r19, r25
.LBB0_270:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r16, 0(r16)
	and r3, r16, r21
	setlt.u r2, r24, r3
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	bneq r2, zero, .LBB0_272
# %bb.271:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r16, 0
	.loc	1 385 19 is_stmt 1              # parallel-rne.mlir:385:19
	setlt.u r3, r23, r3
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	beq r3, zero, .LBB0_273
	j .LBB0_274
.LBB0_272:                              #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r16, r25
	.loc	1 385 19 is_stmt 1              # parallel-rne.mlir:385:19
	setlt.u r3, r23, r3
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r3, zero, .LBB0_274
.LBB0_273:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r16, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_274:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	setlt.u r3, r23, r20
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	beq r3, zero, .LBB0_277
# %bb.275:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r6
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	beq r3, zero, .LBB0_278
.LBB0_276:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r3, zero, .LBB0_260
	j .LBB0_279
.LBB0_277:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r16, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r28, r3, r16
	setlt.u r3, r23, r6
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r3, zero, .LBB0_276
.LBB0_278:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r18, r3, r6
	setlt.u r3, r23, r14
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r3, zero, .LBB0_260
.LBB0_279:                              # %vector.body842
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r22
	and r10, r3, r6
	j .LBB0_260
.LBB0_280:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 365 7                         # parallel-rne.mlir:365:7
	mfence { sm }
.LBB0_281:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	addli r4, zero, 896
	zext_int2long r[4:5], r4
	zext_int2long r[2:3], r2
	min.ul r[4:5], r[2:3], r[4:5]
	addli.d r[4:5], r[4:5], 128
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	min.ul r[2:3], r[2:3], r[26:27]
	.loc	1 393 7 is_stmt 1               # parallel-rne.mlir:393:7
	store.d r[2:3], -592(r30)               # 8-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 394 7                         # parallel-rne.mlir:394:7
	addli r2, zero, 3
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	sync_core
	.loc	1 394 7                         # parallel-rne.mlir:394:7
	bneq r6, r2, .LBB0_283
# %bb.282:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 400 13                        # parallel-rne.mlir:400:13
	loadli.w r2,  -84(r30)
	addli r3, r2, 1
	storeli.w r3, -84(r30)
	.loc	1 402 7                         # parallel-rne.mlir:402:7
	addli r3, zero, 13
	xwait r3, 0
	.loc	1 403 7                         # parallel-rne.mlir:403:7
	addli r3, zero, 29
	xwait r3, 0
	j .LBB0_292
.LBB0_283:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -464(r30)                 # 4-byte Folded Reload
	addli r2, zero, 2
	addli r10, zero, 1
	mod.s r2, r4, r2
	slli r3, r2, 9
	lui r2, 128
	add.s r2, r3, r2
	.loc	1 397 7 is_stmt 1               # parallel-rne.mlir:397:7
	bneq r6, r10, .LBB0_287
# %bb.284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r8, r4, 0
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	load.d r[4:5], 16(r30)
	load.d r[6:7], -584(r30)                # 8-byte Folded Reload
	addli r13, zero, 23
	xwait r13, 0
	add.ul r[4:5], r[4:5], r[6:7]
	blt.s r10, r8, .LBB0_286
# %bb.285:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, zero, 5
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	addli r6, zero, 2
	addli r7, zero, 4
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 3
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 6
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
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
	addli r6, zero, 18
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r6, 3
	addli r6, zero, 128
	dma_cfg r6, zero, r7, 4
	addli r6, zero, 512
	dma_cfg r6, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
.LBB0_286:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r8, zero, 4
	lui r6, 128
	addli r7, zero, 64
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	lock zero, r8
	ori r6, r6, 64
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r5, zero, 2
	add.s r3, r3, r6
	load.d r[11:12], -592(r30)              # 8-byte Folded Reload
	dma_cfg r3, r4, r7, 3
	addli r5, zero, 256
	addli r6, r11, 31
	slli r4, r11, 1
	addli r11, zero, 128
	addli r12, zero, 512
	srli r3, r6, 5
	andi r4, r4, 62
	addli r6, zero, 5
	dma_cfg r11, r7, r3, 4
	dma_cfg r12, r5, r10, 5
	addli r5, zero, 2
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 3
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 6
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r5, 10
	addli r5, zero, 8
	dma_cfg zero, zero, r9, 10
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
	addli r5, zero, 24
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r13, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r7, 3
	dma_cfg r11, zero, r3, 4
	dma_cfg r12, zero, r10, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r8, 0
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 397 7                         # parallel-rne.mlir:397:7
	j .LBB0_291
.LBB0_287:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 398 7                         # parallel-rne.mlir:398:7
	addli r3, zero, 5
	bneq r6, r3, .LBB0_291
# %bb.288:                              #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 12
	addli r3, zero, 0
	lui r5, 16
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
.LBB0_289:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r15, r3
	addli r3, r3, 512
	dsmadd r4, r4, r2, 0
	bneq r3, r5, .LBB0_289
# %bb.290:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r2, 0
.LBB0_291:                              # %.thread113
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 400 13                        # parallel-rne.mlir:400:13
	loadli.w r2,  -84(r30)
	addli r3, r2, 1
	storeli.w r3, -84(r30)
.LBB0_292:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 2
	.loc	1 405 7                         # parallel-rne.mlir:405:7
	xfence
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	mfence { lm, sm, gm }
	.loc	1 400 13                        # parallel-rne.mlir:400:13
	mod.s r2, r2, r3
	loadli.w r3,  -628(r30)                 # 4-byte Folded Reload
	slli r2, r2, 16
	add.s r2, r2, r3
	.loc	1 407 7                         # parallel-rne.mlir:407:7
	storeli.w r2, -456(r30)                 # 4-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	bneq r6, zero, .LBB0_317
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	xfence
	mfence { lm, sm, gm }
	store.d r[2:3], -472(r30)               # 8-byte Folded Spill
	addli.d r[3:4], r[2:3], 0
	j .LBB0_295
.LBB0_294:                              # %middle.block837
                                        #   in Loop: Header=BB0_295 Depth=2
	.loc	1 415 9 is_stmt 1               # parallel-rne.mlir:415:9
	load.d r[2:3], -528(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_316
.LBB0_295:                              # %.preheader174
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_297 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	load.d r[9:10], -472(r30)               # 8-byte Folded Reload
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_297
.LBB0_296:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 416 11 is_stmt 1              # parallel-rne.mlir:416:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	setneq.d r3, r[9:10], r[26:27]
	.loc	1 431 13                        # parallel-rne.mlir:431:13
	add.s r5, r5, r11
	stores.w r13, 12(r5)
	stores.w r16, 8(r5)
	stores.w r2, 4(r5)
	stores.w r4, 0(r5)
	.loc	1 416 11                        # parallel-rne.mlir:416:11
	beq r3, zero, .LBB0_294
.LBB0_297:                              # %vector.body833
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	add.ul r[2:3], r[9:10], r[7:8]
	slli r11, r2, 2
	add.s r2, r15, r11
	loads.w r12, 12(r2)
	loads.w r6, 0(r2)
	loads.w r3, 4(r2)
	loads.w r28, 8(r2)
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	and r14, r12, r21
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	setlt.u r2, r24, r14
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r2, zero, .LBB0_299
# %bb.298:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r12, 0
	j .LBB0_300
.LBB0_299:                              #   in Loop: Header=BB0_297 Depth=3
	or r13, r12, r25
.LBB0_300:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	and r5, r28, r21
	setlt.u r2, r24, r5
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r2, zero, .LBB0_302
# %bb.301:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_303
.LBB0_302:                              #   in Loop: Header=BB0_297 Depth=3
	or r16, r28, r25
.LBB0_303:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	and r19, r3, r21
	setlt.u r2, r24, r19
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r2, zero, .LBB0_305
# %bb.304:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r3, 0
	j .LBB0_306
.LBB0_305:                              #   in Loop: Header=BB0_297 Depth=3
	or r2, r3, r25
.LBB0_306:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	and r20, r6, r21
	setlt.u r4, r24, r20
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r4, zero, .LBB0_308
# %bb.307:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r6, 0
	.loc	1 428 19 is_stmt 1              # parallel-rne.mlir:428:19
	setlt.u r20, r23, r20
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r20, zero, .LBB0_309
	j .LBB0_310
.LBB0_308:                              #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r6, r25
	.loc	1 428 19 is_stmt 1              # parallel-rne.mlir:428:19
	setlt.u r20, r23, r20
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r20, zero, .LBB0_310
.LBB0_309:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r6, 16
	andi r4, r4, 1
	add.s r4, r6, r4
	lui r6, 1048560
	add.s r4, r4, r22
	and r4, r4, r6
.LBB0_310:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	setlt.u r6, r23, r19
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r6, zero, .LBB0_313
# %bb.311:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r5
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	beq r3, zero, .LBB0_314
.LBB0_312:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r14
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r3, zero, .LBB0_296
	j .LBB0_315
.LBB0_313:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r22
	and r2, r2, r3
	setlt.u r3, r23, r5
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r3, zero, .LBB0_312
.LBB0_314:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r22
	and r16, r3, r5
	setlt.u r3, r23, r14
	.loc	1 429 19                        # parallel-rne.mlir:429:19
	bneq r3, zero, .LBB0_296
.LBB0_315:                              # %vector.body833
                                        #   in Loop: Header=BB0_297 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r22
	and r13, r3, r5
	j .LBB0_296
.LBB0_316:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 408 7                         # parallel-rne.mlir:408:7
	mfence { sm }
.LBB0_317:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 436 7 is_stmt 1               # parallel-rne.mlir:436:7
	addli r2, zero, 1
	bneq r6, r2, .LBB0_342
# %bb.318:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	xfence
	lui r18, 1024
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_320
.LBB0_319:                              # %middle.block828
                                        #   in Loop: Header=BB0_320 Depth=2
	.loc	1 443 9 is_stmt 1               # parallel-rne.mlir:443:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_341
.LBB0_320:                              # %.preheader173
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_322 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	zext_int2long r[7:8], zero
	j .LBB0_322
.LBB0_321:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 444 11 is_stmt 1              # parallel-rne.mlir:444:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 459 13                        # parallel-rne.mlir:459:13
	add.s r6, r25, r9
	.loc	1 444 11                        # parallel-rne.mlir:444:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 459 13                        # parallel-rne.mlir:459:13
	stores.w r11, 12(r6)
	stores.w r13, 8(r6)
	stores.w r16, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 444 11                        # parallel-rne.mlir:444:11
	beq r3, zero, .LBB0_319
.LBB0_322:                              # %vector.body824
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_320 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r2, r15, r9
	loads.w r10, 12(r2)
	loads.w r6, 0(r2)
	loads.w r28, 4(r2)
	loads.w r14, 8(r2)
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	and r12, r10, r21
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	setlt.u r2, r24, r12
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r2, zero, .LBB0_324
# %bb.323:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_325
.LBB0_324:                              #   in Loop: Header=BB0_322 Depth=3
	or r11, r10, r18
.LBB0_325:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	and r3, r14, r21
	setlt.u r2, r24, r3
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r2, zero, .LBB0_327
# %bb.326:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_328
.LBB0_327:                              #   in Loop: Header=BB0_322 Depth=3
	or r13, r14, r18
.LBB0_328:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	and r19, r28, r21
	setlt.u r2, r24, r19
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r2, zero, .LBB0_330
# %bb.329:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_331
.LBB0_330:                              #   in Loop: Header=BB0_322 Depth=3
	or r16, r28, r18
.LBB0_331:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	and r20, r6, r21
	setlt.u r2, r24, r20
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	bneq r2, zero, .LBB0_333
# %bb.332:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 456 19 is_stmt 1              # parallel-rne.mlir:456:19
	setlt.u r20, r23, r20
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	beq r20, zero, .LBB0_334
	j .LBB0_335
.LBB0_333:                              #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r6, r18
	.loc	1 456 19 is_stmt 1              # parallel-rne.mlir:456:19
	setlt.u r20, r23, r20
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r20, zero, .LBB0_335
.LBB0_334:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_335:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	setlt.u r6, r23, r19
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	beq r6, zero, .LBB0_338
# %bb.336:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	beq r3, zero, .LBB0_339
.LBB0_337:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r12
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r3, zero, .LBB0_321
	j .LBB0_340
.LBB0_338:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	lui r16, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r22
	and r16, r6, r16
	setlt.u r3, r23, r3
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r3, zero, .LBB0_337
.LBB0_339:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r13, r3, r6
	setlt.u r3, r23, r12
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	bneq r3, zero, .LBB0_321
.LBB0_340:                              # %vector.body824
                                        #   in Loop: Header=BB0_322 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r22
	and r11, r3, r6
	j .LBB0_321
.LBB0_341:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 436 7                         # parallel-rne.mlir:436:7
	mfence { sm }
.LBB0_342:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	addli r2, zero, 2
	lui r18, 1024
	beq r6, r2, .LBB0_348
# %bb.343:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	addli r2, zero, 3
	beq r6, r2, .LBB0_372
.LBB0_344:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r2, zero, 4
	beq r6, r2, .LBB0_396
.LBB0_345:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	addli r2, zero, 5
	beq r6, r2, .LBB0_420
.LBB0_346:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	addli r2, zero, 6
	beq r6, r2, .LBB0_444
.LBB0_347:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	beq r6, r9, .LBB0_468
	j .LBB0_492
.LBB0_348:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 464 7 is_stmt 1               # parallel-rne.mlir:464:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_350
.LBB0_349:                              # %middle.block819
                                        #   in Loop: Header=BB0_350 Depth=2
	.loc	1 471 9                         # parallel-rne.mlir:471:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_371
.LBB0_350:                              # %.preheader172
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_352 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	zext_int2long r[7:8], zero
	j .LBB0_352
.LBB0_351:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 472 11 is_stmt 1              # parallel-rne.mlir:472:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	add.s r6, r25, r9
	.loc	1 472 11                        # parallel-rne.mlir:472:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 487 13                        # parallel-rne.mlir:487:13
	stores.w r11, 12(r6)
	stores.w r13, 8(r6)
	stores.w r16, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 472 11                        # parallel-rne.mlir:472:11
	beq r3, zero, .LBB0_349
.LBB0_352:                              # %vector.body815
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_350 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 473 19                        # parallel-rne.mlir:473:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r2, r15, r9
	loads.w r10, 12(r2)
	loads.w r6, 0(r2)
	loads.w r28, 4(r2)
	loads.w r14, 8(r2)
	.loc	1 475 19                        # parallel-rne.mlir:475:19
	and r12, r10, r21
	.loc	1 477 19                        # parallel-rne.mlir:477:19
	setlt.u r2, r24, r12
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r2, zero, .LBB0_354
# %bb.353:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_355
.LBB0_354:                              #   in Loop: Header=BB0_352 Depth=3
	or r11, r10, r18
.LBB0_355:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	and r3, r14, r21
	setlt.u r2, r24, r3
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r2, zero, .LBB0_357
# %bb.356:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_358
.LBB0_357:                              #   in Loop: Header=BB0_352 Depth=3
	or r13, r14, r18
.LBB0_358:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	and r19, r28, r21
	setlt.u r2, r24, r19
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r2, zero, .LBB0_360
# %bb.359:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_361
.LBB0_360:                              #   in Loop: Header=BB0_352 Depth=3
	or r16, r28, r18
.LBB0_361:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	and r20, r6, r21
	setlt.u r2, r24, r20
	.loc	1 478 19                        # parallel-rne.mlir:478:19
	bneq r2, zero, .LBB0_363
# %bb.362:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 484 19 is_stmt 1              # parallel-rne.mlir:484:19
	setlt.u r20, r23, r20
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	beq r20, zero, .LBB0_364
	j .LBB0_365
.LBB0_363:                              #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r6, r18
	.loc	1 484 19 is_stmt 1              # parallel-rne.mlir:484:19
	setlt.u r20, r23, r20
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r20, zero, .LBB0_365
.LBB0_364:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_365:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	setlt.u r6, r23, r19
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	beq r6, zero, .LBB0_368
# %bb.366:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	beq r3, zero, .LBB0_369
.LBB0_367:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r12
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r3, zero, .LBB0_351
	j .LBB0_370
.LBB0_368:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	lui r16, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r22
	and r16, r6, r16
	setlt.u r3, r23, r3
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r3, zero, .LBB0_367
.LBB0_369:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r13, r3, r6
	setlt.u r3, r23, r12
	.loc	1 485 19                        # parallel-rne.mlir:485:19
	bneq r3, zero, .LBB0_351
.LBB0_370:                              # %vector.body815
                                        #   in Loop: Header=BB0_352 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r22
	and r11, r3, r6
	j .LBB0_351
.LBB0_371:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 464 7                         # parallel-rne.mlir:464:7
	mfence { sm }
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	addli r2, zero, 3
	bneq r6, r2, .LBB0_344
.LBB0_372:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_374
.LBB0_373:                              # %middle.block810
                                        #   in Loop: Header=BB0_374 Depth=2
	.loc	1 499 9 is_stmt 1               # parallel-rne.mlir:499:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_395
.LBB0_374:                              # %.preheader171
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_376 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	zext_int2long r[7:8], zero
	j .LBB0_376
.LBB0_375:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 500 11 is_stmt 1              # parallel-rne.mlir:500:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	add.s r6, r25, r9
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 515 13                        # parallel-rne.mlir:515:13
	stores.w r11, 12(r6)
	stores.w r13, 8(r6)
	stores.w r16, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 500 11                        # parallel-rne.mlir:500:11
	beq r3, zero, .LBB0_373
.LBB0_376:                              # %vector.body806
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_374 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r2, r15, r9
	loads.w r10, 12(r2)
	loads.w r6, 0(r2)
	loads.w r28, 4(r2)
	loads.w r14, 8(r2)
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	and r12, r10, r21
	.loc	1 505 19                        # parallel-rne.mlir:505:19
	setlt.u r2, r24, r12
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r2, zero, .LBB0_378
# %bb.377:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_379
.LBB0_378:                              #   in Loop: Header=BB0_376 Depth=3
	or r11, r10, r18
.LBB0_379:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	and r3, r14, r21
	setlt.u r2, r24, r3
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r2, zero, .LBB0_381
# %bb.380:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_382
.LBB0_381:                              #   in Loop: Header=BB0_376 Depth=3
	or r13, r14, r18
.LBB0_382:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	and r19, r28, r21
	setlt.u r2, r24, r19
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r2, zero, .LBB0_384
# %bb.383:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_385
.LBB0_384:                              #   in Loop: Header=BB0_376 Depth=3
	or r16, r28, r18
.LBB0_385:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	and r20, r6, r21
	setlt.u r2, r24, r20
	.loc	1 506 19                        # parallel-rne.mlir:506:19
	bneq r2, zero, .LBB0_387
# %bb.386:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 512 19 is_stmt 1              # parallel-rne.mlir:512:19
	setlt.u r20, r23, r20
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	beq r20, zero, .LBB0_388
	j .LBB0_389
.LBB0_387:                              #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r6, r18
	.loc	1 512 19 is_stmt 1              # parallel-rne.mlir:512:19
	setlt.u r20, r23, r20
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r20, zero, .LBB0_389
.LBB0_388:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_389:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	setlt.u r6, r23, r19
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	beq r6, zero, .LBB0_392
# %bb.390:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	beq r3, zero, .LBB0_393
.LBB0_391:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r12
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r3, zero, .LBB0_375
	j .LBB0_394
.LBB0_392:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	lui r16, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r22
	and r16, r6, r16
	setlt.u r3, r23, r3
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r3, zero, .LBB0_391
.LBB0_393:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r13, r3, r6
	setlt.u r3, r23, r12
	.loc	1 513 19                        # parallel-rne.mlir:513:19
	bneq r3, zero, .LBB0_375
.LBB0_394:                              # %vector.body806
                                        #   in Loop: Header=BB0_376 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r22
	and r11, r3, r6
	j .LBB0_375
.LBB0_395:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 492 7                         # parallel-rne.mlir:492:7
	mfence { sm }
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	addli r2, zero, 4
	bneq r6, r2, .LBB0_345
.LBB0_396:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_398
.LBB0_397:                              # %middle.block801
                                        #   in Loop: Header=BB0_398 Depth=2
	.loc	1 527 9 is_stmt 1               # parallel-rne.mlir:527:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_419
.LBB0_398:                              # %.preheader170
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_400 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	zext_int2long r[7:8], zero
	j .LBB0_400
.LBB0_399:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 528 11 is_stmt 1              # parallel-rne.mlir:528:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 543 13                        # parallel-rne.mlir:543:13
	add.s r6, r25, r9
	.loc	1 528 11                        # parallel-rne.mlir:528:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 543 13                        # parallel-rne.mlir:543:13
	stores.w r11, 12(r6)
	stores.w r13, 8(r6)
	stores.w r16, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 528 11                        # parallel-rne.mlir:528:11
	beq r3, zero, .LBB0_397
.LBB0_400:                              # %vector.body797
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_398 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r2, r15, r9
	loads.w r10, 12(r2)
	loads.w r6, 0(r2)
	loads.w r28, 4(r2)
	loads.w r14, 8(r2)
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	and r12, r10, r21
	.loc	1 533 19                        # parallel-rne.mlir:533:19
	setlt.u r2, r24, r12
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r2, zero, .LBB0_402
# %bb.401:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_403
.LBB0_402:                              #   in Loop: Header=BB0_400 Depth=3
	or r11, r10, r18
.LBB0_403:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	and r3, r14, r21
	setlt.u r2, r24, r3
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r2, zero, .LBB0_405
# %bb.404:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_406
.LBB0_405:                              #   in Loop: Header=BB0_400 Depth=3
	or r13, r14, r18
.LBB0_406:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	and r19, r28, r21
	setlt.u r2, r24, r19
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r2, zero, .LBB0_408
# %bb.407:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_409
.LBB0_408:                              #   in Loop: Header=BB0_400 Depth=3
	or r16, r28, r18
.LBB0_409:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	and r20, r6, r21
	setlt.u r2, r24, r20
	.loc	1 534 19                        # parallel-rne.mlir:534:19
	bneq r2, zero, .LBB0_411
# %bb.410:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 540 19 is_stmt 1              # parallel-rne.mlir:540:19
	setlt.u r20, r23, r20
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	beq r20, zero, .LBB0_412
	j .LBB0_413
.LBB0_411:                              #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r6, r18
	.loc	1 540 19 is_stmt 1              # parallel-rne.mlir:540:19
	setlt.u r20, r23, r20
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r20, zero, .LBB0_413
.LBB0_412:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_413:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	setlt.u r6, r23, r19
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	beq r6, zero, .LBB0_416
# %bb.414:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	beq r3, zero, .LBB0_417
.LBB0_415:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r12
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r3, zero, .LBB0_399
	j .LBB0_418
.LBB0_416:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	lui r16, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r22
	and r16, r6, r16
	setlt.u r3, r23, r3
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r3, zero, .LBB0_415
.LBB0_417:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r13, r3, r6
	setlt.u r3, r23, r12
	.loc	1 541 19                        # parallel-rne.mlir:541:19
	bneq r3, zero, .LBB0_399
.LBB0_418:                              # %vector.body797
                                        #   in Loop: Header=BB0_400 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r22
	and r11, r3, r6
	j .LBB0_399
.LBB0_419:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 520 7                         # parallel-rne.mlir:520:7
	mfence { sm }
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_346
.LBB0_420:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_422
.LBB0_421:                              # %middle.block792
                                        #   in Loop: Header=BB0_422 Depth=2
	.loc	1 555 9 is_stmt 1               # parallel-rne.mlir:555:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_443
.LBB0_422:                              # %.preheader169
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_424 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	zext_int2long r[7:8], zero
	j .LBB0_424
.LBB0_423:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 556 11 is_stmt 1              # parallel-rne.mlir:556:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 571 13                        # parallel-rne.mlir:571:13
	add.s r6, r25, r9
	.loc	1 556 11                        # parallel-rne.mlir:556:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 571 13                        # parallel-rne.mlir:571:13
	stores.w r11, 12(r6)
	stores.w r13, 8(r6)
	stores.w r16, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 556 11                        # parallel-rne.mlir:556:11
	beq r3, zero, .LBB0_421
.LBB0_424:                              # %vector.body788
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_422 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 557 19                        # parallel-rne.mlir:557:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r2, r15, r9
	loads.w r10, 12(r2)
	loads.w r6, 0(r2)
	loads.w r28, 4(r2)
	loads.w r14, 8(r2)
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	and r12, r10, r21
	.loc	1 561 19                        # parallel-rne.mlir:561:19
	setlt.u r2, r24, r12
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r2, zero, .LBB0_426
# %bb.425:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_427
.LBB0_426:                              #   in Loop: Header=BB0_424 Depth=3
	or r11, r10, r18
.LBB0_427:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	and r3, r14, r21
	setlt.u r2, r24, r3
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r2, zero, .LBB0_429
# %bb.428:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_430
.LBB0_429:                              #   in Loop: Header=BB0_424 Depth=3
	or r13, r14, r18
.LBB0_430:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	and r19, r28, r21
	setlt.u r2, r24, r19
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r2, zero, .LBB0_432
# %bb.431:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_433
.LBB0_432:                              #   in Loop: Header=BB0_424 Depth=3
	or r16, r28, r18
.LBB0_433:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	and r20, r6, r21
	setlt.u r2, r24, r20
	.loc	1 562 19                        # parallel-rne.mlir:562:19
	bneq r2, zero, .LBB0_435
# %bb.434:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 568 19 is_stmt 1              # parallel-rne.mlir:568:19
	setlt.u r20, r23, r20
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	beq r20, zero, .LBB0_436
	j .LBB0_437
.LBB0_435:                              #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r6, r18
	.loc	1 568 19 is_stmt 1              # parallel-rne.mlir:568:19
	setlt.u r20, r23, r20
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r20, zero, .LBB0_437
.LBB0_436:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_437:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	setlt.u r6, r23, r19
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	beq r6, zero, .LBB0_440
# %bb.438:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	beq r3, zero, .LBB0_441
.LBB0_439:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r12
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r3, zero, .LBB0_423
	j .LBB0_442
.LBB0_440:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	lui r16, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r22
	and r16, r6, r16
	setlt.u r3, r23, r3
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r3, zero, .LBB0_439
.LBB0_441:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r13, r3, r6
	setlt.u r3, r23, r12
	.loc	1 569 19                        # parallel-rne.mlir:569:19
	bneq r3, zero, .LBB0_423
.LBB0_442:                              # %vector.body788
                                        #   in Loop: Header=BB0_424 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r22
	and r11, r3, r6
	j .LBB0_423
.LBB0_443:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 548 7                         # parallel-rne.mlir:548:7
	mfence { sm }
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	addli r2, zero, 6
	bneq r6, r2, .LBB0_347
.LBB0_444:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_446
.LBB0_445:                              # %middle.block783
                                        #   in Loop: Header=BB0_446 Depth=2
	.loc	1 583 9 is_stmt 1               # parallel-rne.mlir:583:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_467
.LBB0_446:                              # %.preheader168
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_448 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	zext_int2long r[7:8], zero
	j .LBB0_448
.LBB0_447:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 584 11 is_stmt 1              # parallel-rne.mlir:584:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	add.s r6, r25, r9
	.loc	1 584 11                        # parallel-rne.mlir:584:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 599 13                        # parallel-rne.mlir:599:13
	stores.w r11, 12(r6)
	stores.w r13, 8(r6)
	stores.w r16, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 584 11                        # parallel-rne.mlir:584:11
	beq r3, zero, .LBB0_445
.LBB0_448:                              # %vector.body779
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_446 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r2, r15, r9
	loads.w r10, 12(r2)
	loads.w r6, 0(r2)
	loads.w r28, 4(r2)
	loads.w r14, 8(r2)
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	and r12, r10, r21
	.loc	1 589 19                        # parallel-rne.mlir:589:19
	setlt.u r2, r24, r12
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r2, zero, .LBB0_450
# %bb.449:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_451
.LBB0_450:                              #   in Loop: Header=BB0_448 Depth=3
	or r11, r10, r18
.LBB0_451:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	and r3, r14, r21
	setlt.u r2, r24, r3
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r2, zero, .LBB0_453
# %bb.452:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_454
.LBB0_453:                              #   in Loop: Header=BB0_448 Depth=3
	or r13, r14, r18
.LBB0_454:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	and r19, r28, r21
	setlt.u r2, r24, r19
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r2, zero, .LBB0_456
# %bb.455:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_457
.LBB0_456:                              #   in Loop: Header=BB0_448 Depth=3
	or r16, r28, r18
.LBB0_457:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	and r20, r6, r21
	setlt.u r2, r24, r20
	.loc	1 590 19                        # parallel-rne.mlir:590:19
	bneq r2, zero, .LBB0_459
# %bb.458:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r20, r23, r20
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r20, zero, .LBB0_460
	j .LBB0_461
.LBB0_459:                              #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r6, r18
	.loc	1 596 19 is_stmt 1              # parallel-rne.mlir:596:19
	setlt.u r20, r23, r20
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r20, zero, .LBB0_461
.LBB0_460:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_461:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	setlt.u r6, r23, r19
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r6, zero, .LBB0_464
# %bb.462:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	beq r3, zero, .LBB0_465
.LBB0_463:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r12
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r3, zero, .LBB0_447
	j .LBB0_466
.LBB0_464:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	lui r16, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r22
	and r16, r6, r16
	setlt.u r3, r23, r3
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r3, zero, .LBB0_463
.LBB0_465:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r13, r3, r6
	setlt.u r3, r23, r12
	.loc	1 597 19                        # parallel-rne.mlir:597:19
	bneq r3, zero, .LBB0_447
.LBB0_466:                              # %vector.body779
                                        #   in Loop: Header=BB0_448 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r22
	and r11, r3, r6
	j .LBB0_447
.LBB0_467:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 576 7                         # parallel-rne.mlir:576:7
	mfence { sm }
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	bneq r6, r9, .LBB0_492
.LBB0_468:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_470
.LBB0_469:                              # %middle.block774
                                        #   in Loop: Header=BB0_470 Depth=2
	.loc	1 611 9 is_stmt 1               # parallel-rne.mlir:611:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_491
.LBB0_470:                              # %.preheader167
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_472 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	sll.d r[4:5], r[3:4], r9
	zext_int2long r[7:8], zero
	j .LBB0_472
.LBB0_471:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 612 11 is_stmt 1              # parallel-rne.mlir:612:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	add.s r6, r25, r9
	.loc	1 612 11                        # parallel-rne.mlir:612:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 627 13                        # parallel-rne.mlir:627:13
	stores.w r11, 12(r6)
	stores.w r13, 8(r6)
	stores.w r16, 4(r6)
	stores.w r2, 0(r6)
	.loc	1 612 11                        # parallel-rne.mlir:612:11
	beq r3, zero, .LBB0_469
.LBB0_472:                              # %vector.body770
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_470 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r9, r2, 2
	add.s r2, r15, r9
	loads.w r10, 12(r2)
	loads.w r6, 0(r2)
	loads.w r28, 4(r2)
	loads.w r14, 8(r2)
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	and r12, r10, r21
	.loc	1 617 19                        # parallel-rne.mlir:617:19
	setlt.u r2, r24, r12
	.loc	1 618 19                        # parallel-rne.mlir:618:19
	bneq r2, zero, .LBB0_474
# %bb.473:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r10, 0
	j .LBB0_475
.LBB0_474:                              #   in Loop: Header=BB0_472 Depth=3
	or r11, r10, r18
.LBB0_475:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	and r3, r14, r21
	setlt.u r2, r24, r3
	.loc	1 618 19                        # parallel-rne.mlir:618:19
	bneq r2, zero, .LBB0_477
# %bb.476:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r14, 0
	j .LBB0_478
.LBB0_477:                              #   in Loop: Header=BB0_472 Depth=3
	or r13, r14, r18
.LBB0_478:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	and r19, r28, r21
	setlt.u r2, r24, r19
	.loc	1 618 19                        # parallel-rne.mlir:618:19
	bneq r2, zero, .LBB0_480
# %bb.479:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r28, 0
	j .LBB0_481
.LBB0_480:                              #   in Loop: Header=BB0_472 Depth=3
	or r16, r28, r18
.LBB0_481:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	and r20, r6, r21
	setlt.u r2, r24, r20
	.loc	1 618 19                        # parallel-rne.mlir:618:19
	bneq r2, zero, .LBB0_483
# %bb.482:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 624 19 is_stmt 1              # parallel-rne.mlir:624:19
	setlt.u r20, r23, r20
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	beq r20, zero, .LBB0_484
	j .LBB0_485
.LBB0_483:                              #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r2, r6, r18
	.loc	1 624 19 is_stmt 1              # parallel-rne.mlir:624:19
	setlt.u r20, r23, r20
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	bneq r20, zero, .LBB0_485
.LBB0_484:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	lui r6, 1048560
	add.s r2, r2, r22
	and r2, r2, r6
.LBB0_485:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	setlt.u r6, r23, r19
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	beq r6, zero, .LBB0_488
# %bb.486:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	beq r3, zero, .LBB0_489
.LBB0_487:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r12
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	bneq r3, zero, .LBB0_471
	j .LBB0_490
.LBB0_488:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r28, 16
	lui r16, 1048560
	andi r6, r6, 1
	add.s r6, r28, r6
	add.s r6, r6, r22
	and r16, r6, r16
	setlt.u r3, r23, r3
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	bneq r3, zero, .LBB0_487
.LBB0_489:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r13, r3, r6
	setlt.u r3, r23, r12
	.loc	1 625 19                        # parallel-rne.mlir:625:19
	bneq r3, zero, .LBB0_471
.LBB0_490:                              # %vector.body770
                                        #   in Loop: Header=BB0_472 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	lui r6, 1048560
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r22
	and r11, r3, r6
	j .LBB0_471
.LBB0_491:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 604 7                         # parallel-rne.mlir:604:7
	mfence { sm }
.LBB0_492:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r2, zero, 3
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	sync_core
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	bneq r6, r2, .LBB0_494
# %bb.493:                              # %.critedge11.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r5, zero, 2
	lui r18, 524288
	xsignal r2, 0
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r2, zero, 27
	xsignal r2, 0
	.loc	1 636 7                         # parallel-rne.mlir:636:7
	addli r2, zero, 30
	xsignal r2, 0
	.loc	1 637 7                         # parallel-rne.mlir:637:7
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	loadli.w r2,  -72(r30)
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	slli r3, r3, 16
	add.s r3, r3, r4
	storeli.w r3, -464(r30)                 # 4-byte Folded Spill
	j .LBB0_496
.LBB0_494:                              # %.critedge11
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r2,  -72(r30)
	addli r5, zero, 2
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	lui r18, 524288
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	addli r2, zero, 5
	.loc	1 639 13                        # parallel-rne.mlir:639:13
	slli r3, r3, 16
	add.s r3, r3, r4
	.loc	1 640 7                         # parallel-rne.mlir:640:7
	storeli.w r3, -464(r30)                 # 4-byte Folded Spill
	bneq r6, r2, .LBB0_496
# %bb.495:                              # %.thread119
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 24
	addli r8, zero, 4095
	addli r4, zero, 4
	lui r7, 260096
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	lock zero, r5
	lui r2, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 31
	ew_cfg zero, r8, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	hp_ssmul r3, r25, r25, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r2,  -60(r30)
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	addli r2, zero, 26
	xwait r2, 0
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	slli r2, r3, 16
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	addli r3, zero, 34
	xwait r3, 0
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r3,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	add.s r12, r2, r3
	.loc	1 643 7                         # parallel-rne.mlir:643:7
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmul r12, r25, r25, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	loadli.w r2,  -48(r30)
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r2, r3, 16
	.loc	1 646 7                         # parallel-rne.mlir:646:7
	addli r3, zero, 27
	xwait r3, 0
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	loadli.w r3,  -640(r30)                 # 4-byte Folded Reload
	add.s r13, r2, r3
	.loc	1 646 7                         # parallel-rne.mlir:646:7
	addli r2, zero, 36
	xwait r2, 0
	lock zero, r5
	addli r2, zero, 25
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	dsmul r13, r12, r25, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	addli r2, zero, 33
	xsignal r2, 0
	addli r2, zero, 35
	xsignal r2, 0
	j .LBB0_498
.LBB0_496:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r2,  -60(r30)
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	loadli.w r3,  -48(r30)
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	mod.s r4, r2, r5
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	mod.s r5, r3, r5
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	addli r2, r2, 1
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	addli r3, r3, 1
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	storeli.w r2, -60(r30)
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	storeli.w r3, -48(r30)
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	slli r2, r4, 16
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	slli r4, r5, 16
	.loc	1 642 13                        # parallel-rne.mlir:642:13
	loadli.w r5,  -636(r30)                 # 4-byte Folded Reload
	add.s r12, r2, r5
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	loadli.w r2,  -640(r30)                 # 4-byte Folded Reload
	add.s r13, r4, r2
	.loc	1 648 7                         # parallel-rne.mlir:648:7
	addli r2, zero, 3
	bneq r6, r2, .LBB0_498
# %bb.497:                              # %.critedge13
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	xwait r2, 0
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	addli r2, zero, 25
	xwait r2, 0
	.loc	1 650 7                         # parallel-rne.mlir:650:7
	addli r2, zero, 33
	xwait r2, 0
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	addli r2, zero, 35
	xwait r2, 0
.LBB0_498:                              # %.critedge15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 655 7                         # parallel-rne.mlir:655:7
	addli r3, zero, 255
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	xfence
	addli r2, zero, 1
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	mfence { lm, sm, gm }
	.loc	1 655 7                         # parallel-rne.mlir:655:7
	csr_set csr5, r3
	sub.s r3, r15, r12
	storeli.w r3, -556(r30)                 # 4-byte Folded Spill
	sub.s r3, r15, r13
	storeli.w r3, -560(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	beq r6, zero, .LBB0_506
# %bb.499:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	beq r6, r2, .LBB0_534
.LBB0_500:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	addli r2, zero, 2
	beq r6, r2, .LBB0_562
.LBB0_501:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r2, zero, 3
	beq r6, r2, .LBB0_590
.LBB0_502:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 796 7                         # parallel-rne.mlir:796:7
	addli r2, zero, 4
	beq r6, r2, .LBB0_618
.LBB0_503:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 831 7                         # parallel-rne.mlir:831:7
	addli r2, zero, 5
	beq r6, r2, .LBB0_646
.LBB0_504:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	addli r2, zero, 6
	beq r6, r2, .LBB0_674
.LBB0_505:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 901 7                         # parallel-rne.mlir:901:7
	beq r6, r9, .LBB0_702
	j .LBB0_730
.LBB0_506:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], zero
	.loc	1 656 7 is_stmt 1               # parallel-rne.mlir:656:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_508
.LBB0_507:                              # %middle.block765
                                        #   in Loop: Header=BB0_508 Depth=2
	.loc	1 663 9                         # parallel-rne.mlir:663:9
	load.d r[2:3], -528(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_533
.LBB0_508:                              # %.preheader166
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_525 Depth 3
                                        #       Child Loop BB0_511 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 664 11 is_stmt 1              # parallel-rne.mlir:664:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_523
# %bb.509:                              # %scalar.ph757.preheader
                                        #   in Loop: Header=BB0_508 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_511
.LBB0_510:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 686 13 is_stmt 1              # parallel-rne.mlir:686:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_507
.LBB0_511:                              # %scalar.ph757
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_508 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	add.s r5, r25, r4
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	add.s r6, r13, r4
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	loads.w r5, 0(r5)
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	loads.w r11, 0(r6)
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	beq r6, r24, .LBB0_513
# %bb.512:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_513:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r7, zero, .LBB0_521
# %bb.514:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r6, zero, .LBB0_522
.LBB0_515:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	beq r7, r24, .LBB0_517
.LBB0_516:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_517:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r8, zero, .LBB0_519
# %bb.518:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_519:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	setlt.u r7, r24, r7
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r7, zero, .LBB0_510
# %bb.520:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_510
.LBB0_521:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	beq r6, zero, .LBB0_515
.LBB0_522:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_511 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r7, r24, .LBB0_516
	j .LBB0_517
.LBB0_523:                              # %vector.body759.preheader
                                        #   in Loop: Header=BB0_508 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_525
.LBB0_524:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	.loc	1 664 11 is_stmt 1              # parallel-rne.mlir:664:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 686 13                        # parallel-rne.mlir:686:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 686 13                        # parallel-rne.mlir:686:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 664 11                        # parallel-rne.mlir:664:11
	bneq r2, zero, .LBB0_507
.LBB0_525:                              # %vector.body759
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_508 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	add.s r28, r25, r5
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	loads.w r2, 0(r16)
	.loc	1 666 19                        # parallel-rne.mlir:666:19
	loads.w r6, 0(r28)
	.loc	1 672 19                        # parallel-rne.mlir:672:19
	and r2, r2, r21
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	and r6, r6, r21
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	seteq r7, r2, r24
	.loc	1 677 19                        # parallel-rne.mlir:677:19
	seteq r14, r2, zero
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	seteq r8, r6, zero
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	seteq r11, r6, r24
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	and r2, r7, r8
	.loc	1 678 19                        # parallel-rne.mlir:678:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 679 19                        # parallel-rne.mlir:679:19
	or r7, r2, r7
	.loc	1 667 19                        # parallel-rne.mlir:667:19
	add.s r2, r13, r5
	.loc	1 683 19                        # parallel-rne.mlir:683:19
	or r6, r6, r7
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r6, zero, .LBB0_527
# %bb.526:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_527:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r25, r6, zero
	seteq r19, r7, zero
	seteq r20, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r19
	and r8, r25, r20
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r6, zero, .LBB0_529
# %bb.528:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_529:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r19, r6, r24
	seteq r18, r6, zero
	seteq r25, r8, r24
	seteq r20, r8, zero
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r19, r20
	and r18, r18, r25
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r8, zero, .LBB0_531
# %bb.530:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_531:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	bneq r8, zero, .LBB0_524
# %bb.532:                              # %vector.body759
                                        #   in Loop: Header=BB0_525 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_524
.LBB0_533:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r2, zero, 1
	.loc	1 656 7                         # parallel-rne.mlir:656:7
	mfence { sm }
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	bneq r6, r2, .LBB0_500
.LBB0_534:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_536
.LBB0_535:                              # %middle.block750
                                        #   in Loop: Header=BB0_536 Depth=2
	.loc	1 698 9 is_stmt 1               # parallel-rne.mlir:698:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_561
.LBB0_536:                              # %.preheader165
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_553 Depth 3
                                        #       Child Loop BB0_539 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 699 11 is_stmt 1              # parallel-rne.mlir:699:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_551
# %bb.537:                              # %scalar.ph742.preheader
                                        #   in Loop: Header=BB0_536 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_539
.LBB0_538:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 699 11                        # parallel-rne.mlir:699:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 721 13 is_stmt 1              # parallel-rne.mlir:721:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 699 11                        # parallel-rne.mlir:699:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_535
.LBB0_539:                              # %scalar.ph742
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_536 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	add.s r5, r25, r4
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	add.s r6, r13, r4
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	loads.w r5, 0(r5)
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	loads.w r11, 0(r6)
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r6, r24, .LBB0_541
# %bb.540:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_541:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r7, zero, .LBB0_549
# %bb.542:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r6, zero, .LBB0_550
.LBB0_543:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	beq r7, r24, .LBB0_545
.LBB0_544:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_545:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r8, zero, .LBB0_547
# %bb.546:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_547:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	setlt.u r7, r24, r7
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r7, zero, .LBB0_538
# %bb.548:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_538
.LBB0_549:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	beq r6, zero, .LBB0_543
.LBB0_550:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_539 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r7, r24, .LBB0_544
	j .LBB0_545
.LBB0_551:                              # %vector.body744.preheader
                                        #   in Loop: Header=BB0_536 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_553
.LBB0_552:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 699 11 is_stmt 1              # parallel-rne.mlir:699:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 721 13                        # parallel-rne.mlir:721:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 699 11                        # parallel-rne.mlir:699:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 721 13                        # parallel-rne.mlir:721:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 699 11                        # parallel-rne.mlir:699:11
	bneq r2, zero, .LBB0_535
.LBB0_553:                              # %vector.body744
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_536 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	add.s r28, r25, r5
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	loads.w r2, 0(r16)
	.loc	1 701 19                        # parallel-rne.mlir:701:19
	loads.w r6, 0(r28)
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	and r2, r2, r21
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	and r6, r6, r21
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	seteq r7, r2, r24
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	seteq r14, r2, zero
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	seteq r8, r6, zero
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	seteq r11, r6, r24
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	and r2, r7, r8
	.loc	1 713 19                        # parallel-rne.mlir:713:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 714 19                        # parallel-rne.mlir:714:19
	or r7, r2, r7
	.loc	1 702 19                        # parallel-rne.mlir:702:19
	add.s r2, r13, r5
	.loc	1 718 19                        # parallel-rne.mlir:718:19
	or r6, r6, r7
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r6, zero, .LBB0_555
# %bb.554:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_555:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r20, r6, zero
	seteq r18, r7, zero
	seteq r19, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r18
	and r8, r20, r19
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r6, zero, .LBB0_557
# %bb.556:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_557:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r18, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r18, r19
	and r18, r25, r20
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r8, zero, .LBB0_559
# %bb.558:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_559:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 719 19                        # parallel-rne.mlir:719:19
	bneq r8, zero, .LBB0_552
# %bb.560:                              # %vector.body744
                                        #   in Loop: Header=BB0_553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_552
.LBB0_561:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 691 7                         # parallel-rne.mlir:691:7
	mfence { sm }
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	addli r2, zero, 2
	bneq r6, r2, .LBB0_501
.LBB0_562:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_564
.LBB0_563:                              # %middle.block735
                                        #   in Loop: Header=BB0_564 Depth=2
	.loc	1 733 9 is_stmt 1               # parallel-rne.mlir:733:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_589
.LBB0_564:                              # %.preheader164
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_581 Depth 3
                                        #       Child Loop BB0_567 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 734 11 is_stmt 1              # parallel-rne.mlir:734:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_579
# %bb.565:                              # %scalar.ph727.preheader
                                        #   in Loop: Header=BB0_564 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_567
.LBB0_566:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 756 13 is_stmt 1              # parallel-rne.mlir:756:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_563
.LBB0_567:                              # %scalar.ph727
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_564 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	add.s r5, r25, r4
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.s r6, r13, r4
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	loads.w r5, 0(r5)
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	loads.w r11, 0(r6)
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r6, r24, .LBB0_569
# %bb.568:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_569:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r7, zero, .LBB0_577
# %bb.570:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r6, zero, .LBB0_578
.LBB0_571:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	beq r7, r24, .LBB0_573
.LBB0_572:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_573:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r8, zero, .LBB0_575
# %bb.574:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_575:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	setlt.u r7, r24, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r7, zero, .LBB0_566
# %bb.576:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_566
.LBB0_577:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	beq r6, zero, .LBB0_571
.LBB0_578:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_567 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r7, r24, .LBB0_572
	j .LBB0_573
.LBB0_579:                              # %vector.body729.preheader
                                        #   in Loop: Header=BB0_564 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_581
.LBB0_580:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 734 11 is_stmt 1              # parallel-rne.mlir:734:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 756 13                        # parallel-rne.mlir:756:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 756 13                        # parallel-rne.mlir:756:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 734 11                        # parallel-rne.mlir:734:11
	bneq r2, zero, .LBB0_563
.LBB0_581:                              # %vector.body729
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_564 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	add.s r28, r25, r5
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	loads.w r2, 0(r16)
	.loc	1 736 19                        # parallel-rne.mlir:736:19
	loads.w r6, 0(r28)
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	and r2, r2, r21
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r6, r6, r21
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	seteq r7, r2, r24
	.loc	1 747 19                        # parallel-rne.mlir:747:19
	seteq r14, r2, zero
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	seteq r8, r6, zero
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	seteq r11, r6, r24
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	and r2, r7, r8
	.loc	1 748 19                        # parallel-rne.mlir:748:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 749 19                        # parallel-rne.mlir:749:19
	or r7, r2, r7
	.loc	1 737 19                        # parallel-rne.mlir:737:19
	add.s r2, r13, r5
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	or r6, r6, r7
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r6, zero, .LBB0_583
# %bb.582:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_583:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r20, r6, zero
	seteq r18, r7, zero
	seteq r19, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r18
	and r8, r20, r19
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r6, zero, .LBB0_585
# %bb.584:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_585:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r18, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r18, r19
	and r18, r25, r20
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r8, zero, .LBB0_587
# %bb.586:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_587:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 754 19                        # parallel-rne.mlir:754:19
	bneq r8, zero, .LBB0_580
# %bb.588:                              # %vector.body729
                                        #   in Loop: Header=BB0_581 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_580
.LBB0_589:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 726 7                         # parallel-rne.mlir:726:7
	mfence { sm }
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	addli r2, zero, 3
	bneq r6, r2, .LBB0_502
.LBB0_590:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_592
.LBB0_591:                              # %middle.block720
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 768 9 is_stmt 1               # parallel-rne.mlir:768:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_617
.LBB0_592:                              # %.preheader163
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_609 Depth 3
                                        #       Child Loop BB0_595 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 769 11 is_stmt 1              # parallel-rne.mlir:769:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_607
# %bb.593:                              # %scalar.ph712.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_595
.LBB0_594:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 791 13 is_stmt 1              # parallel-rne.mlir:791:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_591
.LBB0_595:                              # %scalar.ph712
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	add.s r5, r25, r4
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	add.s r6, r13, r4
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	loads.w r5, 0(r5)
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	loads.w r11, 0(r6)
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	beq r6, r24, .LBB0_597
# %bb.596:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_597:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r7, zero, .LBB0_605
# %bb.598:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r6, zero, .LBB0_606
.LBB0_599:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	beq r7, r24, .LBB0_601
.LBB0_600:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_601:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r8, zero, .LBB0_603
# %bb.602:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_603:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	setlt.u r7, r24, r7
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r7, zero, .LBB0_594
# %bb.604:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_594
.LBB0_605:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	beq r6, zero, .LBB0_599
.LBB0_606:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_595 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r7, r24, .LBB0_600
	j .LBB0_601
.LBB0_607:                              # %vector.body714.preheader
                                        #   in Loop: Header=BB0_592 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_609
.LBB0_608:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	.loc	1 769 11 is_stmt 1              # parallel-rne.mlir:769:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 791 13                        # parallel-rne.mlir:791:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 791 13                        # parallel-rne.mlir:791:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	bneq r2, zero, .LBB0_591
.LBB0_609:                              # %vector.body714
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_592 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	add.s r28, r25, r5
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	loads.w r2, 0(r16)
	.loc	1 771 19                        # parallel-rne.mlir:771:19
	loads.w r6, 0(r28)
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	and r2, r2, r21
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	and r6, r6, r21
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	seteq r7, r2, r24
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	seteq r14, r2, zero
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	seteq r8, r6, zero
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	seteq r11, r6, r24
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	and r2, r7, r8
	.loc	1 783 19                        # parallel-rne.mlir:783:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 784 19                        # parallel-rne.mlir:784:19
	or r7, r2, r7
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	add.s r2, r13, r5
	.loc	1 788 19                        # parallel-rne.mlir:788:19
	or r6, r6, r7
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r6, zero, .LBB0_611
# %bb.610:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_611:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r20, r6, zero
	seteq r18, r7, zero
	seteq r19, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r18
	and r8, r20, r19
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r6, zero, .LBB0_613
# %bb.612:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_613:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r18, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r18, r19
	and r18, r25, r20
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r8, zero, .LBB0_615
# %bb.614:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_615:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 789 19                        # parallel-rne.mlir:789:19
	bneq r8, zero, .LBB0_608
# %bb.616:                              # %vector.body714
                                        #   in Loop: Header=BB0_609 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_608
.LBB0_617:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 761 7                         # parallel-rne.mlir:761:7
	mfence { sm }
	.loc	1 796 7                         # parallel-rne.mlir:796:7
	addli r2, zero, 4
	bneq r6, r2, .LBB0_503
.LBB0_618:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 796 7                         # parallel-rne.mlir:796:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_620
.LBB0_619:                              # %middle.block705
                                        #   in Loop: Header=BB0_620 Depth=2
	.loc	1 803 9 is_stmt 1               # parallel-rne.mlir:803:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_645
.LBB0_620:                              # %.preheader162
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_637 Depth 3
                                        #       Child Loop BB0_623 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 804 11 is_stmt 1              # parallel-rne.mlir:804:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_635
# %bb.621:                              # %scalar.ph697.preheader
                                        #   in Loop: Header=BB0_620 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_623
.LBB0_622:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 826 13 is_stmt 1              # parallel-rne.mlir:826:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_619
.LBB0_623:                              # %scalar.ph697
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_620 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	add.s r5, r25, r4
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	add.s r6, r13, r4
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	loads.w r5, 0(r5)
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	loads.w r11, 0(r6)
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	beq r6, r24, .LBB0_625
# %bb.624:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_625:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r7, zero, .LBB0_633
# %bb.626:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r6, zero, .LBB0_634
.LBB0_627:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	beq r7, r24, .LBB0_629
.LBB0_628:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_629:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r8, zero, .LBB0_631
# %bb.630:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_631:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	setlt.u r7, r24, r7
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r7, zero, .LBB0_622
# %bb.632:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_622
.LBB0_633:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	beq r6, zero, .LBB0_627
.LBB0_634:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r7, r24, .LBB0_628
	j .LBB0_629
.LBB0_635:                              # %vector.body699.preheader
                                        #   in Loop: Header=BB0_620 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_637
.LBB0_636:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 804 11 is_stmt 1              # parallel-rne.mlir:804:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 826 13                        # parallel-rne.mlir:826:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 826 13                        # parallel-rne.mlir:826:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 804 11                        # parallel-rne.mlir:804:11
	bneq r2, zero, .LBB0_619
.LBB0_637:                              # %vector.body699
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_620 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	add.s r28, r25, r5
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	loads.w r2, 0(r16)
	.loc	1 806 19                        # parallel-rne.mlir:806:19
	loads.w r6, 0(r28)
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	and r2, r2, r21
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	and r6, r6, r21
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	seteq r7, r2, r24
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	seteq r14, r2, zero
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	seteq r8, r6, zero
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	seteq r11, r6, r24
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	and r2, r7, r8
	.loc	1 818 19                        # parallel-rne.mlir:818:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 819 19                        # parallel-rne.mlir:819:19
	or r7, r2, r7
	.loc	1 807 19                        # parallel-rne.mlir:807:19
	add.s r2, r13, r5
	.loc	1 823 19                        # parallel-rne.mlir:823:19
	or r6, r6, r7
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r6, zero, .LBB0_639
# %bb.638:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_639:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r20, r6, zero
	seteq r18, r7, zero
	seteq r19, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r18
	and r8, r20, r19
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r6, zero, .LBB0_641
# %bb.640:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_641:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r18, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r18, r19
	and r18, r25, r20
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r8, zero, .LBB0_643
# %bb.642:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_643:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 824 19                        # parallel-rne.mlir:824:19
	bneq r8, zero, .LBB0_636
# %bb.644:                              # %vector.body699
                                        #   in Loop: Header=BB0_637 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_636
.LBB0_645:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 796 7                         # parallel-rne.mlir:796:7
	mfence { sm }
	.loc	1 831 7                         # parallel-rne.mlir:831:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_504
.LBB0_646:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 831 7                         # parallel-rne.mlir:831:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_648
.LBB0_647:                              # %middle.block690
                                        #   in Loop: Header=BB0_648 Depth=2
	.loc	1 838 9 is_stmt 1               # parallel-rne.mlir:838:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_673
.LBB0_648:                              # %.preheader161
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_665 Depth 3
                                        #       Child Loop BB0_651 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 839 11 is_stmt 1              # parallel-rne.mlir:839:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_663
# %bb.649:                              # %scalar.ph682.preheader
                                        #   in Loop: Header=BB0_648 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_651
.LBB0_650:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	.loc	1 839 11                        # parallel-rne.mlir:839:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 861 13 is_stmt 1              # parallel-rne.mlir:861:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 839 11                        # parallel-rne.mlir:839:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_647
.LBB0_651:                              # %scalar.ph682
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_648 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	add.s r5, r25, r4
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.s r6, r13, r4
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	loads.w r5, 0(r5)
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	loads.w r11, 0(r6)
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	beq r6, r24, .LBB0_653
# %bb.652:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_653:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r7, zero, .LBB0_661
# %bb.654:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r6, zero, .LBB0_662
.LBB0_655:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	beq r7, r24, .LBB0_657
.LBB0_656:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_657:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r8, zero, .LBB0_659
# %bb.658:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_659:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	setlt.u r7, r24, r7
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r7, zero, .LBB0_650
# %bb.660:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_650
.LBB0_661:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	beq r6, zero, .LBB0_655
.LBB0_662:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r7, r24, .LBB0_656
	j .LBB0_657
.LBB0_663:                              # %vector.body684.preheader
                                        #   in Loop: Header=BB0_648 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_665
.LBB0_664:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 839 11 is_stmt 1              # parallel-rne.mlir:839:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 861 13                        # parallel-rne.mlir:861:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 839 11                        # parallel-rne.mlir:839:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 861 13                        # parallel-rne.mlir:861:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 839 11                        # parallel-rne.mlir:839:11
	bneq r2, zero, .LBB0_647
.LBB0_665:                              # %vector.body684
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_648 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	add.s r28, r25, r5
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	loads.w r2, 0(r16)
	.loc	1 841 19                        # parallel-rne.mlir:841:19
	loads.w r6, 0(r28)
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	and r2, r2, r21
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	and r6, r6, r21
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	seteq r7, r2, r24
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	seteq r14, r2, zero
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	seteq r8, r6, zero
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	seteq r11, r6, r24
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	and r2, r7, r8
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	or r7, r2, r7
	.loc	1 842 19                        # parallel-rne.mlir:842:19
	add.s r2, r13, r5
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	or r6, r6, r7
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r6, zero, .LBB0_667
# %bb.666:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_667:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r20, r6, zero
	seteq r18, r7, zero
	seteq r19, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r18
	and r8, r20, r19
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r6, zero, .LBB0_669
# %bb.668:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_669:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r18, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r18, r19
	and r18, r25, r20
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r8, zero, .LBB0_671
# %bb.670:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_671:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	bneq r8, zero, .LBB0_664
# %bb.672:                              # %vector.body684
                                        #   in Loop: Header=BB0_665 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_664
.LBB0_673:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 831 7                         # parallel-rne.mlir:831:7
	mfence { sm }
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	addli r2, zero, 6
	bneq r6, r2, .LBB0_505
.LBB0_674:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_676
.LBB0_675:                              # %middle.block675
                                        #   in Loop: Header=BB0_676 Depth=2
	.loc	1 873 9 is_stmt 1               # parallel-rne.mlir:873:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_701
.LBB0_676:                              # %.preheader160
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_693 Depth 3
                                        #       Child Loop BB0_679 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 874 11 is_stmt 1              # parallel-rne.mlir:874:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_691
# %bb.677:                              # %scalar.ph667.preheader
                                        #   in Loop: Header=BB0_676 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_679
.LBB0_678:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 896 13 is_stmt 1              # parallel-rne.mlir:896:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_675
.LBB0_679:                              # %scalar.ph667
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_676 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	add.s r5, r25, r4
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	add.s r6, r13, r4
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	loads.w r5, 0(r5)
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	loads.w r11, 0(r6)
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	beq r6, r24, .LBB0_681
# %bb.680:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_681:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r7, zero, .LBB0_689
# %bb.682:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r6, zero, .LBB0_690
.LBB0_683:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	beq r7, r24, .LBB0_685
.LBB0_684:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_685:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r8, zero, .LBB0_687
# %bb.686:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_687:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	setlt.u r7, r24, r7
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r7, zero, .LBB0_678
# %bb.688:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_678
.LBB0_689:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	beq r6, zero, .LBB0_683
.LBB0_690:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_679 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r7, r24, .LBB0_684
	j .LBB0_685
.LBB0_691:                              # %vector.body669.preheader
                                        #   in Loop: Header=BB0_676 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_693
.LBB0_692:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 874 11 is_stmt 1              # parallel-rne.mlir:874:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 896 13                        # parallel-rne.mlir:896:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 896 13                        # parallel-rne.mlir:896:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 874 11                        # parallel-rne.mlir:874:11
	bneq r2, zero, .LBB0_675
.LBB0_693:                              # %vector.body669
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_676 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	add.s r28, r25, r5
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	loads.w r2, 0(r16)
	.loc	1 876 19                        # parallel-rne.mlir:876:19
	loads.w r6, 0(r28)
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	and r2, r2, r21
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	and r6, r6, r21
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	seteq r7, r2, r24
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	seteq r14, r2, zero
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	seteq r8, r6, zero
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	seteq r11, r6, r24
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	and r2, r7, r8
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	or r7, r2, r7
	.loc	1 877 19                        # parallel-rne.mlir:877:19
	add.s r2, r13, r5
	.loc	1 893 19                        # parallel-rne.mlir:893:19
	or r6, r6, r7
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r6, zero, .LBB0_695
# %bb.694:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_695:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r20, r6, zero
	seteq r18, r7, zero
	seteq r19, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r18
	and r8, r20, r19
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r6, zero, .LBB0_697
# %bb.696:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_697:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r18, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r18, r19
	and r18, r25, r20
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r8, zero, .LBB0_699
# %bb.698:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_699:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 894 19                        # parallel-rne.mlir:894:19
	bneq r8, zero, .LBB0_692
# %bb.700:                              # %vector.body669
                                        #   in Loop: Header=BB0_693 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_692
.LBB0_701:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 866 7                         # parallel-rne.mlir:866:7
	mfence { sm }
	.loc	1 901 7                         # parallel-rne.mlir:901:7
	bneq r6, r9, .LBB0_730
.LBB0_702:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 901 7                         # parallel-rne.mlir:901:7
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_704
.LBB0_703:                              # %middle.block660
                                        #   in Loop: Header=BB0_704 Depth=2
	.loc	1 908 9 is_stmt 1               # parallel-rne.mlir:908:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_729
.LBB0_704:                              # %.preheader159
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_721 Depth 3
                                        #       Child Loop BB0_707 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 909 11 is_stmt 1              # parallel-rne.mlir:909:11
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_719
# %bb.705:                              # %scalar.ph652.preheader
                                        #   in Loop: Header=BB0_704 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_707
.LBB0_706:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	load.d r[6:7], -448(r30)                # 8-byte Folded Reload
	.loc	1 931 13 is_stmt 1              # parallel-rne.mlir:931:13
	add.s r4, r15, r4
	stores.w r5, 0(r4)
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	setlt.ul r6, r[2:3], r[6:7]
	addli.d r[2:3], r[2:3], 1
	beq r6, zero, .LBB0_703
.LBB0_707:                              # %scalar.ph652
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_704 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	add.s r5, r25, r4
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	add.s r6, r13, r4
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	loads.w r5, 0(r5)
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	loads.w r11, 0(r6)
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	beq r6, r24, .LBB0_709
# %bb.708:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_709:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r7, zero, .LBB0_717
# %bb.710:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r6, zero, .LBB0_718
.LBB0_711:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	beq r7, r24, .LBB0_713
.LBB0_712:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_713:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r8, zero, .LBB0_715
# %bb.714:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_715:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	setlt.u r7, r24, r7
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r7, zero, .LBB0_706
# %bb.716:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	j .LBB0_706
.LBB0_717:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	beq r6, zero, .LBB0_711
.LBB0_718:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r7, r24, .LBB0_712
	j .LBB0_713
.LBB0_719:                              # %vector.body654.preheader
                                        #   in Loop: Header=BB0_704 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[3:4], zero
	j .LBB0_721
.LBB0_720:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	.loc	1 909 11 is_stmt 1              # parallel-rne.mlir:909:11
	addli.d r[3:4], r[3:4], 4
	loadli.w r25,  -456(r30)                # 4-byte Folded Reload
	.loc	1 931 13                        # parallel-rne.mlir:931:13
	add.s r5, r15, r5
	lui r18, 524288
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	seteq.d r2, r[3:4], r[26:27]
	.loc	1 931 13                        # parallel-rne.mlir:931:13
	stores.w r14, 12(r5)
	stores.w r6, 8(r5)
	stores.w r7, 4(r5)
	stores.w r11, 0(r5)
	.loc	1 909 11                        # parallel-rne.mlir:909:11
	bneq r2, zero, .LBB0_703
.LBB0_721:                              # %vector.body654
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_704 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	add.ul r[5:6], r[3:4], r[9:10]
	slli r5, r5, 2
	add.s r16, r12, r5
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	add.s r28, r25, r5
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	loads.w r2, 0(r16)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	loads.w r6, 0(r28)
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	and r2, r2, r21
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	and r6, r6, r21
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	seteq r7, r2, r24
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	seteq r14, r2, zero
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	seteq r8, r6, zero
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	seteq r11, r6, r24
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	max.u r2, r2, r6
	setlt.u r6, r24, r2
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	and r2, r7, r8
	.loc	1 923 19                        # parallel-rne.mlir:923:19
	and r7, r14, r11
	lui r14, 523264
	lui r11, 523264
	.loc	1 924 19                        # parallel-rne.mlir:924:19
	or r7, r2, r7
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	add.s r2, r13, r5
	.loc	1 928 19                        # parallel-rne.mlir:928:19
	or r6, r6, r7
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r6, zero, .LBB0_723
# %bb.722:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_723:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	loads.w r6, 4(r16)
	loads.w r7, 4(r28)
	and r6, r6, r21
	and r7, r7, r21
	seteq r8, r6, r24
	seteq r20, r6, zero
	seteq r18, r7, zero
	seteq r19, r7, r24
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	and r7, r8, r18
	and r8, r20, r19
	or r7, r7, r8
	or r6, r6, r7
	lui r7, 523264
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r6, zero, .LBB0_725
# %bb.724:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r2)
.LBB0_725:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r28)
	and r6, r6, r21
	and r8, r8, r21
	seteq r18, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r18, r19
	and r18, r25, r20
	or r8, r8, r18
	or r8, r6, r8
	lui r6, 523264
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r8, zero, .LBB0_727
# %bb.726:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 8(r2)
.LBB0_727:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	loads.w r8, 12(r16)
	loads.w r16, 12(r28)
	and r8, r8, r21
	and r16, r16, r21
	seteq r18, r8, r24
	seteq r25, r8, zero
	seteq r19, r16, zero
	seteq r20, r16, r24
	max.u r8, r8, r16
	setlt.u r8, r24, r8
	and r16, r18, r19
	and r18, r25, r20
	or r16, r16, r18
	or r8, r8, r16
	.loc	1 929 19                        # parallel-rne.mlir:929:19
	bneq r8, zero, .LBB0_720
# %bb.728:                              # %vector.body654
                                        #   in Loop: Header=BB0_721 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r2)
	j .LBB0_720
.LBB0_729:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 901 7                         # parallel-rne.mlir:901:7
	mfence { sm }
.LBB0_730:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 936 7                         # parallel-rne.mlir:936:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 937 7                         # parallel-rne.mlir:937:7
	addli r2, zero, 3
	.loc	1 936 7                         # parallel-rne.mlir:936:7
	sync_core
	.loc	1 937 7                         # parallel-rne.mlir:937:7
	bneq r6, r2, .LBB0_732
# %bb.731:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 15
	addli r4, zero, 2
	xsignal r2, 0
	.loc	1 938 7                         # parallel-rne.mlir:938:7
	addli r2, zero, 28
	xsignal r2, 0
	.loc	1 939 7                         # parallel-rne.mlir:939:7
	addli r2, zero, 34
	xsignal r2, 0
	.loc	1 940 7                         # parallel-rne.mlir:940:7
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 942 13                        # parallel-rne.mlir:942:13
	loadli.w r2,  -36(r30)
	mod.s r3, r2, r4
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	loadli.w r2,  -644(r30)                 # 4-byte Folded Reload
	slli r3, r3, 16
	add.s r13, r3, r2
	.loc	1 946 7                         # parallel-rne.mlir:946:7
	addli r2, zero, 37
	xwait r2, 0
	.loc	1 947 7                         # parallel-rne.mlir:947:7
	addli r2, zero, 41
	xwait r2, 0
	j .LBB0_734
.LBB0_732:                              # %.critedge19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 942 13                        # parallel-rne.mlir:942:13
	loadli.w r2,  -36(r30)
	addli r4, zero, 2
	loadli.w r5,  -644(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r4
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	.loc	1 943 7                         # parallel-rne.mlir:943:7
	addli r2, zero, 5
	.loc	1 942 13                        # parallel-rne.mlir:942:13
	slli r3, r3, 16
	add.s r13, r3, r5
	.loc	1 943 7                         # parallel-rne.mlir:943:7
	bneq r6, r2, .LBB0_734
# %bb.733:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 15
	lui r3, 260096
	addli r5, zero, 4095
	xwait r2, 0
	addli r2, zero, 28
	xwait r2, 0
	addli r2, zero, 38
	xwait r2, 0
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -660(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, r2, zero, 0
	addli r2, zero, 4
	addli r3, zero, 16
	ew_cfg zero, r5, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, r2, 19
	dsmadd r13, r25, r15, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r3, 0
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	loadli.w r3,  -664(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, zero, zero, 0
	ew_cfg zero, r5, zero, 2
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	addli r2, zero, 37
	hp_ssmul r13, r13, r13, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
.LBB0_734:                              # %.critedge23
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -572(r30)                 # 4-byte Folded Reload
	lui r3, 128
	.loc	1 949 7 is_stmt 1               # parallel-rne.mlir:949:7
	xfence
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	mfence { lm, sm, gm }
	ori r3, r3, 1024
	mod.s r2, r2, r4
	slli r2, r2, 16
	add.s r12, r2, r3
	.loc	1 951 7                         # parallel-rne.mlir:951:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r12, r13
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 952 7                         # parallel-rne.mlir:952:7
	beq r6, zero, .LBB0_742
# %bb.735:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 968 7                         # parallel-rne.mlir:968:7
	addli r2, zero, 1
	beq r6, r2, .LBB0_748
.LBB0_736:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 984 7                         # parallel-rne.mlir:984:7
	addli r2, zero, 2
	beq r6, r2, .LBB0_754
.LBB0_737:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	addli r2, zero, 3
	beq r6, r2, .LBB0_760
.LBB0_738:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	addli r2, zero, 4
	beq r6, r2, .LBB0_766
.LBB0_739:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	addli r2, zero, 5
	beq r6, r2, .LBB0_772
.LBB0_740:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1048 7                        # parallel-rne.mlir:1048:7
	addli r2, zero, 6
	beq r6, r2, .LBB0_778
.LBB0_741:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	beq r6, r9, .LBB0_784
	j .LBB0_790
.LBB0_742:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 952 7 is_stmt 1               # parallel-rne.mlir:952:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	zext_int2long r[3:4], zero
	j .LBB0_744
.LBB0_743:                              # %middle.block645
                                        #   in Loop: Header=BB0_744 Depth=2
	.loc	1 959 9                         # parallel-rne.mlir:959:9
	load.d r[5:6], -528(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_747
.LBB0_744:                              # %.preheader158
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_746 Depth 3
                                        #       Child Loop BB0_745 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 960 11 is_stmt 1              # parallel-rne.mlir:960:11
	beq r2, zero, .LBB0_746
.LBB0_745:                              # %scalar.ph638
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_744 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 960 11                        # parallel-rne.mlir:960:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	slli r9, r9, 2
	.loc	1 960 11                        # parallel-rne.mlir:960:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	add.s r10, r13, r9
	.loc	1 963 13                        # parallel-rne.mlir:963:13
	add.s r9, r12, r9
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	loads.w r10, 0(r10)
	.loc	1 963 13                        # parallel-rne.mlir:963:13
	stores.w r10, 0(r9)
	.loc	1 960 11                        # parallel-rne.mlir:960:11
	bneq r11, zero, .LBB0_745
	j .LBB0_743
.LBB0_746:                              # %vector.body640
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_744 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 960 11                        # parallel-rne.mlir:960:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	slli r9, r9, 2
	.loc	1 960 11                        # parallel-rne.mlir:960:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	add.s r11, r13, r9
	.loc	1 963 13                        # parallel-rne.mlir:963:13
	add.s r9, r12, r9
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 963 13                        # parallel-rne.mlir:963:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 960 11                        # parallel-rne.mlir:960:11
	beq r10, zero, .LBB0_746
	j .LBB0_743
.LBB0_747:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 952 7                         # parallel-rne.mlir:952:7
	mfence { sm }
	.loc	1 968 7                         # parallel-rne.mlir:968:7
	addli r2, zero, 1
	bneq r6, r2, .LBB0_736
.LBB0_748:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 968 7                         # parallel-rne.mlir:968:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 16
	zext_int2long r[3:4], r3
	j .LBB0_750
.LBB0_749:                              # %middle.block635
                                        #   in Loop: Header=BB0_750 Depth=2
	.loc	1 975 9 is_stmt 1               # parallel-rne.mlir:975:9
	load.d r[5:6], -520(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_753
.LBB0_750:                              # %.preheader157
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_752 Depth 3
                                        #       Child Loop BB0_751 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 976 11 is_stmt 1              # parallel-rne.mlir:976:11
	beq r2, zero, .LBB0_752
.LBB0_751:                              # %scalar.ph628
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_750 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 976 11                        # parallel-rne.mlir:976:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	slli r9, r9, 2
	.loc	1 976 11                        # parallel-rne.mlir:976:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	add.s r10, r13, r9
	.loc	1 979 13                        # parallel-rne.mlir:979:13
	add.s r9, r12, r9
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	loads.w r10, 0(r10)
	.loc	1 979 13                        # parallel-rne.mlir:979:13
	stores.w r10, 0(r9)
	.loc	1 976 11                        # parallel-rne.mlir:976:11
	bneq r11, zero, .LBB0_751
	j .LBB0_749
.LBB0_752:                              # %vector.body630
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_750 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 976 11                        # parallel-rne.mlir:976:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	slli r9, r9, 2
	.loc	1 976 11                        # parallel-rne.mlir:976:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	add.s r11, r13, r9
	.loc	1 979 13                        # parallel-rne.mlir:979:13
	add.s r9, r12, r9
	.loc	1 977 19                        # parallel-rne.mlir:977:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 979 13                        # parallel-rne.mlir:979:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 976 11                        # parallel-rne.mlir:976:11
	beq r10, zero, .LBB0_752
	j .LBB0_749
.LBB0_753:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 968 7                         # parallel-rne.mlir:968:7
	mfence { sm }
	.loc	1 984 7                         # parallel-rne.mlir:984:7
	addli r2, zero, 2
	bneq r6, r2, .LBB0_737
.LBB0_754:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -472(r30)                 # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 984 7                         # parallel-rne.mlir:984:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	j .LBB0_756
.LBB0_755:                              # %middle.block625
                                        #   in Loop: Header=BB0_756 Depth=2
	.loc	1 991 9 is_stmt 1               # parallel-rne.mlir:991:9
	load.d r[5:6], -512(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_759
.LBB0_756:                              # %.preheader156
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_758 Depth 3
                                        #       Child Loop BB0_757 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 992 11 is_stmt 1              # parallel-rne.mlir:992:11
	beq r2, zero, .LBB0_758
.LBB0_757:                              # %scalar.ph618
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_756 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 992 11                        # parallel-rne.mlir:992:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	slli r9, r9, 2
	.loc	1 992 11                        # parallel-rne.mlir:992:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	add.s r10, r13, r9
	.loc	1 995 13                        # parallel-rne.mlir:995:13
	add.s r9, r12, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	loads.w r10, 0(r10)
	.loc	1 995 13                        # parallel-rne.mlir:995:13
	stores.w r10, 0(r9)
	.loc	1 992 11                        # parallel-rne.mlir:992:11
	bneq r11, zero, .LBB0_757
	j .LBB0_755
.LBB0_758:                              # %vector.body620
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_756 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 992 11                        # parallel-rne.mlir:992:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	slli r9, r9, 2
	.loc	1 992 11                        # parallel-rne.mlir:992:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	add.s r11, r13, r9
	.loc	1 995 13                        # parallel-rne.mlir:995:13
	add.s r9, r12, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 995 13                        # parallel-rne.mlir:995:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 992 11                        # parallel-rne.mlir:992:11
	beq r10, zero, .LBB0_758
	j .LBB0_755
.LBB0_759:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 984 7                         # parallel-rne.mlir:984:7
	mfence { sm }
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	addli r2, zero, 3
	bneq r6, r2, .LBB0_738
.LBB0_760:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 48
	zext_int2long r[3:4], r3
	j .LBB0_762
.LBB0_761:                              # %middle.block615
                                        #   in Loop: Header=BB0_762 Depth=2
	.loc	1 1007 9 is_stmt 1              # parallel-rne.mlir:1007:9
	load.d r[5:6], -504(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_765
.LBB0_762:                              # %.preheader155
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_764 Depth 3
                                        #       Child Loop BB0_763 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 1008 11 is_stmt 1             # parallel-rne.mlir:1008:11
	beq r2, zero, .LBB0_764
.LBB0_763:                              # %scalar.ph608
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_762 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	slli r9, r9, 2
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	add.s r10, r13, r9
	.loc	1 1011 13                       # parallel-rne.mlir:1011:13
	add.s r9, r12, r9
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	loads.w r10, 0(r10)
	.loc	1 1011 13                       # parallel-rne.mlir:1011:13
	stores.w r10, 0(r9)
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	bneq r11, zero, .LBB0_763
	j .LBB0_761
.LBB0_764:                              # %vector.body610
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_762 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	slli r9, r9, 2
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	add.s r11, r13, r9
	.loc	1 1011 13                       # parallel-rne.mlir:1011:13
	add.s r9, r12, r9
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1011 13                       # parallel-rne.mlir:1011:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	beq r10, zero, .LBB0_764
	j .LBB0_761
.LBB0_765:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	mfence { sm }
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	addli r2, zero, 4
	bneq r6, r2, .LBB0_739
.LBB0_766:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 64
	zext_int2long r[3:4], r3
	j .LBB0_768
.LBB0_767:                              # %middle.block605
                                        #   in Loop: Header=BB0_768 Depth=2
	.loc	1 1023 9 is_stmt 1              # parallel-rne.mlir:1023:9
	load.d r[5:6], -496(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_771
.LBB0_768:                              # %.preheader154
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_770 Depth 3
                                        #       Child Loop BB0_769 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 1024 11 is_stmt 1             # parallel-rne.mlir:1024:11
	beq r2, zero, .LBB0_770
.LBB0_769:                              # %scalar.ph598
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_768 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1024 11                       # parallel-rne.mlir:1024:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	slli r9, r9, 2
	.loc	1 1024 11                       # parallel-rne.mlir:1024:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	add.s r10, r13, r9
	.loc	1 1027 13                       # parallel-rne.mlir:1027:13
	add.s r9, r12, r9
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	loads.w r10, 0(r10)
	.loc	1 1027 13                       # parallel-rne.mlir:1027:13
	stores.w r10, 0(r9)
	.loc	1 1024 11                       # parallel-rne.mlir:1024:11
	bneq r11, zero, .LBB0_769
	j .LBB0_767
.LBB0_770:                              # %vector.body600
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_768 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1024 11                       # parallel-rne.mlir:1024:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	slli r9, r9, 2
	.loc	1 1024 11                       # parallel-rne.mlir:1024:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	add.s r11, r13, r9
	.loc	1 1027 13                       # parallel-rne.mlir:1027:13
	add.s r9, r12, r9
	.loc	1 1025 19                       # parallel-rne.mlir:1025:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1027 13                       # parallel-rne.mlir:1027:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 1024 11                       # parallel-rne.mlir:1024:11
	beq r10, zero, .LBB0_770
	j .LBB0_767
.LBB0_771:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 1016 7                        # parallel-rne.mlir:1016:7
	mfence { sm }
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_740
.LBB0_772:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 80
	zext_int2long r[3:4], r3
	j .LBB0_774
.LBB0_773:                              # %middle.block595
                                        #   in Loop: Header=BB0_774 Depth=2
	.loc	1 1039 9 is_stmt 1              # parallel-rne.mlir:1039:9
	load.d r[5:6], -488(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_777
.LBB0_774:                              # %.preheader153
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_776 Depth 3
                                        #       Child Loop BB0_775 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 1040 11 is_stmt 1             # parallel-rne.mlir:1040:11
	beq r2, zero, .LBB0_776
.LBB0_775:                              # %scalar.ph588
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_774 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	slli r9, r9, 2
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.s r10, r13, r9
	.loc	1 1043 13                       # parallel-rne.mlir:1043:13
	add.s r9, r12, r9
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	loads.w r10, 0(r10)
	.loc	1 1043 13                       # parallel-rne.mlir:1043:13
	stores.w r10, 0(r9)
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	bneq r11, zero, .LBB0_775
	j .LBB0_773
.LBB0_776:                              # %vector.body590
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_774 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	slli r9, r9, 2
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	add.s r11, r13, r9
	.loc	1 1043 13                       # parallel-rne.mlir:1043:13
	add.s r9, r12, r9
	.loc	1 1041 19                       # parallel-rne.mlir:1041:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1043 13                       # parallel-rne.mlir:1043:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 1040 11                       # parallel-rne.mlir:1040:11
	beq r10, zero, .LBB0_776
	j .LBB0_773
.LBB0_777:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	mfence { sm }
	.loc	1 1048 7                        # parallel-rne.mlir:1048:7
	addli r2, zero, 6
	bneq r6, r2, .LBB0_741
.LBB0_778:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1048 7                        # parallel-rne.mlir:1048:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 96
	zext_int2long r[3:4], r3
	j .LBB0_780
.LBB0_779:                              # %middle.block585
                                        #   in Loop: Header=BB0_780 Depth=2
	.loc	1 1055 9 is_stmt 1              # parallel-rne.mlir:1055:9
	load.d r[5:6], -480(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_783
.LBB0_780:                              # %.preheader152
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_782 Depth 3
                                        #       Child Loop BB0_781 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 1056 11 is_stmt 1             # parallel-rne.mlir:1056:11
	beq r2, zero, .LBB0_782
.LBB0_781:                              # %scalar.ph578
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_780 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	slli r9, r9, 2
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r10, r13, r9
	.loc	1 1059 13                       # parallel-rne.mlir:1059:13
	add.s r9, r12, r9
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	loads.w r10, 0(r10)
	.loc	1 1059 13                       # parallel-rne.mlir:1059:13
	stores.w r10, 0(r9)
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	bneq r11, zero, .LBB0_781
	j .LBB0_779
.LBB0_782:                              # %vector.body580
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_780 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	slli r9, r9, 2
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	add.s r11, r13, r9
	.loc	1 1059 13                       # parallel-rne.mlir:1059:13
	add.s r9, r12, r9
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1059 13                       # parallel-rne.mlir:1059:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 1056 11                       # parallel-rne.mlir:1056:11
	beq r10, zero, .LBB0_782
	j .LBB0_779
.LBB0_783:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 1048 7                        # parallel-rne.mlir:1048:7
	mfence { sm }
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	bneq r6, r9, .LBB0_790
.LBB0_784:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -472(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 112
	zext_int2long r[3:4], r3
	j .LBB0_786
.LBB0_785:                              # %middle.block575
                                        #   in Loop: Header=BB0_786 Depth=2
	.loc	1 1071 9 is_stmt 1              # parallel-rne.mlir:1071:9
	load.d r[5:6], -448(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r5, r[3:4], r[5:6]
	addli.d r[3:4], r[3:4], 1
	beq r5, zero, .LBB0_789
.LBB0_786:                              # %.preheader151
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_788 Depth 3
                                        #       Child Loop BB0_787 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[5:6], zero
	.loc	1 1072 11 is_stmt 1             # parallel-rne.mlir:1072:11
	beq r2, zero, .LBB0_788
.LBB0_787:                              # %scalar.ph568
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_786 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	load.d r[18:19], -448(r30)              # 8-byte Folded Reload
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	slli r9, r9, 2
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	setlt.ul r11, r[5:6], r[18:19]
	addli.d r[5:6], r[5:6], 1
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	add.s r10, r13, r9
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	add.s r9, r12, r9
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	loads.w r10, 0(r10)
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	stores.w r10, 0(r9)
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	bneq r11, zero, .LBB0_787
	j .LBB0_785
.LBB0_788:                              # %vector.body570
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_786 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	add.ul r[9:10], r[5:6], r[7:8]
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	addli.d r[5:6], r[5:6], 8
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	slli r9, r9, 2
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	seteq.d r10, r[5:6], r[26:27]
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	add.s r11, r13, r9
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	add.s r9, r12, r9
	.loc	1 1073 19                       # parallel-rne.mlir:1073:19
	loads.w r14, 12(r11)
	loads.w r16, 8(r11)
	loads.w r18, 4(r11)
	loads.w r19, 0(r11)
	loads.w r20, 28(r11)
	loads.w r25, 24(r11)
	loads.w r28, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 1075 13                       # parallel-rne.mlir:1075:13
	stores.w r14, 12(r9)
	stores.w r16, 8(r9)
	stores.w r18, 4(r9)
	stores.w r19, 0(r9)
	stores.w r20, 28(r9)
	stores.w r25, 24(r9)
	stores.w r28, 20(r9)
	stores.w r11, 16(r9)
	.loc	1 1072 11                       # parallel-rne.mlir:1072:11
	beq r10, zero, .LBB0_788
	j .LBB0_785
.LBB0_789:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	lui r18, 524288
	.loc	1 1064 7                        # parallel-rne.mlir:1064:7
	mfence { sm }
.LBB0_790:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	addli r2, zero, 3
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	sync_core
	.loc	1 1081 7                        # parallel-rne.mlir:1081:7
	bneq r6, r2, .LBB0_792
# %bb.791:                              # %.critedge25
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 38
	addli r3, zero, 39
	xsignal r2, 0
	.loc	1 1084 7                        # parallel-rne.mlir:1084:7
	addli r2, zero, 16
	.loc	1 1082 7                        # parallel-rne.mlir:1082:7
	xsignal r3, 0
	.loc	1 1084 7                        # parallel-rne.mlir:1084:7
	xwait r2, 0
	.loc	1 1085 7                        # parallel-rne.mlir:1085:7
	xwait r3, 0
.LBB0_792:                              # %.critedge27
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1089 7                        # parallel-rne.mlir:1089:7
	addli r2, zero, 255
	.loc	1 1087 7                        # parallel-rne.mlir:1087:7
	xfence
	addli r3, zero, 17
	.loc	1 1088 7                        # parallel-rne.mlir:1088:7
	mfence { lm, sm, gm }
	.loc	1 1089 7                        # parallel-rne.mlir:1089:7
	csr_set csr5, r2
	addli r2, zero, 1
	sync_core
	.loc	1 1090 7                        # parallel-rne.mlir:1090:7
	beq r6, zero, .LBB0_800
# %bb.793:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r25, 1024
	.loc	1 1111 7 is_stmt 1              # parallel-rne.mlir:1111:7
	beq r6, r2, .LBB0_821
.LBB0_794:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1132 7                        # parallel-rne.mlir:1132:7
	addli r2, zero, 2
	beq r6, r2, .LBB0_842
.LBB0_795:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	addli r2, zero, 3
	beq r6, r2, .LBB0_863
.LBB0_796:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1174 7                        # parallel-rne.mlir:1174:7
	addli r2, zero, 4
	beq r6, r2, .LBB0_884
.LBB0_797:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1195 7                        # parallel-rne.mlir:1195:7
	addli r2, zero, 5
	beq r6, r2, .LBB0_905
.LBB0_798:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1216 7                        # parallel-rne.mlir:1216:7
	addli r2, zero, 6
	beq r6, r2, .LBB0_926
.LBB0_799:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	beq r6, r9, .LBB0_947
	j .LBB0_968
.LBB0_800:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1090 7                        # parallel-rne.mlir:1090:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	j .LBB0_802
.LBB0_801:                              # %middle.block565
                                        #   in Loop: Header=BB0_802 Depth=2
	.loc	1 1097 9                        # parallel-rne.mlir:1097:9
	load.d r[2:3], -528(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	beq r2, zero, .LBB0_820
.LBB0_802:                              # %.preheader150
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_804 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[7:8], r[3:4], r9
	load.d r[9:10], -472(r30)               # 8-byte Folded Reload
	addli.d r[19:20], r[3:4], 0
	j .LBB0_804
.LBB0_803:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	.loc	1 1098 11 is_stmt 1             # parallel-rne.mlir:1098:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1106 13                       # parallel-rne.mlir:1106:13
	add.s r6, r15, r14
	.loc	1 1098 11                       # parallel-rne.mlir:1098:11
	setneq.d r14, r[9:10], r[26:27]
	.loc	1 1106 13                       # parallel-rne.mlir:1106:13
	stores.w r16, 12(r6)
	stores.w r5, 8(r6)
	stores.w r4, 4(r6)
	stores.w r11, 0(r6)
	stores.w r3, 28(r6)
	stores.w r2, 24(r6)
	stores.w r28, 20(r6)
	stores.w r13, 16(r6)
	.loc	1 1098 11                       # parallel-rne.mlir:1098:11
	beq r14, zero, .LBB0_801
.LBB0_804:                              # %vector.body560
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_802 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	add.ul r[2:3], r[9:10], r[7:8]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r11, 0(r6)
	loads.w r16, 12(r6)
	loads.w r5, 8(r6)
	loads.w r4, 4(r6)
	loads.w r3, 28(r6)
	loads.w r2, 24(r6)
	loads.w r28, 20(r6)
	loads.w r13, 16(r6)
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	and r6, r11, r21
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_806
# %bb.805:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_806:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	and r6, r4, r21
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_808
# %bb.807:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r18
	or r4, r4, r17
.LBB0_808:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	and r6, r5, r21
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_810
# %bb.809:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r18
	or r5, r5, r17
.LBB0_810:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_812
# %bb.811:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_812:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_814
# %bb.813:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_814:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_816
# %bb.815:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
.LBB0_816:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_818
# %bb.817:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_818:                              # %vector.body560
                                        #   in Loop: Header=BB0_804 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1104 19                       # parallel-rne.mlir:1104:19
	beq r6, zero, .LBB0_803
# %bb.819:                              #   in Loop: Header=BB0_804 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
	j .LBB0_803
.LBB0_820:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	addli r2, zero, 1
	.loc	1 1090 7                        # parallel-rne.mlir:1090:7
	mfence { sm }
	lui r25, 1024
	.loc	1 1111 7                        # parallel-rne.mlir:1111:7
	bneq r6, r2, .LBB0_794
.LBB0_821:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 1111 7                        # parallel-rne.mlir:1111:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r2
	j .LBB0_823
.LBB0_822:                              # %middle.block555
                                        #   in Loop: Header=BB0_823 Depth=2
	.loc	1 1118 9 is_stmt 1              # parallel-rne.mlir:1118:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	addli.d r[19:20], r[3:4], 0
	beq r2, zero, .LBB0_841
.LBB0_823:                              # %.preheader149
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_825 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[4:5], r[19:20], r9
	zext_int2long r[7:8], zero
	j .LBB0_825
.LBB0_824:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	.loc	1 1127 13 is_stmt 1             # parallel-rne.mlir:1127:13
	add.s r6, r15, r14
	.loc	1 1119 11                       # parallel-rne.mlir:1119:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1127 13                       # parallel-rne.mlir:1127:13
	stores.w r3, 12(r6)
	.loc	1 1119 11                       # parallel-rne.mlir:1119:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 1127 13                       # parallel-rne.mlir:1127:13
	stores.w r2, 8(r6)
	stores.w r16, 4(r6)
	stores.w r9, 0(r6)
	stores.w r28, 28(r6)
	stores.w r13, 24(r6)
	stores.w r11, 20(r6)
	stores.w r10, 16(r6)
	.loc	1 1119 11                       # parallel-rne.mlir:1119:11
	beq r3, zero, .LBB0_822
.LBB0_825:                              # %vector.body550
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_823 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1120 19                       # parallel-rne.mlir:1120:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r9, 0(r6)
	loads.w r3, 12(r6)
	loads.w r2, 8(r6)
	loads.w r16, 4(r6)
	loads.w r28, 28(r6)
	loads.w r13, 24(r6)
	loads.w r11, 20(r6)
	loads.w r10, 16(r6)
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	and r6, r9, r21
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_827
# %bb.826:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r9, r18
	or r9, r6, r17
.LBB0_827:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_829
# %bb.828:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_829:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_831
# %bb.830:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_831:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_833
# %bb.832:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
.LBB0_833:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	and r6, r10, r21
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_835
# %bb.834:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r10, r18
	or r10, r6, r17
.LBB0_835:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	and r6, r11, r21
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_837
# %bb.836:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_837:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_839
# %bb.838:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_839:                              # %vector.body550
                                        #   in Loop: Header=BB0_825 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	beq r6, zero, .LBB0_824
# %bb.840:                              #   in Loop: Header=BB0_825 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
	j .LBB0_824
.LBB0_841:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	.loc	1 1111 7                        # parallel-rne.mlir:1111:7
	mfence { sm }
	.loc	1 1132 7                        # parallel-rne.mlir:1132:7
	addli r2, zero, 2
	bneq r6, r2, .LBB0_795
.LBB0_842:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 1132 7                        # parallel-rne.mlir:1132:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r2
	j .LBB0_844
.LBB0_843:                              # %middle.block545
                                        #   in Loop: Header=BB0_844 Depth=2
	.loc	1 1139 9 is_stmt 1              # parallel-rne.mlir:1139:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	addli.d r[19:20], r[3:4], 0
	beq r2, zero, .LBB0_862
.LBB0_844:                              # %.preheader148
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_846 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[4:5], r[19:20], r9
	zext_int2long r[7:8], zero
	j .LBB0_846
.LBB0_845:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 1148 13 is_stmt 1             # parallel-rne.mlir:1148:13
	add.s r6, r15, r14
	.loc	1 1140 11                       # parallel-rne.mlir:1140:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	stores.w r3, 12(r6)
	.loc	1 1140 11                       # parallel-rne.mlir:1140:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 1148 13                       # parallel-rne.mlir:1148:13
	stores.w r2, 8(r6)
	stores.w r16, 4(r6)
	stores.w r9, 0(r6)
	stores.w r28, 28(r6)
	stores.w r13, 24(r6)
	stores.w r11, 20(r6)
	stores.w r10, 16(r6)
	.loc	1 1140 11                       # parallel-rne.mlir:1140:11
	beq r3, zero, .LBB0_843
.LBB0_846:                              # %vector.body540
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_844 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1141 19                       # parallel-rne.mlir:1141:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r9, 0(r6)
	loads.w r3, 12(r6)
	loads.w r2, 8(r6)
	loads.w r16, 4(r6)
	loads.w r28, 28(r6)
	loads.w r13, 24(r6)
	loads.w r11, 20(r6)
	loads.w r10, 16(r6)
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	and r6, r9, r21
	.loc	1 1145 19                       # parallel-rne.mlir:1145:19
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_848
# %bb.847:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r9, r18
	or r9, r6, r17
.LBB0_848:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_850
# %bb.849:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_850:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_852
# %bb.851:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_852:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_854
# %bb.853:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
.LBB0_854:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	and r6, r10, r21
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_856
# %bb.855:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r10, r18
	or r10, r6, r17
.LBB0_856:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	and r6, r11, r21
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_858
# %bb.857:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_858:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_860
# %bb.859:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_860:                              # %vector.body540
                                        #   in Loop: Header=BB0_846 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1146 19                       # parallel-rne.mlir:1146:19
	beq r6, zero, .LBB0_845
# %bb.861:                              #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
	j .LBB0_845
.LBB0_862:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	.loc	1 1132 7                        # parallel-rne.mlir:1132:7
	mfence { sm }
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	addli r2, zero, 3
	bneq r6, r2, .LBB0_796
.LBB0_863:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r2
	j .LBB0_865
.LBB0_864:                              # %middle.block535
                                        #   in Loop: Header=BB0_865 Depth=2
	.loc	1 1160 9 is_stmt 1              # parallel-rne.mlir:1160:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	addli.d r[19:20], r[3:4], 0
	beq r2, zero, .LBB0_883
.LBB0_865:                              # %.preheader147
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_867 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[4:5], r[19:20], r9
	zext_int2long r[7:8], zero
	j .LBB0_867
.LBB0_866:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	.loc	1 1169 13 is_stmt 1             # parallel-rne.mlir:1169:13
	add.s r6, r15, r14
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1169 13                       # parallel-rne.mlir:1169:13
	stores.w r3, 12(r6)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 1169 13                       # parallel-rne.mlir:1169:13
	stores.w r2, 8(r6)
	stores.w r16, 4(r6)
	stores.w r9, 0(r6)
	stores.w r28, 28(r6)
	stores.w r13, 24(r6)
	stores.w r11, 20(r6)
	stores.w r10, 16(r6)
	.loc	1 1161 11                       # parallel-rne.mlir:1161:11
	beq r3, zero, .LBB0_864
.LBB0_867:                              # %vector.body530
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_865 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r9, 0(r6)
	loads.w r3, 12(r6)
	loads.w r2, 8(r6)
	loads.w r16, 4(r6)
	loads.w r28, 28(r6)
	loads.w r13, 24(r6)
	loads.w r11, 20(r6)
	loads.w r10, 16(r6)
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	and r6, r9, r21
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_869
# %bb.868:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r9, r18
	or r9, r6, r17
.LBB0_869:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_871
# %bb.870:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_871:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_873
# %bb.872:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_873:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_875
# %bb.874:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
.LBB0_875:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	and r6, r10, r21
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_877
# %bb.876:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r10, r18
	or r10, r6, r17
.LBB0_877:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	and r6, r11, r21
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_879
# %bb.878:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_879:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_881
# %bb.880:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_881:                              # %vector.body530
                                        #   in Loop: Header=BB0_867 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	beq r6, zero, .LBB0_866
# %bb.882:                              #   in Loop: Header=BB0_867 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
	j .LBB0_866
.LBB0_883:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	.loc	1 1153 7                        # parallel-rne.mlir:1153:7
	mfence { sm }
	.loc	1 1174 7                        # parallel-rne.mlir:1174:7
	addli r2, zero, 4
	bneq r6, r2, .LBB0_797
.LBB0_884:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 1174 7                        # parallel-rne.mlir:1174:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r2
	j .LBB0_886
.LBB0_885:                              # %middle.block525
                                        #   in Loop: Header=BB0_886 Depth=2
	.loc	1 1181 9 is_stmt 1              # parallel-rne.mlir:1181:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	addli.d r[19:20], r[3:4], 0
	beq r2, zero, .LBB0_904
.LBB0_886:                              # %.preheader146
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_888 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[4:5], r[19:20], r9
	zext_int2long r[7:8], zero
	j .LBB0_888
.LBB0_887:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	.loc	1 1190 13 is_stmt 1             # parallel-rne.mlir:1190:13
	add.s r6, r15, r14
	.loc	1 1182 11                       # parallel-rne.mlir:1182:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1190 13                       # parallel-rne.mlir:1190:13
	stores.w r3, 12(r6)
	.loc	1 1182 11                       # parallel-rne.mlir:1182:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 1190 13                       # parallel-rne.mlir:1190:13
	stores.w r2, 8(r6)
	stores.w r16, 4(r6)
	stores.w r9, 0(r6)
	stores.w r28, 28(r6)
	stores.w r13, 24(r6)
	stores.w r11, 20(r6)
	stores.w r10, 16(r6)
	.loc	1 1182 11                       # parallel-rne.mlir:1182:11
	beq r3, zero, .LBB0_885
.LBB0_888:                              # %vector.body520
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_886 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1183 19                       # parallel-rne.mlir:1183:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r9, 0(r6)
	loads.w r3, 12(r6)
	loads.w r2, 8(r6)
	loads.w r16, 4(r6)
	loads.w r28, 28(r6)
	loads.w r13, 24(r6)
	loads.w r11, 20(r6)
	loads.w r10, 16(r6)
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	and r6, r9, r21
	.loc	1 1187 19                       # parallel-rne.mlir:1187:19
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_890
# %bb.889:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r9, r18
	or r9, r6, r17
.LBB0_890:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_892
# %bb.891:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_892:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_894
# %bb.893:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_894:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_896
# %bb.895:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
.LBB0_896:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	and r6, r10, r21
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_898
# %bb.897:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r10, r18
	or r10, r6, r17
.LBB0_898:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	and r6, r11, r21
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_900
# %bb.899:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_900:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_902
# %bb.901:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_902:                              # %vector.body520
                                        #   in Loop: Header=BB0_888 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1188 19                       # parallel-rne.mlir:1188:19
	beq r6, zero, .LBB0_887
# %bb.903:                              #   in Loop: Header=BB0_888 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
	j .LBB0_887
.LBB0_904:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	.loc	1 1174 7                        # parallel-rne.mlir:1174:7
	mfence { sm }
	.loc	1 1195 7                        # parallel-rne.mlir:1195:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_798
.LBB0_905:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 1195 7                        # parallel-rne.mlir:1195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r2
	j .LBB0_907
.LBB0_906:                              # %middle.block515
                                        #   in Loop: Header=BB0_907 Depth=2
	.loc	1 1202 9 is_stmt 1              # parallel-rne.mlir:1202:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	addli.d r[19:20], r[3:4], 0
	beq r2, zero, .LBB0_925
.LBB0_907:                              # %.preheader145
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_909 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[4:5], r[19:20], r9
	zext_int2long r[7:8], zero
	j .LBB0_909
.LBB0_908:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	.loc	1 1211 13 is_stmt 1             # parallel-rne.mlir:1211:13
	add.s r6, r15, r14
	.loc	1 1203 11                       # parallel-rne.mlir:1203:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1211 13                       # parallel-rne.mlir:1211:13
	stores.w r3, 12(r6)
	.loc	1 1203 11                       # parallel-rne.mlir:1203:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 1211 13                       # parallel-rne.mlir:1211:13
	stores.w r2, 8(r6)
	stores.w r16, 4(r6)
	stores.w r9, 0(r6)
	stores.w r28, 28(r6)
	stores.w r13, 24(r6)
	stores.w r11, 20(r6)
	stores.w r10, 16(r6)
	.loc	1 1203 11                       # parallel-rne.mlir:1203:11
	beq r3, zero, .LBB0_906
.LBB0_909:                              # %vector.body510
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_907 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r9, 0(r6)
	loads.w r3, 12(r6)
	loads.w r2, 8(r6)
	loads.w r16, 4(r6)
	loads.w r28, 28(r6)
	loads.w r13, 24(r6)
	loads.w r11, 20(r6)
	loads.w r10, 16(r6)
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	and r6, r9, r21
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_911
# %bb.910:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r9, r18
	or r9, r6, r17
.LBB0_911:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_913
# %bb.912:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_913:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_915
# %bb.914:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_915:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_917
# %bb.916:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
.LBB0_917:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	and r6, r10, r21
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_919
# %bb.918:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r10, r18
	or r10, r6, r17
.LBB0_919:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	and r6, r11, r21
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_921
# %bb.920:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_921:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_923
# %bb.922:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_923:                              # %vector.body510
                                        #   in Loop: Header=BB0_909 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	beq r6, zero, .LBB0_908
# %bb.924:                              #   in Loop: Header=BB0_909 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
	j .LBB0_908
.LBB0_925:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	.loc	1 1195 7                        # parallel-rne.mlir:1195:7
	mfence { sm }
	.loc	1 1216 7                        # parallel-rne.mlir:1216:7
	addli r2, zero, 6
	bneq r6, r2, .LBB0_799
.LBB0_926:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 1216 7                        # parallel-rne.mlir:1216:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r2
	j .LBB0_928
.LBB0_927:                              # %middle.block505
                                        #   in Loop: Header=BB0_928 Depth=2
	.loc	1 1223 9 is_stmt 1              # parallel-rne.mlir:1223:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	addli.d r[19:20], r[3:4], 0
	beq r2, zero, .LBB0_946
.LBB0_928:                              # %.preheader144
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_930 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[4:5], r[19:20], r9
	zext_int2long r[7:8], zero
	j .LBB0_930
.LBB0_929:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	.loc	1 1232 13 is_stmt 1             # parallel-rne.mlir:1232:13
	add.s r6, r15, r14
	.loc	1 1224 11                       # parallel-rne.mlir:1224:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1232 13                       # parallel-rne.mlir:1232:13
	stores.w r3, 12(r6)
	.loc	1 1224 11                       # parallel-rne.mlir:1224:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 1232 13                       # parallel-rne.mlir:1232:13
	stores.w r2, 8(r6)
	stores.w r16, 4(r6)
	stores.w r9, 0(r6)
	stores.w r28, 28(r6)
	stores.w r13, 24(r6)
	stores.w r11, 20(r6)
	stores.w r10, 16(r6)
	.loc	1 1224 11                       # parallel-rne.mlir:1224:11
	beq r3, zero, .LBB0_927
.LBB0_930:                              # %vector.body500
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_928 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1225 19                       # parallel-rne.mlir:1225:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r9, 0(r6)
	loads.w r3, 12(r6)
	loads.w r2, 8(r6)
	loads.w r16, 4(r6)
	loads.w r28, 28(r6)
	loads.w r13, 24(r6)
	loads.w r11, 20(r6)
	loads.w r10, 16(r6)
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	and r6, r9, r21
	.loc	1 1229 19                       # parallel-rne.mlir:1229:19
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_932
# %bb.931:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r9, r18
	or r9, r6, r17
.LBB0_932:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_934
# %bb.933:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_934:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_936
# %bb.935:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_936:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_938
# %bb.937:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
.LBB0_938:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	and r6, r10, r21
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_940
# %bb.939:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r10, r18
	or r10, r6, r17
.LBB0_940:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	and r6, r11, r21
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_942
# %bb.941:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_942:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_944
# %bb.943:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_944:                              # %vector.body500
                                        #   in Loop: Header=BB0_930 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1230 19                       # parallel-rne.mlir:1230:19
	beq r6, zero, .LBB0_929
# %bb.945:                              #   in Loop: Header=BB0_930 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
	j .LBB0_929
.LBB0_946:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	.loc	1 1216 7                        # parallel-rne.mlir:1216:7
	mfence { sm }
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	bneq r6, r9, .LBB0_968
.LBB0_947:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[19:20], r2
	j .LBB0_949
.LBB0_948:                              # %middle.block495
                                        #   in Loop: Header=BB0_949 Depth=2
	.loc	1 1244 9 is_stmt 1              # parallel-rne.mlir:1244:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[19:20], r[2:3]
	addli.d r[3:4], r[19:20], 1
	addli.d r[19:20], r[3:4], 0
	beq r2, zero, .LBB0_967
.LBB0_949:                              # %.preheader143
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_951 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[4:5], r[19:20], r9
	zext_int2long r[7:8], zero
	j .LBB0_951
.LBB0_950:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	.loc	1 1253 13 is_stmt 1             # parallel-rne.mlir:1253:13
	add.s r6, r15, r14
	.loc	1 1245 11                       # parallel-rne.mlir:1245:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	stores.w r3, 12(r6)
	.loc	1 1245 11                       # parallel-rne.mlir:1245:11
	setneq.d r3, r[7:8], r[26:27]
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	stores.w r2, 8(r6)
	stores.w r16, 4(r6)
	stores.w r9, 0(r6)
	stores.w r28, 28(r6)
	stores.w r13, 24(r6)
	stores.w r11, 20(r6)
	stores.w r10, 16(r6)
	.loc	1 1245 11                       # parallel-rne.mlir:1245:11
	beq r3, zero, .LBB0_948
.LBB0_951:                              # %vector.body490
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_949 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	add.ul r[2:3], r[7:8], r[4:5]
	slli r14, r2, 2
	add.s r6, r12, r14
	loads.w r9, 0(r6)
	loads.w r3, 12(r6)
	loads.w r2, 8(r6)
	loads.w r16, 4(r6)
	loads.w r28, 28(r6)
	loads.w r13, 24(r6)
	loads.w r11, 20(r6)
	loads.w r10, 16(r6)
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	and r6, r9, r21
	.loc	1 1250 19                       # parallel-rne.mlir:1250:19
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_953
# %bb.952:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r6, r9, r18
	or r9, r6, r17
.LBB0_953:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	and r6, r16, r21
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_955
# %bb.954:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r16, r18
	or r16, r6, r17
.LBB0_955:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	and r6, r2, r21
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_957
# %bb.956:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r18
	or r2, r2, r17
.LBB0_957:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	and r6, r3, r21
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_959
# %bb.958:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r18
	or r3, r3, r17
.LBB0_959:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	and r6, r10, r21
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_961
# %bb.960:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r10, r18
	or r10, r6, r17
.LBB0_961:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	and r6, r11, r21
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_963
# %bb.962:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r11, r18
	or r11, r6, r17
.LBB0_963:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	and r6, r13, r21
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_965
# %bb.964:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r13, r18
	or r13, r6, r17
.LBB0_965:                              # %vector.body490
                                        #   in Loop: Header=BB0_951 Depth=3
	and r6, r28, r21
	setlt.u r6, r17, r6
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r6, zero, .LBB0_950
# %bb.966:                              #   in Loop: Header=BB0_951 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r6, r28, r18
	or r28, r6, r17
	j .LBB0_950
.LBB0_967:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	addli r3, zero, 17
	.loc	1 1237 7                        # parallel-rne.mlir:1237:7
	mfence { sm }
.LBB0_968:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1258 7                        # parallel-rne.mlir:1258:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	addli r2, zero, 3
	.loc	1 1258 7                        # parallel-rne.mlir:1258:7
	sync_core
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	bneq r6, r2, .LBB0_970
# %bb.969:                              # %.critedge31
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 40
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	xsignal r3, 0
	.loc	1 1260 7 is_stmt 1              # parallel-rne.mlir:1260:7
	xsignal r4, 0
	.loc	1 1263 13                       # parallel-rne.mlir:1263:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	storeli.w r3, -24(r30)
	.loc	1 1265 7                        # parallel-rne.mlir:1265:7
	addli r3, zero, 18
	xwait r3, 0
	.loc	1 1267 7                        # parallel-rne.mlir:1267:7
	addli r3, zero, 44
	.loc	1 1266 7                        # parallel-rne.mlir:1266:7
	xwait r4, 0
	.loc	1 1267 7                        # parallel-rne.mlir:1267:7
	xwait r3, 0
	j .LBB0_973
.LBB0_970:                              # %.critedge29
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1261 7                        # parallel-rne.mlir:1261:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_972
# %bb.971:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 17
	addli r3, zero, 2
	addli r4, zero, 3
	addli r5, zero, 1
	xwait r2, 0
	lock zero, r3
	addli r2, zero, 4095
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 4
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r4, zero, zero, 10
	loadli.w r4,  -656(r30)                 # 4-byte Folded Reload
	ew_cfg r3, r5, r4, 11
	lui r4, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r2, r4, 14
	addli r2, zero, 18
	ew_cfg zero, zero, zero, 15
	sslut r15, r15, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r3
	xsignal r2, 0
.LBB0_972:                              # %.thread121
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1263 13                       # parallel-rne.mlir:1263:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	storeli.w r3, -24(r30)
.LBB0_973:                              # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 2
	.loc	1 1269 7                        # parallel-rne.mlir:1269:7
	xfence
	.loc	1 1270 7                        # parallel-rne.mlir:1270:7
	mfence { lm, sm, gm }
	.loc	1 1263 13                       # parallel-rne.mlir:1263:13
	mod.s r2, r2, r3
	loadli.w r3,  -648(r30)                 # 4-byte Folded Reload
	slli r2, r2, 16
	add.s r28, r2, r3
	.loc	1 1271 7                        # parallel-rne.mlir:1271:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 1272 7                        # parallel-rne.mlir:1272:7
	beq r6, zero, .LBB0_975
# %bb.974:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	addli r2, zero, 1
	beq r6, r2, .LBB0_1011
	j .LBB0_1047
.LBB0_975:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1272 7                        # parallel-rne.mlir:1272:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_977
.LBB0_976:                              # %middle.block485
                                        #   in Loop: Header=BB0_977 Depth=2
	.loc	1 1279 9                        # parallel-rne.mlir:1279:9
	load.d r[2:3], -528(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1010
.LBB0_977:                              # %.preheader142
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_987 Depth 3
                                        #       Child Loop BB0_980 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1280 11 is_stmt 1             # parallel-rne.mlir:1280:11
	bneq r28, r12, .LBB0_984
# %bb.978:                              # %scalar.ph476.preheader
                                        #   in Loop: Header=BB0_977 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_980
.LBB0_979:                              # %scalar.ph476
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 1280 11                       # parallel-rne.mlir:1280:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1292 13 is_stmt 1             # parallel-rne.mlir:1292:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1280 11                       # parallel-rne.mlir:1280:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_976
.LBB0_980:                              # %scalar.ph476
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_977 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	and r7, r9, r1
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r7, zero, .LBB0_982
# %bb.981:                              # %scalar.ph476
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r9, r24, .LBB0_979
	j .LBB0_983
.LBB0_982:                              #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r9, r24, .LBB0_979
.LBB0_983:                              # %scalar.ph476
                                        #   in Loop: Header=BB0_980 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_979
.LBB0_984:                              # %vector.body478.preheader
                                        #   in Loop: Header=BB0_977 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_987
.LBB0_985:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r11, 28(r11)
.LBB0_986:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 1280 11 is_stmt 1             # parallel-rne.mlir:1280:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1292 13                       # parallel-rne.mlir:1292:13
	add.s r4, r28, r4
	.loc	1 1280 11                       # parallel-rne.mlir:1280:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1292 13                       # parallel-rne.mlir:1292:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1280 11                       # parallel-rne.mlir:1280:11
	bneq r13, zero, .LBB0_976
.LBB0_987:                              # %vector.body478
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_977 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	add.s r11, r15, r4
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	loads.w r5, 0(r13)
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	and r6, r5, r24
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	and r7, r5, r1
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	seteq r6, r6, r24
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	setneq r7, r7, zero
	.loc	1 1289 19                       # parallel-rne.mlir:1289:19
	and r6, r6, r7
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r6, zero, .LBB0_989
# %bb.988:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_990
.LBB0_989:                              #   in Loop: Header=BB0_987 Depth=3
	or r5, r5, r25
.LBB0_990:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r7, zero, .LBB0_992
# %bb.991:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_993
.LBB0_992:                              #   in Loop: Header=BB0_987 Depth=3
	or r7, r6, r25
.LBB0_993:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r8, zero, .LBB0_995
# %bb.994:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_996
.LBB0_995:                              #   in Loop: Header=BB0_987 Depth=3
	or r8, r6, r25
.LBB0_996:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r14, zero, .LBB0_998
# %bb.997:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_999
.LBB0_998:                              #   in Loop: Header=BB0_987 Depth=3
	or r14, r6, r25
.LBB0_999:                              # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r16, zero, .LBB0_1001
# %bb.1000:                             # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1002
.LBB0_1001:                             #   in Loop: Header=BB0_987 Depth=3
	or r16, r6, r25
.LBB0_1002:                             # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r18, zero, .LBB0_1004
# %bb.1003:                             # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1005
.LBB0_1004:                             #   in Loop: Header=BB0_987 Depth=3
	or r6, r6, r25
.LBB0_1005:                             # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	bneq r18, zero, .LBB0_1007
# %bb.1006:                             # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1008
.LBB0_1007:                             #   in Loop: Header=BB0_987 Depth=3
	or r19, r19, r25
.LBB0_1008:                             # %vector.body478
                                        #   in Loop: Header=BB0_987 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	beq r18, zero, .LBB0_985
# %bb.1009:                             #   in Loop: Header=BB0_987 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1290 19                       # parallel-rne.mlir:1290:19
	j .LBB0_986
.LBB0_1010:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1272 7                        # parallel-rne.mlir:1272:7
	mfence { sm }
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	addli r2, zero, 1
	bneq r6, r2, .LBB0_1047
.LBB0_1011:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	xfence
	lui r25, 1024
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_1013
.LBB0_1012:                             # %middle.block471
                                        #   in Loop: Header=BB0_1013 Depth=2
	.loc	1 1304 9 is_stmt 1              # parallel-rne.mlir:1304:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1046
.LBB0_1013:                             # %.preheader141
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1023 Depth 3
                                        #       Child Loop BB0_1016 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1305 11 is_stmt 1             # parallel-rne.mlir:1305:11
	bneq r28, r12, .LBB0_1020
# %bb.1014:                             # %scalar.ph462.preheader
                                        #   in Loop: Header=BB0_1013 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_1016
.LBB0_1015:                             # %scalar.ph462
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1317 13 is_stmt 1             # parallel-rne.mlir:1317:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_1012
.LBB0_1016:                             # %scalar.ph462
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1013 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	and r7, r9, r1
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r7, zero, .LBB0_1018
# %bb.1017:                             # %scalar.ph462
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	beq r9, r24, .LBB0_1015
	j .LBB0_1019
.LBB0_1018:                             #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	beq r9, r24, .LBB0_1015
.LBB0_1019:                             # %scalar.ph462
                                        #   in Loop: Header=BB0_1016 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_1015
.LBB0_1020:                             # %vector.body464.preheader
                                        #   in Loop: Header=BB0_1013 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_1023
.LBB0_1021:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r11, 28(r11)
.LBB0_1022:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 1305 11 is_stmt 1             # parallel-rne.mlir:1305:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1317 13                       # parallel-rne.mlir:1317:13
	add.s r4, r28, r4
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1317 13                       # parallel-rne.mlir:1317:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1305 11                       # parallel-rne.mlir:1305:11
	bneq r13, zero, .LBB0_1012
.LBB0_1023:                             # %vector.body464
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1013 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r11, r15, r4
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	loads.w r5, 0(r13)
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	and r6, r5, r24
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	and r7, r5, r1
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	seteq r6, r6, r24
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	setneq r7, r7, zero
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	and r6, r6, r7
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r6, zero, .LBB0_1025
# %bb.1024:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_1026
.LBB0_1025:                             #   in Loop: Header=BB0_1023 Depth=3
	or r5, r5, r25
.LBB0_1026:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r7, zero, .LBB0_1028
# %bb.1027:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_1029
.LBB0_1028:                             #   in Loop: Header=BB0_1023 Depth=3
	or r7, r6, r25
.LBB0_1029:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r8, zero, .LBB0_1031
# %bb.1030:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_1032
.LBB0_1031:                             #   in Loop: Header=BB0_1023 Depth=3
	or r8, r6, r25
.LBB0_1032:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r14, zero, .LBB0_1034
# %bb.1033:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_1035
.LBB0_1034:                             #   in Loop: Header=BB0_1023 Depth=3
	or r14, r6, r25
.LBB0_1035:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r16, zero, .LBB0_1037
# %bb.1036:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1038
.LBB0_1037:                             #   in Loop: Header=BB0_1023 Depth=3
	or r16, r6, r25
.LBB0_1038:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r18, zero, .LBB0_1040
# %bb.1039:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1041
.LBB0_1040:                             #   in Loop: Header=BB0_1023 Depth=3
	or r6, r6, r25
.LBB0_1041:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	bneq r18, zero, .LBB0_1043
# %bb.1042:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1044
.LBB0_1043:                             #   in Loop: Header=BB0_1023 Depth=3
	or r19, r19, r25
.LBB0_1044:                             # %vector.body464
                                        #   in Loop: Header=BB0_1023 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	beq r18, zero, .LBB0_1021
# %bb.1045:                             #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	j .LBB0_1022
.LBB0_1046:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1297 7                        # parallel-rne.mlir:1297:7
	mfence { sm }
.LBB0_1047:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1322 7                        # parallel-rne.mlir:1322:7
	addli r2, zero, 2
	lui r25, 1024
	beq r6, r2, .LBB0_1053
# %bb.1048:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	addli r2, zero, 3
	beq r6, r2, .LBB0_1089
.LBB0_1049:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1372 7                        # parallel-rne.mlir:1372:7
	addli r2, zero, 4
	beq r6, r2, .LBB0_1125
.LBB0_1050:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1397 7                        # parallel-rne.mlir:1397:7
	addli r2, zero, 5
	beq r6, r2, .LBB0_1161
.LBB0_1051:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1422 7                        # parallel-rne.mlir:1422:7
	addli r2, zero, 6
	beq r6, r2, .LBB0_1197
.LBB0_1052:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1447 7                        # parallel-rne.mlir:1447:7
	beq r6, r9, .LBB0_1233
	j .LBB0_1269
.LBB0_1053:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 1322 7 is_stmt 1              # parallel-rne.mlir:1322:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_1055
.LBB0_1054:                             # %middle.block457
                                        #   in Loop: Header=BB0_1055 Depth=2
	.loc	1 1329 9                        # parallel-rne.mlir:1329:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1088
.LBB0_1055:                             # %.preheader140
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1065 Depth 3
                                        #       Child Loop BB0_1058 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1330 11 is_stmt 1             # parallel-rne.mlir:1330:11
	bneq r28, r12, .LBB0_1062
# %bb.1056:                             # %scalar.ph448.preheader
                                        #   in Loop: Header=BB0_1055 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_1058
.LBB0_1057:                             # %scalar.ph448
                                        #   in Loop: Header=BB0_1058 Depth=3
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1342 13 is_stmt 1             # parallel-rne.mlir:1342:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_1054
.LBB0_1058:                             # %scalar.ph448
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1055 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1331 19                       # parallel-rne.mlir:1331:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1332 19                       # parallel-rne.mlir:1332:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1337 19                       # parallel-rne.mlir:1337:19
	and r7, r9, r1
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r7, zero, .LBB0_1060
# %bb.1059:                             # %scalar.ph448
                                        #   in Loop: Header=BB0_1058 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	beq r9, r24, .LBB0_1057
	j .LBB0_1061
.LBB0_1060:                             #   in Loop: Header=BB0_1058 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	beq r9, r24, .LBB0_1057
.LBB0_1061:                             # %scalar.ph448
                                        #   in Loop: Header=BB0_1058 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_1057
.LBB0_1062:                             # %vector.body450.preheader
                                        #   in Loop: Header=BB0_1055 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_1065
.LBB0_1063:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r11, 28(r11)
.LBB0_1064:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 1330 11 is_stmt 1             # parallel-rne.mlir:1330:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1342 13                       # parallel-rne.mlir:1342:13
	add.s r4, r28, r4
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1342 13                       # parallel-rne.mlir:1342:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1330 11                       # parallel-rne.mlir:1330:11
	bneq r13, zero, .LBB0_1054
.LBB0_1065:                             # %vector.body450
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1055 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1331 19                       # parallel-rne.mlir:1331:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1332 19                       # parallel-rne.mlir:1332:19
	add.s r11, r15, r4
	.loc	1 1331 19                       # parallel-rne.mlir:1331:19
	loads.w r5, 0(r13)
	.loc	1 1335 19                       # parallel-rne.mlir:1335:19
	and r6, r5, r24
	.loc	1 1337 19                       # parallel-rne.mlir:1337:19
	and r7, r5, r1
	.loc	1 1336 19                       # parallel-rne.mlir:1336:19
	seteq r6, r6, r24
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	setneq r7, r7, zero
	.loc	1 1339 19                       # parallel-rne.mlir:1339:19
	and r6, r6, r7
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r6, zero, .LBB0_1067
# %bb.1066:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_1068
.LBB0_1067:                             #   in Loop: Header=BB0_1065 Depth=3
	or r5, r5, r25
.LBB0_1068:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r7, zero, .LBB0_1070
# %bb.1069:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_1071
.LBB0_1070:                             #   in Loop: Header=BB0_1065 Depth=3
	or r7, r6, r25
.LBB0_1071:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r8, zero, .LBB0_1073
# %bb.1072:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_1074
.LBB0_1073:                             #   in Loop: Header=BB0_1065 Depth=3
	or r8, r6, r25
.LBB0_1074:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r14, zero, .LBB0_1076
# %bb.1075:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_1077
.LBB0_1076:                             #   in Loop: Header=BB0_1065 Depth=3
	or r14, r6, r25
.LBB0_1077:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r16, zero, .LBB0_1079
# %bb.1078:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1080
.LBB0_1079:                             #   in Loop: Header=BB0_1065 Depth=3
	or r16, r6, r25
.LBB0_1080:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r18, zero, .LBB0_1082
# %bb.1081:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1083
.LBB0_1082:                             #   in Loop: Header=BB0_1065 Depth=3
	or r6, r6, r25
.LBB0_1083:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	bneq r18, zero, .LBB0_1085
# %bb.1084:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1086
.LBB0_1085:                             #   in Loop: Header=BB0_1065 Depth=3
	or r19, r19, r25
.LBB0_1086:                             # %vector.body450
                                        #   in Loop: Header=BB0_1065 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	beq r18, zero, .LBB0_1063
# %bb.1087:                             #   in Loop: Header=BB0_1065 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1340 19                       # parallel-rne.mlir:1340:19
	j .LBB0_1064
.LBB0_1088:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1322 7                        # parallel-rne.mlir:1322:7
	mfence { sm }
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	addli r2, zero, 3
	bneq r6, r2, .LBB0_1049
.LBB0_1089:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_1091
.LBB0_1090:                             # %middle.block443
                                        #   in Loop: Header=BB0_1091 Depth=2
	.loc	1 1354 9 is_stmt 1              # parallel-rne.mlir:1354:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1124
.LBB0_1091:                             # %.preheader139
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1101 Depth 3
                                        #       Child Loop BB0_1094 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1355 11 is_stmt 1             # parallel-rne.mlir:1355:11
	bneq r28, r12, .LBB0_1098
# %bb.1092:                             # %scalar.ph434.preheader
                                        #   in Loop: Header=BB0_1091 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_1094
.LBB0_1093:                             # %scalar.ph434
                                        #   in Loop: Header=BB0_1094 Depth=3
	.loc	1 1355 11                       # parallel-rne.mlir:1355:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1367 13 is_stmt 1             # parallel-rne.mlir:1367:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1355 11                       # parallel-rne.mlir:1355:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_1090
.LBB0_1094:                             # %scalar.ph434
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1091 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1357 19                       # parallel-rne.mlir:1357:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1362 19                       # parallel-rne.mlir:1362:19
	and r7, r9, r1
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r7, zero, .LBB0_1096
# %bb.1095:                             # %scalar.ph434
                                        #   in Loop: Header=BB0_1094 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	beq r9, r24, .LBB0_1093
	j .LBB0_1097
.LBB0_1096:                             #   in Loop: Header=BB0_1094 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	beq r9, r24, .LBB0_1093
.LBB0_1097:                             # %scalar.ph434
                                        #   in Loop: Header=BB0_1094 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_1093
.LBB0_1098:                             # %vector.body436.preheader
                                        #   in Loop: Header=BB0_1091 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_1101
.LBB0_1099:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r11, 28(r11)
.LBB0_1100:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 1355 11 is_stmt 1             # parallel-rne.mlir:1355:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1367 13                       # parallel-rne.mlir:1367:13
	add.s r4, r28, r4
	.loc	1 1355 11                       # parallel-rne.mlir:1355:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1367 13                       # parallel-rne.mlir:1367:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1355 11                       # parallel-rne.mlir:1355:11
	bneq r13, zero, .LBB0_1090
.LBB0_1101:                             # %vector.body436
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1091 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1357 19                       # parallel-rne.mlir:1357:19
	add.s r11, r15, r4
	.loc	1 1356 19                       # parallel-rne.mlir:1356:19
	loads.w r5, 0(r13)
	.loc	1 1360 19                       # parallel-rne.mlir:1360:19
	and r6, r5, r24
	.loc	1 1362 19                       # parallel-rne.mlir:1362:19
	and r7, r5, r1
	.loc	1 1361 19                       # parallel-rne.mlir:1361:19
	seteq r6, r6, r24
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	setneq r7, r7, zero
	.loc	1 1364 19                       # parallel-rne.mlir:1364:19
	and r6, r6, r7
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r6, zero, .LBB0_1103
# %bb.1102:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_1104
.LBB0_1103:                             #   in Loop: Header=BB0_1101 Depth=3
	or r5, r5, r25
.LBB0_1104:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r7, zero, .LBB0_1106
# %bb.1105:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_1107
.LBB0_1106:                             #   in Loop: Header=BB0_1101 Depth=3
	or r7, r6, r25
.LBB0_1107:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r8, zero, .LBB0_1109
# %bb.1108:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_1110
.LBB0_1109:                             #   in Loop: Header=BB0_1101 Depth=3
	or r8, r6, r25
.LBB0_1110:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r14, zero, .LBB0_1112
# %bb.1111:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_1113
.LBB0_1112:                             #   in Loop: Header=BB0_1101 Depth=3
	or r14, r6, r25
.LBB0_1113:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r16, zero, .LBB0_1115
# %bb.1114:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1116
.LBB0_1115:                             #   in Loop: Header=BB0_1101 Depth=3
	or r16, r6, r25
.LBB0_1116:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r18, zero, .LBB0_1118
# %bb.1117:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1119
.LBB0_1118:                             #   in Loop: Header=BB0_1101 Depth=3
	or r6, r6, r25
.LBB0_1119:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	bneq r18, zero, .LBB0_1121
# %bb.1120:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1122
.LBB0_1121:                             #   in Loop: Header=BB0_1101 Depth=3
	or r19, r19, r25
.LBB0_1122:                             # %vector.body436
                                        #   in Loop: Header=BB0_1101 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	beq r18, zero, .LBB0_1099
# %bb.1123:                             #   in Loop: Header=BB0_1101 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1365 19                       # parallel-rne.mlir:1365:19
	j .LBB0_1100
.LBB0_1124:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1347 7                        # parallel-rne.mlir:1347:7
	mfence { sm }
	.loc	1 1372 7                        # parallel-rne.mlir:1372:7
	addli r2, zero, 4
	bneq r6, r2, .LBB0_1050
.LBB0_1125:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 1372 7                        # parallel-rne.mlir:1372:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_1127
.LBB0_1126:                             # %middle.block429
                                        #   in Loop: Header=BB0_1127 Depth=2
	.loc	1 1379 9 is_stmt 1              # parallel-rne.mlir:1379:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1160
.LBB0_1127:                             # %.preheader138
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1137 Depth 3
                                        #       Child Loop BB0_1130 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1380 11 is_stmt 1             # parallel-rne.mlir:1380:11
	bneq r28, r12, .LBB0_1134
# %bb.1128:                             # %scalar.ph420.preheader
                                        #   in Loop: Header=BB0_1127 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_1130
.LBB0_1129:                             # %scalar.ph420
                                        #   in Loop: Header=BB0_1130 Depth=3
	.loc	1 1380 11                       # parallel-rne.mlir:1380:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1392 13 is_stmt 1             # parallel-rne.mlir:1392:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1380 11                       # parallel-rne.mlir:1380:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_1126
.LBB0_1130:                             # %scalar.ph420
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1381 19                       # parallel-rne.mlir:1381:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1387 19                       # parallel-rne.mlir:1387:19
	and r7, r9, r1
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r7, zero, .LBB0_1132
# %bb.1131:                             # %scalar.ph420
                                        #   in Loop: Header=BB0_1130 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	beq r9, r24, .LBB0_1129
	j .LBB0_1133
.LBB0_1132:                             #   in Loop: Header=BB0_1130 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	beq r9, r24, .LBB0_1129
.LBB0_1133:                             # %scalar.ph420
                                        #   in Loop: Header=BB0_1130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_1129
.LBB0_1134:                             # %vector.body422.preheader
                                        #   in Loop: Header=BB0_1127 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_1137
.LBB0_1135:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r11, 28(r11)
.LBB0_1136:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 1380 11 is_stmt 1             # parallel-rne.mlir:1380:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1392 13                       # parallel-rne.mlir:1392:13
	add.s r4, r28, r4
	.loc	1 1380 11                       # parallel-rne.mlir:1380:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1392 13                       # parallel-rne.mlir:1392:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1380 11                       # parallel-rne.mlir:1380:11
	bneq r13, zero, .LBB0_1126
.LBB0_1137:                             # %vector.body422
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1381 19                       # parallel-rne.mlir:1381:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1382 19                       # parallel-rne.mlir:1382:19
	add.s r11, r15, r4
	.loc	1 1381 19                       # parallel-rne.mlir:1381:19
	loads.w r5, 0(r13)
	.loc	1 1385 19                       # parallel-rne.mlir:1385:19
	and r6, r5, r24
	.loc	1 1387 19                       # parallel-rne.mlir:1387:19
	and r7, r5, r1
	.loc	1 1386 19                       # parallel-rne.mlir:1386:19
	seteq r6, r6, r24
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	setneq r7, r7, zero
	.loc	1 1389 19                       # parallel-rne.mlir:1389:19
	and r6, r6, r7
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r6, zero, .LBB0_1139
# %bb.1138:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_1140
.LBB0_1139:                             #   in Loop: Header=BB0_1137 Depth=3
	or r5, r5, r25
.LBB0_1140:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r7, zero, .LBB0_1142
# %bb.1141:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_1143
.LBB0_1142:                             #   in Loop: Header=BB0_1137 Depth=3
	or r7, r6, r25
.LBB0_1143:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r8, zero, .LBB0_1145
# %bb.1144:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_1146
.LBB0_1145:                             #   in Loop: Header=BB0_1137 Depth=3
	or r8, r6, r25
.LBB0_1146:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r14, zero, .LBB0_1148
# %bb.1147:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_1149
.LBB0_1148:                             #   in Loop: Header=BB0_1137 Depth=3
	or r14, r6, r25
.LBB0_1149:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r16, zero, .LBB0_1151
# %bb.1150:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1152
.LBB0_1151:                             #   in Loop: Header=BB0_1137 Depth=3
	or r16, r6, r25
.LBB0_1152:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r18, zero, .LBB0_1154
# %bb.1153:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1155
.LBB0_1154:                             #   in Loop: Header=BB0_1137 Depth=3
	or r6, r6, r25
.LBB0_1155:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	bneq r18, zero, .LBB0_1157
# %bb.1156:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1158
.LBB0_1157:                             #   in Loop: Header=BB0_1137 Depth=3
	or r19, r19, r25
.LBB0_1158:                             # %vector.body422
                                        #   in Loop: Header=BB0_1137 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	beq r18, zero, .LBB0_1135
# %bb.1159:                             #   in Loop: Header=BB0_1137 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1390 19                       # parallel-rne.mlir:1390:19
	j .LBB0_1136
.LBB0_1160:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1372 7                        # parallel-rne.mlir:1372:7
	mfence { sm }
	.loc	1 1397 7                        # parallel-rne.mlir:1397:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_1051
.LBB0_1161:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 1397 7                        # parallel-rne.mlir:1397:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_1163
.LBB0_1162:                             # %middle.block415
                                        #   in Loop: Header=BB0_1163 Depth=2
	.loc	1 1404 9 is_stmt 1              # parallel-rne.mlir:1404:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1196
.LBB0_1163:                             # %.preheader137
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1173 Depth 3
                                        #       Child Loop BB0_1166 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1405 11 is_stmt 1             # parallel-rne.mlir:1405:11
	bneq r28, r12, .LBB0_1170
# %bb.1164:                             # %scalar.ph406.preheader
                                        #   in Loop: Header=BB0_1163 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_1166
.LBB0_1165:                             # %scalar.ph406
                                        #   in Loop: Header=BB0_1166 Depth=3
	.loc	1 1405 11                       # parallel-rne.mlir:1405:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1417 13 is_stmt 1             # parallel-rne.mlir:1417:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1405 11                       # parallel-rne.mlir:1405:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_1162
.LBB0_1166:                             # %scalar.ph406
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1406 19                       # parallel-rne.mlir:1406:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1407 19                       # parallel-rne.mlir:1407:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1412 19                       # parallel-rne.mlir:1412:19
	and r7, r9, r1
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r7, zero, .LBB0_1168
# %bb.1167:                             # %scalar.ph406
                                        #   in Loop: Header=BB0_1166 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	beq r9, r24, .LBB0_1165
	j .LBB0_1169
.LBB0_1168:                             #   in Loop: Header=BB0_1166 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	beq r9, r24, .LBB0_1165
.LBB0_1169:                             # %scalar.ph406
                                        #   in Loop: Header=BB0_1166 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_1165
.LBB0_1170:                             # %vector.body408.preheader
                                        #   in Loop: Header=BB0_1163 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_1173
.LBB0_1171:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r11, 28(r11)
.LBB0_1172:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 1405 11 is_stmt 1             # parallel-rne.mlir:1405:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1417 13                       # parallel-rne.mlir:1417:13
	add.s r4, r28, r4
	.loc	1 1405 11                       # parallel-rne.mlir:1405:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1417 13                       # parallel-rne.mlir:1417:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1405 11                       # parallel-rne.mlir:1405:11
	bneq r13, zero, .LBB0_1162
.LBB0_1173:                             # %vector.body408
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1406 19                       # parallel-rne.mlir:1406:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1407 19                       # parallel-rne.mlir:1407:19
	add.s r11, r15, r4
	.loc	1 1406 19                       # parallel-rne.mlir:1406:19
	loads.w r5, 0(r13)
	.loc	1 1410 19                       # parallel-rne.mlir:1410:19
	and r6, r5, r24
	.loc	1 1412 19                       # parallel-rne.mlir:1412:19
	and r7, r5, r1
	.loc	1 1411 19                       # parallel-rne.mlir:1411:19
	seteq r6, r6, r24
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	setneq r7, r7, zero
	.loc	1 1414 19                       # parallel-rne.mlir:1414:19
	and r6, r6, r7
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r6, zero, .LBB0_1175
# %bb.1174:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_1176
.LBB0_1175:                             #   in Loop: Header=BB0_1173 Depth=3
	or r5, r5, r25
.LBB0_1176:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r7, zero, .LBB0_1178
# %bb.1177:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_1179
.LBB0_1178:                             #   in Loop: Header=BB0_1173 Depth=3
	or r7, r6, r25
.LBB0_1179:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r8, zero, .LBB0_1181
# %bb.1180:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_1182
.LBB0_1181:                             #   in Loop: Header=BB0_1173 Depth=3
	or r8, r6, r25
.LBB0_1182:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r14, zero, .LBB0_1184
# %bb.1183:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_1185
.LBB0_1184:                             #   in Loop: Header=BB0_1173 Depth=3
	or r14, r6, r25
.LBB0_1185:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r16, zero, .LBB0_1187
# %bb.1186:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1188
.LBB0_1187:                             #   in Loop: Header=BB0_1173 Depth=3
	or r16, r6, r25
.LBB0_1188:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r18, zero, .LBB0_1190
# %bb.1189:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1191
.LBB0_1190:                             #   in Loop: Header=BB0_1173 Depth=3
	or r6, r6, r25
.LBB0_1191:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	bneq r18, zero, .LBB0_1193
# %bb.1192:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1194
.LBB0_1193:                             #   in Loop: Header=BB0_1173 Depth=3
	or r19, r19, r25
.LBB0_1194:                             # %vector.body408
                                        #   in Loop: Header=BB0_1173 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	beq r18, zero, .LBB0_1171
# %bb.1195:                             #   in Loop: Header=BB0_1173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1415 19                       # parallel-rne.mlir:1415:19
	j .LBB0_1172
.LBB0_1196:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1397 7                        # parallel-rne.mlir:1397:7
	mfence { sm }
	.loc	1 1422 7                        # parallel-rne.mlir:1422:7
	addli r2, zero, 6
	bneq r6, r2, .LBB0_1052
.LBB0_1197:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 1422 7                        # parallel-rne.mlir:1422:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_1199
.LBB0_1198:                             # %middle.block401
                                        #   in Loop: Header=BB0_1199 Depth=2
	.loc	1 1429 9 is_stmt 1              # parallel-rne.mlir:1429:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1232
.LBB0_1199:                             # %.preheader136
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1209 Depth 3
                                        #       Child Loop BB0_1202 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1430 11 is_stmt 1             # parallel-rne.mlir:1430:11
	bneq r28, r12, .LBB0_1206
# %bb.1200:                             # %scalar.ph392.preheader
                                        #   in Loop: Header=BB0_1199 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_1202
.LBB0_1201:                             # %scalar.ph392
                                        #   in Loop: Header=BB0_1202 Depth=3
	.loc	1 1430 11                       # parallel-rne.mlir:1430:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1442 13 is_stmt 1             # parallel-rne.mlir:1442:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1430 11                       # parallel-rne.mlir:1430:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_1198
.LBB0_1202:                             # %scalar.ph392
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1431 19                       # parallel-rne.mlir:1431:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1432 19                       # parallel-rne.mlir:1432:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1437 19                       # parallel-rne.mlir:1437:19
	and r7, r9, r1
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r7, zero, .LBB0_1204
# %bb.1203:                             # %scalar.ph392
                                        #   in Loop: Header=BB0_1202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	beq r9, r24, .LBB0_1201
	j .LBB0_1205
.LBB0_1204:                             #   in Loop: Header=BB0_1202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	beq r9, r24, .LBB0_1201
.LBB0_1205:                             # %scalar.ph392
                                        #   in Loop: Header=BB0_1202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_1201
.LBB0_1206:                             # %vector.body394.preheader
                                        #   in Loop: Header=BB0_1199 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_1209
.LBB0_1207:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r11, 28(r11)
.LBB0_1208:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 1430 11 is_stmt 1             # parallel-rne.mlir:1430:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1442 13                       # parallel-rne.mlir:1442:13
	add.s r4, r28, r4
	.loc	1 1430 11                       # parallel-rne.mlir:1430:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1442 13                       # parallel-rne.mlir:1442:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1430 11                       # parallel-rne.mlir:1430:11
	bneq r13, zero, .LBB0_1198
.LBB0_1209:                             # %vector.body394
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1431 19                       # parallel-rne.mlir:1431:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1432 19                       # parallel-rne.mlir:1432:19
	add.s r11, r15, r4
	.loc	1 1431 19                       # parallel-rne.mlir:1431:19
	loads.w r5, 0(r13)
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	and r6, r5, r24
	.loc	1 1437 19                       # parallel-rne.mlir:1437:19
	and r7, r5, r1
	.loc	1 1436 19                       # parallel-rne.mlir:1436:19
	seteq r6, r6, r24
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	setneq r7, r7, zero
	.loc	1 1439 19                       # parallel-rne.mlir:1439:19
	and r6, r6, r7
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r6, zero, .LBB0_1211
# %bb.1210:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_1212
.LBB0_1211:                             #   in Loop: Header=BB0_1209 Depth=3
	or r5, r5, r25
.LBB0_1212:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r7, zero, .LBB0_1214
# %bb.1213:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_1215
.LBB0_1214:                             #   in Loop: Header=BB0_1209 Depth=3
	or r7, r6, r25
.LBB0_1215:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r8, zero, .LBB0_1217
# %bb.1216:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_1218
.LBB0_1217:                             #   in Loop: Header=BB0_1209 Depth=3
	or r8, r6, r25
.LBB0_1218:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r14, zero, .LBB0_1220
# %bb.1219:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_1221
.LBB0_1220:                             #   in Loop: Header=BB0_1209 Depth=3
	or r14, r6, r25
.LBB0_1221:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r16, zero, .LBB0_1223
# %bb.1222:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1224
.LBB0_1223:                             #   in Loop: Header=BB0_1209 Depth=3
	or r16, r6, r25
.LBB0_1224:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r18, zero, .LBB0_1226
# %bb.1225:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1227
.LBB0_1226:                             #   in Loop: Header=BB0_1209 Depth=3
	or r6, r6, r25
.LBB0_1227:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	bneq r18, zero, .LBB0_1229
# %bb.1228:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1230
.LBB0_1229:                             #   in Loop: Header=BB0_1209 Depth=3
	or r19, r19, r25
.LBB0_1230:                             # %vector.body394
                                        #   in Loop: Header=BB0_1209 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	beq r18, zero, .LBB0_1207
# %bb.1231:                             #   in Loop: Header=BB0_1209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1440 19                       # parallel-rne.mlir:1440:19
	j .LBB0_1208
.LBB0_1232:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1422 7                        # parallel-rne.mlir:1422:7
	mfence { sm }
	.loc	1 1447 7                        # parallel-rne.mlir:1447:7
	bneq r6, r9, .LBB0_1269
.LBB0_1233:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 1447 7                        # parallel-rne.mlir:1447:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_1235
.LBB0_1234:                             # %middle.block387
                                        #   in Loop: Header=BB0_1235 Depth=2
	.loc	1 1454 9 is_stmt 1              # parallel-rne.mlir:1454:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1268
.LBB0_1235:                             # %.preheader135
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1245 Depth 3
                                        #       Child Loop BB0_1238 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r9
	.loc	1 1455 11 is_stmt 1             # parallel-rne.mlir:1455:11
	bneq r28, r12, .LBB0_1242
# %bb.1236:                             # %scalar.ph378.preheader
                                        #   in Loop: Header=BB0_1235 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_1238
.LBB0_1237:                             # %scalar.ph378
                                        #   in Loop: Header=BB0_1238 Depth=3
	.loc	1 1455 11                       # parallel-rne.mlir:1455:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1467 13 is_stmt 1             # parallel-rne.mlir:1467:13
	add.s r6, r28, r6
	stores.w r7, 0(r6)
	.loc	1 1455 11                       # parallel-rne.mlir:1455:11
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_1234
.LBB0_1238:                             # %scalar.ph378
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1456 19                       # parallel-rne.mlir:1456:19
	add.ul r[6:7], r[4:5], r[2:3]
	slli r6, r6, 2
	add.s r7, r12, r6
	loads.w r9, 0(r7)
	.loc	1 1457 19                       # parallel-rne.mlir:1457:19
	add.s r7, r15, r6
	loads.w r8, 0(r7)
	.loc	1 1462 19                       # parallel-rne.mlir:1462:19
	and r7, r9, r1
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r7, zero, .LBB0_1240
# %bb.1239:                             # %scalar.ph378
                                        #   in Loop: Header=BB0_1238 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	and r9, r9, r24
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	beq r9, r24, .LBB0_1237
	j .LBB0_1241
.LBB0_1240:                             #   in Loop: Header=BB0_1238 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r7, r9, r25
	and r9, r9, r24
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	beq r9, r24, .LBB0_1237
.LBB0_1241:                             # %scalar.ph378
                                        #   in Loop: Header=BB0_1238 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r8, 0
	j .LBB0_1237
.LBB0_1242:                             # %vector.body380.preheader
                                        #   in Loop: Header=BB0_1235 Depth=2
	zext_int2long r[9:10], zero
	j .LBB0_1245
.LBB0_1243:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r11, 28(r11)
.LBB0_1244:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 1455 11 is_stmt 1             # parallel-rne.mlir:1455:11
	addli.d r[9:10], r[9:10], 8
	.loc	1 1467 13                       # parallel-rne.mlir:1467:13
	add.s r4, r28, r4
	.loc	1 1455 11                       # parallel-rne.mlir:1455:11
	seteq.d r13, r[9:10], r[26:27]
	.loc	1 1467 13                       # parallel-rne.mlir:1467:13
	stores.w r14, 12(r4)
	stores.w r8, 8(r4)
	stores.w r7, 4(r4)
	stores.w r5, 0(r4)
	stores.w r11, 28(r4)
	stores.w r19, 24(r4)
	stores.w r6, 20(r4)
	stores.w r16, 16(r4)
	.loc	1 1455 11                       # parallel-rne.mlir:1455:11
	bneq r13, zero, .LBB0_1234
.LBB0_1245:                             # %vector.body380
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1456 19                       # parallel-rne.mlir:1456:19
	add.ul r[4:5], r[9:10], r[2:3]
	slli r4, r4, 2
	add.s r13, r12, r4
	.loc	1 1457 19                       # parallel-rne.mlir:1457:19
	add.s r11, r15, r4
	.loc	1 1456 19                       # parallel-rne.mlir:1456:19
	loads.w r5, 0(r13)
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	and r6, r5, r24
	.loc	1 1462 19                       # parallel-rne.mlir:1462:19
	and r7, r5, r1
	.loc	1 1461 19                       # parallel-rne.mlir:1461:19
	seteq r6, r6, r24
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	setneq r7, r7, zero
	.loc	1 1464 19                       # parallel-rne.mlir:1464:19
	and r6, r6, r7
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r6, zero, .LBB0_1247
# %bb.1246:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r11)
	j .LBB0_1248
.LBB0_1247:                             #   in Loop: Header=BB0_1245 Depth=3
	or r5, r5, r25
.LBB0_1248:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r6, 4(r13)
	and r7, r6, r24
	and r8, r6, r1
	seteq r7, r7, r24
	setneq r8, r8, zero
	and r7, r7, r8
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r7, zero, .LBB0_1250
# %bb.1249:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 4(r11)
	j .LBB0_1251
.LBB0_1250:                             #   in Loop: Header=BB0_1245 Depth=3
	or r7, r6, r25
.LBB0_1251:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r6, 8(r13)
	and r8, r6, r24
	and r14, r6, r1
	seteq r8, r8, r24
	setneq r14, r14, zero
	and r8, r8, r14
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r8, zero, .LBB0_1253
# %bb.1252:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 8(r11)
	j .LBB0_1254
.LBB0_1253:                             #   in Loop: Header=BB0_1245 Depth=3
	or r8, r6, r25
.LBB0_1254:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r6, 12(r13)
	and r14, r6, r24
	and r16, r6, r1
	seteq r14, r14, r24
	setneq r16, r16, zero
	and r14, r14, r16
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r14, zero, .LBB0_1256
# %bb.1255:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r11)
	j .LBB0_1257
.LBB0_1256:                             #   in Loop: Header=BB0_1245 Depth=3
	or r14, r6, r25
.LBB0_1257:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r6, 16(r13)
	and r16, r6, r24
	and r18, r6, r1
	seteq r16, r16, r24
	setneq r18, r18, zero
	and r16, r16, r18
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r16, zero, .LBB0_1259
# %bb.1258:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r16, 16(r11)
	j .LBB0_1260
.LBB0_1259:                             #   in Loop: Header=BB0_1245 Depth=3
	or r16, r6, r25
.LBB0_1260:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r6, 20(r13)
	and r18, r6, r24
	and r19, r6, r1
	seteq r18, r18, r24
	setneq r19, r19, zero
	and r18, r18, r19
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r18, zero, .LBB0_1262
# %bb.1261:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r6, 20(r11)
	j .LBB0_1263
.LBB0_1262:                             #   in Loop: Header=BB0_1245 Depth=3
	or r6, r6, r25
.LBB0_1263:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r19, 24(r13)
	and r18, r19, r24
	and r20, r19, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	bneq r18, zero, .LBB0_1265
# %bb.1264:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 24(r11)
	j .LBB0_1266
.LBB0_1265:                             #   in Loop: Header=BB0_1245 Depth=3
	or r19, r19, r25
.LBB0_1266:                             # %vector.body380
                                        #   in Loop: Header=BB0_1245 Depth=3
	loads.w r13, 28(r13)
	and r18, r13, r24
	and r20, r13, r1
	seteq r18, r18, r24
	setneq r20, r20, zero
	and r18, r18, r20
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	beq r18, zero, .LBB0_1243
# %bb.1267:                             #   in Loop: Header=BB0_1245 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r13, r25
	.loc	1 1465 19                       # parallel-rne.mlir:1465:19
	j .LBB0_1244
.LBB0_1268:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1447 7                        # parallel-rne.mlir:1447:7
	mfence { sm }
.LBB0_1269:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1472 7                        # parallel-rne.mlir:1472:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1473 7                        # parallel-rne.mlir:1473:7
	addli r2, zero, 3
	.loc	1 1472 7                        # parallel-rne.mlir:1472:7
	sync_core
	.loc	1 1473 7                        # parallel-rne.mlir:1473:7
	bneq r6, r2, .LBB0_1271
# %bb.1270:                             # %.critedge37
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 19
	.loc	1 1474 7 is_stmt 1              # parallel-rne.mlir:1474:7
	addli r2, zero, 41
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	addli r3, zero, 2
	.loc	1 1473 7                        # parallel-rne.mlir:1473:7
	xsignal r4, 0
	.loc	1 1474 7                        # parallel-rne.mlir:1474:7
	xsignal r2, 0
	.loc	1 1475 7                        # parallel-rne.mlir:1475:7
	addli r2, zero, 42
	xsignal r2, 0
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	loadli.w r2,  -12(r30)
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	.loc	1 1481 7                        # parallel-rne.mlir:1481:7
	xwait r4, 0
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	slli r2, r3, 16
	.loc	1 1482 7                        # parallel-rne.mlir:1482:7
	addli r3, zero, 31
	xwait r3, 0
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	loadli.w r3,  -652(r30)                 # 4-byte Folded Reload
	add.s r19, r2, r3
	.loc	1 1483 7                        # parallel-rne.mlir:1483:7
	addli r2, zero, 43
	xwait r2, 0
	.loc	1 1484 7                        # parallel-rne.mlir:1484:7
	addli r2, zero, 45
	xwait r2, 0
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	j .LBB0_1274
.LBB0_1271:                             # %.critedge35
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1476 7 is_stmt 1              # parallel-rne.mlir:1476:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_1273
# %bb.1272:                             # %.thread125
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 42
	addli r5, zero, 2
	addli r7, zero, 4095
	addli r4, zero, 4
	xwait r2, 0
	lock zero, r5
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r7, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	dsmadd r28, r28, r28, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	loadli.w r2,  -12(r30)
	addli r3, r2, 1
	mod.s r2, r2, r5
	storeli.w r3, -12(r30)
	.loc	1 1479 7                        # parallel-rne.mlir:1479:7
	addli r3, zero, 30
	xwait r3, 0
	addli r3, zero, 46
	xwait r3, 0
	lock zero, r5
	lui r3, 258048
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	slli r2, r2, 16
	.loc	1 1479 7                        # parallel-rne.mlir:1479:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	loadli.w r3,  -652(r30)                 # 4-byte Folded Reload
	.loc	1 1479 7                        # parallel-rne.mlir:1479:7
	ew_cfg zero, r7, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	add.s r19, r2, r3
	.loc	1 1479 7                        # parallel-rne.mlir:1479:7
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	dsmul r19, r2, r28, 0
	addli r2, zero, 29
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	addli r2, zero, 43
	xsignal r2, 0
	addli r2, zero, 45
	xsignal r2, 0
	.loc	1 1481 7                        # parallel-rne.mlir:1481:7
	j .LBB0_1274
.LBB0_1273:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1478 13                       # parallel-rne.mlir:1478:13
	loadli.w r2,  -12(r30)
	addli r3, zero, 2
	loadli.w r4,  -652(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	slli r3, r3, 16
	add.s r19, r3, r4
.LBB0_1274:                             # %.critedge39
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1488 7                        # parallel-rne.mlir:1488:7
	addli r2, zero, 255
	.loc	1 1486 7                        # parallel-rne.mlir:1486:7
	xfence
	.loc	1 1487 7                        # parallel-rne.mlir:1487:7
	mfence { lm, sm, gm }
	.loc	1 1488 7                        # parallel-rne.mlir:1488:7
	csr_set csr5, r2
	sub.s r2, r15, r12
	storeli.w r2, -556(r30)                 # 4-byte Folded Spill
	sub.s r2, r15, r19
	storeli.w r2, -560(r30)                 # 4-byte Folded Spill
	addli r2, zero, 1
	sync_core
	storeli.w r19, -456(r30)                # 4-byte Folded Spill
	.loc	1 1489 7                        # parallel-rne.mlir:1489:7
	beq r6, zero, .LBB0_1282
# %bb.1275:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1535 7                        # parallel-rne.mlir:1535:7
	beq r6, r2, .LBB0_1331
.LBB0_1276:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1581 7                        # parallel-rne.mlir:1581:7
	addli r2, zero, 2
	beq r6, r2, .LBB0_1383
.LBB0_1277:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1627 7                        # parallel-rne.mlir:1627:7
	addli r2, zero, 3
	beq r6, r2, .LBB0_1434
.LBB0_1278:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1673 7                        # parallel-rne.mlir:1673:7
	addli r2, zero, 4
	beq r6, r2, .LBB0_1483
.LBB0_1279:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1719 7                        # parallel-rne.mlir:1719:7
	addli r2, zero, 5
	beq r6, r2, .LBB0_1532
.LBB0_1280:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1765 7                        # parallel-rne.mlir:1765:7
	addli r2, zero, 6
	beq r6, r2, .LBB0_1581
.LBB0_1281:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1811 7                        # parallel-rne.mlir:1811:7
	beq r6, r9, .LBB0_1630
	j .LBB0_1679
.LBB0_1282:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	store.d r[26:27], -472(r30)             # 8-byte Folded Spill
	.loc	1 1489 7 is_stmt 1              # parallel-rne.mlir:1489:7
	xfence
	mfence { lm, sm, gm }
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r10, r2, r3
	zext_int2long r[3:4], zero
	j .LBB0_1284
.LBB0_1283:                             # %middle.block373
                                        #   in Loop: Header=BB0_1284 Depth=2
	.loc	1 1496 9                        # parallel-rne.mlir:1496:9
	load.d r[2:3], -528(r30)                # 8-byte Folded Reload
	load.d r[4:5], -552(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1330
.LBB0_1284:                             # %.preheader134
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1303 Depth 3
                                        #       Child Loop BB0_1286 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -552(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	zext_int2long r[2:3], zero
	.loc	1 1497 11 is_stmt 1             # parallel-rne.mlir:1497:11
	bneq r10, zero, .LBB0_1286
	j .LBB0_1303
.LBB0_1285:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	load.d r[7:8], -448(r30)                # 8-byte Folded Reload
	.loc	1 1530 13                       # parallel-rne.mlir:1530:13
	add.s r4, r15, r4
	stores.w r6, 0(r4)
	.loc	1 1497 11                       # parallel-rne.mlir:1497:11
	setlt.ul r5, r[2:3], r[7:8]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1283
.LBB0_1286:                             # %scalar.ph365
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1284 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1498 19                       # parallel-rne.mlir:1498:19
	add.ul r[4:5], r[2:3], r[13:14]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	add.s r5, r28, r4
	.loc	1 1500 19                       # parallel-rne.mlir:1500:19
	add.s r6, r19, r4
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	loads.w r5, 0(r5)
	.loc	1 1500 19                       # parallel-rne.mlir:1500:19
	loads.w r11, 0(r6)
	.loc	1 1503 19                       # parallel-rne.mlir:1503:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	beq r6, r24, .LBB0_1288
# %bb.1287:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_1288:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r7, zero, .LBB0_1298
# %bb.1289:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r6, zero, .LBB0_1299
.LBB0_1290:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	beq r7, r24, .LBB0_1292
.LBB0_1291:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_1292:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r8, zero, .LBB0_1294
# %bb.1293:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1294:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	setlt.u r7, r24, r7
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r7, zero, .LBB0_1296
# %bb.1295:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
.LBB0_1296:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 1518 19 is_stmt 1             # parallel-rne.mlir:1518:19
	and r7, r5, r21
	.loc	1 1520 19                       # parallel-rne.mlir:1520:19
	setlt.u r6, r24, r7
	.loc	1 1521 19                       # parallel-rne.mlir:1521:19
	bneq r6, zero, .LBB0_1300
# %bb.1297:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r5, 0
	.loc	1 1527 19 is_stmt 1             # parallel-rne.mlir:1527:19
	setlt.u r7, r23, r7
	.loc	1 1528 20                       # parallel-rne.mlir:1528:20
	bneq r7, zero, .LBB0_1285
	j .LBB0_1301
.LBB0_1298:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 1517 19 is_stmt 1             # parallel-rne.mlir:1517:19
	beq r6, zero, .LBB0_1290
.LBB0_1299:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r7, r24, .LBB0_1291
	j .LBB0_1292
.LBB0_1300:                             #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r5, r25
	.loc	1 1527 19 is_stmt 1             # parallel-rne.mlir:1527:19
	setlt.u r7, r23, r7
	.loc	1 1528 20                       # parallel-rne.mlir:1528:20
	bneq r7, zero, .LBB0_1285
.LBB0_1301:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1286 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r5, 16
	andi r6, r6, 1
	add.s r5, r5, r6
	lui r6, 1048560
	add.s r5, r5, r22
	and r6, r5, r6
	j .LBB0_1285
.LBB0_1302:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 1497 11 is_stmt 1             # parallel-rne.mlir:1497:11
	load.d r[6:7], -472(r30)                # 8-byte Folded Reload
	addli.d r[2:3], r[2:3], 4
	seteq.d r4, r[2:3], r[6:7]
	.loc	1 1530 13                       # parallel-rne.mlir:1530:13
	add.s r6, r15, r18
	stores.w r13, 4(r6)
	addli.d r[13:14], r[26:27], 0
	stores.w r16, 12(r6)
	stores.w r8, 8(r6)
	stores.w r5, 0(r6)
	.loc	1 1497 11                       # parallel-rne.mlir:1497:11
	bneq r4, zero, .LBB0_1283
.LBB0_1303:                             # %vector.body367
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1284 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1498 19                       # parallel-rne.mlir:1498:19
	add.ul r[4:5], r[2:3], r[13:14]
	addli.d r[26:27], r[13:14], 0
	slli r18, r4, 2
	add.s r16, r12, r18
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	add.s r13, r28, r18
	.loc	1 1498 19                       # parallel-rne.mlir:1498:19
	loads.w r4, 0(r16)
	.loc	1 1499 19                       # parallel-rne.mlir:1499:19
	loads.w r5, 0(r13)
	.loc	1 1505 19                       # parallel-rne.mlir:1505:19
	and r4, r4, r21
	.loc	1 1503 19                       # parallel-rne.mlir:1503:19
	and r5, r5, r21
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	seteq r6, r4, r24
	.loc	1 1510 19                       # parallel-rne.mlir:1510:19
	seteq r11, r4, zero
	.loc	1 1507 19                       # parallel-rne.mlir:1507:19
	seteq r7, r5, zero
	.loc	1 1509 19                       # parallel-rne.mlir:1509:19
	seteq r8, r5, r24
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1508 19                       # parallel-rne.mlir:1508:19
	and r5, r6, r7
	.loc	1 1511 19                       # parallel-rne.mlir:1511:19
	and r6, r11, r8
	.loc	1 1500 19                       # parallel-rne.mlir:1500:19
	add.s r7, r19, r18
	.loc	1 1512 19                       # parallel-rne.mlir:1512:19
	or r5, r5, r6
	lui r6, 523264
	.loc	1 1516 19                       # parallel-rne.mlir:1516:19
	or r5, r4, r5
	lui r4, 523264
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r5, zero, .LBB0_1305
# %bb.1304:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r6, 0(r7)
.LBB0_1305:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	loads.w r5, 4(r16)
	loads.w r8, 4(r13)
	and r5, r5, r21
	and r8, r8, r21
	seteq r11, r5, r24
	seteq r20, r5, zero
	seteq r14, r8, zero
	seteq r19, r8, r24
	max.u r5, r5, r8
	setlt.u r5, r24, r5
	and r8, r11, r14
	and r11, r20, r19
	or r8, r8, r11
	lui r11, 523264
	or r5, r5, r8
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r5, zero, .LBB0_1307
# %bb.1306:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r7)
.LBB0_1307:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	loads.w r5, 8(r16)
	loads.w r8, 8(r13)
	and r5, r5, r21
	and r8, r8, r21
	seteq r14, r5, r24
	seteq r25, r5, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r5, r5, r8
	setlt.u r5, r24, r5
	and r8, r14, r19
	and r14, r25, r20
	or r8, r8, r14
	lui r14, 523264
	or r5, r5, r8
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r5, zero, .LBB0_1309
# %bb.1308:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r7)
.LBB0_1309:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	loads.w r5, 12(r16)
	loads.w r8, 12(r13)
	and r5, r5, r21
	and r8, r8, r21
	seteq r13, r5, r24
	seteq r20, r5, zero
	seteq r16, r8, zero
	seteq r19, r8, r24
	max.u r5, r5, r8
	setlt.u r5, r24, r5
	and r8, r13, r16
	and r13, r20, r19
	or r8, r8, r13
	lui r13, 1024
	or r5, r5, r8
	.loc	1 1517 19                       # parallel-rne.mlir:1517:19
	bneq r5, zero, .LBB0_1311
# %bb.1310:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r7)
.LBB0_1311:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 1518 19 is_stmt 1             # parallel-rne.mlir:1518:19
	and r7, r4, r21
	.loc	1 1520 19                       # parallel-rne.mlir:1520:19
	setlt.u r5, r24, r7
	.loc	1 1521 19                       # parallel-rne.mlir:1521:19
	bneq r5, zero, .LBB0_1313
# %bb.1312:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r4, 0
	j .LBB0_1314
.LBB0_1313:                             #   in Loop: Header=BB0_1303 Depth=3
	or r16, r4, r13
.LBB0_1314:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	and r19, r14, r21
	setlt.u r5, r24, r19
	.loc	1 1521 19                       # parallel-rne.mlir:1521:19
	bneq r5, zero, .LBB0_1316
# %bb.1315:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r14, 0
	j .LBB0_1317
.LBB0_1316:                             #   in Loop: Header=BB0_1303 Depth=3
	or r8, r14, r13
.LBB0_1317:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	and r20, r11, r21
	lui r9, 1024
	setlt.u r5, r24, r20
	.loc	1 1521 19                       # parallel-rne.mlir:1521:19
	bneq r5, zero, .LBB0_1319
# %bb.1318:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_1320
.LBB0_1319:                             #   in Loop: Header=BB0_1303 Depth=3
	or r13, r11, r13
.LBB0_1320:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	and r25, r6, r21
	setlt.u r5, r24, r25
	.loc	1 1521 19                       # parallel-rne.mlir:1521:19
	bneq r5, zero, .LBB0_1322
# %bb.1321:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
	.loc	1 1527 19 is_stmt 1             # parallel-rne.mlir:1527:19
	setlt.u r25, r23, r25
	.loc	1 1528 20                       # parallel-rne.mlir:1528:20
	beq r25, zero, .LBB0_1323
	j .LBB0_1324
.LBB0_1322:                             #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r5, r6, r9
	.loc	1 1527 19 is_stmt 1             # parallel-rne.mlir:1527:19
	setlt.u r25, r23, r25
	.loc	1 1528 20                       # parallel-rne.mlir:1528:20
	bneq r25, zero, .LBB0_1324
.LBB0_1323:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r6, 16
	andi r5, r5, 1
	add.s r5, r6, r5
	lui r6, 1048560
	add.s r5, r5, r22
	and r5, r5, r6
.LBB0_1324:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	setlt.u r6, r23, r20
	.loc	1 1528 20                       # parallel-rne.mlir:1528:20
	bneq r6, zero, .LBB0_1326
# %bb.1325:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r11, 16
	lui r9, 1048560
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r22
	and r13, r6, r9
.LBB0_1326:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	setlt.u r6, r23, r19
	lui r25, 1024
	.loc	1 1528 20                       # parallel-rne.mlir:1528:20
	bneq r6, zero, .LBB0_1328
# %bb.1327:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r14, 16
	lui r8, 1048560
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r22
	and r8, r6, r8
.LBB0_1328:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	setlt.u r6, r23, r7
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1528 20                       # parallel-rne.mlir:1528:20
	bneq r6, zero, .LBB0_1302
# %bb.1329:                             # %vector.body367
                                        #   in Loop: Header=BB0_1303 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r6, r4, 16
	andi r6, r6, 1
	add.s r4, r4, r6
	lui r6, 1048560
	add.s r4, r4, r22
	and r16, r4, r6
	j .LBB0_1302
.LBB0_1330:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1489 7 is_stmt 1              # parallel-rne.mlir:1489:7
	mfence { sm }
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	addli r2, zero, 1
	load.d r[26:27], -472(r30)              # 8-byte Folded Reload
	.loc	1 1535 7                        # parallel-rne.mlir:1535:7
	bneq r6, r2, .LBB0_1276
.LBB0_1331:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	storeli.w r2, -528(r30)                 # 4-byte Folded Spill
	.loc	1 1535 7                        # parallel-rne.mlir:1535:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1333
.LBB0_1332:                             # %middle.block358
                                        #   in Loop: Header=BB0_1333 Depth=2
	.loc	1 1542 9 is_stmt 1              # parallel-rne.mlir:1542:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1382
.LBB0_1333:                             # %.preheader133
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1354 Depth 3
                                        #       Child Loop BB0_1336 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 1543 11 is_stmt 1             # parallel-rne.mlir:1543:11
	loadli.w r2,  -528(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1352
# %bb.1334:                             # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_1333 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1336
.LBB0_1335:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 1543 11                       # parallel-rne.mlir:1543:11
	load.d r[7:8], -448(r30)                # 8-byte Folded Reload
	.loc	1 1576 13 is_stmt 1             # parallel-rne.mlir:1576:13
	add.s r4, r15, r4
	stores.w r6, 0(r4)
	.loc	1 1543 11                       # parallel-rne.mlir:1543:11
	setlt.ul r5, r[2:3], r[7:8]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1332
.LBB0_1336:                             # %scalar.ph350
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1333 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1544 19                       # parallel-rne.mlir:1544:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	add.s r5, r28, r4
	.loc	1 1546 19                       # parallel-rne.mlir:1546:19
	add.s r6, r19, r4
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	loads.w r5, 0(r5)
	.loc	1 1546 19                       # parallel-rne.mlir:1546:19
	loads.w r11, 0(r6)
	.loc	1 1549 19                       # parallel-rne.mlir:1549:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	beq r6, r24, .LBB0_1338
# %bb.1337:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_1338:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r7, zero, .LBB0_1348
# %bb.1339:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r6, zero, .LBB0_1349
.LBB0_1340:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	beq r7, r24, .LBB0_1342
.LBB0_1341:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_1342:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r8, zero, .LBB0_1344
# %bb.1343:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1344:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	setlt.u r7, r24, r7
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r7, zero, .LBB0_1346
# %bb.1345:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
.LBB0_1346:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 1564 19 is_stmt 1             # parallel-rne.mlir:1564:19
	and r7, r5, r21
	.loc	1 1566 19                       # parallel-rne.mlir:1566:19
	setlt.u r6, r24, r7
	.loc	1 1567 19                       # parallel-rne.mlir:1567:19
	bneq r6, zero, .LBB0_1350
# %bb.1347:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r5, 0
	.loc	1 1573 19 is_stmt 1             # parallel-rne.mlir:1573:19
	setlt.u r7, r23, r7
	.loc	1 1574 20                       # parallel-rne.mlir:1574:20
	bneq r7, zero, .LBB0_1335
	j .LBB0_1351
.LBB0_1348:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 1563 19 is_stmt 1             # parallel-rne.mlir:1563:19
	beq r6, zero, .LBB0_1340
.LBB0_1349:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r7, r24, .LBB0_1341
	j .LBB0_1342
.LBB0_1350:                             #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r5, r25
	.loc	1 1573 19 is_stmt 1             # parallel-rne.mlir:1573:19
	setlt.u r7, r23, r7
	.loc	1 1574 20                       # parallel-rne.mlir:1574:20
	bneq r7, zero, .LBB0_1335
.LBB0_1351:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1336 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r5, 16
	andi r6, r6, 1
	add.s r5, r5, r6
	lui r6, 1048560
	add.s r5, r5, r22
	and r6, r5, r6
	j .LBB0_1335
.LBB0_1352:                             # %vector.body352.preheader
                                        #   in Loop: Header=BB0_1333 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_1354
.LBB0_1353:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 1543 11 is_stmt 1             # parallel-rne.mlir:1543:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1576 13                       # parallel-rne.mlir:1576:13
	add.s r5, r15, r18
	.loc	1 1543 11                       # parallel-rne.mlir:1543:11
	seteq.d r4, r[2:3], r[26:27]
	.loc	1 1576 13                       # parallel-rne.mlir:1576:13
	stores.w r16, 12(r5)
	stores.w r8, 8(r5)
	stores.w r13, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 1543 11                       # parallel-rne.mlir:1543:11
	bneq r4, zero, .LBB0_1332
.LBB0_1354:                             # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1333 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1544 19                       # parallel-rne.mlir:1544:19
	add.ul r[4:5], r[2:3], r[9:10]
	slli r18, r4, 2
	add.s r16, r12, r18
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	add.s r13, r28, r18
	.loc	1 1544 19                       # parallel-rne.mlir:1544:19
	loads.w r4, 0(r16)
	.loc	1 1545 19                       # parallel-rne.mlir:1545:19
	loads.w r5, 0(r13)
	.loc	1 1551 19                       # parallel-rne.mlir:1551:19
	and r4, r4, r21
	.loc	1 1549 19                       # parallel-rne.mlir:1549:19
	and r5, r5, r21
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	seteq r6, r4, r24
	.loc	1 1556 19                       # parallel-rne.mlir:1556:19
	seteq r11, r4, zero
	.loc	1 1553 19                       # parallel-rne.mlir:1553:19
	seteq r7, r5, zero
	.loc	1 1555 19                       # parallel-rne.mlir:1555:19
	seteq r8, r5, r24
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	max.u r4, r4, r5
	setlt.u r4, r24, r4
	.loc	1 1554 19                       # parallel-rne.mlir:1554:19
	and r5, r6, r7
	.loc	1 1557 19                       # parallel-rne.mlir:1557:19
	and r6, r11, r8
	.loc	1 1546 19                       # parallel-rne.mlir:1546:19
	add.s r7, r19, r18
	.loc	1 1558 19                       # parallel-rne.mlir:1558:19
	or r5, r5, r6
	.loc	1 1562 19                       # parallel-rne.mlir:1562:19
	or r6, r4, r5
	lui r4, 523264
	lui r5, 523264
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r6, zero, .LBB0_1356
# %bb.1355:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r5, 0(r7)
.LBB0_1356:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	loads.w r6, 4(r16)
	loads.w r8, 4(r13)
	and r6, r6, r21
	and r8, r8, r21
	seteq r11, r6, r24
	seteq r20, r6, zero
	seteq r14, r8, zero
	seteq r19, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r11, r14
	and r11, r20, r19
	or r8, r8, r11
	lui r11, 523264
	or r6, r6, r8
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r6, zero, .LBB0_1358
# %bb.1357:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r7)
.LBB0_1358:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r13)
	and r6, r6, r21
	and r8, r8, r21
	seteq r14, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r14, r19
	and r14, r25, r20
	or r8, r8, r14
	lui r14, 523264
	or r6, r6, r8
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r6, zero, .LBB0_1360
# %bb.1359:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r7)
.LBB0_1360:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	loads.w r6, 12(r16)
	loads.w r8, 12(r13)
	and r6, r6, r21
	and r8, r8, r21
	seteq r13, r6, r24
	seteq r20, r6, zero
	seteq r16, r8, zero
	seteq r19, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r13, r16
	and r13, r20, r19
	or r8, r8, r13
	lui r13, 1024
	or r6, r6, r8
	.loc	1 1563 19                       # parallel-rne.mlir:1563:19
	bneq r6, zero, .LBB0_1362
# %bb.1361:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r4, 12(r7)
.LBB0_1362:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 1564 19 is_stmt 1             # parallel-rne.mlir:1564:19
	and r7, r4, r21
	.loc	1 1566 19                       # parallel-rne.mlir:1566:19
	setlt.u r6, r24, r7
	.loc	1 1567 19                       # parallel-rne.mlir:1567:19
	bneq r6, zero, .LBB0_1364
# %bb.1363:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r4, 0
	j .LBB0_1365
.LBB0_1364:                             #   in Loop: Header=BB0_1354 Depth=3
	or r16, r4, r13
.LBB0_1365:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	and r19, r14, r21
	setlt.u r6, r24, r19
	.loc	1 1567 19                       # parallel-rne.mlir:1567:19
	bneq r6, zero, .LBB0_1367
# %bb.1366:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r14, 0
	j .LBB0_1368
.LBB0_1367:                             #   in Loop: Header=BB0_1354 Depth=3
	or r8, r14, r13
.LBB0_1368:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	and r20, r11, r21
	lui r12, 1024
	setlt.u r6, r24, r20
	.loc	1 1567 19                       # parallel-rne.mlir:1567:19
	bneq r6, zero, .LBB0_1370
# %bb.1369:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r11, 0
	j .LBB0_1371
.LBB0_1370:                             #   in Loop: Header=BB0_1354 Depth=3
	or r13, r11, r13
.LBB0_1371:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	and r25, r5, r21
	setlt.u r6, r24, r25
	.loc	1 1567 19                       # parallel-rne.mlir:1567:19
	bneq r6, zero, .LBB0_1373
# %bb.1372:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r5, 0
	j .LBB0_1374
.LBB0_1373:                             #   in Loop: Header=BB0_1354 Depth=3
	or r6, r5, r12
.LBB0_1374:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 1573 19 is_stmt 1             # parallel-rne.mlir:1573:19
	setlt.u r25, r23, r25
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1574 20                       # parallel-rne.mlir:1574:20
	bneq r25, zero, .LBB0_1376
# %bb.1375:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r5, 16
	andi r6, r6, 1
	add.s r5, r5, r6
	lui r6, 1048560
	add.s r5, r5, r22
	and r6, r5, r6
.LBB0_1376:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	setlt.u r5, r23, r20
	.loc	1 1574 20                       # parallel-rne.mlir:1574:20
	bneq r5, zero, .LBB0_1378
# %bb.1377:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	andi r5, r5, 1
	add.s r5, r11, r5
	lui r11, 1048560
	add.s r5, r5, r22
	and r13, r5, r11
.LBB0_1378:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	setlt.u r5, r23, r19
	lui r25, 1024
	.loc	1 1574 20                       # parallel-rne.mlir:1574:20
	bneq r5, zero, .LBB0_1380
# %bb.1379:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r14, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r14, r5
	add.s r5, r5, r22
	and r8, r5, r8
.LBB0_1380:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	setlt.u r5, r23, r7
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1574 20                       # parallel-rne.mlir:1574:20
	bneq r5, zero, .LBB0_1353
# %bb.1381:                             # %vector.body352
                                        #   in Loop: Header=BB0_1354 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r4, 16
	andi r5, r5, 1
	add.s r4, r4, r5
	lui r5, 1048560
	add.s r4, r4, r22
	and r16, r4, r5
	j .LBB0_1353
.LBB0_1382:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1535 7                        # parallel-rne.mlir:1535:7
	mfence { sm }
	.loc	1 1581 7                        # parallel-rne.mlir:1581:7
	addli r2, zero, 2
	bneq r6, r2, .LBB0_1277
.LBB0_1383:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 1581 7                        # parallel-rne.mlir:1581:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1385
.LBB0_1384:                             # %middle.block343
                                        #   in Loop: Header=BB0_1385 Depth=2
	.loc	1 1588 9 is_stmt 1              # parallel-rne.mlir:1588:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1433
.LBB0_1385:                             # %.preheader132
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1406 Depth 3
                                        #       Child Loop BB0_1388 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[3:4], r2
	.loc	1 1589 11 is_stmt 1             # parallel-rne.mlir:1589:11
	loadli.w r2,  -520(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1404
# %bb.1386:                             # %scalar.ph335.preheader
                                        #   in Loop: Header=BB0_1385 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1388
.LBB0_1387:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 1589 11                       # parallel-rne.mlir:1589:11
	load.d r[7:8], -448(r30)                # 8-byte Folded Reload
	.loc	1 1622 13 is_stmt 1             # parallel-rne.mlir:1622:13
	add.s r4, r15, r4
	stores.w r6, 0(r4)
	.loc	1 1589 11                       # parallel-rne.mlir:1589:11
	setlt.ul r5, r[2:3], r[7:8]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1384
.LBB0_1388:                             # %scalar.ph335
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1385 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1590 19                       # parallel-rne.mlir:1590:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r8, 523264
	slli r4, r4, 2
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	add.s r5, r28, r4
	.loc	1 1592 19                       # parallel-rne.mlir:1592:19
	add.s r6, r19, r4
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	loads.w r5, 0(r5)
	.loc	1 1592 19                       # parallel-rne.mlir:1592:19
	loads.w r11, 0(r6)
	.loc	1 1595 19                       # parallel-rne.mlir:1595:19
	and r6, r5, r21
	lui r5, 523264
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	beq r6, r24, .LBB0_1390
# %bb.1389:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
.LBB0_1390:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	add.s r7, r12, r4
	loads.w r7, 0(r7)
	and r7, r7, r21
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r7, zero, .LBB0_1400
# %bb.1391:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r6, zero, .LBB0_1401
.LBB0_1392:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	beq r7, r24, .LBB0_1394
.LBB0_1393:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
.LBB0_1394:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	setlt.u r8, r24, r6
	lui r6, 523264
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r8, zero, .LBB0_1396
# %bb.1395:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1396:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	setlt.u r7, r24, r7
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r7, zero, .LBB0_1398
# %bb.1397:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r6, 0
.LBB0_1398:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 1610 19 is_stmt 1             # parallel-rne.mlir:1610:19
	and r7, r5, r21
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	setlt.u r6, r24, r7
	.loc	1 1613 19                       # parallel-rne.mlir:1613:19
	bneq r6, zero, .LBB0_1402
# %bb.1399:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r5, 0
	.loc	1 1619 19 is_stmt 1             # parallel-rne.mlir:1619:19
	setlt.u r7, r23, r7
	.loc	1 1620 20                       # parallel-rne.mlir:1620:20
	bneq r7, zero, .LBB0_1387
	j .LBB0_1403
.LBB0_1400:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r8, r11, 0
	lui r11, 523264
	.loc	1 1609 19 is_stmt 1             # parallel-rne.mlir:1609:19
	beq r6, zero, .LBB0_1392
.LBB0_1401:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r7, r24, .LBB0_1393
	j .LBB0_1394
.LBB0_1402:                             #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r6, r5, r25
	.loc	1 1619 19 is_stmt 1             # parallel-rne.mlir:1619:19
	setlt.u r7, r23, r7
	.loc	1 1620 20                       # parallel-rne.mlir:1620:20
	bneq r7, zero, .LBB0_1387
.LBB0_1403:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1388 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r5, 16
	andi r6, r6, 1
	add.s r5, r5, r6
	lui r6, 1048560
	add.s r5, r5, r22
	and r6, r5, r6
	j .LBB0_1387
.LBB0_1404:                             # %vector.body337.preheader
                                        #   in Loop: Header=BB0_1385 Depth=2
	zext_int2long r[2:3], zero
	j .LBB0_1406
.LBB0_1405:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 1589 11 is_stmt 1             # parallel-rne.mlir:1589:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1622 13                       # parallel-rne.mlir:1622:13
	add.s r5, r15, r5
	.loc	1 1589 11                       # parallel-rne.mlir:1589:11
	seteq.d r4, r[2:3], r[26:27]
	.loc	1 1622 13                       # parallel-rne.mlir:1622:13
	stores.w r16, 12(r5)
	stores.w r7, 8(r5)
	stores.w r8, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 1589 11                       # parallel-rne.mlir:1589:11
	bneq r4, zero, .LBB0_1384
.LBB0_1406:                             # %vector.body337
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1385 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1590 19                       # parallel-rne.mlir:1590:19
	add.ul r[4:5], r[2:3], r[9:10]
	lui r18, 523264
	slli r5, r4, 2
	add.s r16, r12, r5
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	add.s r4, r28, r5
	.loc	1 1590 19                       # parallel-rne.mlir:1590:19
	loads.w r6, 0(r16)
	.loc	1 1591 19                       # parallel-rne.mlir:1591:19
	loads.w r7, 0(r4)
	.loc	1 1597 19                       # parallel-rne.mlir:1597:19
	and r6, r6, r21
	.loc	1 1595 19                       # parallel-rne.mlir:1595:19
	and r7, r7, r21
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	seteq r8, r6, r24
	.loc	1 1602 19                       # parallel-rne.mlir:1602:19
	seteq r14, r6, zero
	.loc	1 1599 19                       # parallel-rne.mlir:1599:19
	seteq r11, r7, zero
	.loc	1 1601 19                       # parallel-rne.mlir:1601:19
	seteq r13, r7, r24
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	max.u r6, r6, r7
	setlt.u r6, r24, r6
	.loc	1 1600 19                       # parallel-rne.mlir:1600:19
	and r7, r8, r11
	.loc	1 1603 19                       # parallel-rne.mlir:1603:19
	and r8, r14, r13
	lui r13, 523264
	.loc	1 1604 19                       # parallel-rne.mlir:1604:19
	or r8, r7, r8
	.loc	1 1592 19                       # parallel-rne.mlir:1592:19
	add.s r7, r19, r5
	.loc	1 1608 19                       # parallel-rne.mlir:1608:19
	or r6, r6, r8
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r6, zero, .LBB0_1408
# %bb.1407:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r7)
.LBB0_1408:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	loads.w r6, 4(r16)
	loads.w r8, 4(r4)
	and r6, r6, r21
	and r8, r8, r21
	seteq r11, r6, r24
	seteq r20, r6, zero
	seteq r14, r8, zero
	seteq r19, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r11, r14
	and r11, r20, r19
	or r8, r8, r11
	lui r11, 523264
	or r6, r6, r8
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r6, zero, .LBB0_1410
# %bb.1409:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r7)
.LBB0_1410:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	loads.w r6, 8(r16)
	loads.w r8, 8(r4)
	and r6, r6, r21
	and r8, r8, r21
	seteq r14, r6, r24
	seteq r25, r6, zero
	seteq r19, r8, zero
	seteq r20, r8, r24
	max.u r6, r6, r8
	setlt.u r6, r24, r6
	and r8, r14, r19
	and r14, r25, r20
	or r8, r8, r14
	lui r14, 523264
	or r6, r6, r8
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r6, zero, .LBB0_1412
# %bb.1411:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r7)
.LBB0_1412:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	loads.w r6, 12(r16)
	loads.w r4, 12(r4)
	and r6, r6, r21
	and r4, r4, r21
	seteq r8, r6, r24
	seteq r16, r4, zero
	seteq r19, r4, r24
	seteq r20, r6, zero
	max.u r4, r6, r4
	setlt.u r4, r24, r4
	and r6, r8, r16
	and r8, r20, r19
	or r6, r6, r8
	lui r8, 1024
	or r4, r4, r6
	.loc	1 1609 19                       # parallel-rne.mlir:1609:19
	bneq r4, zero, .LBB0_1414
# %bb.1413:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r7)
.LBB0_1414:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 1610 19 is_stmt 1             # parallel-rne.mlir:1610:19
	and r4, r13, r21
	.loc	1 1612 19                       # parallel-rne.mlir:1612:19
	setlt.u r6, r24, r4
	.loc	1 1613 19                       # parallel-rne.mlir:1613:19
	bneq r6, zero, .LBB0_1416
# %bb.1415:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r13, 0
	j .LBB0_1417
.LBB0_1416:                             #   in Loop: Header=BB0_1406 Depth=3
	or r16, r13, r8
.LBB0_1417:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	and r19, r14, r21
	setlt.u r6, r24, r19
	.loc	1 1613 19                       # parallel-rne.mlir:1613:19
	bneq r6, zero, .LBB0_1419
# %bb.1418:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r14, 0
	j .LBB0_1420
.LBB0_1419:                             #   in Loop: Header=BB0_1406 Depth=3
	or r7, r14, r8
.LBB0_1420:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	and r20, r11, r21
	lui r12, 1024
	setlt.u r6, r24, r20
	.loc	1 1613 19                       # parallel-rne.mlir:1613:19
	bneq r6, zero, .LBB0_1422
# %bb.1421:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r11, 0
	j .LBB0_1423
.LBB0_1422:                             #   in Loop: Header=BB0_1406 Depth=3
	or r8, r11, r8
.LBB0_1423:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	and r25, r18, r21
	setlt.u r6, r24, r25
	.loc	1 1613 19                       # parallel-rne.mlir:1613:19
	bneq r6, zero, .LBB0_1425
# %bb.1424:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r18, 0
	.loc	1 1619 19 is_stmt 1             # parallel-rne.mlir:1619:19
	setlt.u r25, r23, r25
	.loc	1 1620 20                       # parallel-rne.mlir:1620:20
	beq r25, zero, .LBB0_1426
	j .LBB0_1427
.LBB0_1425:                             #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r18, r12
	.loc	1 1619 19 is_stmt 1             # parallel-rne.mlir:1619:19
	setlt.u r25, r23, r25
	.loc	1 1620 20                       # parallel-rne.mlir:1620:20
	bneq r25, zero, .LBB0_1427
.LBB0_1426:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r18, 16
	lui r12, 1048560
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r22
	and r6, r6, r12
.LBB0_1427:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	setlt.u r18, r23, r20
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1620 20                       # parallel-rne.mlir:1620:20
	bneq r18, zero, .LBB0_1429
# %bb.1428:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r8, r11, 16
	andi r8, r8, 1
	add.s r8, r11, r8
	lui r11, 1048560
	add.s r8, r8, r22
	and r8, r8, r11
.LBB0_1429:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	setlt.u r11, r23, r19
	lui r25, 1024
	.loc	1 1620 20                       # parallel-rne.mlir:1620:20
	bneq r11, zero, .LBB0_1431
# %bb.1430:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r7, r14, 16
	lui r11, 1048560
	andi r7, r7, 1
	add.s r7, r14, r7
	add.s r7, r7, r22
	and r7, r7, r11
.LBB0_1431:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	setlt.u r4, r23, r4
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1620 20                       # parallel-rne.mlir:1620:20
	bneq r4, zero, .LBB0_1405
# %bb.1432:                             # %vector.body337
                                        #   in Loop: Header=BB0_1406 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r13, 16
	lui r11, 1048560
	andi r4, r4, 1
	add.s r4, r13, r4
	add.s r4, r4, r22
	and r16, r4, r11
	j .LBB0_1405
.LBB0_1433:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1581 7                        # parallel-rne.mlir:1581:7
	mfence { sm }
	.loc	1 1627 7                        # parallel-rne.mlir:1627:7
	addli r2, zero, 3
	bneq r6, r2, .LBB0_1278
.LBB0_1434:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 1627 7                        # parallel-rne.mlir:1627:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1436
.LBB0_1435:                             # %middle.block328
                                        #   in Loop: Header=BB0_1436 Depth=2
	.loc	1 1634 9 is_stmt 1              # parallel-rne.mlir:1634:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1482
.LBB0_1436:                             # %.preheader131
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1455 Depth 3
                                        #       Child Loop BB0_1438 Depth 3
	.loc	1 1635 11                       # parallel-rne.mlir:1635:11
	loadli.w r2,  -512(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[9:10], zero
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_1438
	j .LBB0_1455
.LBB0_1437:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	load.d r[5:6], -448(r30)                # 8-byte Folded Reload
	.loc	1 1668 13                       # parallel-rne.mlir:1668:13
	add.s r2, r15, r2
	stores.w r4, 0(r2)
	.loc	1 1635 11                       # parallel-rne.mlir:1635:11
	setlt.ul r3, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r3, zero, .LBB0_1435
.LBB0_1438:                             # %scalar.ph320
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1436 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1636 19                       # parallel-rne.mlir:1636:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r6, 523264
	slli r2, r2, 2
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	add.s r3, r28, r2
	.loc	1 1638 19                       # parallel-rne.mlir:1638:19
	add.s r4, r19, r2
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	loads.w r3, 0(r3)
	.loc	1 1638 19                       # parallel-rne.mlir:1638:19
	loads.w r11, 0(r4)
	.loc	1 1641 19                       # parallel-rne.mlir:1641:19
	and r4, r3, r21
	lui r3, 523264
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	beq r4, r24, .LBB0_1440
# %bb.1439:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1440:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	add.s r5, r12, r2
	loads.w r5, 0(r5)
	and r5, r5, r21
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r5, zero, .LBB0_1450
# %bb.1441:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r4, zero, .LBB0_1451
.LBB0_1442:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	beq r5, r24, .LBB0_1444
.LBB0_1443:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
.LBB0_1444:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	setlt.u r6, r24, r4
	lui r4, 523264
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r6, zero, .LBB0_1446
# %bb.1445:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
.LBB0_1446:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	setlt.u r5, r24, r5
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r5, zero, .LBB0_1448
# %bb.1447:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r4, 0
.LBB0_1448:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 1656 19 is_stmt 1             # parallel-rne.mlir:1656:19
	and r5, r3, r21
	.loc	1 1658 19                       # parallel-rne.mlir:1658:19
	setlt.u r4, r24, r5
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r4, zero, .LBB0_1452
# %bb.1449:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r3, 0
	.loc	1 1665 19 is_stmt 1             # parallel-rne.mlir:1665:19
	setlt.u r5, r23, r5
	.loc	1 1666 20                       # parallel-rne.mlir:1666:20
	bneq r5, zero, .LBB0_1437
	j .LBB0_1453
.LBB0_1450:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r11, 0
	lui r11, 523264
	.loc	1 1655 19 is_stmt 1             # parallel-rne.mlir:1655:19
	beq r4, zero, .LBB0_1442
.LBB0_1451:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r5, r24, .LBB0_1443
	j .LBB0_1444
.LBB0_1452:                             #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r3, r25
	.loc	1 1665 19 is_stmt 1             # parallel-rne.mlir:1665:19
	setlt.u r5, r23, r5
	.loc	1 1666 20                       # parallel-rne.mlir:1666:20
	bneq r5, zero, .LBB0_1437
.LBB0_1453:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1438 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r3, 16
	andi r4, r4, 1
	add.s r3, r3, r4
	lui r4, 1048560
	add.s r3, r3, r22
	and r4, r3, r4
	j .LBB0_1437
.LBB0_1454:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 1635 11 is_stmt 1             # parallel-rne.mlir:1635:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 1668 13                       # parallel-rne.mlir:1668:13
	add.s r5, r15, r5
	.loc	1 1635 11                       # parallel-rne.mlir:1635:11
	seteq.d r2, r[9:10], r[26:27]
	.loc	1 1668 13                       # parallel-rne.mlir:1668:13
	stores.w r16, 12(r5)
	stores.w r3, 8(r5)
	stores.w r4, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 1635 11                       # parallel-rne.mlir:1635:11
	bneq r2, zero, .LBB0_1435
.LBB0_1455:                             # %vector.body322
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1436 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1636 19                       # parallel-rne.mlir:1636:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r18, 523264
	slli r5, r2, 2
	add.s r16, r12, r5
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	add.s r2, r28, r5
	.loc	1 1636 19                       # parallel-rne.mlir:1636:19
	loads.w r3, 0(r16)
	.loc	1 1637 19                       # parallel-rne.mlir:1637:19
	loads.w r4, 0(r2)
	.loc	1 1643 19                       # parallel-rne.mlir:1643:19
	and r3, r3, r21
	.loc	1 1641 19                       # parallel-rne.mlir:1641:19
	and r4, r4, r21
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	seteq r6, r3, r24
	.loc	1 1648 19                       # parallel-rne.mlir:1648:19
	seteq r14, r3, zero
	.loc	1 1645 19                       # parallel-rne.mlir:1645:19
	seteq r11, r4, zero
	.loc	1 1647 19                       # parallel-rne.mlir:1647:19
	seteq r13, r4, r24
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	max.u r3, r3, r4
	setlt.u r4, r24, r3
	.loc	1 1646 19                       # parallel-rne.mlir:1646:19
	and r3, r6, r11
	.loc	1 1649 19                       # parallel-rne.mlir:1649:19
	and r6, r14, r13
	lui r13, 523264
	.loc	1 1650 19                       # parallel-rne.mlir:1650:19
	or r6, r3, r6
	.loc	1 1638 19                       # parallel-rne.mlir:1638:19
	add.s r3, r19, r5
	.loc	1 1654 19                       # parallel-rne.mlir:1654:19
	or r4, r4, r6
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r4, zero, .LBB0_1457
# %bb.1456:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r3)
.LBB0_1457:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	loads.w r4, 4(r16)
	loads.w r6, 4(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r11, r4, r24
	seteq r20, r4, zero
	seteq r14, r6, zero
	seteq r19, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r11, r14
	and r11, r20, r19
	or r6, r6, r11
	lui r11, 523264
	or r4, r4, r6
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r4, zero, .LBB0_1459
# %bb.1458:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r3)
.LBB0_1459:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	loads.w r4, 8(r16)
	loads.w r6, 8(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r14, r4, r24
	seteq r25, r4, zero
	seteq r19, r6, zero
	seteq r20, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r14, r19
	and r14, r25, r20
	or r6, r6, r14
	lui r14, 523264
	or r4, r4, r6
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r4, zero, .LBB0_1461
# %bb.1460:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r3)
.LBB0_1461:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	loads.w r4, 12(r16)
	loads.w r2, 12(r2)
	and r4, r4, r21
	and r2, r2, r21
	seteq r6, r4, r24
	seteq r16, r2, zero
	seteq r19, r2, r24
	seteq r20, r4, zero
	max.u r2, r4, r2
	setlt.u r2, r24, r2
	and r4, r6, r16
	and r6, r20, r19
	or r4, r4, r6
	lui r6, 1024
	or r2, r2, r4
	.loc	1 1655 19                       # parallel-rne.mlir:1655:19
	bneq r2, zero, .LBB0_1463
# %bb.1462:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r3)
.LBB0_1463:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 1656 19 is_stmt 1             # parallel-rne.mlir:1656:19
	and r2, r13, r21
	.loc	1 1658 19                       # parallel-rne.mlir:1658:19
	setlt.u r3, r24, r2
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r3, zero, .LBB0_1465
# %bb.1464:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r13, 0
	j .LBB0_1466
.LBB0_1465:                             #   in Loop: Header=BB0_1455 Depth=3
	or r16, r13, r6
.LBB0_1466:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	and r19, r14, r21
	setlt.u r3, r24, r19
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r3, zero, .LBB0_1468
# %bb.1467:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r14, 0
	j .LBB0_1469
.LBB0_1468:                             #   in Loop: Header=BB0_1455 Depth=3
	or r3, r14, r6
.LBB0_1469:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	and r20, r11, r21
	lui r12, 1024
	setlt.u r4, r24, r20
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r4, zero, .LBB0_1471
# %bb.1470:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
	j .LBB0_1472
.LBB0_1471:                             #   in Loop: Header=BB0_1455 Depth=3
	or r4, r11, r6
.LBB0_1472:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	and r25, r18, r21
	setlt.u r6, r24, r25
	.loc	1 1659 19                       # parallel-rne.mlir:1659:19
	bneq r6, zero, .LBB0_1474
# %bb.1473:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r18, 0
	.loc	1 1665 19 is_stmt 1             # parallel-rne.mlir:1665:19
	setlt.u r25, r23, r25
	.loc	1 1666 20                       # parallel-rne.mlir:1666:20
	beq r25, zero, .LBB0_1475
	j .LBB0_1476
.LBB0_1474:                             #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r18, r12
	.loc	1 1665 19 is_stmt 1             # parallel-rne.mlir:1665:19
	setlt.u r25, r23, r25
	.loc	1 1666 20                       # parallel-rne.mlir:1666:20
	bneq r25, zero, .LBB0_1476
.LBB0_1475:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r18, 16
	lui r12, 1048560
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r22
	and r6, r6, r12
.LBB0_1476:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	setlt.u r18, r23, r20
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1666 20                       # parallel-rne.mlir:1666:20
	bneq r18, zero, .LBB0_1478
# %bb.1477:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	lui r11, 1048560
	add.s r4, r4, r22
	and r4, r4, r11
.LBB0_1478:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	setlt.u r11, r23, r19
	lui r25, 1024
	.loc	1 1666 20                       # parallel-rne.mlir:1666:20
	bneq r11, zero, .LBB0_1480
# %bb.1479:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r3, r14, 16
	lui r11, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r3, r3, r11
.LBB0_1480:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	setlt.u r2, r23, r2
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1666 20                       # parallel-rne.mlir:1666:20
	bneq r2, zero, .LBB0_1454
# %bb.1481:                             # %vector.body322
                                        #   in Loop: Header=BB0_1455 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r13, 16
	lui r11, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r22
	and r16, r2, r11
	j .LBB0_1454
.LBB0_1482:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1627 7                        # parallel-rne.mlir:1627:7
	mfence { sm }
	.loc	1 1673 7                        # parallel-rne.mlir:1673:7
	addli r2, zero, 4
	bneq r6, r2, .LBB0_1279
.LBB0_1483:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	.loc	1 1673 7                        # parallel-rne.mlir:1673:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1485
.LBB0_1484:                             # %middle.block313
                                        #   in Loop: Header=BB0_1485 Depth=2
	.loc	1 1680 9 is_stmt 1              # parallel-rne.mlir:1680:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1531
.LBB0_1485:                             # %.preheader130
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1504 Depth 3
                                        #       Child Loop BB0_1487 Depth 3
	.loc	1 1681 11                       # parallel-rne.mlir:1681:11
	loadli.w r2,  -504(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[9:10], zero
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_1487
	j .LBB0_1504
.LBB0_1486:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	load.d r[5:6], -448(r30)                # 8-byte Folded Reload
	.loc	1 1714 13                       # parallel-rne.mlir:1714:13
	add.s r2, r15, r2
	stores.w r4, 0(r2)
	.loc	1 1681 11                       # parallel-rne.mlir:1681:11
	setlt.ul r3, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r3, zero, .LBB0_1484
.LBB0_1487:                             # %scalar.ph305
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1485 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r6, 523264
	slli r2, r2, 2
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	add.s r3, r28, r2
	.loc	1 1684 19                       # parallel-rne.mlir:1684:19
	add.s r4, r19, r2
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	loads.w r3, 0(r3)
	.loc	1 1684 19                       # parallel-rne.mlir:1684:19
	loads.w r11, 0(r4)
	.loc	1 1687 19                       # parallel-rne.mlir:1687:19
	and r4, r3, r21
	lui r3, 523264
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	beq r4, r24, .LBB0_1489
# %bb.1488:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1489:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	add.s r5, r12, r2
	loads.w r5, 0(r5)
	and r5, r5, r21
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r5, zero, .LBB0_1499
# %bb.1490:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r4, zero, .LBB0_1500
.LBB0_1491:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	beq r5, r24, .LBB0_1493
.LBB0_1492:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
.LBB0_1493:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	setlt.u r6, r24, r4
	lui r4, 523264
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r6, zero, .LBB0_1495
# %bb.1494:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
.LBB0_1495:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	setlt.u r5, r24, r5
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r5, zero, .LBB0_1497
# %bb.1496:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r4, 0
.LBB0_1497:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 1702 19 is_stmt 1             # parallel-rne.mlir:1702:19
	and r5, r3, r21
	.loc	1 1704 19                       # parallel-rne.mlir:1704:19
	setlt.u r4, r24, r5
	.loc	1 1705 19                       # parallel-rne.mlir:1705:19
	bneq r4, zero, .LBB0_1501
# %bb.1498:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r3, 0
	.loc	1 1711 19 is_stmt 1             # parallel-rne.mlir:1711:19
	setlt.u r5, r23, r5
	.loc	1 1712 20                       # parallel-rne.mlir:1712:20
	bneq r5, zero, .LBB0_1486
	j .LBB0_1502
.LBB0_1499:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r11, 0
	lui r11, 523264
	.loc	1 1701 19 is_stmt 1             # parallel-rne.mlir:1701:19
	beq r4, zero, .LBB0_1491
.LBB0_1500:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r5, r24, .LBB0_1492
	j .LBB0_1493
.LBB0_1501:                             #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r3, r25
	.loc	1 1711 19 is_stmt 1             # parallel-rne.mlir:1711:19
	setlt.u r5, r23, r5
	.loc	1 1712 20                       # parallel-rne.mlir:1712:20
	bneq r5, zero, .LBB0_1486
.LBB0_1502:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1487 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r3, 16
	andi r4, r4, 1
	add.s r3, r3, r4
	lui r4, 1048560
	add.s r3, r3, r22
	and r4, r3, r4
	j .LBB0_1486
.LBB0_1503:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 1681 11 is_stmt 1             # parallel-rne.mlir:1681:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 1714 13                       # parallel-rne.mlir:1714:13
	add.s r5, r15, r5
	.loc	1 1681 11                       # parallel-rne.mlir:1681:11
	seteq.d r2, r[9:10], r[26:27]
	.loc	1 1714 13                       # parallel-rne.mlir:1714:13
	stores.w r16, 12(r5)
	stores.w r3, 8(r5)
	stores.w r4, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 1681 11                       # parallel-rne.mlir:1681:11
	bneq r2, zero, .LBB0_1484
.LBB0_1504:                             # %vector.body307
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1485 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r18, 523264
	slli r5, r2, 2
	add.s r16, r12, r5
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	add.s r2, r28, r5
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	loads.w r3, 0(r16)
	.loc	1 1683 19                       # parallel-rne.mlir:1683:19
	loads.w r4, 0(r2)
	.loc	1 1689 19                       # parallel-rne.mlir:1689:19
	and r3, r3, r21
	.loc	1 1687 19                       # parallel-rne.mlir:1687:19
	and r4, r4, r21
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	seteq r6, r3, r24
	.loc	1 1694 19                       # parallel-rne.mlir:1694:19
	seteq r14, r3, zero
	.loc	1 1691 19                       # parallel-rne.mlir:1691:19
	seteq r11, r4, zero
	.loc	1 1693 19                       # parallel-rne.mlir:1693:19
	seteq r13, r4, r24
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	max.u r3, r3, r4
	setlt.u r4, r24, r3
	.loc	1 1692 19                       # parallel-rne.mlir:1692:19
	and r3, r6, r11
	.loc	1 1695 19                       # parallel-rne.mlir:1695:19
	and r6, r14, r13
	lui r13, 523264
	.loc	1 1696 19                       # parallel-rne.mlir:1696:19
	or r6, r3, r6
	.loc	1 1684 19                       # parallel-rne.mlir:1684:19
	add.s r3, r19, r5
	.loc	1 1700 19                       # parallel-rne.mlir:1700:19
	or r4, r4, r6
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r4, zero, .LBB0_1506
# %bb.1505:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r3)
.LBB0_1506:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	loads.w r4, 4(r16)
	loads.w r6, 4(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r11, r4, r24
	seteq r20, r4, zero
	seteq r14, r6, zero
	seteq r19, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r11, r14
	and r11, r20, r19
	or r6, r6, r11
	lui r11, 523264
	or r4, r4, r6
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r4, zero, .LBB0_1508
# %bb.1507:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r3)
.LBB0_1508:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	loads.w r4, 8(r16)
	loads.w r6, 8(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r14, r4, r24
	seteq r25, r4, zero
	seteq r19, r6, zero
	seteq r20, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r14, r19
	and r14, r25, r20
	or r6, r6, r14
	lui r14, 523264
	or r4, r4, r6
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r4, zero, .LBB0_1510
# %bb.1509:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r3)
.LBB0_1510:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	loads.w r4, 12(r16)
	loads.w r2, 12(r2)
	and r4, r4, r21
	and r2, r2, r21
	seteq r6, r4, r24
	seteq r16, r2, zero
	seteq r19, r2, r24
	seteq r20, r4, zero
	max.u r2, r4, r2
	setlt.u r2, r24, r2
	and r4, r6, r16
	and r6, r20, r19
	or r4, r4, r6
	lui r6, 1024
	or r2, r2, r4
	.loc	1 1701 19                       # parallel-rne.mlir:1701:19
	bneq r2, zero, .LBB0_1512
# %bb.1511:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r3)
.LBB0_1512:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 1702 19 is_stmt 1             # parallel-rne.mlir:1702:19
	and r2, r13, r21
	.loc	1 1704 19                       # parallel-rne.mlir:1704:19
	setlt.u r3, r24, r2
	.loc	1 1705 19                       # parallel-rne.mlir:1705:19
	bneq r3, zero, .LBB0_1514
# %bb.1513:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r13, 0
	j .LBB0_1515
.LBB0_1514:                             #   in Loop: Header=BB0_1504 Depth=3
	or r16, r13, r6
.LBB0_1515:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	and r19, r14, r21
	setlt.u r3, r24, r19
	.loc	1 1705 19                       # parallel-rne.mlir:1705:19
	bneq r3, zero, .LBB0_1517
# %bb.1516:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r14, 0
	j .LBB0_1518
.LBB0_1517:                             #   in Loop: Header=BB0_1504 Depth=3
	or r3, r14, r6
.LBB0_1518:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	and r20, r11, r21
	lui r12, 1024
	setlt.u r4, r24, r20
	.loc	1 1705 19                       # parallel-rne.mlir:1705:19
	bneq r4, zero, .LBB0_1520
# %bb.1519:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
	j .LBB0_1521
.LBB0_1520:                             #   in Loop: Header=BB0_1504 Depth=3
	or r4, r11, r6
.LBB0_1521:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	and r25, r18, r21
	setlt.u r6, r24, r25
	.loc	1 1705 19                       # parallel-rne.mlir:1705:19
	bneq r6, zero, .LBB0_1523
# %bb.1522:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r18, 0
	.loc	1 1711 19 is_stmt 1             # parallel-rne.mlir:1711:19
	setlt.u r25, r23, r25
	.loc	1 1712 20                       # parallel-rne.mlir:1712:20
	beq r25, zero, .LBB0_1524
	j .LBB0_1525
.LBB0_1523:                             #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r18, r12
	.loc	1 1711 19 is_stmt 1             # parallel-rne.mlir:1711:19
	setlt.u r25, r23, r25
	.loc	1 1712 20                       # parallel-rne.mlir:1712:20
	bneq r25, zero, .LBB0_1525
.LBB0_1524:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r18, 16
	lui r12, 1048560
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r22
	and r6, r6, r12
.LBB0_1525:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	setlt.u r18, r23, r20
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1712 20                       # parallel-rne.mlir:1712:20
	bneq r18, zero, .LBB0_1527
# %bb.1526:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	lui r11, 1048560
	add.s r4, r4, r22
	and r4, r4, r11
.LBB0_1527:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	setlt.u r11, r23, r19
	lui r25, 1024
	.loc	1 1712 20                       # parallel-rne.mlir:1712:20
	bneq r11, zero, .LBB0_1529
# %bb.1528:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r3, r14, 16
	lui r11, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r3, r3, r11
.LBB0_1529:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	setlt.u r2, r23, r2
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1712 20                       # parallel-rne.mlir:1712:20
	bneq r2, zero, .LBB0_1503
# %bb.1530:                             # %vector.body307
                                        #   in Loop: Header=BB0_1504 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r13, 16
	lui r11, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r22
	and r16, r2, r11
	j .LBB0_1503
.LBB0_1531:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1673 7                        # parallel-rne.mlir:1673:7
	mfence { sm }
	.loc	1 1719 7                        # parallel-rne.mlir:1719:7
	addli r2, zero, 5
	bneq r6, r2, .LBB0_1280
.LBB0_1532:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -496(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	.loc	1 1719 7                        # parallel-rne.mlir:1719:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1534
.LBB0_1533:                             # %middle.block298
                                        #   in Loop: Header=BB0_1534 Depth=2
	.loc	1 1726 9 is_stmt 1              # parallel-rne.mlir:1726:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1580
.LBB0_1534:                             # %.preheader129
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1553 Depth 3
                                        #       Child Loop BB0_1536 Depth 3
	.loc	1 1727 11                       # parallel-rne.mlir:1727:11
	loadli.w r2,  -496(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[9:10], zero
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_1536
	j .LBB0_1553
.LBB0_1535:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	load.d r[5:6], -448(r30)                # 8-byte Folded Reload
	.loc	1 1760 13                       # parallel-rne.mlir:1760:13
	add.s r2, r15, r2
	stores.w r4, 0(r2)
	.loc	1 1727 11                       # parallel-rne.mlir:1727:11
	setlt.ul r3, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r3, zero, .LBB0_1533
.LBB0_1536:                             # %scalar.ph290
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1534 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r6, 523264
	slli r2, r2, 2
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	add.s r3, r28, r2
	.loc	1 1730 19                       # parallel-rne.mlir:1730:19
	add.s r4, r19, r2
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	loads.w r3, 0(r3)
	.loc	1 1730 19                       # parallel-rne.mlir:1730:19
	loads.w r11, 0(r4)
	.loc	1 1733 19                       # parallel-rne.mlir:1733:19
	and r4, r3, r21
	lui r3, 523264
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	beq r4, r24, .LBB0_1538
# %bb.1537:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1538:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	add.s r5, r12, r2
	loads.w r5, 0(r5)
	and r5, r5, r21
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r5, zero, .LBB0_1548
# %bb.1539:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r4, zero, .LBB0_1549
.LBB0_1540:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	beq r5, r24, .LBB0_1542
.LBB0_1541:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
.LBB0_1542:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	setlt.u r6, r24, r4
	lui r4, 523264
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r6, zero, .LBB0_1544
# %bb.1543:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
.LBB0_1544:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	setlt.u r5, r24, r5
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r5, zero, .LBB0_1546
# %bb.1545:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r4, 0
.LBB0_1546:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 1748 19 is_stmt 1             # parallel-rne.mlir:1748:19
	and r5, r3, r21
	.loc	1 1750 19                       # parallel-rne.mlir:1750:19
	setlt.u r4, r24, r5
	.loc	1 1751 19                       # parallel-rne.mlir:1751:19
	bneq r4, zero, .LBB0_1550
# %bb.1547:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r3, 0
	.loc	1 1757 19 is_stmt 1             # parallel-rne.mlir:1757:19
	setlt.u r5, r23, r5
	.loc	1 1758 20                       # parallel-rne.mlir:1758:20
	bneq r5, zero, .LBB0_1535
	j .LBB0_1551
.LBB0_1548:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r11, 0
	lui r11, 523264
	.loc	1 1747 19 is_stmt 1             # parallel-rne.mlir:1747:19
	beq r4, zero, .LBB0_1540
.LBB0_1549:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r5, r24, .LBB0_1541
	j .LBB0_1542
.LBB0_1550:                             #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r3, r25
	.loc	1 1757 19 is_stmt 1             # parallel-rne.mlir:1757:19
	setlt.u r5, r23, r5
	.loc	1 1758 20                       # parallel-rne.mlir:1758:20
	bneq r5, zero, .LBB0_1535
.LBB0_1551:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1536 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r3, 16
	andi r4, r4, 1
	add.s r3, r3, r4
	lui r4, 1048560
	add.s r3, r3, r22
	and r4, r3, r4
	j .LBB0_1535
.LBB0_1552:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 1727 11 is_stmt 1             # parallel-rne.mlir:1727:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 1760 13                       # parallel-rne.mlir:1760:13
	add.s r5, r15, r5
	.loc	1 1727 11                       # parallel-rne.mlir:1727:11
	seteq.d r2, r[9:10], r[26:27]
	.loc	1 1760 13                       # parallel-rne.mlir:1760:13
	stores.w r16, 12(r5)
	stores.w r3, 8(r5)
	stores.w r4, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 1727 11                       # parallel-rne.mlir:1727:11
	bneq r2, zero, .LBB0_1533
.LBB0_1553:                             # %vector.body292
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1534 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r18, 523264
	slli r5, r2, 2
	add.s r16, r12, r5
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	add.s r2, r28, r5
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	loads.w r3, 0(r16)
	.loc	1 1729 19                       # parallel-rne.mlir:1729:19
	loads.w r4, 0(r2)
	.loc	1 1735 19                       # parallel-rne.mlir:1735:19
	and r3, r3, r21
	.loc	1 1733 19                       # parallel-rne.mlir:1733:19
	and r4, r4, r21
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	seteq r6, r3, r24
	.loc	1 1740 19                       # parallel-rne.mlir:1740:19
	seteq r14, r3, zero
	.loc	1 1737 19                       # parallel-rne.mlir:1737:19
	seteq r11, r4, zero
	.loc	1 1739 19                       # parallel-rne.mlir:1739:19
	seteq r13, r4, r24
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	max.u r3, r3, r4
	setlt.u r4, r24, r3
	.loc	1 1738 19                       # parallel-rne.mlir:1738:19
	and r3, r6, r11
	.loc	1 1741 19                       # parallel-rne.mlir:1741:19
	and r6, r14, r13
	lui r13, 523264
	.loc	1 1742 19                       # parallel-rne.mlir:1742:19
	or r6, r3, r6
	.loc	1 1730 19                       # parallel-rne.mlir:1730:19
	add.s r3, r19, r5
	.loc	1 1746 19                       # parallel-rne.mlir:1746:19
	or r4, r4, r6
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r4, zero, .LBB0_1555
# %bb.1554:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r3)
.LBB0_1555:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	loads.w r4, 4(r16)
	loads.w r6, 4(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r11, r4, r24
	seteq r20, r4, zero
	seteq r14, r6, zero
	seteq r19, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r11, r14
	and r11, r20, r19
	or r6, r6, r11
	lui r11, 523264
	or r4, r4, r6
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r4, zero, .LBB0_1557
# %bb.1556:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r3)
.LBB0_1557:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	loads.w r4, 8(r16)
	loads.w r6, 8(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r14, r4, r24
	seteq r25, r4, zero
	seteq r19, r6, zero
	seteq r20, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r14, r19
	and r14, r25, r20
	or r6, r6, r14
	lui r14, 523264
	or r4, r4, r6
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r4, zero, .LBB0_1559
# %bb.1558:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r3)
.LBB0_1559:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	loads.w r4, 12(r16)
	loads.w r2, 12(r2)
	and r4, r4, r21
	and r2, r2, r21
	seteq r6, r4, r24
	seteq r16, r2, zero
	seteq r19, r2, r24
	seteq r20, r4, zero
	max.u r2, r4, r2
	setlt.u r2, r24, r2
	and r4, r6, r16
	and r6, r20, r19
	or r4, r4, r6
	lui r6, 1024
	or r2, r2, r4
	.loc	1 1747 19                       # parallel-rne.mlir:1747:19
	bneq r2, zero, .LBB0_1561
# %bb.1560:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r3)
.LBB0_1561:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 1748 19 is_stmt 1             # parallel-rne.mlir:1748:19
	and r2, r13, r21
	.loc	1 1750 19                       # parallel-rne.mlir:1750:19
	setlt.u r3, r24, r2
	.loc	1 1751 19                       # parallel-rne.mlir:1751:19
	bneq r3, zero, .LBB0_1563
# %bb.1562:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r13, 0
	j .LBB0_1564
.LBB0_1563:                             #   in Loop: Header=BB0_1553 Depth=3
	or r16, r13, r6
.LBB0_1564:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	and r19, r14, r21
	setlt.u r3, r24, r19
	.loc	1 1751 19                       # parallel-rne.mlir:1751:19
	bneq r3, zero, .LBB0_1566
# %bb.1565:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r14, 0
	j .LBB0_1567
.LBB0_1566:                             #   in Loop: Header=BB0_1553 Depth=3
	or r3, r14, r6
.LBB0_1567:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	and r20, r11, r21
	lui r12, 1024
	setlt.u r4, r24, r20
	.loc	1 1751 19                       # parallel-rne.mlir:1751:19
	bneq r4, zero, .LBB0_1569
# %bb.1568:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
	j .LBB0_1570
.LBB0_1569:                             #   in Loop: Header=BB0_1553 Depth=3
	or r4, r11, r6
.LBB0_1570:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	and r25, r18, r21
	setlt.u r6, r24, r25
	.loc	1 1751 19                       # parallel-rne.mlir:1751:19
	bneq r6, zero, .LBB0_1572
# %bb.1571:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r18, 0
	.loc	1 1757 19 is_stmt 1             # parallel-rne.mlir:1757:19
	setlt.u r25, r23, r25
	.loc	1 1758 20                       # parallel-rne.mlir:1758:20
	beq r25, zero, .LBB0_1573
	j .LBB0_1574
.LBB0_1572:                             #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r18, r12
	.loc	1 1757 19 is_stmt 1             # parallel-rne.mlir:1757:19
	setlt.u r25, r23, r25
	.loc	1 1758 20                       # parallel-rne.mlir:1758:20
	bneq r25, zero, .LBB0_1574
.LBB0_1573:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r18, 16
	lui r12, 1048560
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r22
	and r6, r6, r12
.LBB0_1574:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	setlt.u r18, r23, r20
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1758 20                       # parallel-rne.mlir:1758:20
	bneq r18, zero, .LBB0_1576
# %bb.1575:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	lui r11, 1048560
	add.s r4, r4, r22
	and r4, r4, r11
.LBB0_1576:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	setlt.u r11, r23, r19
	lui r25, 1024
	.loc	1 1758 20                       # parallel-rne.mlir:1758:20
	bneq r11, zero, .LBB0_1578
# %bb.1577:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r3, r14, 16
	lui r11, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r3, r3, r11
.LBB0_1578:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	setlt.u r2, r23, r2
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1758 20                       # parallel-rne.mlir:1758:20
	bneq r2, zero, .LBB0_1552
# %bb.1579:                             # %vector.body292
                                        #   in Loop: Header=BB0_1553 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r13, 16
	lui r11, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r22
	and r16, r2, r11
	j .LBB0_1552
.LBB0_1580:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1719 7                        # parallel-rne.mlir:1719:7
	mfence { sm }
	.loc	1 1765 7                        # parallel-rne.mlir:1765:7
	addli r2, zero, 6
	bneq r6, r2, .LBB0_1281
.LBB0_1581:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	.loc	1 1765 7                        # parallel-rne.mlir:1765:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1583
.LBB0_1582:                             # %middle.block283
                                        #   in Loop: Header=BB0_1583 Depth=2
	.loc	1 1772 9 is_stmt 1              # parallel-rne.mlir:1772:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1629
.LBB0_1583:                             # %.preheader128
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1602 Depth 3
                                        #       Child Loop BB0_1585 Depth 3
	.loc	1 1773 11                       # parallel-rne.mlir:1773:11
	loadli.w r2,  -488(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[9:10], zero
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_1585
	j .LBB0_1602
.LBB0_1584:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	load.d r[5:6], -448(r30)                # 8-byte Folded Reload
	.loc	1 1806 13                       # parallel-rne.mlir:1806:13
	add.s r2, r15, r2
	stores.w r4, 0(r2)
	.loc	1 1773 11                       # parallel-rne.mlir:1773:11
	setlt.ul r3, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r3, zero, .LBB0_1582
.LBB0_1585:                             # %scalar.ph275
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1583 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r6, 523264
	slli r2, r2, 2
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	add.s r3, r28, r2
	.loc	1 1776 19                       # parallel-rne.mlir:1776:19
	add.s r4, r19, r2
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	loads.w r3, 0(r3)
	.loc	1 1776 19                       # parallel-rne.mlir:1776:19
	loads.w r11, 0(r4)
	.loc	1 1779 19                       # parallel-rne.mlir:1779:19
	and r4, r3, r21
	lui r3, 523264
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	beq r4, r24, .LBB0_1587
# %bb.1586:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1587:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	add.s r5, r12, r2
	loads.w r5, 0(r5)
	and r5, r5, r21
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r5, zero, .LBB0_1597
# %bb.1588:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r4, zero, .LBB0_1598
.LBB0_1589:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	beq r5, r24, .LBB0_1591
.LBB0_1590:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
.LBB0_1591:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	setlt.u r6, r24, r4
	lui r4, 523264
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r6, zero, .LBB0_1593
# %bb.1592:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
.LBB0_1593:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	setlt.u r5, r24, r5
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r5, zero, .LBB0_1595
# %bb.1594:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r4, 0
.LBB0_1595:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 1794 19 is_stmt 1             # parallel-rne.mlir:1794:19
	and r5, r3, r21
	.loc	1 1796 19                       # parallel-rne.mlir:1796:19
	setlt.u r4, r24, r5
	.loc	1 1797 19                       # parallel-rne.mlir:1797:19
	bneq r4, zero, .LBB0_1599
# %bb.1596:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r3, 0
	.loc	1 1803 19 is_stmt 1             # parallel-rne.mlir:1803:19
	setlt.u r5, r23, r5
	.loc	1 1804 20                       # parallel-rne.mlir:1804:20
	bneq r5, zero, .LBB0_1584
	j .LBB0_1600
.LBB0_1597:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r11, 0
	lui r11, 523264
	.loc	1 1793 19 is_stmt 1             # parallel-rne.mlir:1793:19
	beq r4, zero, .LBB0_1589
.LBB0_1598:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r5, r24, .LBB0_1590
	j .LBB0_1591
.LBB0_1599:                             #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r3, r25
	.loc	1 1803 19 is_stmt 1             # parallel-rne.mlir:1803:19
	setlt.u r5, r23, r5
	.loc	1 1804 20                       # parallel-rne.mlir:1804:20
	bneq r5, zero, .LBB0_1584
.LBB0_1600:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1585 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r3, 16
	andi r4, r4, 1
	add.s r3, r3, r4
	lui r4, 1048560
	add.s r3, r3, r22
	and r4, r3, r4
	j .LBB0_1584
.LBB0_1601:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 1773 11 is_stmt 1             # parallel-rne.mlir:1773:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 1806 13                       # parallel-rne.mlir:1806:13
	add.s r5, r15, r5
	.loc	1 1773 11                       # parallel-rne.mlir:1773:11
	seteq.d r2, r[9:10], r[26:27]
	.loc	1 1806 13                       # parallel-rne.mlir:1806:13
	stores.w r16, 12(r5)
	stores.w r3, 8(r5)
	stores.w r4, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 1773 11                       # parallel-rne.mlir:1773:11
	bneq r2, zero, .LBB0_1582
.LBB0_1602:                             # %vector.body277
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1583 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r18, 523264
	slli r5, r2, 2
	add.s r16, r12, r5
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	add.s r2, r28, r5
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	loads.w r3, 0(r16)
	.loc	1 1775 19                       # parallel-rne.mlir:1775:19
	loads.w r4, 0(r2)
	.loc	1 1781 19                       # parallel-rne.mlir:1781:19
	and r3, r3, r21
	.loc	1 1779 19                       # parallel-rne.mlir:1779:19
	and r4, r4, r21
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	seteq r6, r3, r24
	.loc	1 1786 19                       # parallel-rne.mlir:1786:19
	seteq r14, r3, zero
	.loc	1 1783 19                       # parallel-rne.mlir:1783:19
	seteq r11, r4, zero
	.loc	1 1785 19                       # parallel-rne.mlir:1785:19
	seteq r13, r4, r24
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	max.u r3, r3, r4
	setlt.u r4, r24, r3
	.loc	1 1784 19                       # parallel-rne.mlir:1784:19
	and r3, r6, r11
	.loc	1 1787 19                       # parallel-rne.mlir:1787:19
	and r6, r14, r13
	lui r13, 523264
	.loc	1 1788 19                       # parallel-rne.mlir:1788:19
	or r6, r3, r6
	.loc	1 1776 19                       # parallel-rne.mlir:1776:19
	add.s r3, r19, r5
	.loc	1 1792 19                       # parallel-rne.mlir:1792:19
	or r4, r4, r6
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r4, zero, .LBB0_1604
# %bb.1603:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r3)
.LBB0_1604:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	loads.w r4, 4(r16)
	loads.w r6, 4(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r11, r4, r24
	seteq r20, r4, zero
	seteq r14, r6, zero
	seteq r19, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r11, r14
	and r11, r20, r19
	or r6, r6, r11
	lui r11, 523264
	or r4, r4, r6
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r4, zero, .LBB0_1606
# %bb.1605:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r3)
.LBB0_1606:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	loads.w r4, 8(r16)
	loads.w r6, 8(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r14, r4, r24
	seteq r25, r4, zero
	seteq r19, r6, zero
	seteq r20, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r14, r19
	and r14, r25, r20
	or r6, r6, r14
	lui r14, 523264
	or r4, r4, r6
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r4, zero, .LBB0_1608
# %bb.1607:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r3)
.LBB0_1608:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	loads.w r4, 12(r16)
	loads.w r2, 12(r2)
	and r4, r4, r21
	and r2, r2, r21
	seteq r6, r4, r24
	seteq r16, r2, zero
	seteq r19, r2, r24
	seteq r20, r4, zero
	max.u r2, r4, r2
	setlt.u r2, r24, r2
	and r4, r6, r16
	and r6, r20, r19
	or r4, r4, r6
	lui r6, 1024
	or r2, r2, r4
	.loc	1 1793 19                       # parallel-rne.mlir:1793:19
	bneq r2, zero, .LBB0_1610
# %bb.1609:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r3)
.LBB0_1610:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 1794 19 is_stmt 1             # parallel-rne.mlir:1794:19
	and r2, r13, r21
	.loc	1 1796 19                       # parallel-rne.mlir:1796:19
	setlt.u r3, r24, r2
	.loc	1 1797 19                       # parallel-rne.mlir:1797:19
	bneq r3, zero, .LBB0_1612
# %bb.1611:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r13, 0
	j .LBB0_1613
.LBB0_1612:                             #   in Loop: Header=BB0_1602 Depth=3
	or r16, r13, r6
.LBB0_1613:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	and r19, r14, r21
	setlt.u r3, r24, r19
	.loc	1 1797 19                       # parallel-rne.mlir:1797:19
	bneq r3, zero, .LBB0_1615
# %bb.1614:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r14, 0
	j .LBB0_1616
.LBB0_1615:                             #   in Loop: Header=BB0_1602 Depth=3
	or r3, r14, r6
.LBB0_1616:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	and r20, r11, r21
	lui r12, 1024
	setlt.u r4, r24, r20
	.loc	1 1797 19                       # parallel-rne.mlir:1797:19
	bneq r4, zero, .LBB0_1618
# %bb.1617:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
	j .LBB0_1619
.LBB0_1618:                             #   in Loop: Header=BB0_1602 Depth=3
	or r4, r11, r6
.LBB0_1619:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	and r25, r18, r21
	setlt.u r6, r24, r25
	.loc	1 1797 19                       # parallel-rne.mlir:1797:19
	bneq r6, zero, .LBB0_1621
# %bb.1620:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r18, 0
	.loc	1 1803 19 is_stmt 1             # parallel-rne.mlir:1803:19
	setlt.u r25, r23, r25
	.loc	1 1804 20                       # parallel-rne.mlir:1804:20
	beq r25, zero, .LBB0_1622
	j .LBB0_1623
.LBB0_1621:                             #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r18, r12
	.loc	1 1803 19 is_stmt 1             # parallel-rne.mlir:1803:19
	setlt.u r25, r23, r25
	.loc	1 1804 20                       # parallel-rne.mlir:1804:20
	bneq r25, zero, .LBB0_1623
.LBB0_1622:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r18, 16
	lui r12, 1048560
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r22
	and r6, r6, r12
.LBB0_1623:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	setlt.u r18, r23, r20
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1804 20                       # parallel-rne.mlir:1804:20
	bneq r18, zero, .LBB0_1625
# %bb.1624:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	lui r11, 1048560
	add.s r4, r4, r22
	and r4, r4, r11
.LBB0_1625:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	setlt.u r11, r23, r19
	lui r25, 1024
	.loc	1 1804 20                       # parallel-rne.mlir:1804:20
	bneq r11, zero, .LBB0_1627
# %bb.1626:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r3, r14, 16
	lui r11, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r3, r3, r11
.LBB0_1627:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	setlt.u r2, r23, r2
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1804 20                       # parallel-rne.mlir:1804:20
	bneq r2, zero, .LBB0_1601
# %bb.1628:                             # %vector.body277
                                        #   in Loop: Header=BB0_1602 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r13, 16
	lui r11, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r22
	and r16, r2, r11
	j .LBB0_1601
.LBB0_1629:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1765 7                        # parallel-rne.mlir:1765:7
	mfence { sm }
	.loc	1 1811 7                        # parallel-rne.mlir:1811:7
	bneq r6, r9, .LBB0_1679
.LBB0_1630:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -556(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -560(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	.loc	1 1811 7                        # parallel-rne.mlir:1811:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1632
.LBB0_1631:                             # %middle.block
                                        #   in Loop: Header=BB0_1632 Depth=2
	.loc	1 1818 9 is_stmt 1              # parallel-rne.mlir:1818:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[4:5], -472(r30)                # 8-byte Folded Reload
	addli r9, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_1678
.LBB0_1632:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1651 Depth 3
                                        #       Child Loop BB0_1634 Depth 3
	.loc	1 1819 11                       # parallel-rne.mlir:1819:11
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	sll.d r[7:8], r[3:4], r9
	zext_int2long r[9:10], zero
	store.d r[3:4], -472(r30)               # 8-byte Folded Spill
	bneq r2, zero, .LBB0_1634
	j .LBB0_1651
.LBB0_1633:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	load.d r[5:6], -448(r30)                # 8-byte Folded Reload
	.loc	1 1852 13                       # parallel-rne.mlir:1852:13
	add.s r2, r15, r2
	stores.w r4, 0(r2)
	.loc	1 1819 11                       # parallel-rne.mlir:1819:11
	setlt.ul r3, r[9:10], r[5:6]
	addli.d r[9:10], r[9:10], 1
	beq r3, zero, .LBB0_1631
.LBB0_1634:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r6, 523264
	slli r2, r2, 2
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	add.s r3, r28, r2
	.loc	1 1822 19                       # parallel-rne.mlir:1822:19
	add.s r4, r19, r2
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	loads.w r3, 0(r3)
	.loc	1 1822 19                       # parallel-rne.mlir:1822:19
	loads.w r11, 0(r4)
	.loc	1 1825 19                       # parallel-rne.mlir:1825:19
	and r4, r3, r21
	lui r3, 523264
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	beq r4, r24, .LBB0_1636
# %bb.1635:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r11, 0
.LBB0_1636:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	add.s r5, r12, r2
	loads.w r5, 0(r5)
	and r5, r5, r21
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r5, zero, .LBB0_1646
# %bb.1637:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r11, 523264
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r4, zero, .LBB0_1647
.LBB0_1638:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	beq r5, r24, .LBB0_1640
.LBB0_1639:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r6, 0
.LBB0_1640:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	setlt.u r6, r24, r4
	lui r4, 523264
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r6, zero, .LBB0_1642
# %bb.1641:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
.LBB0_1642:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	setlt.u r5, r24, r5
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r5, zero, .LBB0_1644
# %bb.1643:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r4, 0
.LBB0_1644:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 1840 19 is_stmt 1             # parallel-rne.mlir:1840:19
	and r5, r3, r21
	.loc	1 1842 19                       # parallel-rne.mlir:1842:19
	setlt.u r4, r24, r5
	.loc	1 1843 19                       # parallel-rne.mlir:1843:19
	bneq r4, zero, .LBB0_1648
# %bb.1645:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r4, r3, 0
	.loc	1 1849 19 is_stmt 1             # parallel-rne.mlir:1849:19
	setlt.u r5, r23, r5
	.loc	1 1850 20                       # parallel-rne.mlir:1850:20
	bneq r5, zero, .LBB0_1633
	j .LBB0_1649
.LBB0_1646:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r6, r11, 0
	lui r11, 523264
	.loc	1 1839 19 is_stmt 1             # parallel-rne.mlir:1839:19
	beq r4, zero, .LBB0_1638
.LBB0_1647:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r6, 0
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r5, r24, .LBB0_1639
	j .LBB0_1640
.LBB0_1648:                             #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r4, r3, r25
	.loc	1 1849 19 is_stmt 1             # parallel-rne.mlir:1849:19
	setlt.u r5, r23, r5
	.loc	1 1850 20                       # parallel-rne.mlir:1850:20
	bneq r5, zero, .LBB0_1633
.LBB0_1649:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1634 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r4, r3, 16
	andi r4, r4, 1
	add.s r3, r3, r4
	lui r4, 1048560
	add.s r3, r3, r22
	and r4, r3, r4
	j .LBB0_1633
.LBB0_1650:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 1819 11 is_stmt 1             # parallel-rne.mlir:1819:11
	addli.d r[9:10], r[9:10], 4
	.loc	1 1852 13                       # parallel-rne.mlir:1852:13
	add.s r5, r15, r5
	.loc	1 1819 11                       # parallel-rne.mlir:1819:11
	seteq.d r2, r[9:10], r[26:27]
	.loc	1 1852 13                       # parallel-rne.mlir:1852:13
	stores.w r16, 12(r5)
	stores.w r3, 8(r5)
	stores.w r4, 4(r5)
	stores.w r6, 0(r5)
	.loc	1 1819 11                       # parallel-rne.mlir:1819:11
	bneq r2, zero, .LBB0_1631
.LBB0_1651:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	add.ul r[2:3], r[9:10], r[7:8]
	lui r18, 523264
	slli r5, r2, 2
	add.s r16, r12, r5
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	add.s r2, r28, r5
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	loads.w r3, 0(r16)
	.loc	1 1821 19                       # parallel-rne.mlir:1821:19
	loads.w r4, 0(r2)
	.loc	1 1827 19                       # parallel-rne.mlir:1827:19
	and r3, r3, r21
	.loc	1 1825 19                       # parallel-rne.mlir:1825:19
	and r4, r4, r21
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	seteq r6, r3, r24
	.loc	1 1832 19                       # parallel-rne.mlir:1832:19
	seteq r14, r3, zero
	.loc	1 1829 19                       # parallel-rne.mlir:1829:19
	seteq r11, r4, zero
	.loc	1 1831 19                       # parallel-rne.mlir:1831:19
	seteq r13, r4, r24
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	max.u r3, r3, r4
	setlt.u r4, r24, r3
	.loc	1 1830 19                       # parallel-rne.mlir:1830:19
	and r3, r6, r11
	.loc	1 1833 19                       # parallel-rne.mlir:1833:19
	and r6, r14, r13
	lui r13, 523264
	.loc	1 1834 19                       # parallel-rne.mlir:1834:19
	or r6, r3, r6
	.loc	1 1822 19                       # parallel-rne.mlir:1822:19
	add.s r3, r19, r5
	.loc	1 1838 19                       # parallel-rne.mlir:1838:19
	or r4, r4, r6
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r4, zero, .LBB0_1653
# %bb.1652:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r18, 0(r3)
.LBB0_1653:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	loads.w r4, 4(r16)
	loads.w r6, 4(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r11, r4, r24
	seteq r20, r4, zero
	seteq r14, r6, zero
	seteq r19, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r11, r14
	and r11, r20, r19
	or r6, r6, r11
	lui r11, 523264
	or r4, r4, r6
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r4, zero, .LBB0_1655
# %bb.1654:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r3)
.LBB0_1655:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	loads.w r4, 8(r16)
	loads.w r6, 8(r2)
	and r4, r4, r21
	and r6, r6, r21
	seteq r14, r4, r24
	seteq r25, r4, zero
	seteq r19, r6, zero
	seteq r20, r6, r24
	max.u r4, r4, r6
	setlt.u r4, r24, r4
	and r6, r14, r19
	and r14, r25, r20
	or r6, r6, r14
	lui r14, 523264
	or r4, r4, r6
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r4, zero, .LBB0_1657
# %bb.1656:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r3)
.LBB0_1657:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	loads.w r4, 12(r16)
	loads.w r2, 12(r2)
	and r4, r4, r21
	and r2, r2, r21
	seteq r6, r4, r24
	seteq r16, r2, zero
	seteq r19, r2, r24
	seteq r20, r4, zero
	max.u r2, r4, r2
	setlt.u r2, r24, r2
	and r4, r6, r16
	and r6, r20, r19
	or r4, r4, r6
	lui r6, 1024
	or r2, r2, r4
	.loc	1 1839 19                       # parallel-rne.mlir:1839:19
	bneq r2, zero, .LBB0_1659
# %bb.1658:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 12(r3)
.LBB0_1659:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 1840 19 is_stmt 1             # parallel-rne.mlir:1840:19
	and r2, r13, r21
	.loc	1 1842 19                       # parallel-rne.mlir:1842:19
	setlt.u r3, r24, r2
	.loc	1 1843 19                       # parallel-rne.mlir:1843:19
	bneq r3, zero, .LBB0_1661
# %bb.1660:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r13, 0
	j .LBB0_1662
.LBB0_1661:                             #   in Loop: Header=BB0_1651 Depth=3
	or r16, r13, r6
.LBB0_1662:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	and r19, r14, r21
	setlt.u r3, r24, r19
	.loc	1 1843 19                       # parallel-rne.mlir:1843:19
	bneq r3, zero, .LBB0_1664
# %bb.1663:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r14, 0
	j .LBB0_1665
.LBB0_1664:                             #   in Loop: Header=BB0_1651 Depth=3
	or r3, r14, r6
.LBB0_1665:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	and r20, r11, r21
	lui r12, 1024
	setlt.u r4, r24, r20
	.loc	1 1843 19                       # parallel-rne.mlir:1843:19
	bneq r4, zero, .LBB0_1667
# %bb.1666:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r11, 0
	j .LBB0_1668
.LBB0_1667:                             #   in Loop: Header=BB0_1651 Depth=3
	or r4, r11, r6
.LBB0_1668:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	and r25, r18, r21
	setlt.u r6, r24, r25
	.loc	1 1843 19                       # parallel-rne.mlir:1843:19
	bneq r6, zero, .LBB0_1670
# %bb.1669:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r18, 0
	.loc	1 1849 19 is_stmt 1             # parallel-rne.mlir:1849:19
	setlt.u r25, r23, r25
	.loc	1 1850 20                       # parallel-rne.mlir:1850:20
	beq r25, zero, .LBB0_1671
	j .LBB0_1672
.LBB0_1670:                             #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r18, r12
	.loc	1 1849 19 is_stmt 1             # parallel-rne.mlir:1849:19
	setlt.u r25, r23, r25
	.loc	1 1850 20                       # parallel-rne.mlir:1850:20
	bneq r25, zero, .LBB0_1672
.LBB0_1671:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r6, r18, 16
	lui r12, 1048560
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r22
	and r6, r6, r12
.LBB0_1672:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	setlt.u r18, r23, r20
	loadli.w r12,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1850 20                       # parallel-rne.mlir:1850:20
	bneq r18, zero, .LBB0_1674
# %bb.1673:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	lui r11, 1048560
	add.s r4, r4, r22
	and r4, r4, r11
.LBB0_1674:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	setlt.u r11, r23, r19
	lui r25, 1024
	.loc	1 1850 20                       # parallel-rne.mlir:1850:20
	bneq r11, zero, .LBB0_1676
# %bb.1675:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r3, r14, 16
	lui r11, 1048560
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r22
	and r3, r3, r11
.LBB0_1676:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	setlt.u r2, r23, r2
	loadli.w r19,  -456(r30)                # 4-byte Folded Reload
	.loc	1 1850 20                       # parallel-rne.mlir:1850:20
	bneq r2, zero, .LBB0_1650
# %bb.1677:                             # %vector.body
                                        #   in Loop: Header=BB0_1651 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r13, 16
	lui r11, 1048560
	andi r2, r2, 1
	add.s r2, r13, r2
	add.s r2, r2, r22
	and r16, r2, r11
	j .LBB0_1650
.LBB0_1678:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 41 5 is_stmt 1                # parallel-rne.mlir:41:5
	core_id r6
	.loc	1 1811 7                        # parallel-rne.mlir:1811:7
	mfence { sm }
.LBB0_1679:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1857 7                        # parallel-rne.mlir:1857:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 3
	sync_core
	.loc	1 1858 7                        # parallel-rne.mlir:1858:7
	beq r6, r2, .LBB0_5
# %bb.1680:                             # %.critedge43
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[8:9], -568(r30)                # 8-byte Folded Reload
	.loc	1 1869 7 is_stmt 1              # parallel-rne.mlir:1869:7
	bneq r6, zero, .LBB0_6
# %bb.1681:                             #   in Loop: Header=BB0_7 Depth=1
	load.d r[5:6], -600(r30)                # 8-byte Folded Reload
	addli r4, zero, 18
	addli r10, zero, 20
	loadli.w r2,  -604(r30)                 # 4-byte Folded Reload
	sll.d r[4:5], r[5:6], r4
	load.d r[6:7], -536(r30)                # 8-byte Folded Reload
	xwait r10, 0
	load.d r[10:11], 24(r30)
	sext_int2long r[2:3], r2
	add.ul r[4:5], r[10:11], r[4:5]
	load.d r[10:11], -584(r30)              # 8-byte Folded Reload
	min.sl r[6:7], r[2:3], r[6:7]
	addli.d r[6:7], r[6:7], 128
	add.ul r[4:5], r[4:5], r[10:11]
	addli r11, zero, 5
	addli r10, zero, 1
	max.sl r[6:7], r[6:7], r[2:3]
	lock zero, r11
	dma_cfg r10, r10, zero, 0
	sub.sl r[2:3], r[6:7], r[2:3]
	ori r6, r15, 64
	addli r7, zero, 64
	dma_cfg zero, r10, zero, 1
	dma_cfg r5, zero, zero, 2
	.loc	1 1865 13                       # parallel-rne.mlir:1865:13
	min.sl r[2:3], r[2:3], r[26:27]
	.loc	1 1869 7                        # parallel-rne.mlir:1869:7
	dma_cfg r4, r6, r7, 3
	.loc	1 41 5                          # parallel-rne.mlir:41:5
	core_id r6
	load.d r[12:13], -592(r30)              # 8-byte Folded Reload
	.loc	1 1869 7                        # parallel-rne.mlir:1869:7
	addli r4, r12, 31
	slli r5, r12, 1
	addli r12, zero, 128
	srli r4, r4, 5
	dma_cfg r7, r12, r4, 4
	andi r4, r5, 62
	addli r5, zero, 512
	addli r7, zero, 2048
	dma_cfg r7, r5, r2, 5
	addli r2, zero, 21
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r2, 0
	j .LBB0_6
.LBB0_1682:                             # %._crit_edge
	.loc	1 1871 5                        # parallel-rne.mlir:1871:5
	xsignal zero, 0
	bneq r6, zero, .LBB0_1684
# %bb.1683:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1871 5                        # parallel-rne.mlir:1871:5
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
	.loc	1 1872 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1872:5
	addli sp, sp, 664
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
	.long	728                             # 0x2d8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-4is8b3nn" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
