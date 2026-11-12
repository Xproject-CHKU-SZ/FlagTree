	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-hzgkyah4" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -728
	addli r2, zero, 1
.Ltmp0:
	.loc	1 39 5 prologue_end             # parallel-rne.mlir:39:5
	core_id r13
	addli r30, sp, 664
	xsignal_mode_cfg r2
	beq r13, zero, .LBB0_2
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
	storeli.w zero, -128(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -292(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -312(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
	storeli.w zero, -412(r30)
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w zero, -424(r30)
	.loc	1 66 11                         # parallel-rne.mlir:66:11
	storeli.w zero, -436(r30)
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
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
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
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -308(r30)
	storeli.w r3, -304(r30)
	storeli.w r3, -300(r30)
	storeli.w r3, -296(r30)
	.loc	1 64 11                         # parallel-rne.mlir:64:11
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
	.loc	1 65 11                         # parallel-rne.mlir:65:11
	storeli.w r3, -420(r30)
	storeli.w r3, -416(r30)
	.loc	1 66 11                         # parallel-rne.mlir:66:11
	storeli.w r3, -432(r30)
	storeli.w r3, -428(r30)
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	mul.s r1, r2, r6
	.loc	1 48 10                         # parallel-rne.mlir:48:10
	fmac.s r2, r2, r6
	.loc	1 49 10                         # parallel-rne.mlir:49:10
	min.s r2, r2, r4
	.loc	1 67 5                          # parallel-rne.mlir:67:5
	ble.s r2, r1, .LBB0_1705
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 50 11 is_stmt 1               # parallel-rne.mlir:50:11
	sext_int2long r[10:11], r1
	lui r1, 31
	addli r14, zero, 7
	addli r12, zero, 2
	addli r7, zero, 4
	lui r6, 522240
	lui r25, 268288
	store.d r[2:3], -616(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r3, 56
	lui r1, 1047552
	store.d r[1:2], -624(r30)               # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 7
	ori r1, r1, 4095
	ori r22, r2, 4095
	lui r2, 160
	storeli.w r1, -532(r30)                 # 4-byte Folded Spill
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
	.loc	1 1856 7                        # parallel-rne.mlir:1856:7
	addli r2, zero, 20
	xsignal r2, 0
	.loc	1 1857 7                        # parallel-rne.mlir:1857:7
	addli r2, zero, 32
	xsignal r2, 0
	.loc	1 1858 7                        # parallel-rne.mlir:1858:7
	addli r2, zero, 44
	xsignal r2, 0
	.loc	1 1859 7                        # parallel-rne.mlir:1859:7
	addli r2, zero, 46
	xsignal r2, 0
	load.d r[10:11], -568(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 67 5                          # parallel-rne.mlir:67:5
	load.d r[2:3], -616(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	addli r12, zero, 2
	addli r7, zero, 4
	setlt.sl r2, r[10:11], r[2:3]
	beq r2, zero, .LBB0_1705
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_136 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_139 Depth 3
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_200 Depth 2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
                                        #     Child Loop BB0_232 Depth 2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
                                        #     Child Loop BB0_264 Depth 2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_267 Depth 3
                                        #     Child Loop BB0_301 Depth 2
                                        #     Child Loop BB0_314 Depth 2
                                        #       Child Loop BB0_316 Depth 3
                                        #     Child Loop BB0_338 Depth 2
                                        #       Child Loop BB0_340 Depth 3
                                        #     Child Loop BB0_362 Depth 2
                                        #       Child Loop BB0_364 Depth 3
                                        #     Child Loop BB0_386 Depth 2
                                        #       Child Loop BB0_388 Depth 3
                                        #     Child Loop BB0_410 Depth 2
                                        #       Child Loop BB0_412 Depth 3
                                        #     Child Loop BB0_434 Depth 2
                                        #       Child Loop BB0_436 Depth 3
                                        #     Child Loop BB0_458 Depth 2
                                        #       Child Loop BB0_460 Depth 3
                                        #     Child Loop BB0_482 Depth 2
                                        #       Child Loop BB0_484 Depth 3
                                        #     Child Loop BB0_520 Depth 2
                                        #       Child Loop BB0_537 Depth 3
                                        #       Child Loop BB0_523 Depth 3
                                        #     Child Loop BB0_548 Depth 2
                                        #       Child Loop BB0_565 Depth 3
                                        #       Child Loop BB0_551 Depth 3
                                        #     Child Loop BB0_576 Depth 2
                                        #       Child Loop BB0_593 Depth 3
                                        #       Child Loop BB0_579 Depth 3
                                        #     Child Loop BB0_604 Depth 2
                                        #       Child Loop BB0_621 Depth 3
                                        #       Child Loop BB0_607 Depth 3
                                        #     Child Loop BB0_632 Depth 2
                                        #       Child Loop BB0_649 Depth 3
                                        #       Child Loop BB0_635 Depth 3
                                        #     Child Loop BB0_660 Depth 2
                                        #       Child Loop BB0_677 Depth 3
                                        #       Child Loop BB0_663 Depth 3
                                        #     Child Loop BB0_688 Depth 2
                                        #       Child Loop BB0_705 Depth 3
                                        #       Child Loop BB0_691 Depth 3
                                        #     Child Loop BB0_716 Depth 2
                                        #       Child Loop BB0_733 Depth 3
                                        #       Child Loop BB0_719 Depth 3
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
                                        #     Child Loop BB0_792 Depth 2
                                        #       Child Loop BB0_794 Depth 3
                                        #       Child Loop BB0_793 Depth 3
                                        #     Child Loop BB0_798 Depth 2
                                        #       Child Loop BB0_800 Depth 3
                                        #       Child Loop BB0_799 Depth 3
                                        #     Child Loop BB0_814 Depth 2
                                        #       Child Loop BB0_816 Depth 3
                                        #     Child Loop BB0_835 Depth 2
                                        #       Child Loop BB0_837 Depth 3
                                        #     Child Loop BB0_856 Depth 2
                                        #       Child Loop BB0_858 Depth 3
                                        #     Child Loop BB0_877 Depth 2
                                        #       Child Loop BB0_879 Depth 3
                                        #     Child Loop BB0_898 Depth 2
                                        #       Child Loop BB0_900 Depth 3
                                        #     Child Loop BB0_919 Depth 2
                                        #       Child Loop BB0_921 Depth 3
                                        #     Child Loop BB0_940 Depth 2
                                        #       Child Loop BB0_942 Depth 3
                                        #     Child Loop BB0_961 Depth 2
                                        #       Child Loop BB0_963 Depth 3
                                        #     Child Loop BB0_995 Depth 2
                                        #       Child Loop BB0_1005 Depth 3
                                        #       Child Loop BB0_998 Depth 3
                                        #     Child Loop BB0_1031 Depth 2
                                        #       Child Loop BB0_1041 Depth 3
                                        #       Child Loop BB0_1034 Depth 3
                                        #     Child Loop BB0_1067 Depth 2
                                        #       Child Loop BB0_1077 Depth 3
                                        #       Child Loop BB0_1070 Depth 3
                                        #     Child Loop BB0_1103 Depth 2
                                        #       Child Loop BB0_1113 Depth 3
                                        #       Child Loop BB0_1106 Depth 3
                                        #     Child Loop BB0_1139 Depth 2
                                        #       Child Loop BB0_1149 Depth 3
                                        #       Child Loop BB0_1142 Depth 3
                                        #     Child Loop BB0_1175 Depth 2
                                        #       Child Loop BB0_1185 Depth 3
                                        #       Child Loop BB0_1178 Depth 3
                                        #     Child Loop BB0_1211 Depth 2
                                        #       Child Loop BB0_1221 Depth 3
                                        #       Child Loop BB0_1214 Depth 3
                                        #     Child Loop BB0_1247 Depth 2
                                        #       Child Loop BB0_1257 Depth 3
                                        #       Child Loop BB0_1250 Depth 3
                                        #     Child Loop BB0_1296 Depth 2
                                        #       Child Loop BB0_1317 Depth 3
                                        #       Child Loop BB0_1299 Depth 3
                                        #     Child Loop BB0_1347 Depth 2
                                        #       Child Loop BB0_1368 Depth 3
                                        #       Child Loop BB0_1350 Depth 3
                                        #     Child Loop BB0_1398 Depth 2
                                        #       Child Loop BB0_1419 Depth 3
                                        #       Child Loop BB0_1401 Depth 3
                                        #     Child Loop BB0_1449 Depth 2
                                        #       Child Loop BB0_1470 Depth 3
                                        #       Child Loop BB0_1452 Depth 3
                                        #     Child Loop BB0_1500 Depth 2
                                        #       Child Loop BB0_1521 Depth 3
                                        #       Child Loop BB0_1503 Depth 3
                                        #     Child Loop BB0_1551 Depth 2
                                        #       Child Loop BB0_1572 Depth 3
                                        #       Child Loop BB0_1554 Depth 3
                                        #     Child Loop BB0_1602 Depth 2
                                        #       Child Loop BB0_1623 Depth 3
                                        #       Child Loop BB0_1605 Depth 3
                                        #     Child Loop BB0_1653 Depth 2
                                        #       Child Loop BB0_1674 Depth 3
                                        #       Child Loop BB0_1656 Depth 3
	.loc	1 91 13                         # parallel-rne.mlir:91:13
	loadli.w r3,  -436(r30)
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	loadli.w r4,  -424(r30)
	addli r9, zero, 4
	.loc	1 91 13                         # parallel-rne.mlir:91:13
	addli r2, r3, 1
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	addli r5, r4, 1
	.loc	1 91 13                         # parallel-rne.mlir:91:13
	storeli.w r2, -436(r30)
	.loc	1 93 13                         # parallel-rne.mlir:93:13
	storeli.w r5, -424(r30)
	.loc	1 94 7                          # parallel-rne.mlir:94:7
	bneq r13, r7, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r5,  48(r30)
	loadli.w r7,  44(r30)
	mod.s r8, r3, r12
	mod.s r4, r4, r12
	store.d r[10:11], -568(r30)             # 8-byte Folded Spill
	.loc	1 112 15 is_stmt 1              # parallel-rne.mlir:112:15
	loadli.w r3,  -412(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r26,  -312(r30)
	addli r2, zero, 0
	addli r17, zero, 0
	div.s r5, r10, r5
	addli r10, zero, 16
	addli r11, zero, 8
	slli r16, r8, 16
	slli r4, r4, 16
	lui r8, 32
	div.s r5, r5, r7
	addli r7, zero, 128
	div.s r7, r5, r7
	slli r12, r7, 3
	slli r7, r7, 7
	sub.s r10, r10, r12
	sub.s r7, r5, r7
	min.s r10, r10, r11
	mod.s r5, r5, r10
	div.s r7, r7, r10
	add.s r10, r4, r8
	add.s r4, r12, r5
	slli r5, r7, 7
	zext_int2long r[7:8], r7
	storeli.w r5, -544(r30)                 # 4-byte Folded Spill
	slli r5, r4, 7
	zext_int2long r[11:12], r4
	storeli.w r5, -604(r30)                 # 4-byte Folded Spill
	sll.d r[4:5], r[7:8], r14
	addli r7, zero, 18
	store.d r[11:12], -600(r30)             # 8-byte Folded Spill
	sll.d r[11:12], r[11:12], r7
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	addli r7, zero, 1
	sll.d r[7:8], r[4:5], r7
	load.d r[4:5], -624(r30)                # 8-byte Folded Reload
	store.d r[11:12], -448(r30)             # 8-byte Folded Spill
	store.d r[7:8], -584(r30)               # 8-byte Folded Spill
	and.d r[4:5], r[11:12], r[4:5]
	store.d r[4:5], -456(r30)               # 8-byte Folded Spill
	load.d r[4:5], 8(r30)
	add.ul r[4:5], r[4:5], r[7:8]
	store.d r[4:5], -464(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 64
	addli r15, zero, 4
	addli r12, zero, 64
	addli r5, zero, 2
	addli r20, zero, 256
	addli r9, zero, 5
	ori r4, r4, 64
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	lock zero, r15
	dma_cfg r7, r7, zero, 0
	add.s r4, r24, r4
	dma_cfg zero, r28, zero, 2
	addli r24, zero, 128
	dma_cfg r4, r27, r12, 3
	addli r4, zero, 4096
	dma_cfg r24, r12, r5, 4
	dma_cfg r20, r4, r11, 5
	addli r4, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r14, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r12, 3
	dma_cfg r24, zero, r5, 4
	dma_cfg r20, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r5, 0
.LBB0_11:                               # %.thread107
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 129 15                        # parallel-rne.mlir:129:15
	loadli.w r4,  -292(r30)
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	loadli.w r5,  -128(r30)
	.loc	1 129 15                        # parallel-rne.mlir:129:15
	addli r4, r4, 1
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	addli r5, r5, 1
	.loc	1 129 15                        # parallel-rne.mlir:129:15
	storeli.w r4, -292(r30)
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	storeli.w r5, -128(r30)
.LBB0_12:                               # %.thread110
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	lui r7, 524288
	.loc	1 95 7 is_stmt 1                # parallel-rne.mlir:95:7
	addli r17, r17, 1
	addli r4, zero, 32
	beq r17, r4, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 4
	.loc	1 139 15 is_stmt 1              # parallel-rne.mlir:139:15
	addli r2, r2, 1
	addli r26, r18, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_30 Depth 3
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	zext_int2long r[27:28], r17
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r4, zero, 6
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	load.d r[7:8], -448(r30)                # 8-byte Folded Reload
	load.d r[12:13], -456(r30)              # 8-byte Folded Reload
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	sll.d r[4:5], r[27:28], r4
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	add.ul r[14:15], r[4:5], r[7:8]
	loadli.w r4,  -532(r30)                 # 4-byte Folded Reload
	zext_int2long r[4:5], r4
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	setlt.ul r4, r[4:5], r[14:15]
	.loc	1 104 15                        # parallel-rne.mlir:104:15
	bneq r4, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[12:13], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15 is_stmt 1              # parallel-rne.mlir:112:15
	addli r4, zero, 24
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r5, r26, r9
	addli r7, zero, 1920
	addli r18, r26, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r4, r3, r4
	zext_int2long r[7:8], r7
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r18, -312(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	store.d r[7:8], -528(r30)               # 8-byte Folded Spill
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r8
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r3, -412(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r24, r5, 15
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r20, r4, 15
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	lui r4, 64
	add.s r19, r24, r4
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, zero, 2
	beq r8, r4, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r7, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	bneq r8, r7, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 2048
	sub.sl r[4:5], r[14:15], r[12:13]
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	sll.d r[13:14], r[14:15], r7
	zext_int2long r[11:12], r11
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[4:5], r[4:5], r[11:12]
	load.d r[11:12], -528(r30)              # 8-byte Folded Reload
	min.sl r[11:12], r[4:5], r[11:12]
	sub.sl r[4:5], r[11:12], r[4:5]
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	load.d r[11:12], 0(r30)
	add.ul r[27:28], r[11:12], r[13:14]
	addli r13, zero, 3
	addli r11, r4, 128
	addli r14, zero, 7
	xwait r13, 0
	blt.s r13, r26, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r12, zero, 5
	addli r5, zero, 2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r4, zero, 6
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 128
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r14, 10
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
	addli r4, zero, 64
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r4, 3
	addli r4, zero, 256
	dma_cfg r9, zero, r5, 4
	dma_cfg r4, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 2
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	addli r5, zero, 5
	addli r15, zero, 4
	addli r14, zero, 7
	xwait r4, 0
	xwait r5, 0
	lock zero, zero
	addli r5, zero, 128
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r4, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r5, zero, 13
	shuffle_batch r20, r19, r4, 1
	addli r4, zero, 3
	unlock zero
	xsignal r4, 0
	xsignal r15, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 129 15                        # parallel-rne.mlir:129:15
	loadli.w r5,  -292(r30)
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	loadli.w r4,  -128(r30)
	.loc	1 129 15                        # parallel-rne.mlir:129:15
	addli r7, zero, 40
	addli r15, zero, 4
	addli r14, zero, 7
	mod.s r7, r5, r7
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	mod.s r11, r4, r15
	.loc	1 129 15                        # parallel-rne.mlir:129:15
	addli r5, r5, 1
	storeli.w r5, -292(r30)
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	addli r5, r4, 1
	storeli.w r5, -128(r30)
	.loc	1 129 15                        # parallel-rne.mlir:129:15
	slli r19, r7, 15
	.loc	1 131 15                        # parallel-rne.mlir:131:15
	slli r24, r11, 15
	lui r7, 96
	add.s r11, r24, r7
	.loc	1 135 9                         # parallel-rne.mlir:135:9
	beq r8, r14, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r5, zero, 6
	addli r26, zero, 64
	bneq r8, r5, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r5, zero, 18
	.loc	1 135 9                         # parallel-rne.mlir:135:9
	load.d r[19:20], -464(r30)              # 8-byte Folded Reload
	addli r7, zero, 1
	xwait r14, 0
	sll.d r[12:13], r[27:28], r5
	addli r27, zero, 128
	add.ul r[19:20], r[19:20], r[12:13]
	addli r13, zero, 3
	blt.s r13, r4, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	.loc	1 135 9                         # parallel-rne.mlir:135:9
	addli r4, zero, 2
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r14, 10
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
	addli r4, zero, 19
	dma_cfg zero, zero, r5, 10
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
	addli r4, zero, 512
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r26, 3
	dma_cfg r27, zero, r15, 4
	dma_cfg r4, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 96
	.loc	1 135 9                         # parallel-rne.mlir:135:9
	lock zero, r15
	addli r12, zero, 5
	addli r9, zero, 6
	dma_cfg r7, r7, zero, 0
	ori r4, r4, 64
	dma_cfg zero, r20, zero, 2
	add.s r4, r24, r4
	dma_cfg r4, r19, r26, 3
	addli r19, zero, 512
	addli r4, zero, 4096
	dma_cfg r27, r26, r15, 4
	dma_cfg r19, r4, r26, 5
	addli r4, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r15
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
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
	addli r4, zero, 19
	dma_cfg zero, zero, r5, 10
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
	dma_cfg r7, r7, zero, 0
	dma_cfg r7, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r11, zero, r26, 3
	dma_cfg r27, zero, r15, 4
	dma_cfg r19, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r9, 0
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 136 9 is_stmt 1               # parallel-rne.mlir:136:9
	addli r4, zero, 6
	addli r5, zero, 128
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	addli r4, zero, 2
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 64
	ds_cfg r5, zero, 1
	ds_cfg r4, zero, 14
	ds_cfg r5, zero, 13
	shuffle_coa r19, r11, r4, 2
	addli r4, zero, 8
	unlock zero
	xsignal r14, 0
	xsignal r4, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	lui r7, 524288
	.loc	1 138 9 is_stmt 1               # parallel-rne.mlir:138:9
	bneq r8, r15, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 8
	xwait r15, 0
	addli r8, zero, 128
	addli r7, zero, 1
	addli r5, zero, 0
	xwait r4, 0
	addli r4, zero, 1
	beq r2, zero, .LBB0_30
.LBB0_29:                               # %.preheader184
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r5, 14
	slli r5, r5, 8
	lock zero, r4
	mm_cfg r26, r26, r8, 0
	or r11, r11, r19
	or r5, r5, r10
	mm_cfg r15, r15, r4, 2
	mm_acc r5, r20, r11, 8
	andi r11, r7, 1
	addli r5, zero, 1
	addli r7, zero, 0
	unlock r4
	bneq r11, zero, .LBB0_29
	j .LBB0_31
.LBB0_30:                               # %.preheader183
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r5, 14
	slli r5, r5, 8
	lock zero, r4
	mm_cfg r26, r26, r8, 0
	or r11, r11, r19
	or r5, r5, r10
	mm_cfg r15, r15, r4, 2
	mm r5, r20, r11, 8
	andi r11, r7, 1
	addli r5, zero, 1
	addli r7, zero, 0
	unlock r4
	bneq r11, zero, .LBB0_30
.LBB0_31:                               # %.thread110.thread256
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r4, zero, 5
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	addli r17, r17, 1
	lui r7, 524288
	.loc	1 138 9                         # parallel-rne.mlir:138:9
	xsignal r4, 0
	addli r4, zero, 9
	xsignal r4, 0
	.loc	1 95 7                          # parallel-rne.mlir:95:7
	addli r4, zero, 32
	bneq r17, r4, .LBB0_13
	j .LBB0_34
.LBB0_32:                               # %.thread110.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r17, r17, 1
	addli r4, zero, 32
	bneq r17, r4, .LBB0_13
	j .LBB0_35
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 142 7                         # parallel-rne.mlir:142:7
	bneq r8, r15, .LBB0_35
.LBB0_34:                               # %.thread258
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_35:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	loadli.w r2,  -108(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r3,  -96(r30)
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	storeli.w r2, -464(r30)                 # 4-byte Folded Spill
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	addli r2, r2, 1
	storeli.w r3, -572(r30)                 # 4-byte Folded Spill
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	addli r3, r3, 1
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	storeli.w r2, -108(r30)
	addli r2, zero, 3
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	storeli.w r3, -96(r30)
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	bneq r13, r2, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, zero, 21
	xwait r2, 0
.LBB0_37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 128
	.loc	1 164 7 is_stmt 1               # parallel-rne.mlir:164:7
	xfence
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	mfence { lm, sm, gm }
	zext_int2long r[26:27], r2
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, zero, 255
	csr_set csr5, r2
	addli r2, zero, 15
	zext_int2long r[2:3], r2
	store.d r[2:3], -520(r30)               # 8-byte Folded Spill
	addli r2, zero, 127
	zext_int2long r[2:3], r2
	store.d r[2:3], -448(r30)               # 8-byte Folded Spill
	sync_core
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	bneq r13, zero, .LBB0_69
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_40
.LBB0_39:                               # %middle.block909
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 174 9                         # parallel-rne.mlir:174:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_68
.LBB0_40:                               # %.preheader182
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_49 Depth 3
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	bneq r16, r10, .LBB0_47
# %bb.41:                               # %scalar.ph903.preheader
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_43
.LBB0_42:                               # %scalar.ph903
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[11:12], r[2:3]
	.loc	1 190 13 is_stmt 1              # parallel-rne.mlir:190:13
	add.s r3, r16, r4
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r7, 0(r3)
	lui r7, 524288
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r2, zero, .LBB0_39
.LBB0_43:                               # %scalar.ph903
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r3, r2, r21
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r5, r6, r3
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r5, zero, .LBB0_45
# %bb.44:                               # %scalar.ph903
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r2, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r23, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_42
	j .LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r7, r2, r5
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r23, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph903
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r7, r2, r3
	j .LBB0_42
.LBB0_47:                               # %vector.body905.preheader
                                        #   in Loop: Header=BB0_40 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_49
.LBB0_48:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r5, r16, r11
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	seteq.d r3, r[13:14], r[26:27]
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r15, 12(r5)
	stores.w r4, 8(r5)
	stores.w r28, 4(r5)
	stores.w r2, 0(r5)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	bneq r3, zero, .LBB0_39
.LBB0_49:                               # %vector.body905
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r20, r19, r21
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r2, r6, r20
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_51
# %bb.50:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_52
.LBB0_51:                               #   in Loop: Header=BB0_49 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_52:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r24, 8(r12)
	and r7, r24, r21
	setlt.u r2, r6, r7
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_54
# %bb.53:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r24, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_49 Depth=3
	lui r2, 1024
	or r4, r24, r2
.LBB0_55:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_57
# %bb.56:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_49 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_58:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_60
# %bb.59:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r23, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r3, zero, .LBB0_61
	j .LBB0_62
.LBB0_60:                               #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r23, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_62
.LBB0_61:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_62:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	setlt.u r3, r23, r18
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r3, zero, .LBB0_67
# %bb.63:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_65
.LBB0_64:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r24, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r24, r3
	add.s r3, r3, r22
	and r4, r3, r4
.LBB0_65:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	setlt.u r3, r23, r20
	lui r7, 524288
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_48
# %bb.66:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r5
	j .LBB0_48
.LBB0_67:                               # %vector.body905
                                        #   in Loop: Header=BB0_49 Depth=3
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r3, zero, .LBB0_64
	j .LBB0_65
.LBB0_68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 167 7                         # parallel-rne.mlir:167:7
	mfence { sm }
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[2:3], r2
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	store.d r[2:3], -512(r30)               # 8-byte Folded Spill
	addli r2, zero, 1
	bneq r13, r2, .LBB0_101
# %bb.70:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 195 7                         # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_72
.LBB0_71:                               # %middle.block900
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 202 9 is_stmt 1               # parallel-rne.mlir:202:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_100
.LBB0_72:                               # %.preheader181
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_81 Depth 3
                                        #       Child Loop BB0_75 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	bneq r16, r10, .LBB0_79
# %bb.73:                               # %scalar.ph894.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_75
.LBB0_74:                               # %scalar.ph894
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	.loc	1 218 13 is_stmt 1              # parallel-rne.mlir:218:13
	add.s r3, r16, r4
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r9, 0(r3)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	beq r2, zero, .LBB0_71
.LBB0_75:                               # %scalar.ph894
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[2:3], r[7:8], r[13:14]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r3, r2, r21
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r5, r6, r3
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r5, zero, .LBB0_77
# %bb.76:                               # %scalar.ph894
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r23, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_74
	j .LBB0_78
.LBB0_77:                               #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r9, r2, r5
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r23, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_74
.LBB0_78:                               # %scalar.ph894
                                        #   in Loop: Header=BB0_75 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_74
.LBB0_79:                               # %vector.body896.preheader
                                        #   in Loop: Header=BB0_72 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_81
.LBB0_80:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 203 11 is_stmt 1              # parallel-rne.mlir:203:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	add.s r4, r16, r11
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	seteq.d r3, r[8:9], r[26:27]
	.loc	1 218 13                        # parallel-rne.mlir:218:13
	stores.w r15, 12(r4)
	stores.w r24, 8(r4)
	stores.w r28, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 203 11                        # parallel-rne.mlir:203:11
	bneq r3, zero, .LBB0_71
.LBB0_81:                               # %vector.body896
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	add.ul r[2:3], r[8:9], r[13:14]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	and r20, r19, r21
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	setlt.u r2, r6, r20
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_83
# %bb.82:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_84
.LBB0_83:                               #   in Loop: Header=BB0_81 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_84:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r4, 8(r12)
	and r7, r4, r21
	setlt.u r2, r6, r7
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_86
# %bb.85:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_81 Depth=3
	lui r2, 1024
	or r24, r4, r2
.LBB0_87:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_89
# %bb.88:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_81 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_90:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	bneq r2, zero, .LBB0_92
# %bb.91:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r23, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r3, zero, .LBB0_93
	j .LBB0_94
.LBB0_92:                               #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 215 19 is_stmt 1              # parallel-rne.mlir:215:19
	setlt.u r3, r23, r3
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_94
.LBB0_93:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_94:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	setlt.u r3, r23, r18
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r3, zero, .LBB0_97
# %bb.95:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	beq r3, zero, .LBB0_98
.LBB0_96:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r20
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_80
	j .LBB0_99
.LBB0_97:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_96
.LBB0_98:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r22
	and r24, r3, r4
	setlt.u r3, r23, r20
	.loc	1 216 19                        # parallel-rne.mlir:216:19
	bneq r3, zero, .LBB0_80
.LBB0_99:                               # %vector.body896
                                        #   in Loop: Header=BB0_81 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r4
	j .LBB0_80
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 195 7                         # parallel-rne.mlir:195:7
	mfence { sm }
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[2:3], r2
	.loc	1 223 7 is_stmt 1               # parallel-rne.mlir:223:7
	store.d r[2:3], -504(r30)               # 8-byte Folded Spill
	addli r2, zero, 2
	bneq r13, r2, .LBB0_133
# %bb.102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block891
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 230 9 is_stmt 1               # parallel-rne.mlir:230:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_132
.LBB0_104:                              # %.preheader180
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	bneq r16, r10, .LBB0_111
# %bb.105:                              # %scalar.ph885.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph885
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	.loc	1 246 13 is_stmt 1              # parallel-rne.mlir:246:13
	add.s r3, r16, r4
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r9, 0(r3)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	beq r2, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph885
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[2:3], r[7:8], r[13:14]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r3, r2, r21
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r5, r6, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r5, zero, .LBB0_109
# %bb.108:                              # %scalar.ph885
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r3, r23, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r9, r2, r5
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r3, r23, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph885
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_106
.LBB0_111:                              # %vector.body887.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 231 11 is_stmt 1              # parallel-rne.mlir:231:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	add.s r4, r16, r11
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	seteq.d r3, r[8:9], r[26:27]
	.loc	1 246 13                        # parallel-rne.mlir:246:13
	stores.w r15, 12(r4)
	stores.w r24, 8(r4)
	stores.w r28, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 231 11                        # parallel-rne.mlir:231:11
	bneq r3, zero, .LBB0_103
.LBB0_113:                              # %vector.body887
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	add.ul r[2:3], r[8:9], r[13:14]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r20, r19, r21
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	setlt.u r2, r6, r20
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r2, zero, .LBB0_115
# %bb.114:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_116:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r4, 8(r12)
	and r7, r4, r21
	setlt.u r2, r6, r7
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r2, zero, .LBB0_118
# %bb.117:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	lui r2, 1024
	or r24, r4, r2
.LBB0_119:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_122:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	bneq r2, zero, .LBB0_124
# %bb.123:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r3, r23, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r3, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 243 19 is_stmt 1              # parallel-rne.mlir:243:19
	setlt.u r3, r23, r3
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_126
.LBB0_125:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_126:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r3, r23, r18
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r3, zero, .LBB0_129
# %bb.127:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	beq r3, zero, .LBB0_130
.LBB0_128:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r20
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_128
.LBB0_130:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r22
	and r24, r3, r4
	setlt.u r3, r23, r20
	.loc	1 244 19                        # parallel-rne.mlir:244:19
	bneq r3, zero, .LBB0_112
.LBB0_131:                              # %vector.body887
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r4
	j .LBB0_112
.LBB0_132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 223 7                         # parallel-rne.mlir:223:7
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[2:3], r2
	.loc	1 251 7 is_stmt 1               # parallel-rne.mlir:251:7
	store.d r[2:3], -496(r30)               # 8-byte Folded Spill
	addli r2, zero, 3
	bneq r13, r2, .LBB0_165
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_136
.LBB0_135:                              # %middle.block882
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 258 9 is_stmt 1               # parallel-rne.mlir:258:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_164
.LBB0_136:                              # %.preheader179
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_139 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 259 11 is_stmt 1              # parallel-rne.mlir:259:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	bneq r16, r10, .LBB0_143
# %bb.137:                              # %scalar.ph876.preheader
                                        #   in Loop: Header=BB0_136 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_139
.LBB0_138:                              # %scalar.ph876
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	.loc	1 274 13 is_stmt 1              # parallel-rne.mlir:274:13
	add.s r3, r16, r4
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 274 13                        # parallel-rne.mlir:274:13
	stores.w r9, 0(r3)
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	beq r2, zero, .LBB0_135
.LBB0_139:                              # %scalar.ph876
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.ul r[2:3], r[7:8], r[13:14]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r3, r2, r21
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	setlt.u r5, r6, r3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r5, zero, .LBB0_141
# %bb.140:                              # %scalar.ph876
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r3, r23, r3
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r3, zero, .LBB0_138
	j .LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r9, r2, r5
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r3, r23, r3
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r3, zero, .LBB0_138
.LBB0_142:                              # %scalar.ph876
                                        #   in Loop: Header=BB0_139 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_138
.LBB0_143:                              # %vector.body878.preheader
                                        #   in Loop: Header=BB0_136 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_145
.LBB0_144:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 259 11 is_stmt 1              # parallel-rne.mlir:259:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 274 13                        # parallel-rne.mlir:274:13
	add.s r4, r16, r11
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	seteq.d r3, r[8:9], r[26:27]
	.loc	1 274 13                        # parallel-rne.mlir:274:13
	stores.w r15, 12(r4)
	stores.w r24, 8(r4)
	stores.w r28, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	bneq r3, zero, .LBB0_135
.LBB0_145:                              # %vector.body878
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_136 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.ul r[2:3], r[8:9], r[13:14]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	and r20, r19, r21
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	setlt.u r2, r6, r20
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r2, zero, .LBB0_147
# %bb.146:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_148:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r4, 8(r12)
	and r7, r4, r21
	setlt.u r2, r6, r7
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r2, zero, .LBB0_150
# %bb.149:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=3
	lui r2, 1024
	or r24, r4, r2
.LBB0_151:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r2, zero, .LBB0_153
# %bb.152:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_145 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_154:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	bneq r2, zero, .LBB0_156
# %bb.155:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r3, r23, r3
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r3, zero, .LBB0_157
	j .LBB0_158
.LBB0_156:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 271 19 is_stmt 1              # parallel-rne.mlir:271:19
	setlt.u r3, r23, r3
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r3, zero, .LBB0_158
.LBB0_157:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_158:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r3, r23, r18
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r3, zero, .LBB0_161
# %bb.159:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	beq r3, zero, .LBB0_162
.LBB0_160:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r20
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r3, zero, .LBB0_144
	j .LBB0_163
.LBB0_161:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r3, zero, .LBB0_160
.LBB0_162:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r22
	and r24, r3, r4
	setlt.u r3, r23, r20
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	bneq r3, zero, .LBB0_144
.LBB0_163:                              # %vector.body878
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r4
	j .LBB0_144
.LBB0_164:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 251 7                         # parallel-rne.mlir:251:7
	mfence { sm }
.LBB0_165:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	zext_int2long r[2:3], r2
	.loc	1 279 7 is_stmt 1               # parallel-rne.mlir:279:7
	store.d r[2:3], -488(r30)               # 8-byte Folded Spill
	addli r2, zero, 4
	bneq r13, r2, .LBB0_197
# %bb.166:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 279 7                         # parallel-rne.mlir:279:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_168
.LBB0_167:                              # %middle.block873
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 286 9 is_stmt 1               # parallel-rne.mlir:286:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_196
.LBB0_168:                              # %.preheader178
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 287 11 is_stmt 1              # parallel-rne.mlir:287:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	bneq r16, r10, .LBB0_175
# %bb.169:                              # %scalar.ph867.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_171
.LBB0_170:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	.loc	1 302 13 is_stmt 1              # parallel-rne.mlir:302:13
	add.s r3, r16, r4
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 302 13                        # parallel-rne.mlir:302:13
	stores.w r9, 0(r3)
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	beq r2, zero, .LBB0_167
.LBB0_171:                              # %scalar.ph867
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	add.ul r[2:3], r[7:8], r[13:14]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r3, r2, r21
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	setlt.u r5, r6, r3
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r5, zero, .LBB0_173
# %bb.172:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r3, r23, r3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r3, zero, .LBB0_170
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r9, r2, r5
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r3, r23, r3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r3, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph867
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_170
.LBB0_175:                              # %vector.body869.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 287 11 is_stmt 1              # parallel-rne.mlir:287:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 302 13                        # parallel-rne.mlir:302:13
	add.s r4, r16, r11
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	seteq.d r3, r[8:9], r[26:27]
	.loc	1 302 13                        # parallel-rne.mlir:302:13
	stores.w r15, 12(r4)
	stores.w r24, 8(r4)
	stores.w r28, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 287 11                        # parallel-rne.mlir:287:11
	bneq r3, zero, .LBB0_167
.LBB0_177:                              # %vector.body869
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	add.ul r[2:3], r[8:9], r[13:14]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	and r20, r19, r21
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	setlt.u r2, r6, r20
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_180:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r4, 8(r12)
	and r7, r4, r21
	setlt.u r2, r6, r7
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r2, zero, .LBB0_182
# %bb.181:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r24, r4, r2
.LBB0_183:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r2, zero, .LBB0_185
# %bb.184:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_186:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 293 19                        # parallel-rne.mlir:293:19
	bneq r2, zero, .LBB0_188
# %bb.187:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r3, r23, r3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r3, zero, .LBB0_189
	j .LBB0_190
.LBB0_188:                              #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 299 19 is_stmt 1              # parallel-rne.mlir:299:19
	setlt.u r3, r23, r3
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r3, zero, .LBB0_190
.LBB0_189:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_190:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r3, r23, r18
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r3, zero, .LBB0_193
# %bb.191:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	beq r3, zero, .LBB0_194
.LBB0_192:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r20
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r3, zero, .LBB0_176
	j .LBB0_195
.LBB0_193:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r3, zero, .LBB0_192
.LBB0_194:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r22
	and r24, r3, r4
	setlt.u r3, r23, r20
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	bneq r3, zero, .LBB0_176
.LBB0_195:                              # %vector.body869
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r4
	j .LBB0_176
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 279 7                         # parallel-rne.mlir:279:7
	mfence { sm }
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 95
	zext_int2long r[2:3], r2
	.loc	1 307 7 is_stmt 1               # parallel-rne.mlir:307:7
	store.d r[2:3], -480(r30)               # 8-byte Folded Spill
	addli r2, zero, 5
	bneq r13, r2, .LBB0_229
# %bb.198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 307 7                         # parallel-rne.mlir:307:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_200
.LBB0_199:                              # %middle.block864
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 314 9 is_stmt 1               # parallel-rne.mlir:314:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_228
.LBB0_200:                              # %.preheader177
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_209 Depth 3
                                        #       Child Loop BB0_203 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 315 11 is_stmt 1              # parallel-rne.mlir:315:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	bneq r16, r10, .LBB0_207
# %bb.201:                              # %scalar.ph858.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_203
.LBB0_202:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	.loc	1 330 13 is_stmt 1              # parallel-rne.mlir:330:13
	add.s r3, r16, r4
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 330 13                        # parallel-rne.mlir:330:13
	stores.w r9, 0(r3)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	beq r2, zero, .LBB0_199
.LBB0_203:                              # %scalar.ph858
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[2:3], r[7:8], r[13:14]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	and r3, r2, r21
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	setlt.u r5, r6, r3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r5, zero, .LBB0_205
# %bb.204:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r3, r23, r3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r3, zero, .LBB0_202
	j .LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r9, r2, r5
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r3, r23, r3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r3, zero, .LBB0_202
.LBB0_206:                              # %scalar.ph858
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_202
.LBB0_207:                              # %vector.body860.preheader
                                        #   in Loop: Header=BB0_200 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_209
.LBB0_208:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 315 11 is_stmt 1              # parallel-rne.mlir:315:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 330 13                        # parallel-rne.mlir:330:13
	add.s r4, r16, r11
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	seteq.d r3, r[8:9], r[26:27]
	.loc	1 330 13                        # parallel-rne.mlir:330:13
	stores.w r15, 12(r4)
	stores.w r24, 8(r4)
	stores.w r28, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 315 11                        # parallel-rne.mlir:315:11
	bneq r3, zero, .LBB0_199
.LBB0_209:                              # %vector.body860
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_200 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	add.ul r[2:3], r[8:9], r[13:14]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	and r20, r19, r21
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	setlt.u r2, r6, r20
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r2, zero, .LBB0_211
# %bb.210:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_212
.LBB0_211:                              #   in Loop: Header=BB0_209 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_212:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r4, 8(r12)
	and r7, r4, r21
	setlt.u r2, r6, r7
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r2, zero, .LBB0_214
# %bb.213:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_215
.LBB0_214:                              #   in Loop: Header=BB0_209 Depth=3
	lui r2, 1024
	or r24, r4, r2
.LBB0_215:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r2, zero, .LBB0_217
# %bb.216:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_218
.LBB0_217:                              #   in Loop: Header=BB0_209 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_218:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	bneq r2, zero, .LBB0_220
# %bb.219:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r3, r23, r3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r3, zero, .LBB0_221
	j .LBB0_222
.LBB0_220:                              #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 327 19 is_stmt 1              # parallel-rne.mlir:327:19
	setlt.u r3, r23, r3
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r3, zero, .LBB0_222
.LBB0_221:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_222:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	setlt.u r3, r23, r18
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r3, zero, .LBB0_225
# %bb.223:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	beq r3, zero, .LBB0_226
.LBB0_224:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r20
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r3, zero, .LBB0_208
	j .LBB0_227
.LBB0_225:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r3, zero, .LBB0_224
.LBB0_226:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r22
	and r24, r3, r4
	setlt.u r3, r23, r20
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r3, zero, .LBB0_208
.LBB0_227:                              # %vector.body860
                                        #   in Loop: Header=BB0_209 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r4
	j .LBB0_208
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 307 7                         # parallel-rne.mlir:307:7
	mfence { sm }
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	zext_int2long r[2:3], r2
	.loc	1 335 7 is_stmt 1               # parallel-rne.mlir:335:7
	store.d r[2:3], -472(r30)               # 8-byte Folded Spill
	addli r2, zero, 6
	bneq r13, r2, .LBB0_261
# %bb.230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 335 7                         # parallel-rne.mlir:335:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_232
.LBB0_231:                              # %middle.block855
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 342 9 is_stmt 1               # parallel-rne.mlir:342:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_260
.LBB0_232:                              # %.preheader176
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 343 11 is_stmt 1              # parallel-rne.mlir:343:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	bneq r16, r10, .LBB0_239
# %bb.233:                              # %scalar.ph849.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	.loc	1 358 13 is_stmt 1              # parallel-rne.mlir:358:13
	add.s r3, r16, r4
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	stores.w r9, 0(r3)
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	beq r2, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph849
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	add.ul r[2:3], r[7:8], r[13:14]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r3, r2, r21
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	setlt.u r5, r6, r3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r5, zero, .LBB0_237
# %bb.236:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r3, r23, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r3, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r9, r2, r5
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r3, r23, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r3, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph849
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_234
.LBB0_239:                              # %vector.body851.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 343 11 is_stmt 1              # parallel-rne.mlir:343:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	add.s r4, r16, r11
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	seteq.d r3, r[8:9], r[26:27]
	.loc	1 358 13                        # parallel-rne.mlir:358:13
	stores.w r15, 12(r4)
	stores.w r24, 8(r4)
	stores.w r28, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 343 11                        # parallel-rne.mlir:343:11
	bneq r3, zero, .LBB0_231
.LBB0_241:                              # %vector.body851
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	add.ul r[2:3], r[8:9], r[13:14]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	and r20, r19, r21
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	setlt.u r2, r6, r20
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r2, zero, .LBB0_243
# %bb.242:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_244:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r4, 8(r12)
	and r7, r4, r21
	setlt.u r2, r6, r7
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r2, zero, .LBB0_246
# %bb.245:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	lui r2, 1024
	or r24, r4, r2
.LBB0_247:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r2, zero, .LBB0_249
# %bb.248:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_250:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	bneq r2, zero, .LBB0_252
# %bb.251:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r3, r23, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r3, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 355 19 is_stmt 1              # parallel-rne.mlir:355:19
	setlt.u r3, r23, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r3, zero, .LBB0_254
.LBB0_253:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_254:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r3, r23, r18
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r3, zero, .LBB0_257
# %bb.255:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	beq r3, zero, .LBB0_258
.LBB0_256:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r20
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r3, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r3, zero, .LBB0_256
.LBB0_258:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r22
	and r24, r3, r4
	setlt.u r3, r23, r20
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	bneq r3, zero, .LBB0_240
.LBB0_259:                              # %vector.body851
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r4
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 335 7                         # parallel-rne.mlir:335:7
	mfence { sm }
.LBB0_261:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	bneq r13, r14, .LBB0_293
# %bb.262:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_264
.LBB0_263:                              # %middle.block846
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 370 9 is_stmt 1               # parallel-rne.mlir:370:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[4:5], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_292
.LBB0_264:                              # %.preheader175
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_273 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 371 11 is_stmt 1              # parallel-rne.mlir:371:11
	store.d r[3:4], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[3:4], r2
	bneq r16, r10, .LBB0_271
# %bb.265:                              # %scalar.ph840.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_267
.LBB0_266:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	.loc	1 386 13 is_stmt 1              # parallel-rne.mlir:386:13
	add.s r3, r16, r4
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 386 13                        # parallel-rne.mlir:386:13
	stores.w r9, 0(r3)
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	beq r2, zero, .LBB0_263
.LBB0_267:                              # %scalar.ph840
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.ul r[2:3], r[7:8], r[13:14]
	slli r4, r2, 2
	add.s r2, r10, r4
	loads.w r2, 0(r2)
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r3, r2, r21
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	setlt.u r5, r6, r3
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	bneq r5, zero, .LBB0_269
# %bb.268:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r2, 0
	.loc	1 383 19 is_stmt 1              # parallel-rne.mlir:383:19
	setlt.u r3, r23, r3
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	bneq r3, zero, .LBB0_266
	j .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r9, r2, r5
	.loc	1 383 19 is_stmt 1              # parallel-rne.mlir:383:19
	setlt.u r3, r23, r3
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	bneq r3, zero, .LBB0_266
.LBB0_270:                              # %scalar.ph840
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	lui r3, 1048560
	add.s r2, r2, r22
	and r9, r2, r3
	j .LBB0_266
.LBB0_271:                              # %vector.body842.preheader
                                        #   in Loop: Header=BB0_264 Depth=2
	zext_int2long r[8:9], zero
	j .LBB0_273
.LBB0_272:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 371 11 is_stmt 1              # parallel-rne.mlir:371:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 386 13                        # parallel-rne.mlir:386:13
	add.s r4, r16, r11
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	seteq.d r3, r[8:9], r[26:27]
	.loc	1 386 13                        # parallel-rne.mlir:386:13
	stores.w r15, 12(r4)
	stores.w r24, 8(r4)
	stores.w r28, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 371 11                        # parallel-rne.mlir:371:11
	bneq r3, zero, .LBB0_263
.LBB0_273:                              # %vector.body842
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_264 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	add.ul r[2:3], r[8:9], r[13:14]
	slli r11, r2, 2
	add.s r12, r10, r11
	loads.w r19, 12(r12)
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r20, r19, r21
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	setlt.u r2, r6, r20
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	bneq r2, zero, .LBB0_275
# %bb.274:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r19, 0
	j .LBB0_276
.LBB0_275:                              #   in Loop: Header=BB0_273 Depth=3
	lui r2, 1024
	or r15, r19, r2
.LBB0_276:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r4, 8(r12)
	and r7, r4, r21
	setlt.u r2, r6, r7
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	bneq r2, zero, .LBB0_278
# %bb.277:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r4, 0
	j .LBB0_279
.LBB0_278:                              #   in Loop: Header=BB0_273 Depth=3
	lui r2, 1024
	or r24, r4, r2
.LBB0_279:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r17, 4(r12)
	and r18, r17, r21
	setlt.u r2, r6, r18
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	bneq r2, zero, .LBB0_281
# %bb.280:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r17, 0
	j .LBB0_282
.LBB0_281:                              #   in Loop: Header=BB0_273 Depth=3
	lui r2, 1024
	or r28, r17, r2
.LBB0_282:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	loads.w r12, 0(r12)
	and r3, r12, r21
	setlt.u r2, r6, r3
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	bneq r2, zero, .LBB0_284
# %bb.283:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r12, 0
	.loc	1 383 19 is_stmt 1              # parallel-rne.mlir:383:19
	setlt.u r3, r23, r3
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	beq r3, zero, .LBB0_285
	j .LBB0_286
.LBB0_284:                              #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r12, r2
	.loc	1 383 19 is_stmt 1              # parallel-rne.mlir:383:19
	setlt.u r3, r23, r3
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	bneq r3, zero, .LBB0_286
.LBB0_285:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r12, 16
	lui r3, 1048560
	andi r2, r2, 1
	add.s r2, r12, r2
	add.s r2, r2, r22
	and r2, r2, r3
.LBB0_286:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	setlt.u r3, r23, r18
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	beq r3, zero, .LBB0_289
# %bb.287:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	beq r3, zero, .LBB0_290
.LBB0_288:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r20
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	bneq r3, zero, .LBB0_272
	j .LBB0_291
.LBB0_289:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r17, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r17, r3
	add.s r3, r3, r22
	and r28, r3, r5
	setlt.u r3, r23, r7
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	bneq r3, zero, .LBB0_288
.LBB0_290:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r4, 16
	andi r3, r3, 1
	add.s r3, r4, r3
	lui r4, 1048560
	add.s r3, r3, r22
	and r24, r3, r4
	setlt.u r3, r23, r20
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	bneq r3, zero, .LBB0_272
.LBB0_291:                              # %vector.body842
                                        #   in Loop: Header=BB0_273 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	lui r4, 1048560
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r22
	and r15, r3, r4
	j .LBB0_272
.LBB0_292:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	mfence { sm }
.LBB0_293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -544(r30)                 # 4-byte Folded Reload
	load.d r[4:5], -528(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	min.ul r[4:5], r[2:3], r[4:5]
	addli.d r[4:5], r[4:5], 128
	max.ul r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	min.ul r[2:3], r[2:3], r[26:27]
	.loc	1 391 7 is_stmt 1               # parallel-rne.mlir:391:7
	store.d r[2:3], -592(r30)               # 8-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	addli r2, zero, 3
	.loc	1 391 7                         # parallel-rne.mlir:391:7
	sync_core
	.loc	1 392 7                         # parallel-rne.mlir:392:7
	bneq r13, r2, .LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	addli r2, zero, 12
	xsignal r2, 0
	.loc	1 398 13                        # parallel-rne.mlir:398:13
	loadli.w r2,  -84(r30)
	addli r3, r2, 1
	storeli.w r3, -84(r30)
	.loc	1 400 7                         # parallel-rne.mlir:400:7
	addli r3, zero, 13
	xwait r3, 0
	.loc	1 401 7                         # parallel-rne.mlir:401:7
	addli r3, zero, 29
	xwait r3, 0
	j .LBB0_304
.LBB0_295:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r10,  -464(r30)                # 4-byte Folded Reload
	addli r2, zero, 2
	addli r11, zero, 1
	mod.s r2, r10, r2
	slli r3, r2, 9
	lui r2, 128
	add.s r2, r3, r2
	.loc	1 395 7 is_stmt 1               # parallel-rne.mlir:395:7
	bneq r13, r11, .LBB0_299
# %bb.296:                              #   in Loop: Header=BB0_7 Depth=1
	load.d r[4:5], 16(r30)
	load.d r[7:8], -584(r30)                # 8-byte Folded Reload
	addli r15, zero, 23
	addli r13, zero, 3
	xwait r15, 0
	add.ul r[8:9], r[4:5], r[7:8]
	blt.s r11, r10, .LBB0_298
# %bb.297:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r7, zero, 5
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	addli r4, zero, 2
	addli r5, zero, 4
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r14, 10
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
	addli r4, zero, 24
	dma_cfg zero, zero, r15, 10
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
	addli r4, zero, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r4, 3
	addli r4, zero, 128
	dma_cfg r4, zero, r5, 4
	addli r4, zero, 512
	dma_cfg r4, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
.LBB0_298:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r10, zero, 4
	lui r4, 128
	addli r12, zero, 64
	addli r5, zero, 128
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	addli r7, zero, 256
	lock zero, r10
	ori r4, r4, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r9, zero, 2
	add.s r3, r3, r4
	load.d r[17:18], -592(r30)              # 8-byte Folded Reload
	dma_cfg r3, r8, r12, 3
	addli r9, zero, 512
	addli r8, zero, 5
	addli r4, r17, 31
	srli r3, r4, 5
	slli r4, r17, 1
	dma_cfg r5, r12, r3, 4
	andi r4, r4, 62
	dma_cfg r9, r7, r11, 5
	addli r7, zero, 2
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 6
	dma_cfg zero, zero, r13, 10
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 395 7                         # parallel-rne.mlir:395:7
	dma_cfg zero, zero, r10, 10
	addli r10, zero, 22
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r14, 10
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
	addli r7, zero, 24
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r15, 10
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
	lui r7, 524288
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r12, 3
	dma_cfg r5, zero, r3, 4
	dma_cfg r9, zero, r11, 5
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	xsignal r10, 0
	j .LBB0_303
.LBB0_299:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 396 7                         # parallel-rne.mlir:396:7
	addli r3, zero, 5
	bneq r13, r3, .LBB0_303
# %bb.300:                              #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 12
	addli r3, zero, 0
	addli r5, zero, 23
	lui r8, 16
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
.LBB0_301:                              #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r4, r16, r3
	addli r3, r3, 512
	dsmadd r4, r4, r2, 0
	bneq r3, r8, .LBB0_301
# %bb.302:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 2
	unlock r2
	addli r2, zero, 13
	xsignal r2, 0
	xsignal r5, 0
.LBB0_303:                              # %.thread113
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 398 13                        # parallel-rne.mlir:398:13
	loadli.w r2,  -84(r30)
	addli r3, r2, 1
	storeli.w r3, -84(r30)
.LBB0_304:                              # %.critedge6
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 2
	.loc	1 403 7                         # parallel-rne.mlir:403:7
	xfence
	.loc	1 404 7                         # parallel-rne.mlir:404:7
	mfence { lm, sm, gm }
	.loc	1 398 13                        # parallel-rne.mlir:398:13
	mod.s r2, r2, r3
	loadli.w r3,  -628(r30)                 # 4-byte Folded Reload
	slli r2, r2, 16
	add.s r2, r2, r3
	.loc	1 405 7                         # parallel-rne.mlir:405:7
	storeli.w r2, -456(r30)                 # 4-byte Folded Spill
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	beq r13, zero, .LBB0_312
# %bb.305:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	addli r2, zero, 1
	beq r13, r2, .LBB0_336
.LBB0_306:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r2, zero, 2
	beq r13, r2, .LBB0_360
.LBB0_307:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	addli r2, zero, 3
	beq r13, r2, .LBB0_384
.LBB0_308:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	addli r2, zero, 4
	beq r13, r2, .LBB0_408
.LBB0_309:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	addli r2, zero, 5
	beq r13, r2, .LBB0_432
.LBB0_310:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	addli r2, zero, 6
	beq r13, r2, .LBB0_456
.LBB0_311:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	beq r13, r14, .LBB0_480
	j .LBB0_504
.LBB0_312:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 406 7 is_stmt 1               # parallel-rne.mlir:406:7
	xfence
	mfence { lm, sm, gm }
	store.d r[2:3], -544(r30)               # 8-byte Folded Spill
	addli.d r[3:4], r[2:3], 0
	j .LBB0_314
.LBB0_313:                              # %middle.block837
                                        #   in Loop: Header=BB0_314 Depth=2
	.loc	1 413 9                         # parallel-rne.mlir:413:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_335
.LBB0_314:                              # %.preheader174
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_316 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[11:12], r[3:4], r14
	load.d r[13:14], -544(r30)              # 8-byte Folded Reload
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_316
.LBB0_315:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 414 11 is_stmt 1              # parallel-rne.mlir:414:11
	addli.d r[13:14], r[13:14], 4
	.loc	1 429 13                        # parallel-rne.mlir:429:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 429 13                        # parallel-rne.mlir:429:13
	add.s r4, r5, r4
	stores.w r19, 12(r4)
	stores.w r24, 8(r4)
	stores.w r2, 4(r4)
	stores.w r8, 0(r4)
	.loc	1 414 11                        # parallel-rne.mlir:414:11
	beq r3, zero, .LBB0_313
.LBB0_316:                              # %vector.body833
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_314 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	add.ul r[2:3], r[13:14], r[11:12]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r15, 12(r2)
	loads.w r9, 0(r2)
	loads.w r3, 4(r2)
	loads.w r28, 8(r2)
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r20, r15, r21
	.loc	1 419 19                        # parallel-rne.mlir:419:19
	setlt.u r2, r6, r20
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r2, zero, .LBB0_318
# %bb.317:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r15, 0
	j .LBB0_319
.LBB0_318:                              #   in Loop: Header=BB0_316 Depth=3
	lui r2, 1024
	or r19, r15, r2
.LBB0_319:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	and r7, r28, r21
	setlt.u r2, r6, r7
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r2, zero, .LBB0_321
# %bb.320:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_322
.LBB0_321:                              #   in Loop: Header=BB0_316 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_322:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	and r17, r3, r21
	setlt.u r2, r6, r17
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r2, zero, .LBB0_324
# %bb.323:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r3, 0
	j .LBB0_325
.LBB0_324:                              #   in Loop: Header=BB0_316 Depth=3
	lui r2, 1024
	or r2, r3, r2
.LBB0_325:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	and r18, r9, r21
	setlt.u r5, r6, r18
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	bneq r5, zero, .LBB0_327
# %bb.326:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	.loc	1 426 19 is_stmt 1              # parallel-rne.mlir:426:19
	setlt.u r5, r23, r18
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r5, zero, .LBB0_328
	j .LBB0_329
.LBB0_327:                              #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r9, r5
	.loc	1 426 19 is_stmt 1              # parallel-rne.mlir:426:19
	setlt.u r5, r23, r18
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r5, zero, .LBB0_329
.LBB0_328:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r5, r9, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r22
	and r8, r5, r8
.LBB0_329:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	setlt.u r5, r23, r17
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r5, zero, .LBB0_334
# %bb.330:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r7
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_332
.LBB0_331:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r28, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r28, r3
	add.s r3, r3, r22
	and r24, r3, r5
.LBB0_332:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	setlt.u r3, r23, r20
	lui r7, 524288
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	bneq r3, zero, .LBB0_315
# %bb.333:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r15, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r15, r3
	add.s r3, r3, r22
	and r19, r3, r5
	j .LBB0_315
.LBB0_334:                              # %vector.body833
                                        #   in Loop: Header=BB0_316 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	lui r3, 1048560
	add.s r2, r2, r22
	and r2, r2, r3
	setlt.u r3, r23, r7
	.loc	1 427 19                        # parallel-rne.mlir:427:19
	beq r3, zero, .LBB0_331
	j .LBB0_332
.LBB0_335:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 406 7                         # parallel-rne.mlir:406:7
	mfence { sm }
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	addli r2, zero, 1
	bneq r13, r2, .LBB0_306
.LBB0_336:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_338
.LBB0_337:                              # %middle.block828
                                        #   in Loop: Header=BB0_338 Depth=2
	.loc	1 441 9 is_stmt 1               # parallel-rne.mlir:441:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_359
.LBB0_338:                              # %.preheader173
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_340 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	zext_int2long r[11:12], zero
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_340
.LBB0_339:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 442 11 is_stmt 1              # parallel-rne.mlir:442:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 457 13                        # parallel-rne.mlir:457:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 442 11                        # parallel-rne.mlir:442:11
	setneq.d r3, r[11:12], r[26:27]
	.loc	1 457 13                        # parallel-rne.mlir:457:13
	add.s r4, r5, r4
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r24, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 442 11                        # parallel-rne.mlir:442:11
	beq r3, zero, .LBB0_337
.LBB0_340:                              # %vector.body824
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_338 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 443 19                        # parallel-rne.mlir:443:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r13, 12(r2)
	loads.w r7, 0(r2)
	loads.w r28, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	and r15, r13, r21
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	setlt.u r2, r6, r15
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r2, zero, .LBB0_342
# %bb.341:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r13, 0
	j .LBB0_343
.LBB0_342:                              #   in Loop: Header=BB0_340 Depth=3
	lui r2, 1024
	or r14, r13, r2
.LBB0_343:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	and r3, r20, r21
	setlt.u r2, r6, r3
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r2, zero, .LBB0_345
# %bb.344:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_346
.LBB0_345:                              #   in Loop: Header=BB0_340 Depth=3
	lui r2, 1024
	or r19, r20, r2
.LBB0_346:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	and r17, r28, r21
	setlt.u r2, r6, r17
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r2, zero, .LBB0_348
# %bb.347:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_349
.LBB0_348:                              #   in Loop: Header=BB0_340 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_349:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	and r18, r7, r21
	setlt.u r2, r6, r18
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	bneq r2, zero, .LBB0_351
# %bb.350:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 454 19 is_stmt 1              # parallel-rne.mlir:454:19
	setlt.u r5, r23, r18
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	beq r5, zero, .LBB0_352
	j .LBB0_353
.LBB0_351:                              #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 454 19 is_stmt 1              # parallel-rne.mlir:454:19
	setlt.u r5, r23, r18
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r5, zero, .LBB0_353
.LBB0_352:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r22
	and r2, r2, r5
.LBB0_353:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	setlt.u r5, r23, r17
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	beq r5, zero, .LBB0_358
# %bb.354:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r3, zero, .LBB0_356
.LBB0_355:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r22
	and r19, r3, r5
.LBB0_356:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	setlt.u r3, r23, r15
	lui r7, 524288
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	bneq r3, zero, .LBB0_339
# %bb.357:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r22
	and r14, r3, r5
	j .LBB0_339
.LBB0_358:                              # %vector.body824
                                        #   in Loop: Header=BB0_340 Depth=3
	srli r5, r28, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r22
	and r24, r5, r7
	setlt.u r3, r23, r3
	.loc	1 455 19                        # parallel-rne.mlir:455:19
	beq r3, zero, .LBB0_355
	j .LBB0_356
.LBB0_359:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 434 7                         # parallel-rne.mlir:434:7
	mfence { sm }
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	addli r2, zero, 2
	bneq r13, r2, .LBB0_307
.LBB0_360:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_362
.LBB0_361:                              # %middle.block819
                                        #   in Loop: Header=BB0_362 Depth=2
	.loc	1 469 9 is_stmt 1               # parallel-rne.mlir:469:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_383
.LBB0_362:                              # %.preheader172
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_364 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	zext_int2long r[11:12], zero
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_364
.LBB0_363:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 470 11 is_stmt 1              # parallel-rne.mlir:470:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 470 11                        # parallel-rne.mlir:470:11
	setneq.d r3, r[11:12], r[26:27]
	.loc	1 485 13                        # parallel-rne.mlir:485:13
	add.s r4, r5, r4
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r24, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 470 11                        # parallel-rne.mlir:470:11
	beq r3, zero, .LBB0_361
.LBB0_364:                              # %vector.body815
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_362 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 471 19                        # parallel-rne.mlir:471:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r13, 12(r2)
	loads.w r7, 0(r2)
	loads.w r28, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 473 19                        # parallel-rne.mlir:473:19
	and r15, r13, r21
	.loc	1 475 19                        # parallel-rne.mlir:475:19
	setlt.u r2, r6, r15
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r2, zero, .LBB0_366
# %bb.365:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r13, 0
	j .LBB0_367
.LBB0_366:                              #   in Loop: Header=BB0_364 Depth=3
	lui r2, 1024
	or r14, r13, r2
.LBB0_367:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	and r3, r20, r21
	setlt.u r2, r6, r3
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r2, zero, .LBB0_369
# %bb.368:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_370
.LBB0_369:                              #   in Loop: Header=BB0_364 Depth=3
	lui r2, 1024
	or r19, r20, r2
.LBB0_370:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	and r17, r28, r21
	setlt.u r2, r6, r17
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r2, zero, .LBB0_372
# %bb.371:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_373
.LBB0_372:                              #   in Loop: Header=BB0_364 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_373:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	and r18, r7, r21
	setlt.u r2, r6, r18
	.loc	1 476 19                        # parallel-rne.mlir:476:19
	bneq r2, zero, .LBB0_375
# %bb.374:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 482 19 is_stmt 1              # parallel-rne.mlir:482:19
	setlt.u r5, r23, r18
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	beq r5, zero, .LBB0_376
	j .LBB0_377
.LBB0_375:                              #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 482 19 is_stmt 1              # parallel-rne.mlir:482:19
	setlt.u r5, r23, r18
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r5, zero, .LBB0_377
.LBB0_376:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r22
	and r2, r2, r5
.LBB0_377:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	setlt.u r5, r23, r17
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	beq r5, zero, .LBB0_380
# %bb.378:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	beq r3, zero, .LBB0_381
.LBB0_379:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r15
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r3, zero, .LBB0_363
	j .LBB0_382
.LBB0_380:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r28, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r22
	and r24, r5, r7
	setlt.u r3, r23, r3
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r3, zero, .LBB0_379
.LBB0_381:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r22
	and r19, r3, r5
	setlt.u r3, r23, r15
	.loc	1 483 19                        # parallel-rne.mlir:483:19
	bneq r3, zero, .LBB0_363
.LBB0_382:                              # %vector.body815
                                        #   in Loop: Header=BB0_364 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r22
	and r14, r3, r5
	j .LBB0_363
.LBB0_383:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 462 7                         # parallel-rne.mlir:462:7
	mfence { sm }
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	addli r2, zero, 3
	bneq r13, r2, .LBB0_308
.LBB0_384:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_386
.LBB0_385:                              # %middle.block810
                                        #   in Loop: Header=BB0_386 Depth=2
	.loc	1 497 9 is_stmt 1               # parallel-rne.mlir:497:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_407
.LBB0_386:                              # %.preheader171
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_388 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	zext_int2long r[11:12], zero
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_388
.LBB0_387:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 498 11 is_stmt 1              # parallel-rne.mlir:498:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	setneq.d r3, r[11:12], r[26:27]
	.loc	1 513 13                        # parallel-rne.mlir:513:13
	add.s r4, r5, r4
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r24, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 498 11                        # parallel-rne.mlir:498:11
	beq r3, zero, .LBB0_385
.LBB0_388:                              # %vector.body806
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_386 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 499 19                        # parallel-rne.mlir:499:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r13, 12(r2)
	loads.w r7, 0(r2)
	loads.w r28, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 501 19                        # parallel-rne.mlir:501:19
	and r15, r13, r21
	.loc	1 503 19                        # parallel-rne.mlir:503:19
	setlt.u r2, r6, r15
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r2, zero, .LBB0_390
# %bb.389:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r13, 0
	j .LBB0_391
.LBB0_390:                              #   in Loop: Header=BB0_388 Depth=3
	lui r2, 1024
	or r14, r13, r2
.LBB0_391:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	and r3, r20, r21
	setlt.u r2, r6, r3
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r2, zero, .LBB0_393
# %bb.392:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_394
.LBB0_393:                              #   in Loop: Header=BB0_388 Depth=3
	lui r2, 1024
	or r19, r20, r2
.LBB0_394:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	and r17, r28, r21
	setlt.u r2, r6, r17
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r2, zero, .LBB0_396
# %bb.395:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_397
.LBB0_396:                              #   in Loop: Header=BB0_388 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_397:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	and r18, r7, r21
	setlt.u r2, r6, r18
	.loc	1 504 19                        # parallel-rne.mlir:504:19
	bneq r2, zero, .LBB0_399
# %bb.398:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 510 19 is_stmt 1              # parallel-rne.mlir:510:19
	setlt.u r5, r23, r18
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	beq r5, zero, .LBB0_400
	j .LBB0_401
.LBB0_399:                              #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 510 19 is_stmt 1              # parallel-rne.mlir:510:19
	setlt.u r5, r23, r18
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r5, zero, .LBB0_401
.LBB0_400:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r22
	and r2, r2, r5
.LBB0_401:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	setlt.u r5, r23, r17
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	beq r5, zero, .LBB0_404
# %bb.402:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	beq r3, zero, .LBB0_405
.LBB0_403:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r15
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r3, zero, .LBB0_387
	j .LBB0_406
.LBB0_404:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r28, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r22
	and r24, r5, r7
	setlt.u r3, r23, r3
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r3, zero, .LBB0_403
.LBB0_405:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r22
	and r19, r3, r5
	setlt.u r3, r23, r15
	.loc	1 511 19                        # parallel-rne.mlir:511:19
	bneq r3, zero, .LBB0_387
.LBB0_406:                              # %vector.body806
                                        #   in Loop: Header=BB0_388 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r22
	and r14, r3, r5
	j .LBB0_387
.LBB0_407:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 490 7                         # parallel-rne.mlir:490:7
	mfence { sm }
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	addli r2, zero, 4
	bneq r13, r2, .LBB0_309
.LBB0_408:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_410
.LBB0_409:                              # %middle.block801
                                        #   in Loop: Header=BB0_410 Depth=2
	.loc	1 525 9 is_stmt 1               # parallel-rne.mlir:525:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_431
.LBB0_410:                              # %.preheader170
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_412 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	zext_int2long r[11:12], zero
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_412
.LBB0_411:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 526 11 is_stmt 1              # parallel-rne.mlir:526:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 541 13                        # parallel-rne.mlir:541:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	setneq.d r3, r[11:12], r[26:27]
	.loc	1 541 13                        # parallel-rne.mlir:541:13
	add.s r4, r5, r4
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r24, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 526 11                        # parallel-rne.mlir:526:11
	beq r3, zero, .LBB0_409
.LBB0_412:                              # %vector.body797
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_410 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 527 19                        # parallel-rne.mlir:527:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r13, 12(r2)
	loads.w r7, 0(r2)
	loads.w r28, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 529 19                        # parallel-rne.mlir:529:19
	and r15, r13, r21
	.loc	1 531 19                        # parallel-rne.mlir:531:19
	setlt.u r2, r6, r15
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r2, zero, .LBB0_414
# %bb.413:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r13, 0
	j .LBB0_415
.LBB0_414:                              #   in Loop: Header=BB0_412 Depth=3
	lui r2, 1024
	or r14, r13, r2
.LBB0_415:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	and r3, r20, r21
	setlt.u r2, r6, r3
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r2, zero, .LBB0_417
# %bb.416:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_418
.LBB0_417:                              #   in Loop: Header=BB0_412 Depth=3
	lui r2, 1024
	or r19, r20, r2
.LBB0_418:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	and r17, r28, r21
	setlt.u r2, r6, r17
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r2, zero, .LBB0_420
# %bb.419:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_421
.LBB0_420:                              #   in Loop: Header=BB0_412 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_421:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	and r18, r7, r21
	setlt.u r2, r6, r18
	.loc	1 532 19                        # parallel-rne.mlir:532:19
	bneq r2, zero, .LBB0_423
# %bb.422:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r5, r23, r18
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r5, zero, .LBB0_424
	j .LBB0_425
.LBB0_423:                              #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 538 19 is_stmt 1              # parallel-rne.mlir:538:19
	setlt.u r5, r23, r18
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r5, zero, .LBB0_425
.LBB0_424:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r22
	and r2, r2, r5
.LBB0_425:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	setlt.u r5, r23, r17
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r5, zero, .LBB0_430
# %bb.426:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r3, zero, .LBB0_428
.LBB0_427:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r22
	and r19, r3, r5
.LBB0_428:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	setlt.u r3, r23, r15
	lui r7, 524288
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	bneq r3, zero, .LBB0_411
# %bb.429:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r22
	and r14, r3, r5
	j .LBB0_411
.LBB0_430:                              # %vector.body797
                                        #   in Loop: Header=BB0_412 Depth=3
	srli r5, r28, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r22
	and r24, r5, r7
	setlt.u r3, r23, r3
	.loc	1 539 19                        # parallel-rne.mlir:539:19
	beq r3, zero, .LBB0_427
	j .LBB0_428
.LBB0_431:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 518 7                         # parallel-rne.mlir:518:7
	mfence { sm }
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_310
.LBB0_432:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_434
.LBB0_433:                              # %middle.block792
                                        #   in Loop: Header=BB0_434 Depth=2
	.loc	1 553 9 is_stmt 1               # parallel-rne.mlir:553:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_455
.LBB0_434:                              # %.preheader169
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_436 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	zext_int2long r[11:12], zero
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_436
.LBB0_435:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 554 11 is_stmt 1              # parallel-rne.mlir:554:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 569 13                        # parallel-rne.mlir:569:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 554 11                        # parallel-rne.mlir:554:11
	setneq.d r3, r[11:12], r[26:27]
	.loc	1 569 13                        # parallel-rne.mlir:569:13
	add.s r4, r5, r4
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r24, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 554 11                        # parallel-rne.mlir:554:11
	beq r3, zero, .LBB0_433
.LBB0_436:                              # %vector.body788
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_434 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 555 19                        # parallel-rne.mlir:555:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r13, 12(r2)
	loads.w r7, 0(r2)
	loads.w r28, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 557 19                        # parallel-rne.mlir:557:19
	and r15, r13, r21
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	setlt.u r2, r6, r15
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r2, zero, .LBB0_438
# %bb.437:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r13, 0
	j .LBB0_439
.LBB0_438:                              #   in Loop: Header=BB0_436 Depth=3
	lui r2, 1024
	or r14, r13, r2
.LBB0_439:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	and r3, r20, r21
	setlt.u r2, r6, r3
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r2, zero, .LBB0_441
# %bb.440:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_442
.LBB0_441:                              #   in Loop: Header=BB0_436 Depth=3
	lui r2, 1024
	or r19, r20, r2
.LBB0_442:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	and r17, r28, r21
	setlt.u r2, r6, r17
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r2, zero, .LBB0_444
# %bb.443:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_445
.LBB0_444:                              #   in Loop: Header=BB0_436 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_445:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	and r18, r7, r21
	setlt.u r2, r6, r18
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	bneq r2, zero, .LBB0_447
# %bb.446:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 566 19 is_stmt 1              # parallel-rne.mlir:566:19
	setlt.u r5, r23, r18
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	beq r5, zero, .LBB0_448
	j .LBB0_449
.LBB0_447:                              #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 566 19 is_stmt 1              # parallel-rne.mlir:566:19
	setlt.u r5, r23, r18
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r5, zero, .LBB0_449
.LBB0_448:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r22
	and r2, r2, r5
.LBB0_449:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	setlt.u r5, r23, r17
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	beq r5, zero, .LBB0_452
# %bb.450:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	beq r3, zero, .LBB0_453
.LBB0_451:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r15
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r3, zero, .LBB0_435
	j .LBB0_454
.LBB0_452:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r28, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r22
	and r24, r5, r7
	setlt.u r3, r23, r3
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r3, zero, .LBB0_451
.LBB0_453:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r22
	and r19, r3, r5
	setlt.u r3, r23, r15
	.loc	1 567 19                        # parallel-rne.mlir:567:19
	bneq r3, zero, .LBB0_435
.LBB0_454:                              # %vector.body788
                                        #   in Loop: Header=BB0_436 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r22
	and r14, r3, r5
	j .LBB0_435
.LBB0_455:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 546 7                         # parallel-rne.mlir:546:7
	mfence { sm }
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	addli r2, zero, 6
	bneq r13, r2, .LBB0_311
.LBB0_456:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_458
.LBB0_457:                              # %middle.block783
                                        #   in Loop: Header=BB0_458 Depth=2
	.loc	1 581 9 is_stmt 1               # parallel-rne.mlir:581:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_479
.LBB0_458:                              # %.preheader168
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_460 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	zext_int2long r[11:12], zero
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_460
.LBB0_459:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 582 11 is_stmt 1              # parallel-rne.mlir:582:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	setneq.d r3, r[11:12], r[26:27]
	.loc	1 597 13                        # parallel-rne.mlir:597:13
	add.s r4, r5, r4
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r24, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 582 11                        # parallel-rne.mlir:582:11
	beq r3, zero, .LBB0_457
.LBB0_460:                              # %vector.body779
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_458 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 583 19                        # parallel-rne.mlir:583:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r13, 12(r2)
	loads.w r7, 0(r2)
	loads.w r28, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 585 19                        # parallel-rne.mlir:585:19
	and r15, r13, r21
	.loc	1 587 19                        # parallel-rne.mlir:587:19
	setlt.u r2, r6, r15
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r2, zero, .LBB0_462
# %bb.461:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r13, 0
	j .LBB0_463
.LBB0_462:                              #   in Loop: Header=BB0_460 Depth=3
	lui r2, 1024
	or r14, r13, r2
.LBB0_463:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	and r3, r20, r21
	setlt.u r2, r6, r3
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r2, zero, .LBB0_465
# %bb.464:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_466
.LBB0_465:                              #   in Loop: Header=BB0_460 Depth=3
	lui r2, 1024
	or r19, r20, r2
.LBB0_466:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	and r17, r28, r21
	setlt.u r2, r6, r17
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r2, zero, .LBB0_468
# %bb.467:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_469
.LBB0_468:                              #   in Loop: Header=BB0_460 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_469:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	and r18, r7, r21
	setlt.u r2, r6, r18
	.loc	1 588 19                        # parallel-rne.mlir:588:19
	bneq r2, zero, .LBB0_471
# %bb.470:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r5, r23, r18
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	beq r5, zero, .LBB0_472
	j .LBB0_473
.LBB0_471:                              #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 594 19 is_stmt 1              # parallel-rne.mlir:594:19
	setlt.u r5, r23, r18
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r5, zero, .LBB0_473
.LBB0_472:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r22
	and r2, r2, r5
.LBB0_473:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	setlt.u r5, r23, r17
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	beq r5, zero, .LBB0_476
# %bb.474:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	beq r3, zero, .LBB0_477
.LBB0_475:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r15
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r3, zero, .LBB0_459
	j .LBB0_478
.LBB0_476:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r28, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r22
	and r24, r5, r7
	setlt.u r3, r23, r3
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r3, zero, .LBB0_475
.LBB0_477:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r22
	and r19, r3, r5
	setlt.u r3, r23, r15
	.loc	1 595 19                        # parallel-rne.mlir:595:19
	bneq r3, zero, .LBB0_459
.LBB0_478:                              # %vector.body779
                                        #   in Loop: Header=BB0_460 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r22
	and r14, r3, r5
	j .LBB0_459
.LBB0_479:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	.loc	1 574 7                         # parallel-rne.mlir:574:7
	mfence { sm }
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	bneq r13, r14, .LBB0_504
.LBB0_480:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_482
.LBB0_481:                              # %middle.block774
                                        #   in Loop: Header=BB0_482 Depth=2
	.loc	1 609 9 is_stmt 1               # parallel-rne.mlir:609:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[4:5], -464(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[4:5], r[2:3]
	addli.d r[3:4], r[4:5], 1
	beq r2, zero, .LBB0_503
.LBB0_482:                              # %.preheader167
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_484 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[3:4], r14
	zext_int2long r[11:12], zero
	store.d r[3:4], -464(r30)               # 8-byte Folded Spill
	j .LBB0_484
.LBB0_483:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 610 11 is_stmt 1              # parallel-rne.mlir:610:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 610 11                        # parallel-rne.mlir:610:11
	setneq.d r3, r[11:12], r[26:27]
	.loc	1 625 13                        # parallel-rne.mlir:625:13
	add.s r4, r5, r4
	stores.w r14, 12(r4)
	stores.w r19, 8(r4)
	stores.w r24, 4(r4)
	stores.w r2, 0(r4)
	.loc	1 610 11                        # parallel-rne.mlir:610:11
	beq r3, zero, .LBB0_481
.LBB0_484:                              # %vector.body770
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_482 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	add.ul r[2:3], r[11:12], r[8:9]
	slli r4, r2, 2
	add.s r2, r16, r4
	loads.w r13, 12(r2)
	loads.w r7, 0(r2)
	loads.w r28, 4(r2)
	loads.w r20, 8(r2)
	.loc	1 613 19                        # parallel-rne.mlir:613:19
	and r15, r13, r21
	.loc	1 615 19                        # parallel-rne.mlir:615:19
	setlt.u r2, r6, r15
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r2, zero, .LBB0_486
# %bb.485:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r13, 0
	j .LBB0_487
.LBB0_486:                              #   in Loop: Header=BB0_484 Depth=3
	lui r2, 1024
	or r14, r13, r2
.LBB0_487:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	and r3, r20, r21
	setlt.u r2, r6, r3
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r2, zero, .LBB0_489
# %bb.488:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r20, 0
	j .LBB0_490
.LBB0_489:                              #   in Loop: Header=BB0_484 Depth=3
	lui r2, 1024
	or r19, r20, r2
.LBB0_490:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	and r17, r28, r21
	setlt.u r2, r6, r17
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r2, zero, .LBB0_492
# %bb.491:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r24, r28, 0
	j .LBB0_493
.LBB0_492:                              #   in Loop: Header=BB0_484 Depth=3
	lui r2, 1024
	or r24, r28, r2
.LBB0_493:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	and r18, r7, r21
	setlt.u r2, r6, r18
	.loc	1 616 19                        # parallel-rne.mlir:616:19
	bneq r2, zero, .LBB0_495
# %bb.494:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 622 19 is_stmt 1              # parallel-rne.mlir:622:19
	setlt.u r5, r23, r18
	.loc	1 623 19                        # parallel-rne.mlir:623:19
	beq r5, zero, .LBB0_496
	j .LBB0_497
.LBB0_495:                              #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 622 19 is_stmt 1              # parallel-rne.mlir:622:19
	setlt.u r5, r23, r18
	.loc	1 623 19                        # parallel-rne.mlir:623:19
	bneq r5, zero, .LBB0_497
.LBB0_496:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r22
	and r2, r2, r5
.LBB0_497:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	setlt.u r5, r23, r17
	.loc	1 623 19                        # parallel-rne.mlir:623:19
	beq r5, zero, .LBB0_502
# %bb.498:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r23, r3
	.loc	1 623 19                        # parallel-rne.mlir:623:19
	bneq r3, zero, .LBB0_500
.LBB0_499:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r22
	and r19, r3, r5
.LBB0_500:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	setlt.u r3, r23, r15
	lui r7, 524288
	.loc	1 623 19                        # parallel-rne.mlir:623:19
	bneq r3, zero, .LBB0_483
# %bb.501:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r13, 16
	lui r5, 1048560
	andi r3, r3, 1
	add.s r3, r13, r3
	add.s r3, r3, r22
	and r14, r3, r5
	j .LBB0_483
.LBB0_502:                              # %vector.body770
                                        #   in Loop: Header=BB0_484 Depth=3
	srli r5, r28, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r28, r5
	add.s r5, r5, r22
	and r24, r5, r7
	setlt.u r3, r23, r3
	.loc	1 623 19                        # parallel-rne.mlir:623:19
	beq r3, zero, .LBB0_499
	j .LBB0_500
.LBB0_503:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 602 7                         # parallel-rne.mlir:602:7
	mfence { sm }
.LBB0_504:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	addli r2, zero, 3
	.loc	1 630 7                         # parallel-rne.mlir:630:7
	sync_core
	.loc	1 631 7                         # parallel-rne.mlir:631:7
	bneq r13, r2, .LBB0_506
# %bb.505:                              # %.critedge11.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r5, zero, 2
	xsignal r2, 0
	.loc	1 632 7                         # parallel-rne.mlir:632:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 633 7                         # parallel-rne.mlir:633:7
	addli r2, zero, 27
	xsignal r2, 0
	.loc	1 634 7                         # parallel-rne.mlir:634:7
	addli r2, zero, 30
	xsignal r2, 0
	.loc	1 635 7                         # parallel-rne.mlir:635:7
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 637 13                        # parallel-rne.mlir:637:13
	loadli.w r2,  -72(r30)
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	slli r3, r3, 16
	add.s r17, r3, r4
	j .LBB0_508
.LBB0_506:                              # %.critedge11
                                        #   in Loop: Header=BB0_7 Depth=1
	loadli.w r2,  -72(r30)
	addli r5, zero, 2
	loadli.w r4,  -632(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -72(r30)
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	addli r2, zero, 5
	.loc	1 637 13                        # parallel-rne.mlir:637:13
	slli r3, r3, 16
	add.s r17, r3, r4
	.loc	1 638 7                         # parallel-rne.mlir:638:7
	bneq r13, r2, .LBB0_508
# %bb.507:                              # %.thread119
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 24
	addli r9, zero, 4095
	addli r7, zero, 4
	lui r8, 260096
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	lock zero, r5
	lui r2, 258048
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 31
	ew_cfg zero, r9, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, zero, 19
	loadli.w r10,  -456(r30)                # 4-byte Folded Reload
	hp_ssmul r17, r10, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	loadli.w r2,  -60(r30)
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	.loc	1 641 7                         # parallel-rne.mlir:641:7
	addli r2, zero, 26
	xwait r2, 0
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	slli r2, r3, 16
	.loc	1 641 7                         # parallel-rne.mlir:641:7
	addli r3, zero, 34
	xwait r3, 0
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	loadli.w r3,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 641 7                         # parallel-rne.mlir:641:7
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r8, 0
	ew_cfg zero, r9, zero, 2
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	add.s r4, r2, r3
	.loc	1 641 7                         # parallel-rne.mlir:641:7
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, r7, 19
	dsmul r4, r10, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	loadli.w r2,  -48(r30)
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -48(r30)
	slli r2, r3, 16
	.loc	1 644 7                         # parallel-rne.mlir:644:7
	addli r3, zero, 27
	xwait r3, 0
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	loadli.w r3,  -640(r30)                 # 4-byte Folded Reload
	add.s r12, r2, r3
	.loc	1 644 7                         # parallel-rne.mlir:644:7
	addli r2, zero, 36
	xwait r2, 0
	lock zero, r5
	addli r2, zero, 25
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r8, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, r7, 19
	lui r7, 524288
	dsmul r12, r4, r10, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	addli r2, zero, 33
	xsignal r2, 0
	addli r2, zero, 35
	xsignal r2, 0
	j .LBB0_510
.LBB0_508:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	loadli.w r2,  -60(r30)
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	loadli.w r3,  -48(r30)
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	mod.s r4, r2, r5
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	mod.s r5, r3, r5
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	addli r2, r2, 1
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	addli r3, r3, 1
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	storeli.w r2, -60(r30)
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	storeli.w r3, -48(r30)
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	slli r2, r4, 16
	loadli.w r4,  -636(r30)                 # 4-byte Folded Reload
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	slli r5, r5, 16
	.loc	1 640 13                        # parallel-rne.mlir:640:13
	add.s r4, r2, r4
	.loc	1 643 13                        # parallel-rne.mlir:643:13
	loadli.w r2,  -640(r30)                 # 4-byte Folded Reload
	add.s r12, r5, r2
	.loc	1 646 7                         # parallel-rne.mlir:646:7
	addli r2, zero, 3
	bneq r13, r2, .LBB0_510
# %bb.509:                              # %.critedge13
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	xwait r2, 0
	.loc	1 647 7                         # parallel-rne.mlir:647:7
	addli r2, zero, 25
	xwait r2, 0
	.loc	1 648 7                         # parallel-rne.mlir:648:7
	addli r2, zero, 33
	xwait r2, 0
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	addli r2, zero, 35
	xwait r2, 0
.LBB0_510:                              # %.critedge15
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	addli r2, zero, 255
	.loc	1 651 7                         # parallel-rne.mlir:651:7
	xfence
	.loc	1 652 7                         # parallel-rne.mlir:652:7
	mfence { lm, sm, gm }
	.loc	1 653 7                         # parallel-rne.mlir:653:7
	csr_set csr5, r2
	sub.s r2, r16, r4
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	sub.s r2, r16, r12
	storeli.w r2, -556(r30)                 # 4-byte Folded Spill
	sync_core
	storeli.w r17, -464(r30)                # 4-byte Folded Spill
	.loc	1 654 7                         # parallel-rne.mlir:654:7
	beq r13, zero, .LBB0_518
# %bb.511:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 689 7                         # parallel-rne.mlir:689:7
	addli r2, zero, 1
	beq r13, r2, .LBB0_546
.LBB0_512:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 724 7                         # parallel-rne.mlir:724:7
	addli r2, zero, 2
	beq r13, r2, .LBB0_574
.LBB0_513:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 3
	beq r13, r2, .LBB0_602
.LBB0_514:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	addli r2, zero, 4
	beq r13, r2, .LBB0_630
.LBB0_515:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 829 7                         # parallel-rne.mlir:829:7
	addli r2, zero, 5
	beq r13, r2, .LBB0_658
.LBB0_516:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 7                         # parallel-rne.mlir:864:7
	addli r2, zero, 6
	beq r13, r2, .LBB0_686
.LBB0_517:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 899 7                         # parallel-rne.mlir:899:7
	beq r13, r14, .LBB0_714
	j .LBB0_742
.LBB0_518:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	zext_int2long r[8:9], zero
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 654 7 is_stmt 1               # parallel-rne.mlir:654:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_520
.LBB0_519:                              # %middle.block765
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 661 9                         # parallel-rne.mlir:661:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_545
.LBB0_520:                              # %.preheader166
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_537 Depth 3
                                        #       Child Loop BB0_523 Depth 3
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_535
# %bb.521:                              # %scalar.ph757.preheader
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_523
.LBB0_522:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 684 13 is_stmt 1              # parallel-rne.mlir:684:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_519
.LBB0_523:                              # %scalar.ph757
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_520 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	slli r7, r7, 2
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	add.s r5, r5, r7
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.s r8, r12, r7
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	loads.w r5, 0(r5)
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	and r9, r5, r21
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	beq r9, r6, .LBB0_525
# %bb.524:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_525:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r11, zero, .LBB0_533
# %bb.526:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r9, zero, .LBB0_534
.LBB0_527:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	beq r11, r6, .LBB0_529
.LBB0_528:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_529:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r9, zero, .LBB0_531
# %bb.530:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_531:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	setlt.u r9, r6, r11
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r9, zero, .LBB0_522
# %bb.532:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_522
.LBB0_533:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	beq r9, zero, .LBB0_527
.LBB0_534:                              # %scalar.ph757
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r11, r6, .LBB0_528
	j .LBB0_529
.LBB0_535:                              # %vector.body759.preheader
                                        #   in Loop: Header=BB0_520 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_537
.LBB0_536:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 662 11 is_stmt 1              # parallel-rne.mlir:662:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 684 13                        # parallel-rne.mlir:684:13
	add.s r3, r16, r3
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 684 13                        # parallel-rne.mlir:684:13
	stores.w r24, 12(r3)
	stores.w r7, 8(r3)
	stores.w r14, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 662 11                        # parallel-rne.mlir:662:11
	bneq r2, zero, .LBB0_519
.LBB0_537:                              # %vector.body759
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_520 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r24, 523264
	slli r3, r2, 2
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	add.s r28, r4, r3
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	add.s r13, r2, r3
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	loads.w r2, 0(r28)
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	loads.w r5, 0(r13)
	.loc	1 670 19                        # parallel-rne.mlir:670:19
	and r2, r2, r21
	.loc	1 668 19                        # parallel-rne.mlir:668:19
	and r5, r5, r21
	.loc	1 671 19                        # parallel-rne.mlir:671:19
	seteq r7, r2, r6
	.loc	1 675 19                        # parallel-rne.mlir:675:19
	seteq r15, r2, zero
	.loc	1 672 19                        # parallel-rne.mlir:672:19
	seteq r11, r5, zero
	.loc	1 674 19                        # parallel-rne.mlir:674:19
	seteq r14, r5, r6
	.loc	1 680 19                        # parallel-rne.mlir:680:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 673 19                        # parallel-rne.mlir:673:19
	and r2, r7, r11
	.loc	1 676 19                        # parallel-rne.mlir:676:19
	and r7, r15, r14
	lui r11, 523264
	.loc	1 677 19                        # parallel-rne.mlir:677:19
	or r7, r2, r7
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	add.s r2, r12, r3
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	or r5, r5, r7
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r5, zero, .LBB0_539
# %bb.538:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_539:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r14, r5, r6
	seteq r18, r5, zero
	seteq r15, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r14, r15
	and r14, r18, r17
	or r7, r7, r14
	lui r14, 523264
	or r5, r5, r7
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r5, zero, .LBB0_541
# %bb.540:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r2)
.LBB0_541:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r15, r5, r6
	seteq r10, r5, zero
	seteq r18, r7, r6
	seteq r17, r7, zero
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r15, r17
	and r10, r10, r18
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r5, zero, .LBB0_543
# %bb.542:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_543:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	loads.w r5, 12(r28)
	loads.w r10, 12(r13)
	and r5, r5, r21
	and r10, r10, r21
	seteq r13, r5, r6
	seteq r18, r5, zero
	seteq r15, r10, zero
	seteq r17, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r13, r15
	and r13, r18, r17
	or r10, r10, r13
	or r5, r5, r10
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	bneq r5, zero, .LBB0_536
# %bb.544:                              # %vector.body759
                                        #   in Loop: Header=BB0_537 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r2)
	j .LBB0_536
.LBB0_545:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 654 7 is_stmt 1               # parallel-rne.mlir:654:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 689 7                         # parallel-rne.mlir:689:7
	addli r2, zero, 1
	bneq r13, r2, .LBB0_512
.LBB0_546:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[8:9], r3
	.loc	1 689 7                         # parallel-rne.mlir:689:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_548
.LBB0_547:                              # %middle.block750
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 696 9 is_stmt 1               # parallel-rne.mlir:696:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_573
.LBB0_548:                              # %.preheader165
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_565 Depth 3
                                        #       Child Loop BB0_551 Depth 3
	.loc	1 697 11                        # parallel-rne.mlir:697:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_563
# %bb.549:                              # %scalar.ph742.preheader
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_551
.LBB0_550:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 697 11                        # parallel-rne.mlir:697:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 719 13 is_stmt 1              # parallel-rne.mlir:719:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 697 11                        # parallel-rne.mlir:697:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_547
.LBB0_551:                              # %scalar.ph742
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_548 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	slli r7, r7, 2
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	add.s r5, r5, r7
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	add.s r8, r12, r7
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	loads.w r5, 0(r5)
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	and r9, r5, r21
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	beq r9, r6, .LBB0_553
# %bb.552:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_553:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r11, zero, .LBB0_561
# %bb.554:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r9, zero, .LBB0_562
.LBB0_555:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	beq r11, r6, .LBB0_557
.LBB0_556:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_557:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r9, zero, .LBB0_559
# %bb.558:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_559:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	setlt.u r9, r6, r11
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r9, zero, .LBB0_550
# %bb.560:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_550
.LBB0_561:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	beq r9, zero, .LBB0_555
.LBB0_562:                              # %scalar.ph742
                                        #   in Loop: Header=BB0_551 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r11, r6, .LBB0_556
	j .LBB0_557
.LBB0_563:                              # %vector.body744.preheader
                                        #   in Loop: Header=BB0_548 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_565
.LBB0_564:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 697 11 is_stmt 1              # parallel-rne.mlir:697:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 719 13                        # parallel-rne.mlir:719:13
	add.s r3, r16, r3
	.loc	1 697 11                        # parallel-rne.mlir:697:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 719 13                        # parallel-rne.mlir:719:13
	stores.w r24, 12(r3)
	stores.w r7, 8(r3)
	stores.w r14, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 697 11                        # parallel-rne.mlir:697:11
	bneq r2, zero, .LBB0_547
.LBB0_565:                              # %vector.body744
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_548 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r24, 523264
	slli r3, r2, 2
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	add.s r28, r4, r3
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	add.s r13, r2, r3
	.loc	1 698 19                        # parallel-rne.mlir:698:19
	loads.w r2, 0(r28)
	.loc	1 699 19                        # parallel-rne.mlir:699:19
	loads.w r5, 0(r13)
	.loc	1 705 19                        # parallel-rne.mlir:705:19
	and r2, r2, r21
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	and r5, r5, r21
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	seteq r7, r2, r6
	.loc	1 710 19                        # parallel-rne.mlir:710:19
	seteq r14, r2, zero
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	seteq r10, r5, zero
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	seteq r11, r5, r6
	.loc	1 715 19                        # parallel-rne.mlir:715:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	and r2, r7, r10
	.loc	1 711 19                        # parallel-rne.mlir:711:19
	and r7, r14, r11
	lui r11, 523264
	.loc	1 712 19                        # parallel-rne.mlir:712:19
	or r7, r2, r7
	.loc	1 700 19                        # parallel-rne.mlir:700:19
	add.s r2, r12, r3
	.loc	1 716 19                        # parallel-rne.mlir:716:19
	or r5, r5, r7
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r5, zero, .LBB0_567
# %bb.566:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_567:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r17, r5, zero
	seteq r14, r7, zero
	seteq r15, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r14
	and r10, r17, r15
	lui r14, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r5, zero, .LBB0_569
# %bb.568:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r2)
.LBB0_569:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r15, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r15
	and r10, r18, r17
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r5, zero, .LBB0_571
# %bb.570:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_571:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	loads.w r5, 12(r28)
	loads.w r10, 12(r13)
	and r5, r5, r21
	and r10, r10, r21
	seteq r13, r5, r6
	seteq r18, r5, zero
	seteq r15, r10, zero
	seteq r17, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r13, r15
	and r13, r18, r17
	or r10, r10, r13
	or r5, r5, r10
	.loc	1 717 19                        # parallel-rne.mlir:717:19
	bneq r5, zero, .LBB0_564
# %bb.572:                              # %vector.body744
                                        #   in Loop: Header=BB0_565 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r2)
	j .LBB0_564
.LBB0_573:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 689 7 is_stmt 1               # parallel-rne.mlir:689:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 724 7                         # parallel-rne.mlir:724:7
	addli r2, zero, 2
	bneq r13, r2, .LBB0_513
.LBB0_574:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 724 7                         # parallel-rne.mlir:724:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[8:9], r2
	mfence { lm, sm, gm }
	j .LBB0_576
.LBB0_575:                              # %middle.block735
                                        #   in Loop: Header=BB0_576 Depth=2
	.loc	1 731 9 is_stmt 1               # parallel-rne.mlir:731:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_601
.LBB0_576:                              # %.preheader164
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_593 Depth 3
                                        #       Child Loop BB0_579 Depth 3
	.loc	1 732 11                        # parallel-rne.mlir:732:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_591
# %bb.577:                              # %scalar.ph727.preheader
                                        #   in Loop: Header=BB0_576 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_579
.LBB0_578:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	.loc	1 732 11                        # parallel-rne.mlir:732:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 754 13 is_stmt 1              # parallel-rne.mlir:754:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 732 11                        # parallel-rne.mlir:732:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_575
.LBB0_579:                              # %scalar.ph727
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_576 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	slli r7, r7, 2
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	add.s r5, r5, r7
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	add.s r8, r12, r7
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	loads.w r5, 0(r5)
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	and r9, r5, r21
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r9, r6, .LBB0_581
# %bb.580:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_581:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r11, zero, .LBB0_589
# %bb.582:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r9, zero, .LBB0_590
.LBB0_583:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	beq r11, r6, .LBB0_585
.LBB0_584:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_585:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r9, zero, .LBB0_587
# %bb.586:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_587:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	setlt.u r9, r6, r11
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r9, zero, .LBB0_578
# %bb.588:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_578
.LBB0_589:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r9, zero, .LBB0_583
.LBB0_590:                              # %scalar.ph727
                                        #   in Loop: Header=BB0_579 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r11, r6, .LBB0_584
	j .LBB0_585
.LBB0_591:                              # %vector.body729.preheader
                                        #   in Loop: Header=BB0_576 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_593
.LBB0_592:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 732 11 is_stmt 1              # parallel-rne.mlir:732:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	add.s r3, r16, r3
	.loc	1 732 11                        # parallel-rne.mlir:732:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	stores.w r24, 12(r3)
	stores.w r7, 8(r3)
	stores.w r14, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 732 11                        # parallel-rne.mlir:732:11
	bneq r2, zero, .LBB0_575
.LBB0_593:                              # %vector.body729
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_576 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r24, 523264
	slli r3, r2, 2
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	add.s r28, r4, r3
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	add.s r13, r2, r3
	.loc	1 733 19                        # parallel-rne.mlir:733:19
	loads.w r2, 0(r28)
	.loc	1 734 19                        # parallel-rne.mlir:734:19
	loads.w r5, 0(r13)
	.loc	1 740 19                        # parallel-rne.mlir:740:19
	and r2, r2, r21
	.loc	1 738 19                        # parallel-rne.mlir:738:19
	and r5, r5, r21
	.loc	1 741 19                        # parallel-rne.mlir:741:19
	seteq r7, r2, r6
	.loc	1 745 19                        # parallel-rne.mlir:745:19
	seteq r14, r2, zero
	.loc	1 742 19                        # parallel-rne.mlir:742:19
	seteq r10, r5, zero
	.loc	1 744 19                        # parallel-rne.mlir:744:19
	seteq r11, r5, r6
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 743 19                        # parallel-rne.mlir:743:19
	and r2, r7, r10
	.loc	1 746 19                        # parallel-rne.mlir:746:19
	and r7, r14, r11
	lui r11, 523264
	.loc	1 747 19                        # parallel-rne.mlir:747:19
	or r7, r2, r7
	.loc	1 735 19                        # parallel-rne.mlir:735:19
	add.s r2, r12, r3
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	or r5, r5, r7
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r5, zero, .LBB0_595
# %bb.594:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_595:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r17, r5, zero
	seteq r14, r7, zero
	seteq r15, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r14
	and r10, r17, r15
	lui r14, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r5, zero, .LBB0_597
# %bb.596:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r2)
.LBB0_597:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r15, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r15
	and r10, r18, r17
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r5, zero, .LBB0_599
# %bb.598:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_599:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	loads.w r5, 12(r28)
	loads.w r10, 12(r13)
	and r5, r5, r21
	and r10, r10, r21
	seteq r13, r5, r6
	seteq r18, r5, zero
	seteq r15, r10, zero
	seteq r17, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r13, r15
	and r13, r18, r17
	or r10, r10, r13
	or r5, r5, r10
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	bneq r5, zero, .LBB0_592
# %bb.600:                              # %vector.body729
                                        #   in Loop: Header=BB0_593 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r2)
	j .LBB0_592
.LBB0_601:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 724 7 is_stmt 1               # parallel-rne.mlir:724:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r2, zero, 3
	bneq r13, r2, .LBB0_514
.LBB0_602:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[8:9], r2
	mfence { lm, sm, gm }
	j .LBB0_604
.LBB0_603:                              # %middle.block720
                                        #   in Loop: Header=BB0_604 Depth=2
	.loc	1 766 9 is_stmt 1               # parallel-rne.mlir:766:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_629
.LBB0_604:                              # %.preheader163
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_621 Depth 3
                                        #       Child Loop BB0_607 Depth 3
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_619
# %bb.605:                              # %scalar.ph712.preheader
                                        #   in Loop: Header=BB0_604 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_607
.LBB0_606:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 789 13 is_stmt 1              # parallel-rne.mlir:789:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_603
.LBB0_607:                              # %scalar.ph712
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_604 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	slli r7, r7, 2
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	add.s r5, r5, r7
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.s r8, r12, r7
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	loads.w r5, 0(r5)
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	and r9, r5, r21
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	beq r9, r6, .LBB0_609
# %bb.608:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_609:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r11, zero, .LBB0_617
# %bb.610:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r9, zero, .LBB0_618
.LBB0_611:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	beq r11, r6, .LBB0_613
.LBB0_612:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_613:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r9, zero, .LBB0_615
# %bb.614:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_615:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	setlt.u r9, r6, r11
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r9, zero, .LBB0_606
# %bb.616:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_606
.LBB0_617:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	beq r9, zero, .LBB0_611
.LBB0_618:                              # %scalar.ph712
                                        #   in Loop: Header=BB0_607 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r11, r6, .LBB0_612
	j .LBB0_613
.LBB0_619:                              # %vector.body714.preheader
                                        #   in Loop: Header=BB0_604 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_621
.LBB0_620:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 767 11 is_stmt 1              # parallel-rne.mlir:767:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 789 13                        # parallel-rne.mlir:789:13
	add.s r3, r16, r3
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 789 13                        # parallel-rne.mlir:789:13
	stores.w r24, 12(r3)
	stores.w r7, 8(r3)
	stores.w r14, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 767 11                        # parallel-rne.mlir:767:11
	bneq r2, zero, .LBB0_603
.LBB0_621:                              # %vector.body714
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_604 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r24, 523264
	slli r3, r2, 2
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	add.s r28, r4, r3
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	add.s r13, r2, r3
	.loc	1 768 19                        # parallel-rne.mlir:768:19
	loads.w r2, 0(r28)
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	loads.w r5, 0(r13)
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	and r2, r2, r21
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	and r5, r5, r21
	.loc	1 776 19                        # parallel-rne.mlir:776:19
	seteq r7, r2, r6
	.loc	1 780 19                        # parallel-rne.mlir:780:19
	seteq r14, r2, zero
	.loc	1 777 19                        # parallel-rne.mlir:777:19
	seteq r10, r5, zero
	.loc	1 779 19                        # parallel-rne.mlir:779:19
	seteq r11, r5, r6
	.loc	1 785 19                        # parallel-rne.mlir:785:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 778 19                        # parallel-rne.mlir:778:19
	and r2, r7, r10
	.loc	1 781 19                        # parallel-rne.mlir:781:19
	and r7, r14, r11
	lui r11, 523264
	.loc	1 782 19                        # parallel-rne.mlir:782:19
	or r7, r2, r7
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.s r2, r12, r3
	.loc	1 786 19                        # parallel-rne.mlir:786:19
	or r5, r5, r7
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r5, zero, .LBB0_623
# %bb.622:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_623:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r17, r5, zero
	seteq r14, r7, zero
	seteq r15, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r14
	and r10, r17, r15
	lui r14, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r5, zero, .LBB0_625
# %bb.624:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r2)
.LBB0_625:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r15, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r15
	and r10, r18, r17
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r5, zero, .LBB0_627
# %bb.626:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_627:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	loads.w r5, 12(r28)
	loads.w r10, 12(r13)
	and r5, r5, r21
	and r10, r10, r21
	seteq r13, r5, r6
	seteq r18, r5, zero
	seteq r15, r10, zero
	seteq r17, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r13, r15
	and r13, r18, r17
	or r10, r10, r13
	or r5, r5, r10
	.loc	1 787 19                        # parallel-rne.mlir:787:19
	bneq r5, zero, .LBB0_620
# %bb.628:                              # %vector.body714
                                        #   in Loop: Header=BB0_621 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r2)
	j .LBB0_620
.LBB0_629:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 759 7 is_stmt 1               # parallel-rne.mlir:759:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	addli r2, zero, 4
	bneq r13, r2, .LBB0_515
.LBB0_630:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 794 7                         # parallel-rne.mlir:794:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	xfence
	zext_int2long r[8:9], r2
	mfence { lm, sm, gm }
	j .LBB0_632
.LBB0_631:                              # %middle.block705
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 801 9 is_stmt 1               # parallel-rne.mlir:801:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_657
.LBB0_632:                              # %.preheader162
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_649 Depth 3
                                        #       Child Loop BB0_635 Depth 3
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_647
# %bb.633:                              # %scalar.ph697.preheader
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_635
.LBB0_634:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 824 13 is_stmt 1              # parallel-rne.mlir:824:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_631
.LBB0_635:                              # %scalar.ph697
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	slli r7, r7, 2
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	add.s r5, r5, r7
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	add.s r8, r12, r7
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	loads.w r5, 0(r5)
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	and r9, r5, r21
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	beq r9, r6, .LBB0_637
# %bb.636:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_637:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r11, zero, .LBB0_645
# %bb.638:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r9, zero, .LBB0_646
.LBB0_639:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	beq r11, r6, .LBB0_641
.LBB0_640:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_641:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r9, zero, .LBB0_643
# %bb.642:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_643:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	setlt.u r9, r6, r11
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r9, zero, .LBB0_634
# %bb.644:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_634
.LBB0_645:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	beq r9, zero, .LBB0_639
.LBB0_646:                              # %scalar.ph697
                                        #   in Loop: Header=BB0_635 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r11, r6, .LBB0_640
	j .LBB0_641
.LBB0_647:                              # %vector.body699.preheader
                                        #   in Loop: Header=BB0_632 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_649
.LBB0_648:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 802 11 is_stmt 1              # parallel-rne.mlir:802:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 824 13                        # parallel-rne.mlir:824:13
	add.s r3, r16, r3
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 824 13                        # parallel-rne.mlir:824:13
	stores.w r24, 12(r3)
	stores.w r7, 8(r3)
	stores.w r14, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 802 11                        # parallel-rne.mlir:802:11
	bneq r2, zero, .LBB0_631
.LBB0_649:                              # %vector.body699
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_632 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r24, 523264
	slli r3, r2, 2
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	add.s r28, r4, r3
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	add.s r13, r2, r3
	.loc	1 803 19                        # parallel-rne.mlir:803:19
	loads.w r2, 0(r28)
	.loc	1 804 19                        # parallel-rne.mlir:804:19
	loads.w r5, 0(r13)
	.loc	1 810 19                        # parallel-rne.mlir:810:19
	and r2, r2, r21
	.loc	1 808 19                        # parallel-rne.mlir:808:19
	and r5, r5, r21
	.loc	1 811 19                        # parallel-rne.mlir:811:19
	seteq r7, r2, r6
	.loc	1 815 19                        # parallel-rne.mlir:815:19
	seteq r14, r2, zero
	.loc	1 812 19                        # parallel-rne.mlir:812:19
	seteq r10, r5, zero
	.loc	1 814 19                        # parallel-rne.mlir:814:19
	seteq r11, r5, r6
	.loc	1 820 19                        # parallel-rne.mlir:820:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 813 19                        # parallel-rne.mlir:813:19
	and r2, r7, r10
	.loc	1 816 19                        # parallel-rne.mlir:816:19
	and r7, r14, r11
	lui r11, 523264
	.loc	1 817 19                        # parallel-rne.mlir:817:19
	or r7, r2, r7
	.loc	1 805 19                        # parallel-rne.mlir:805:19
	add.s r2, r12, r3
	.loc	1 821 19                        # parallel-rne.mlir:821:19
	or r5, r5, r7
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r5, zero, .LBB0_651
# %bb.650:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_651:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r17, r5, zero
	seteq r14, r7, zero
	seteq r15, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r14
	and r10, r17, r15
	lui r14, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r5, zero, .LBB0_653
# %bb.652:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r2)
.LBB0_653:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r15, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r15
	and r10, r18, r17
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r5, zero, .LBB0_655
# %bb.654:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_655:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	loads.w r5, 12(r28)
	loads.w r10, 12(r13)
	and r5, r5, r21
	and r10, r10, r21
	seteq r13, r5, r6
	seteq r18, r5, zero
	seteq r15, r10, zero
	seteq r17, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r13, r15
	and r13, r18, r17
	or r10, r10, r13
	or r5, r5, r10
	.loc	1 822 19                        # parallel-rne.mlir:822:19
	bneq r5, zero, .LBB0_648
# %bb.656:                              # %vector.body699
                                        #   in Loop: Header=BB0_649 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r2)
	j .LBB0_648
.LBB0_657:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 794 7 is_stmt 1               # parallel-rne.mlir:794:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 829 7                         # parallel-rne.mlir:829:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_516
.LBB0_658:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 829 7                         # parallel-rne.mlir:829:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	xfence
	zext_int2long r[8:9], r2
	mfence { lm, sm, gm }
	j .LBB0_660
.LBB0_659:                              # %middle.block690
                                        #   in Loop: Header=BB0_660 Depth=2
	.loc	1 836 9 is_stmt 1               # parallel-rne.mlir:836:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_685
.LBB0_660:                              # %.preheader161
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_677 Depth 3
                                        #       Child Loop BB0_663 Depth 3
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_675
# %bb.661:                              # %scalar.ph682.preheader
                                        #   in Loop: Header=BB0_660 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_663
.LBB0_662:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 859 13 is_stmt 1              # parallel-rne.mlir:859:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_659
.LBB0_663:                              # %scalar.ph682
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_660 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	slli r7, r7, 2
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	add.s r5, r5, r7
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	add.s r8, r12, r7
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	loads.w r5, 0(r5)
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	and r9, r5, r21
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	beq r9, r6, .LBB0_665
# %bb.664:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_665:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r11, zero, .LBB0_673
# %bb.666:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r9, zero, .LBB0_674
.LBB0_667:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	beq r11, r6, .LBB0_669
.LBB0_668:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_669:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r9, zero, .LBB0_671
# %bb.670:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_671:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	setlt.u r9, r6, r11
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r9, zero, .LBB0_662
# %bb.672:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_662
.LBB0_673:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	beq r9, zero, .LBB0_667
.LBB0_674:                              # %scalar.ph682
                                        #   in Loop: Header=BB0_663 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r11, r6, .LBB0_668
	j .LBB0_669
.LBB0_675:                              # %vector.body684.preheader
                                        #   in Loop: Header=BB0_660 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_677
.LBB0_676:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 837 11 is_stmt 1              # parallel-rne.mlir:837:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 859 13                        # parallel-rne.mlir:859:13
	add.s r3, r16, r3
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 859 13                        # parallel-rne.mlir:859:13
	stores.w r24, 12(r3)
	stores.w r7, 8(r3)
	stores.w r14, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 837 11                        # parallel-rne.mlir:837:11
	bneq r2, zero, .LBB0_659
.LBB0_677:                              # %vector.body684
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_660 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r24, 523264
	slli r3, r2, 2
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	add.s r28, r4, r3
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	add.s r13, r2, r3
	.loc	1 838 19                        # parallel-rne.mlir:838:19
	loads.w r2, 0(r28)
	.loc	1 839 19                        # parallel-rne.mlir:839:19
	loads.w r5, 0(r13)
	.loc	1 845 19                        # parallel-rne.mlir:845:19
	and r2, r2, r21
	.loc	1 843 19                        # parallel-rne.mlir:843:19
	and r5, r5, r21
	.loc	1 846 19                        # parallel-rne.mlir:846:19
	seteq r7, r2, r6
	.loc	1 850 19                        # parallel-rne.mlir:850:19
	seteq r14, r2, zero
	.loc	1 847 19                        # parallel-rne.mlir:847:19
	seteq r10, r5, zero
	.loc	1 849 19                        # parallel-rne.mlir:849:19
	seteq r11, r5, r6
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 848 19                        # parallel-rne.mlir:848:19
	and r2, r7, r10
	.loc	1 851 19                        # parallel-rne.mlir:851:19
	and r7, r14, r11
	lui r11, 523264
	.loc	1 852 19                        # parallel-rne.mlir:852:19
	or r7, r2, r7
	.loc	1 840 19                        # parallel-rne.mlir:840:19
	add.s r2, r12, r3
	.loc	1 856 19                        # parallel-rne.mlir:856:19
	or r5, r5, r7
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r5, zero, .LBB0_679
# %bb.678:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_679:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r17, r5, zero
	seteq r14, r7, zero
	seteq r15, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r14
	and r10, r17, r15
	lui r14, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r5, zero, .LBB0_681
# %bb.680:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r2)
.LBB0_681:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r15, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r15
	and r10, r18, r17
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r5, zero, .LBB0_683
# %bb.682:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_683:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r5, 12(r28)
	loads.w r10, 12(r13)
	and r5, r5, r21
	and r10, r10, r21
	seteq r13, r5, r6
	seteq r18, r5, zero
	seteq r15, r10, zero
	seteq r17, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r13, r15
	and r13, r18, r17
	or r10, r10, r13
	or r5, r5, r10
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	bneq r5, zero, .LBB0_676
# %bb.684:                              # %vector.body684
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r2)
	j .LBB0_676
.LBB0_685:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 829 7 is_stmt 1               # parallel-rne.mlir:829:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 864 7                         # parallel-rne.mlir:864:7
	addli r2, zero, 6
	bneq r13, r2, .LBB0_517
.LBB0_686:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 864 7                         # parallel-rne.mlir:864:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	xfence
	zext_int2long r[8:9], r2
	mfence { lm, sm, gm }
	j .LBB0_688
.LBB0_687:                              # %middle.block675
                                        #   in Loop: Header=BB0_688 Depth=2
	.loc	1 871 9 is_stmt 1               # parallel-rne.mlir:871:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_713
.LBB0_688:                              # %.preheader160
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_705 Depth 3
                                        #       Child Loop BB0_691 Depth 3
	.loc	1 872 11                        # parallel-rne.mlir:872:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_703
# %bb.689:                              # %scalar.ph667.preheader
                                        #   in Loop: Header=BB0_688 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_691
.LBB0_690:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 872 11                        # parallel-rne.mlir:872:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 894 13 is_stmt 1              # parallel-rne.mlir:894:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 872 11                        # parallel-rne.mlir:872:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_687
.LBB0_691:                              # %scalar.ph667
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_688 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	slli r7, r7, 2
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	add.s r5, r5, r7
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	add.s r8, r12, r7
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	loads.w r5, 0(r5)
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	and r9, r5, r21
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	beq r9, r6, .LBB0_693
# %bb.692:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_693:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r11, zero, .LBB0_701
# %bb.694:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r9, zero, .LBB0_702
.LBB0_695:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	beq r11, r6, .LBB0_697
.LBB0_696:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_697:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r9, zero, .LBB0_699
# %bb.698:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_699:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	setlt.u r9, r6, r11
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r9, zero, .LBB0_690
# %bb.700:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_690
.LBB0_701:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	beq r9, zero, .LBB0_695
.LBB0_702:                              # %scalar.ph667
                                        #   in Loop: Header=BB0_691 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r11, r6, .LBB0_696
	j .LBB0_697
.LBB0_703:                              # %vector.body669.preheader
                                        #   in Loop: Header=BB0_688 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_705
.LBB0_704:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 872 11 is_stmt 1              # parallel-rne.mlir:872:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 894 13                        # parallel-rne.mlir:894:13
	add.s r3, r16, r3
	.loc	1 872 11                        # parallel-rne.mlir:872:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 894 13                        # parallel-rne.mlir:894:13
	stores.w r24, 12(r3)
	stores.w r7, 8(r3)
	stores.w r14, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 872 11                        # parallel-rne.mlir:872:11
	bneq r2, zero, .LBB0_687
.LBB0_705:                              # %vector.body669
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_688 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r24, 523264
	slli r3, r2, 2
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	add.s r28, r4, r3
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	add.s r13, r2, r3
	.loc	1 873 19                        # parallel-rne.mlir:873:19
	loads.w r2, 0(r28)
	.loc	1 874 19                        # parallel-rne.mlir:874:19
	loads.w r5, 0(r13)
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	and r2, r2, r21
	.loc	1 878 19                        # parallel-rne.mlir:878:19
	and r5, r5, r21
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	seteq r7, r2, r6
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	seteq r14, r2, zero
	.loc	1 882 19                        # parallel-rne.mlir:882:19
	seteq r10, r5, zero
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	seteq r11, r5, r6
	.loc	1 890 19                        # parallel-rne.mlir:890:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	and r2, r7, r10
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r7, r14, r11
	lui r11, 523264
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	or r7, r2, r7
	.loc	1 875 19                        # parallel-rne.mlir:875:19
	add.s r2, r12, r3
	.loc	1 891 19                        # parallel-rne.mlir:891:19
	or r5, r5, r7
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r5, zero, .LBB0_707
# %bb.706:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_707:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r17, r5, zero
	seteq r14, r7, zero
	seteq r15, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r14
	and r10, r17, r15
	lui r14, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r5, zero, .LBB0_709
# %bb.708:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r2)
.LBB0_709:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r13)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r15, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r15
	and r10, r18, r17
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r5, zero, .LBB0_711
# %bb.710:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_711:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	loads.w r5, 12(r28)
	loads.w r10, 12(r13)
	and r5, r5, r21
	and r10, r10, r21
	seteq r13, r5, r6
	seteq r18, r5, zero
	seteq r15, r10, zero
	seteq r17, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r13, r15
	and r13, r18, r17
	or r10, r10, r13
	or r5, r5, r10
	.loc	1 892 19                        # parallel-rne.mlir:892:19
	bneq r5, zero, .LBB0_704
# %bb.712:                              # %vector.body669
                                        #   in Loop: Header=BB0_705 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r2)
	j .LBB0_704
.LBB0_713:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 7 is_stmt 1               # parallel-rne.mlir:864:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 899 7                         # parallel-rne.mlir:899:7
	bneq r13, r14, .LBB0_742
.LBB0_714:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -552(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -556(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 899 7                         # parallel-rne.mlir:899:7
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	xfence
	zext_int2long r[8:9], r2
	mfence { lm, sm, gm }
	j .LBB0_716
.LBB0_715:                              # %middle.block660
                                        #   in Loop: Header=BB0_716 Depth=2
	.loc	1 906 9 is_stmt 1               # parallel-rne.mlir:906:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli.d r[8:9], r[7:8], 0
	lui r7, 524288
	beq r2, zero, .LBB0_741
.LBB0_716:                              # %.preheader159
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_733 Depth 3
                                        #       Child Loop BB0_719 Depth 3
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	sll.d r[19:20], r[8:9], r14
	store.d r[8:9], -544(r30)               # 8-byte Folded Spill
	beq r2, zero, .LBB0_731
# %bb.717:                              # %scalar.ph652.preheader
                                        #   in Loop: Header=BB0_716 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_719
.LBB0_718:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 929 13 is_stmt 1              # parallel-rne.mlir:929:13
	add.s r7, r16, r7
	stores.w r8, 0(r7)
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_715
.LBB0_719:                              # %scalar.ph652
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_716 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.ul r[7:8], r[2:3], r[19:20]
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	loadli.w r5,  -456(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	slli r7, r7, 2
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	add.s r5, r5, r7
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	add.s r8, r12, r7
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	loads.w r5, 0(r5)
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	loads.w r14, 0(r8)
	lui r8, 523264
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r9, r5, r21
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	beq r9, r6, .LBB0_721
# %bb.720:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r14, 0
.LBB0_721:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	add.s r5, r4, r7
	loads.w r5, 0(r5)
	and r11, r5, r21
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r11, zero, .LBB0_729
# %bb.722:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r14, 523264
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r9, zero, .LBB0_730
.LBB0_723:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	beq r11, r6, .LBB0_725
.LBB0_724:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
.LBB0_725:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r9, zero, .LBB0_727
# %bb.726:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r14, 0
.LBB0_727:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	setlt.u r9, r6, r11
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r9, zero, .LBB0_718
# %bb.728:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r5, 0
	j .LBB0_718
.LBB0_729:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	addli r13, r14, 0
	lui r14, 523264
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	beq r9, zero, .LBB0_723
.LBB0_730:                              # %scalar.ph652
                                        #   in Loop: Header=BB0_719 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r13, 0
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r11, r6, .LBB0_724
	j .LBB0_725
.LBB0_731:                              # %vector.body654.preheader
                                        #   in Loop: Header=BB0_716 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[8:9], zero
	j .LBB0_733
.LBB0_732:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	.loc	1 907 11 is_stmt 1              # parallel-rne.mlir:907:11
	addli.d r[8:9], r[8:9], 4
	.loc	1 929 13                        # parallel-rne.mlir:929:13
	add.s r3, r16, r3
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	seteq.d r2, r[8:9], r[26:27]
	.loc	1 929 13                        # parallel-rne.mlir:929:13
	stores.w r15, 12(r3)
	stores.w r7, 8(r3)
	stores.w r13, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 907 11                        # parallel-rne.mlir:907:11
	bneq r2, zero, .LBB0_715
.LBB0_733:                              # %vector.body654
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_716 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.ul r[2:3], r[8:9], r[19:20]
	lui r15, 523264
	slli r3, r2, 2
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	add.s r24, r4, r3
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	add.s r28, r2, r3
	.loc	1 908 19                        # parallel-rne.mlir:908:19
	loads.w r2, 0(r24)
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	loads.w r5, 0(r28)
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	and r2, r2, r21
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r5, r5, r21
	.loc	1 916 19                        # parallel-rne.mlir:916:19
	seteq r7, r2, r6
	.loc	1 920 19                        # parallel-rne.mlir:920:19
	seteq r13, r2, zero
	.loc	1 917 19                        # parallel-rne.mlir:917:19
	seteq r10, r5, zero
	.loc	1 919 19                        # parallel-rne.mlir:919:19
	seteq r11, r5, r6
	.loc	1 925 19                        # parallel-rne.mlir:925:19
	max.u r2, r2, r5
	setlt.u r5, r6, r2
	.loc	1 918 19                        # parallel-rne.mlir:918:19
	and r2, r7, r10
	.loc	1 921 19                        # parallel-rne.mlir:921:19
	and r7, r13, r11
	lui r11, 523264
	.loc	1 922 19                        # parallel-rne.mlir:922:19
	or r7, r2, r7
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	add.s r2, r12, r3
	.loc	1 926 19                        # parallel-rne.mlir:926:19
	or r5, r5, r7
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r5, zero, .LBB0_735
# %bb.734:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r2)
.LBB0_735:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	loads.w r5, 4(r24)
	loads.w r7, 4(r28)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r17, r5, zero
	seteq r13, r7, zero
	seteq r14, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r13
	and r10, r17, r14
	lui r13, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r5, zero, .LBB0_737
# %bb.736:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r13, 4(r2)
.LBB0_737:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	loads.w r5, 8(r24)
	loads.w r7, 8(r28)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r14, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r14
	and r10, r18, r17
	or r7, r7, r10
	or r5, r5, r7
	lui r7, 523264
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r5, zero, .LBB0_739
# %bb.738:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 8(r2)
.LBB0_739:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	loads.w r5, 12(r24)
	loads.w r10, 12(r28)
	and r5, r5, r21
	and r10, r10, r21
	seteq r14, r5, r6
	seteq r24, r5, zero
	seteq r17, r10, zero
	seteq r18, r10, r6
	max.u r5, r5, r10
	setlt.u r5, r6, r5
	and r10, r14, r17
	and r14, r24, r18
	or r10, r10, r14
	or r5, r5, r10
	.loc	1 927 19                        # parallel-rne.mlir:927:19
	bneq r5, zero, .LBB0_732
# %bb.740:                              # %vector.body654
                                        #   in Loop: Header=BB0_733 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r2)
	j .LBB0_732
.LBB0_741:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 899 7 is_stmt 1               # parallel-rne.mlir:899:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
.LBB0_742:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 934 7                         # parallel-rne.mlir:934:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 935 7                         # parallel-rne.mlir:935:7
	addli r2, zero, 3
	.loc	1 934 7                         # parallel-rne.mlir:934:7
	sync_core
	.loc	1 935 7                         # parallel-rne.mlir:935:7
	bneq r13, r2, .LBB0_744
# %bb.743:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 15
	addli r5, zero, 2
	xsignal r2, 0
	.loc	1 936 7                         # parallel-rne.mlir:936:7
	addli r2, zero, 28
	xsignal r2, 0
	.loc	1 937 7                         # parallel-rne.mlir:937:7
	addli r2, zero, 34
	xsignal r2, 0
	.loc	1 938 7                         # parallel-rne.mlir:938:7
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 940 13                        # parallel-rne.mlir:940:13
	loadli.w r2,  -36(r30)
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	loadli.w r2,  -644(r30)                 # 4-byte Folded Reload
	slli r3, r3, 16
	add.s r4, r3, r2
	.loc	1 944 7                         # parallel-rne.mlir:944:7
	addli r2, zero, 37
	xwait r2, 0
	.loc	1 945 7                         # parallel-rne.mlir:945:7
	addli r2, zero, 41
	xwait r2, 0
	j .LBB0_746
.LBB0_744:                              # %.critedge19
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 940 13                        # parallel-rne.mlir:940:13
	loadli.w r2,  -36(r30)
	addli r5, zero, 2
	loadli.w r4,  -644(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r5
	addli r2, r2, 1
	storeli.w r2, -36(r30)
	.loc	1 941 7                         # parallel-rne.mlir:941:7
	addli r2, zero, 5
	.loc	1 940 13                        # parallel-rne.mlir:940:13
	slli r3, r3, 16
	add.s r4, r3, r4
	.loc	1 941 7                         # parallel-rne.mlir:941:7
	bneq r13, r2, .LBB0_746
# %bb.745:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 15
	lui r3, 260096
	addli r8, zero, 4095
	xwait r2, 0
	addli r2, zero, 28
	xwait r2, 0
	addli r2, zero, 38
	xwait r2, 0
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -660(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, r2, zero, 0
	addli r3, zero, 4
	ew_cfg zero, r8, zero, 2
	ew_cfg r3, zero, zero, 3
	ew_cfg r3, r3, r3, 19
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	dsmadd r4, r2, r16, 0
	addli r2, zero, 16
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	.loc	1 942 7                         # parallel-rne.mlir:942:7
	lock zero, r5
	ew_cfg zero, zero, zero, 1
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 37
	ew_cfg zero, r8, zero, 2
	ew_cfg r3, zero, zero, 3
	ew_cfg r3, r3, zero, 19
	hp_ssmul r4, r4, r4, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
.LBB0_746:                              # %.critedge23
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -572(r30)                 # 4-byte Folded Reload
	lui r3, 128
	.loc	1 947 7 is_stmt 1               # parallel-rne.mlir:947:7
	xfence
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	mfence { lm, sm, gm }
	ori r3, r3, 1024
	mod.s r2, r2, r5
	slli r2, r2, 16
	add.s r12, r2, r3
	.loc	1 949 7                         # parallel-rne.mlir:949:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r12, r4
	storeli.w r2, -544(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	beq r13, zero, .LBB0_754
# %bb.747:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 966 7                         # parallel-rne.mlir:966:7
	addli r2, zero, 1
	beq r13, r2, .LBB0_760
.LBB0_748:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 982 7                         # parallel-rne.mlir:982:7
	addli r2, zero, 2
	beq r13, r2, .LBB0_766
.LBB0_749:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 998 7                         # parallel-rne.mlir:998:7
	addli r2, zero, 3
	beq r13, r2, .LBB0_772
.LBB0_750:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	addli r2, zero, 4
	beq r13, r2, .LBB0_778
.LBB0_751:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	addli r2, zero, 5
	beq r13, r2, .LBB0_784
.LBB0_752:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	addli r2, zero, 6
	beq r13, r2, .LBB0_790
.LBB0_753:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1062 7                        # parallel-rne.mlir:1062:7
	beq r13, r14, .LBB0_796
	j .LBB0_802
.LBB0_754:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 950 7 is_stmt 1               # parallel-rne.mlir:950:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	j .LBB0_756
.LBB0_755:                              # %middle.block645
                                        #   in Loop: Header=BB0_756 Depth=2
	.loc	1 957 9                         # parallel-rne.mlir:957:9
	load.d r[10:11], -520(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_759
.LBB0_756:                              # %.preheader158
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_758 Depth 3
                                        #       Child Loop BB0_757 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[8:9], r3
	.loc	1 958 11 is_stmt 1              # parallel-rne.mlir:958:11
	beq r2, zero, .LBB0_758
.LBB0_757:                              # %scalar.ph638
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_756 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.ul r[10:11], r[17:18], r[14:15]
	slli r3, r10, 2
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.s r5, r4, r3
	.loc	1 961 13                        # parallel-rne.mlir:961:13
	add.s r3, r12, r3
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	loads.w r5, 0(r5)
	.loc	1 961 13                        # parallel-rne.mlir:961:13
	stores.w r5, 0(r3)
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	bneq r7, zero, .LBB0_757
	j .LBB0_755
.LBB0_758:                              # %vector.body640
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_756 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.ul r[10:11], r[17:18], r[14:15]
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	slli r3, r10, 2
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.s r7, r4, r3
	.loc	1 961 13                        # parallel-rne.mlir:961:13
	add.s r3, r12, r3
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r19, 4(r7)
	loads.w r20, 0(r7)
	loads.w r24, 28(r7)
	loads.w r28, 24(r7)
	loads.w r13, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 961 13                        # parallel-rne.mlir:961:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r19, 4(r3)
	stores.w r20, 0(r3)
	stores.w r24, 28(r3)
	stores.w r28, 24(r3)
	stores.w r13, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 958 11                        # parallel-rne.mlir:958:11
	beq r5, zero, .LBB0_758
	j .LBB0_755
.LBB0_759:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 950 7                         # parallel-rne.mlir:950:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 966 7                         # parallel-rne.mlir:966:7
	addli r2, zero, 1
	bneq r13, r2, .LBB0_748
.LBB0_760:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 966 7                         # parallel-rne.mlir:966:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 16
	zext_int2long r[8:9], r3
	j .LBB0_762
.LBB0_761:                              # %middle.block635
                                        #   in Loop: Header=BB0_762 Depth=2
	.loc	1 973 9 is_stmt 1               # parallel-rne.mlir:973:9
	load.d r[10:11], -512(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_765
.LBB0_762:                              # %.preheader157
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_764 Depth 3
                                        #       Child Loop BB0_763 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[8:9], r3
	.loc	1 974 11 is_stmt 1              # parallel-rne.mlir:974:11
	beq r2, zero, .LBB0_764
.LBB0_763:                              # %scalar.ph628
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_762 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	add.ul r[10:11], r[17:18], r[14:15]
	slli r3, r10, 2
	.loc	1 974 11                        # parallel-rne.mlir:974:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	add.s r5, r4, r3
	.loc	1 977 13                        # parallel-rne.mlir:977:13
	add.s r3, r12, r3
	.loc	1 974 11                        # parallel-rne.mlir:974:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	loads.w r5, 0(r5)
	.loc	1 977 13                        # parallel-rne.mlir:977:13
	stores.w r5, 0(r3)
	.loc	1 974 11                        # parallel-rne.mlir:974:11
	bneq r7, zero, .LBB0_763
	j .LBB0_761
.LBB0_764:                              # %vector.body630
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_762 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	add.ul r[10:11], r[17:18], r[14:15]
	.loc	1 974 11                        # parallel-rne.mlir:974:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	slli r3, r10, 2
	.loc	1 974 11                        # parallel-rne.mlir:974:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	add.s r7, r4, r3
	.loc	1 977 13                        # parallel-rne.mlir:977:13
	add.s r3, r12, r3
	.loc	1 975 19                        # parallel-rne.mlir:975:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r13, 4(r7)
	loads.w r19, 0(r7)
	loads.w r20, 28(r7)
	loads.w r24, 24(r7)
	loads.w r28, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 977 13                        # parallel-rne.mlir:977:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r13, 4(r3)
	stores.w r19, 0(r3)
	stores.w r20, 28(r3)
	stores.w r24, 24(r3)
	stores.w r28, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 974 11                        # parallel-rne.mlir:974:11
	beq r5, zero, .LBB0_764
	j .LBB0_761
.LBB0_765:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 966 7                         # parallel-rne.mlir:966:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 982 7                         # parallel-rne.mlir:982:7
	addli r2, zero, 2
	bneq r13, r2, .LBB0_749
.LBB0_766:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -544(r30)                 # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 982 7                         # parallel-rne.mlir:982:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	setlt.u r2, r2, r3
	j .LBB0_768
.LBB0_767:                              # %middle.block625
                                        #   in Loop: Header=BB0_768 Depth=2
	.loc	1 989 9 is_stmt 1               # parallel-rne.mlir:989:9
	load.d r[10:11], -504(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_771
.LBB0_768:                              # %.preheader156
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_770 Depth 3
                                        #       Child Loop BB0_769 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[8:9], r3
	.loc	1 990 11 is_stmt 1              # parallel-rne.mlir:990:11
	beq r2, zero, .LBB0_770
.LBB0_769:                              # %scalar.ph618
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_768 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	add.ul r[10:11], r[17:18], r[14:15]
	slli r3, r10, 2
	.loc	1 990 11                        # parallel-rne.mlir:990:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	add.s r5, r4, r3
	.loc	1 993 13                        # parallel-rne.mlir:993:13
	add.s r3, r12, r3
	.loc	1 990 11                        # parallel-rne.mlir:990:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	loads.w r5, 0(r5)
	.loc	1 993 13                        # parallel-rne.mlir:993:13
	stores.w r5, 0(r3)
	.loc	1 990 11                        # parallel-rne.mlir:990:11
	bneq r7, zero, .LBB0_769
	j .LBB0_767
.LBB0_770:                              # %vector.body620
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_768 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	add.ul r[10:11], r[17:18], r[14:15]
	.loc	1 990 11                        # parallel-rne.mlir:990:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	slli r3, r10, 2
	.loc	1 990 11                        # parallel-rne.mlir:990:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	add.s r7, r4, r3
	.loc	1 993 13                        # parallel-rne.mlir:993:13
	add.s r3, r12, r3
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r13, 4(r7)
	loads.w r19, 0(r7)
	loads.w r20, 28(r7)
	loads.w r24, 24(r7)
	loads.w r28, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 993 13                        # parallel-rne.mlir:993:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r13, 4(r3)
	stores.w r19, 0(r3)
	stores.w r20, 28(r3)
	stores.w r24, 24(r3)
	stores.w r28, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 990 11                        # parallel-rne.mlir:990:11
	beq r5, zero, .LBB0_770
	j .LBB0_767
.LBB0_771:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 982 7                         # parallel-rne.mlir:982:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 998 7                         # parallel-rne.mlir:998:7
	addli r2, zero, 3
	bneq r13, r2, .LBB0_750
.LBB0_772:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 998 7                         # parallel-rne.mlir:998:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 48
	zext_int2long r[8:9], r3
	j .LBB0_774
.LBB0_773:                              # %middle.block615
                                        #   in Loop: Header=BB0_774 Depth=2
	.loc	1 1005 9 is_stmt 1              # parallel-rne.mlir:1005:9
	load.d r[10:11], -496(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_777
.LBB0_774:                              # %.preheader155
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_776 Depth 3
                                        #       Child Loop BB0_775 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[8:9], r3
	.loc	1 1006 11 is_stmt 1             # parallel-rne.mlir:1006:11
	beq r2, zero, .LBB0_776
.LBB0_775:                              # %scalar.ph608
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_774 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	add.ul r[10:11], r[17:18], r[14:15]
	slli r3, r10, 2
	.loc	1 1006 11                       # parallel-rne.mlir:1006:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	add.s r5, r4, r3
	.loc	1 1009 13                       # parallel-rne.mlir:1009:13
	add.s r3, r12, r3
	.loc	1 1006 11                       # parallel-rne.mlir:1006:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	loads.w r5, 0(r5)
	.loc	1 1009 13                       # parallel-rne.mlir:1009:13
	stores.w r5, 0(r3)
	.loc	1 1006 11                       # parallel-rne.mlir:1006:11
	bneq r7, zero, .LBB0_775
	j .LBB0_773
.LBB0_776:                              # %vector.body610
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_774 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	add.ul r[10:11], r[17:18], r[14:15]
	.loc	1 1006 11                       # parallel-rne.mlir:1006:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	slli r3, r10, 2
	.loc	1 1006 11                       # parallel-rne.mlir:1006:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	add.s r7, r4, r3
	.loc	1 1009 13                       # parallel-rne.mlir:1009:13
	add.s r3, r12, r3
	.loc	1 1007 19                       # parallel-rne.mlir:1007:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r13, 4(r7)
	loads.w r19, 0(r7)
	loads.w r20, 28(r7)
	loads.w r24, 24(r7)
	loads.w r28, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1009 13                       # parallel-rne.mlir:1009:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r13, 4(r3)
	stores.w r19, 0(r3)
	stores.w r20, 28(r3)
	stores.w r24, 24(r3)
	stores.w r28, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 1006 11                       # parallel-rne.mlir:1006:11
	beq r5, zero, .LBB0_776
	j .LBB0_773
.LBB0_777:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 998 7                         # parallel-rne.mlir:998:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	addli r2, zero, 4
	bneq r13, r2, .LBB0_751
.LBB0_778:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 64
	zext_int2long r[8:9], r3
	j .LBB0_780
.LBB0_779:                              # %middle.block605
                                        #   in Loop: Header=BB0_780 Depth=2
	.loc	1 1021 9 is_stmt 1              # parallel-rne.mlir:1021:9
	load.d r[10:11], -488(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_783
.LBB0_780:                              # %.preheader154
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_782 Depth 3
                                        #       Child Loop BB0_781 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[8:9], r3
	.loc	1 1022 11 is_stmt 1             # parallel-rne.mlir:1022:11
	beq r2, zero, .LBB0_782
.LBB0_781:                              # %scalar.ph598
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_780 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	add.ul r[10:11], r[17:18], r[14:15]
	slli r3, r10, 2
	.loc	1 1022 11                       # parallel-rne.mlir:1022:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	add.s r5, r4, r3
	.loc	1 1025 13                       # parallel-rne.mlir:1025:13
	add.s r3, r12, r3
	.loc	1 1022 11                       # parallel-rne.mlir:1022:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	loads.w r5, 0(r5)
	.loc	1 1025 13                       # parallel-rne.mlir:1025:13
	stores.w r5, 0(r3)
	.loc	1 1022 11                       # parallel-rne.mlir:1022:11
	bneq r7, zero, .LBB0_781
	j .LBB0_779
.LBB0_782:                              # %vector.body600
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_780 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	add.ul r[10:11], r[17:18], r[14:15]
	.loc	1 1022 11                       # parallel-rne.mlir:1022:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	slli r3, r10, 2
	.loc	1 1022 11                       # parallel-rne.mlir:1022:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	add.s r7, r4, r3
	.loc	1 1025 13                       # parallel-rne.mlir:1025:13
	add.s r3, r12, r3
	.loc	1 1023 19                       # parallel-rne.mlir:1023:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r13, 4(r7)
	loads.w r19, 0(r7)
	loads.w r20, 28(r7)
	loads.w r24, 24(r7)
	loads.w r28, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1025 13                       # parallel-rne.mlir:1025:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r13, 4(r3)
	stores.w r19, 0(r3)
	stores.w r20, 28(r3)
	stores.w r24, 24(r3)
	stores.w r28, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 1022 11                       # parallel-rne.mlir:1022:11
	beq r5, zero, .LBB0_782
	j .LBB0_779
.LBB0_783:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1014 7                        # parallel-rne.mlir:1014:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_752
.LBB0_784:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 80
	zext_int2long r[8:9], r3
	j .LBB0_786
.LBB0_785:                              # %middle.block595
                                        #   in Loop: Header=BB0_786 Depth=2
	.loc	1 1037 9 is_stmt 1              # parallel-rne.mlir:1037:9
	load.d r[10:11], -480(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_789
.LBB0_786:                              # %.preheader153
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_788 Depth 3
                                        #       Child Loop BB0_787 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[8:9], r3
	.loc	1 1038 11 is_stmt 1             # parallel-rne.mlir:1038:11
	beq r2, zero, .LBB0_788
.LBB0_787:                              # %scalar.ph588
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_786 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	add.ul r[10:11], r[17:18], r[14:15]
	slli r3, r10, 2
	.loc	1 1038 11                       # parallel-rne.mlir:1038:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	add.s r5, r4, r3
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	add.s r3, r12, r3
	.loc	1 1038 11                       # parallel-rne.mlir:1038:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	loads.w r5, 0(r5)
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	stores.w r5, 0(r3)
	.loc	1 1038 11                       # parallel-rne.mlir:1038:11
	bneq r7, zero, .LBB0_787
	j .LBB0_785
.LBB0_788:                              # %vector.body590
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_786 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	add.ul r[10:11], r[17:18], r[14:15]
	.loc	1 1038 11                       # parallel-rne.mlir:1038:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	slli r3, r10, 2
	.loc	1 1038 11                       # parallel-rne.mlir:1038:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	add.s r7, r4, r3
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	add.s r3, r12, r3
	.loc	1 1039 19                       # parallel-rne.mlir:1039:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r13, 4(r7)
	loads.w r19, 0(r7)
	loads.w r20, 28(r7)
	loads.w r24, 24(r7)
	loads.w r28, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1041 13                       # parallel-rne.mlir:1041:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r13, 4(r3)
	stores.w r19, 0(r3)
	stores.w r20, 28(r3)
	stores.w r24, 24(r3)
	stores.w r28, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 1038 11                       # parallel-rne.mlir:1038:11
	beq r5, zero, .LBB0_788
	j .LBB0_785
.LBB0_789:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	addli r2, zero, 6
	bneq r13, r2, .LBB0_753
.LBB0_790:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 96
	zext_int2long r[8:9], r3
	j .LBB0_792
.LBB0_791:                              # %middle.block585
                                        #   in Loop: Header=BB0_792 Depth=2
	.loc	1 1053 9 is_stmt 1              # parallel-rne.mlir:1053:9
	load.d r[10:11], -472(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_795
.LBB0_792:                              # %.preheader152
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_794 Depth 3
                                        #       Child Loop BB0_793 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[8:9], r3
	.loc	1 1054 11 is_stmt 1             # parallel-rne.mlir:1054:11
	beq r2, zero, .LBB0_794
.LBB0_793:                              # %scalar.ph578
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_792 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[10:11], r[17:18], r[14:15]
	slli r3, r10, 2
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r5, r4, r3
	.loc	1 1057 13                       # parallel-rne.mlir:1057:13
	add.s r3, r12, r3
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r5, 0(r5)
	.loc	1 1057 13                       # parallel-rne.mlir:1057:13
	stores.w r5, 0(r3)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	bneq r7, zero, .LBB0_793
	j .LBB0_791
.LBB0_794:                              # %vector.body580
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_792 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.ul r[10:11], r[17:18], r[14:15]
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	slli r3, r10, 2
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r7, r4, r3
	.loc	1 1057 13                       # parallel-rne.mlir:1057:13
	add.s r3, r12, r3
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r13, 4(r7)
	loads.w r19, 0(r7)
	loads.w r20, 28(r7)
	loads.w r24, 24(r7)
	loads.w r28, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1057 13                       # parallel-rne.mlir:1057:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r13, 4(r3)
	stores.w r19, 0(r3)
	stores.w r20, 28(r3)
	stores.w r24, 24(r3)
	stores.w r28, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 1054 11                       # parallel-rne.mlir:1054:11
	beq r5, zero, .LBB0_794
	j .LBB0_791
.LBB0_795:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1046 7                        # parallel-rne.mlir:1046:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1062 7                        # parallel-rne.mlir:1062:7
	bneq r13, r14, .LBB0_802
.LBB0_796:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -544(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 1062 7                        # parallel-rne.mlir:1062:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 112
	zext_int2long r[8:9], r3
	j .LBB0_798
.LBB0_797:                              # %middle.block575
                                        #   in Loop: Header=BB0_798 Depth=2
	.loc	1 1069 9 is_stmt 1              # parallel-rne.mlir:1069:9
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r3, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r3, zero, .LBB0_801
.LBB0_798:                              # %.preheader151
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_800 Depth 3
                                        #       Child Loop BB0_799 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[13:14], r[8:9], r3
	.loc	1 1070 11 is_stmt 1             # parallel-rne.mlir:1070:11
	beq r2, zero, .LBB0_800
.LBB0_799:                              # %scalar.ph568
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_798 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.ul r[10:11], r[17:18], r[13:14]
	slli r3, r10, 2
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.s r5, r4, r3
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	add.s r3, r12, r3
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	setlt.ul r7, r[17:18], r[10:11]
	addli.d r[17:18], r[17:18], 1
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	loads.w r5, 0(r5)
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	stores.w r5, 0(r3)
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	bneq r7, zero, .LBB0_799
	j .LBB0_797
.LBB0_800:                              # %vector.body570
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_798 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.ul r[10:11], r[17:18], r[13:14]
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	slli r3, r10, 2
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	seteq.d r5, r[17:18], r[26:27]
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	add.s r7, r4, r3
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	add.s r3, r12, r3
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	loads.w r10, 12(r7)
	loads.w r11, 8(r7)
	loads.w r15, 4(r7)
	loads.w r19, 0(r7)
	loads.w r20, 28(r7)
	loads.w r24, 24(r7)
	loads.w r28, 20(r7)
	loads.w r7, 16(r7)
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r15, 4(r3)
	stores.w r19, 0(r3)
	stores.w r20, 28(r3)
	stores.w r24, 24(r3)
	stores.w r28, 20(r3)
	stores.w r7, 16(r3)
	.loc	1 1070 11                       # parallel-rne.mlir:1070:11
	beq r5, zero, .LBB0_800
	j .LBB0_797
.LBB0_801:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1062 7                        # parallel-rne.mlir:1062:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
.LBB0_802:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1079 7                        # parallel-rne.mlir:1079:7
	addli r2, zero, 3
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	sync_core
	.loc	1 1079 7                        # parallel-rne.mlir:1079:7
	bneq r13, r2, .LBB0_804
# %bb.803:                              # %.critedge25
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 38
	addli r3, zero, 39
	xsignal r2, 0
	.loc	1 1082 7                        # parallel-rne.mlir:1082:7
	addli r2, zero, 16
	.loc	1 1080 7                        # parallel-rne.mlir:1080:7
	xsignal r3, 0
	.loc	1 1082 7                        # parallel-rne.mlir:1082:7
	xwait r2, 0
	.loc	1 1083 7                        # parallel-rne.mlir:1083:7
	xwait r3, 0
.LBB0_804:                              # %.critedge27
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1085 7                        # parallel-rne.mlir:1085:7
	xfence
	.loc	1 1087 7                        # parallel-rne.mlir:1087:7
	addli r2, zero, 255
	addli r4, zero, 18
	.loc	1 1086 7                        # parallel-rne.mlir:1086:7
	mfence { lm, sm, gm }
	.loc	1 1087 7                        # parallel-rne.mlir:1087:7
	csr_set csr5, r2
	sync_core
	.loc	1 1088 7                        # parallel-rne.mlir:1088:7
	beq r13, zero, .LBB0_812
# %bb.805:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1109 7                        # parallel-rne.mlir:1109:7
	addli r2, zero, 1
	beq r13, r2, .LBB0_833
.LBB0_806:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1130 7                        # parallel-rne.mlir:1130:7
	addli r2, zero, 2
	beq r13, r2, .LBB0_854
.LBB0_807:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	addli r2, zero, 3
	beq r13, r2, .LBB0_875
.LBB0_808:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1172 7                        # parallel-rne.mlir:1172:7
	addli r2, zero, 4
	beq r13, r2, .LBB0_896
.LBB0_809:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1193 7                        # parallel-rne.mlir:1193:7
	addli r2, zero, 5
	beq r13, r2, .LBB0_917
.LBB0_810:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1214 7                        # parallel-rne.mlir:1214:7
	addli r2, zero, 6
	beq r13, r2, .LBB0_938
.LBB0_811:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1235 7                        # parallel-rne.mlir:1235:7
	beq r13, r14, .LBB0_959
	j .LBB0_980
.LBB0_812:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1088 7                        # parallel-rne.mlir:1088:7
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	store.d r[3:4], -544(r30)               # 8-byte Folded Spill
	j .LBB0_814
.LBB0_813:                              # %middle.block565
                                        #   in Loop: Header=BB0_814 Depth=2
	.loc	1 1095 9                        # parallel-rne.mlir:1095:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	beq r2, zero, .LBB0_832
.LBB0_814:                              # %.preheader150
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_816 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[19:20], -544(r30)              # 8-byte Folded Reload
	addli.d r[17:18], r[3:4], 0
	sll.d r[13:14], r[3:4], r2
	j .LBB0_816
.LBB0_815:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	.loc	1 1096 11 is_stmt 1             # parallel-rne.mlir:1096:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1104 13                       # parallel-rne.mlir:1104:13
	add.s r5, r16, r24
	.loc	1 1096 11                       # parallel-rne.mlir:1096:11
	setneq.d r7, r[19:20], r[26:27]
	.loc	1 1104 13                       # parallel-rne.mlir:1104:13
	stores.w r28, 12(r5)
	stores.w r9, 8(r5)
	stores.w r8, 4(r5)
	stores.w r4, 0(r5)
	stores.w r3, 28(r5)
	stores.w r2, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1096 11                       # parallel-rne.mlir:1096:11
	beq r7, zero, .LBB0_813
.LBB0_816:                              # %vector.body560
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_814 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	add.ul r[2:3], r[19:20], r[13:14]
	lui r7, 524288
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r28, 12(r5)
	loads.w r9, 8(r5)
	loads.w r8, 4(r5)
	loads.w r3, 28(r5)
	loads.w r2, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	and r5, r4, r21
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_818
# %bb.817:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_818:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	and r5, r8, r21
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_820
# %bb.819:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r8, r7
	or r8, r5, r25
.LBB0_820:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	and r5, r9, r21
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_822
# %bb.821:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r9, r7
	or r9, r5, r25
.LBB0_822:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_824
# %bb.823:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_824:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_826
# %bb.825:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_826:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_828
# %bb.827:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_828:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_830
# %bb.829:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_830:                              # %vector.body560
                                        #   in Loop: Header=BB0_816 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	beq r5, zero, .LBB0_815
# %bb.831:                              #   in Loop: Header=BB0_816 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
	j .LBB0_815
.LBB0_832:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1088 7 is_stmt 1              # parallel-rne.mlir:1088:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	lui r7, 524288
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1109 7                        # parallel-rne.mlir:1109:7
	addli r2, zero, 1
	bneq r13, r2, .LBB0_806
.LBB0_833:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 1109 7                        # parallel-rne.mlir:1109:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_835
.LBB0_834:                              # %middle.block555
                                        #   in Loop: Header=BB0_835 Depth=2
	.loc	1 1116 9 is_stmt 1              # parallel-rne.mlir:1116:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	addli.d r[17:18], r[3:4], 0
	beq r2, zero, .LBB0_853
.LBB0_835:                              # %.preheader149
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_837 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[17:18], r14
	zext_int2long r[13:14], zero
	j .LBB0_837
.LBB0_836:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	.loc	1 1125 13 is_stmt 1             # parallel-rne.mlir:1125:13
	add.s r5, r16, r24
	.loc	1 1117 11                       # parallel-rne.mlir:1117:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1125 13                       # parallel-rne.mlir:1125:13
	stores.w r3, 12(r5)
	.loc	1 1117 11                       # parallel-rne.mlir:1117:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 1125 13                       # parallel-rne.mlir:1125:13
	stores.w r2, 8(r5)
	stores.w r28, 4(r5)
	stores.w r4, 0(r5)
	stores.w r20, 28(r5)
	stores.w r19, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1117 11                       # parallel-rne.mlir:1117:11
	beq r3, zero, .LBB0_834
.LBB0_837:                              # %vector.body550
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_835 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1118 19                       # parallel-rne.mlir:1118:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r3, 12(r5)
	loads.w r2, 8(r5)
	loads.w r28, 4(r5)
	loads.w r20, 28(r5)
	loads.w r19, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1121 19                       # parallel-rne.mlir:1121:19
	and r5, r4, r21
	.loc	1 1122 19                       # parallel-rne.mlir:1122:19
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_839
# %bb.838:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_839:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_841
# %bb.840:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_841:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_843
# %bb.842:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_843:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_845
# %bb.844:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
.LBB0_845:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_847
# %bb.846:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_847:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_849
# %bb.848:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_849:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	and r5, r19, r21
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_851
# %bb.850:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r19, r7
	or r19, r5, r25
.LBB0_851:                              # %vector.body550
                                        #   in Loop: Header=BB0_837 Depth=3
	and r5, r20, r21
	setlt.u r5, r25, r5
	.loc	1 1123 19                       # parallel-rne.mlir:1123:19
	beq r5, zero, .LBB0_836
# %bb.852:                              #   in Loop: Header=BB0_837 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r20, r7
	or r20, r5, r25
	j .LBB0_836
.LBB0_853:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1109 7 is_stmt 1              # parallel-rne.mlir:1109:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1130 7                        # parallel-rne.mlir:1130:7
	addli r2, zero, 2
	bneq r13, r2, .LBB0_807
.LBB0_854:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 1130 7                        # parallel-rne.mlir:1130:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_856
.LBB0_855:                              # %middle.block545
                                        #   in Loop: Header=BB0_856 Depth=2
	.loc	1 1137 9 is_stmt 1              # parallel-rne.mlir:1137:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	addli.d r[17:18], r[3:4], 0
	beq r2, zero, .LBB0_874
.LBB0_856:                              # %.preheader148
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_858 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[17:18], r14
	zext_int2long r[13:14], zero
	j .LBB0_858
.LBB0_857:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	.loc	1 1146 13 is_stmt 1             # parallel-rne.mlir:1146:13
	add.s r5, r16, r24
	.loc	1 1138 11                       # parallel-rne.mlir:1138:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r3, 12(r5)
	.loc	1 1138 11                       # parallel-rne.mlir:1138:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r2, 8(r5)
	stores.w r28, 4(r5)
	stores.w r4, 0(r5)
	stores.w r20, 28(r5)
	stores.w r19, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1138 11                       # parallel-rne.mlir:1138:11
	beq r3, zero, .LBB0_855
.LBB0_858:                              # %vector.body540
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_856 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r3, 12(r5)
	loads.w r2, 8(r5)
	loads.w r28, 4(r5)
	loads.w r20, 28(r5)
	loads.w r19, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	and r5, r4, r21
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_860
# %bb.859:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_860:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_862
# %bb.861:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_862:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_864
# %bb.863:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_864:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_866
# %bb.865:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
.LBB0_866:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_868
# %bb.867:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_868:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_870
# %bb.869:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_870:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	and r5, r19, r21
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_872
# %bb.871:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r19, r7
	or r19, r5, r25
.LBB0_872:                              # %vector.body540
                                        #   in Loop: Header=BB0_858 Depth=3
	and r5, r20, r21
	setlt.u r5, r25, r5
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r5, zero, .LBB0_857
# %bb.873:                              #   in Loop: Header=BB0_858 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r20, r7
	or r20, r5, r25
	j .LBB0_857
.LBB0_874:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1130 7 is_stmt 1              # parallel-rne.mlir:1130:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	addli r2, zero, 3
	bneq r13, r2, .LBB0_808
.LBB0_875:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_877
.LBB0_876:                              # %middle.block535
                                        #   in Loop: Header=BB0_877 Depth=2
	.loc	1 1158 9 is_stmt 1              # parallel-rne.mlir:1158:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	addli.d r[17:18], r[3:4], 0
	beq r2, zero, .LBB0_895
.LBB0_877:                              # %.preheader147
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_879 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[17:18], r14
	zext_int2long r[13:14], zero
	j .LBB0_879
.LBB0_878:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	.loc	1 1167 13 is_stmt 1             # parallel-rne.mlir:1167:13
	add.s r5, r16, r24
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1167 13                       # parallel-rne.mlir:1167:13
	stores.w r3, 12(r5)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 1167 13                       # parallel-rne.mlir:1167:13
	stores.w r2, 8(r5)
	stores.w r28, 4(r5)
	stores.w r4, 0(r5)
	stores.w r20, 28(r5)
	stores.w r19, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	beq r3, zero, .LBB0_876
.LBB0_879:                              # %vector.body530
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_877 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r3, 12(r5)
	loads.w r2, 8(r5)
	loads.w r28, 4(r5)
	loads.w r20, 28(r5)
	loads.w r19, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	and r5, r4, r21
	.loc	1 1164 19                       # parallel-rne.mlir:1164:19
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_881
# %bb.880:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_881:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_883
# %bb.882:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_883:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_885
# %bb.884:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_885:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_887
# %bb.886:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
.LBB0_887:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_889
# %bb.888:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_889:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_891
# %bb.890:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_891:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	and r5, r19, r21
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_893
# %bb.892:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r19, r7
	or r19, r5, r25
.LBB0_893:                              # %vector.body530
                                        #   in Loop: Header=BB0_879 Depth=3
	and r5, r20, r21
	setlt.u r5, r25, r5
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	beq r5, zero, .LBB0_878
# %bb.894:                              #   in Loop: Header=BB0_879 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r20, r7
	or r20, r5, r25
	j .LBB0_878
.LBB0_895:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1151 7 is_stmt 1              # parallel-rne.mlir:1151:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1172 7                        # parallel-rne.mlir:1172:7
	addli r2, zero, 4
	bneq r13, r2, .LBB0_809
.LBB0_896:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 1172 7                        # parallel-rne.mlir:1172:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_898
.LBB0_897:                              # %middle.block525
                                        #   in Loop: Header=BB0_898 Depth=2
	.loc	1 1179 9 is_stmt 1              # parallel-rne.mlir:1179:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	addli.d r[17:18], r[3:4], 0
	beq r2, zero, .LBB0_916
.LBB0_898:                              # %.preheader146
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_900 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[17:18], r14
	zext_int2long r[13:14], zero
	j .LBB0_900
.LBB0_899:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	.loc	1 1188 13 is_stmt 1             # parallel-rne.mlir:1188:13
	add.s r5, r16, r24
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1188 13                       # parallel-rne.mlir:1188:13
	stores.w r3, 12(r5)
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 1188 13                       # parallel-rne.mlir:1188:13
	stores.w r2, 8(r5)
	stores.w r28, 4(r5)
	stores.w r4, 0(r5)
	stores.w r20, 28(r5)
	stores.w r19, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1180 11                       # parallel-rne.mlir:1180:11
	beq r3, zero, .LBB0_897
.LBB0_900:                              # %vector.body520
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_898 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1181 19                       # parallel-rne.mlir:1181:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r3, 12(r5)
	loads.w r2, 8(r5)
	loads.w r28, 4(r5)
	loads.w r20, 28(r5)
	loads.w r19, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1184 19                       # parallel-rne.mlir:1184:19
	and r5, r4, r21
	.loc	1 1185 19                       # parallel-rne.mlir:1185:19
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_902
# %bb.901:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_902:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_904
# %bb.903:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_904:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_906
# %bb.905:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_906:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_908
# %bb.907:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
.LBB0_908:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_910
# %bb.909:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_910:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_912
# %bb.911:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_912:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	and r5, r19, r21
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_914
# %bb.913:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r19, r7
	or r19, r5, r25
.LBB0_914:                              # %vector.body520
                                        #   in Loop: Header=BB0_900 Depth=3
	and r5, r20, r21
	setlt.u r5, r25, r5
	.loc	1 1186 19                       # parallel-rne.mlir:1186:19
	beq r5, zero, .LBB0_899
# %bb.915:                              #   in Loop: Header=BB0_900 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r20, r7
	or r20, r5, r25
	j .LBB0_899
.LBB0_916:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1172 7 is_stmt 1              # parallel-rne.mlir:1172:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1193 7                        # parallel-rne.mlir:1193:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_810
.LBB0_917:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 1193 7                        # parallel-rne.mlir:1193:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_919
.LBB0_918:                              # %middle.block515
                                        #   in Loop: Header=BB0_919 Depth=2
	.loc	1 1200 9 is_stmt 1              # parallel-rne.mlir:1200:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	addli.d r[17:18], r[3:4], 0
	beq r2, zero, .LBB0_937
.LBB0_919:                              # %.preheader145
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_921 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[17:18], r14
	zext_int2long r[13:14], zero
	j .LBB0_921
.LBB0_920:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	.loc	1 1209 13 is_stmt 1             # parallel-rne.mlir:1209:13
	add.s r5, r16, r24
	.loc	1 1201 11                       # parallel-rne.mlir:1201:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1209 13                       # parallel-rne.mlir:1209:13
	stores.w r3, 12(r5)
	.loc	1 1201 11                       # parallel-rne.mlir:1201:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 1209 13                       # parallel-rne.mlir:1209:13
	stores.w r2, 8(r5)
	stores.w r28, 4(r5)
	stores.w r4, 0(r5)
	stores.w r20, 28(r5)
	stores.w r19, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1201 11                       # parallel-rne.mlir:1201:11
	beq r3, zero, .LBB0_918
.LBB0_921:                              # %vector.body510
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_919 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r3, 12(r5)
	loads.w r2, 8(r5)
	loads.w r28, 4(r5)
	loads.w r20, 28(r5)
	loads.w r19, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	and r5, r4, r21
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_923
# %bb.922:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_923:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_925
# %bb.924:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_925:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_927
# %bb.926:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_927:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_929
# %bb.928:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
.LBB0_929:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_931
# %bb.930:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_931:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_933
# %bb.932:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_933:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	and r5, r19, r21
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_935
# %bb.934:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r19, r7
	or r19, r5, r25
.LBB0_935:                              # %vector.body510
                                        #   in Loop: Header=BB0_921 Depth=3
	and r5, r20, r21
	setlt.u r5, r25, r5
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	beq r5, zero, .LBB0_920
# %bb.936:                              #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r20, r7
	or r20, r5, r25
	j .LBB0_920
.LBB0_937:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1193 7 is_stmt 1              # parallel-rne.mlir:1193:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1214 7                        # parallel-rne.mlir:1214:7
	addli r2, zero, 6
	bneq r13, r2, .LBB0_811
.LBB0_938:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 1214 7                        # parallel-rne.mlir:1214:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_940
.LBB0_939:                              # %middle.block505
                                        #   in Loop: Header=BB0_940 Depth=2
	.loc	1 1221 9 is_stmt 1              # parallel-rne.mlir:1221:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	addli.d r[17:18], r[3:4], 0
	beq r2, zero, .LBB0_958
.LBB0_940:                              # %.preheader144
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_942 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[17:18], r14
	zext_int2long r[13:14], zero
	j .LBB0_942
.LBB0_941:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	.loc	1 1230 13 is_stmt 1             # parallel-rne.mlir:1230:13
	add.s r5, r16, r24
	.loc	1 1222 11                       # parallel-rne.mlir:1222:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1230 13                       # parallel-rne.mlir:1230:13
	stores.w r3, 12(r5)
	.loc	1 1222 11                       # parallel-rne.mlir:1222:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 1230 13                       # parallel-rne.mlir:1230:13
	stores.w r2, 8(r5)
	stores.w r28, 4(r5)
	stores.w r4, 0(r5)
	stores.w r20, 28(r5)
	stores.w r19, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1222 11                       # parallel-rne.mlir:1222:11
	beq r3, zero, .LBB0_939
.LBB0_942:                              # %vector.body500
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_940 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1223 19                       # parallel-rne.mlir:1223:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r3, 12(r5)
	loads.w r2, 8(r5)
	loads.w r28, 4(r5)
	loads.w r20, 28(r5)
	loads.w r19, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1226 19                       # parallel-rne.mlir:1226:19
	and r5, r4, r21
	.loc	1 1227 19                       # parallel-rne.mlir:1227:19
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_944
# %bb.943:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_944:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_946
# %bb.945:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_946:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_948
# %bb.947:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_948:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_950
# %bb.949:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
.LBB0_950:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_952
# %bb.951:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_952:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_954
# %bb.953:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_954:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r19, r21
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_956
# %bb.955:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r19, r7
	or r19, r5, r25
.LBB0_956:                              # %vector.body500
                                        #   in Loop: Header=BB0_942 Depth=3
	and r5, r20, r21
	setlt.u r5, r25, r5
	.loc	1 1228 19                       # parallel-rne.mlir:1228:19
	beq r5, zero, .LBB0_941
# %bb.957:                              #   in Loop: Header=BB0_942 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r20, r7
	or r20, r5, r25
	j .LBB0_941
.LBB0_958:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1214 7 is_stmt 1              # parallel-rne.mlir:1214:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1235 7                        # parallel-rne.mlir:1235:7
	bneq r13, r14, .LBB0_980
.LBB0_959:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 1235 7                        # parallel-rne.mlir:1235:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[17:18], r2
	j .LBB0_961
.LBB0_960:                              # %middle.block495
                                        #   in Loop: Header=BB0_961 Depth=2
	.loc	1 1242 9 is_stmt 1              # parallel-rne.mlir:1242:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[17:18], r[2:3]
	addli.d r[3:4], r[17:18], 1
	addli.d r[17:18], r[3:4], 0
	beq r2, zero, .LBB0_979
.LBB0_961:                              # %.preheader143
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_963 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[8:9], r[17:18], r14
	zext_int2long r[13:14], zero
	j .LBB0_963
.LBB0_962:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	.loc	1 1251 13 is_stmt 1             # parallel-rne.mlir:1251:13
	add.s r5, r16, r24
	.loc	1 1243 11                       # parallel-rne.mlir:1243:11
	addli.d r[13:14], r[13:14], 8
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	stores.w r3, 12(r5)
	.loc	1 1243 11                       # parallel-rne.mlir:1243:11
	setneq.d r3, r[13:14], r[26:27]
	.loc	1 1251 13                       # parallel-rne.mlir:1251:13
	stores.w r2, 8(r5)
	stores.w r28, 4(r5)
	stores.w r4, 0(r5)
	stores.w r20, 28(r5)
	stores.w r19, 24(r5)
	stores.w r15, 20(r5)
	stores.w r11, 16(r5)
	.loc	1 1243 11                       # parallel-rne.mlir:1243:11
	beq r3, zero, .LBB0_960
.LBB0_963:                              # %vector.body490
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_961 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	add.ul r[2:3], r[13:14], r[8:9]
	slli r24, r2, 2
	add.s r5, r12, r24
	loads.w r4, 0(r5)
	loads.w r3, 12(r5)
	loads.w r2, 8(r5)
	loads.w r28, 4(r5)
	loads.w r20, 28(r5)
	loads.w r19, 24(r5)
	loads.w r15, 20(r5)
	loads.w r11, 16(r5)
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	and r5, r4, r21
	.loc	1 1248 19                       # parallel-rne.mlir:1248:19
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_965
# %bb.964:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r4, r4, r7
	or r4, r4, r25
.LBB0_965:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	and r5, r28, r21
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_967
# %bb.966:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r28, r7
	or r28, r5, r25
.LBB0_967:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	and r5, r2, r21
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_969
# %bb.968:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r2, r2, r7
	or r2, r2, r25
.LBB0_969:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	and r5, r3, r21
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_971
# %bb.970:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r3, r3, r7
	or r3, r3, r25
.LBB0_971:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	and r5, r11, r21
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_973
# %bb.972:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r11, r7
	or r11, r5, r25
.LBB0_973:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	and r5, r15, r21
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_975
# %bb.974:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r15, r7
	or r15, r5, r25
.LBB0_975:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	and r5, r19, r21
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_977
# %bb.976:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r19, r7
	or r19, r5, r25
.LBB0_977:                              # %vector.body490
                                        #   in Loop: Header=BB0_963 Depth=3
	and r5, r20, r21
	setlt.u r5, r25, r5
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	beq r5, zero, .LBB0_962
# %bb.978:                              #   in Loop: Header=BB0_963 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r20, r7
	or r20, r5, r25
	j .LBB0_962
.LBB0_979:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1235 7 is_stmt 1              # parallel-rne.mlir:1235:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	addli r4, zero, 18
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
.LBB0_980:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1256 7                        # parallel-rne.mlir:1256:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1257 7                        # parallel-rne.mlir:1257:7
	addli r2, zero, 3
	.loc	1 1256 7                        # parallel-rne.mlir:1256:7
	sync_core
	.loc	1 1257 7                        # parallel-rne.mlir:1257:7
	bneq r13, r2, .LBB0_982
# %bb.981:                              # %.critedge31
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 17
	addli r5, zero, 40
	xsignal r2, 0
	.loc	1 1258 7                        # parallel-rne.mlir:1258:7
	xsignal r5, 0
	.loc	1 1261 13                       # parallel-rne.mlir:1261:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	storeli.w r3, -24(r30)
	.loc	1 1265 7                        # parallel-rne.mlir:1265:7
	addli r3, zero, 44
	.loc	1 1263 7                        # parallel-rne.mlir:1263:7
	xwait r4, 0
	.loc	1 1264 7                        # parallel-rne.mlir:1264:7
	xwait r5, 0
	.loc	1 1265 7                        # parallel-rne.mlir:1265:7
	xwait r3, 0
	j .LBB0_985
.LBB0_982:                              # %.critedge29
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_984
# %bb.983:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 17
	addli r3, zero, 4095
	addli r5, zero, 3
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r3, zero, 2
	addli r3, zero, 4
	ew_cfg r3, zero, zero, 3
	ew_cfg r3, r3, zero, 19
	ew_cfg r5, zero, zero, 10
	addli r5, zero, 1
	loadli.w r7,  -656(r30)                 # 4-byte Folded Reload
	ew_cfg r2, r5, r7, 11
	lui r5, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r3, r5, 14
	ew_cfg zero, zero, zero, 15
	sslut r16, r16, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r4, 0
.LBB0_984:                              # %.thread121
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1261 13                       # parallel-rne.mlir:1261:13
	loadli.w r2,  -24(r30)
	addli r3, r2, 1
	storeli.w r3, -24(r30)
.LBB0_985:                              # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 2
	.loc	1 1267 7                        # parallel-rne.mlir:1267:7
	xfence
	.loc	1 1268 7                        # parallel-rne.mlir:1268:7
	mfence { lm, sm, gm }
	.loc	1 1261 13                       # parallel-rne.mlir:1261:13
	mod.s r2, r2, r3
	loadli.w r3,  -648(r30)                 # 4-byte Folded Reload
	slli r2, r2, 16
	add.s r4, r2, r3
	.loc	1 1269 7                        # parallel-rne.mlir:1269:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 1270 7                        # parallel-rne.mlir:1270:7
	beq r13, zero, .LBB0_993
# %bb.986:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	addli r2, zero, 1
	beq r13, r2, .LBB0_1029
.LBB0_987:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1320 7                        # parallel-rne.mlir:1320:7
	addli r2, zero, 2
	beq r13, r2, .LBB0_1065
.LBB0_988:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1345 7                        # parallel-rne.mlir:1345:7
	addli r2, zero, 3
	beq r13, r2, .LBB0_1101
.LBB0_989:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1370 7                        # parallel-rne.mlir:1370:7
	addli r2, zero, 4
	beq r13, r2, .LBB0_1137
.LBB0_990:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1395 7                        # parallel-rne.mlir:1395:7
	addli r2, zero, 5
	beq r13, r2, .LBB0_1173
.LBB0_991:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1420 7                        # parallel-rne.mlir:1420:7
	addli r2, zero, 6
	beq r13, r2, .LBB0_1209
.LBB0_992:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1445 7                        # parallel-rne.mlir:1445:7
	beq r13, r14, .LBB0_1245
	j .LBB0_1281
.LBB0_993:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1270 7                        # parallel-rne.mlir:1270:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_995
.LBB0_994:                              # %middle.block485
                                        #   in Loop: Header=BB0_995 Depth=2
	.loc	1 1277 9                        # parallel-rne.mlir:1277:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1028
.LBB0_995:                              # %.preheader142
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1005 Depth 3
                                        #       Child Loop BB0_998 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1278 11 is_stmt 1             # parallel-rne.mlir:1278:11
	bneq r4, r12, .LBB0_1002
# %bb.996:                              # %scalar.ph476.preheader
                                        #   in Loop: Header=BB0_995 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_998
.LBB0_997:                              # %scalar.ph476
                                        #   in Loop: Header=BB0_998 Depth=3
	.loc	1 1278 11                       # parallel-rne.mlir:1278:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1290 13 is_stmt 1             # parallel-rne.mlir:1290:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1278 11                       # parallel-rne.mlir:1278:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_994
.LBB0_998:                              # %scalar.ph476
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_995 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	and r5, r11, r1
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r5, zero, .LBB0_1000
# %bb.999:                              # %scalar.ph476
                                        #   in Loop: Header=BB0_998 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	beq r5, r6, .LBB0_997
	j .LBB0_1001
.LBB0_1000:                             #   in Loop: Header=BB0_998 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	beq r5, r6, .LBB0_997
.LBB0_1001:                             # %scalar.ph476
                                        #   in Loop: Header=BB0_998 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_997
.LBB0_1002:                             # %vector.body478.preheader
                                        #   in Loop: Header=BB0_995 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1005
.LBB0_1003:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r11, 28(r11)
.LBB0_1004:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 1278 11 is_stmt 1             # parallel-rne.mlir:1278:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1290 13                       # parallel-rne.mlir:1290:13
	add.s r5, r4, r8
	.loc	1 1278 11                       # parallel-rne.mlir:1278:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1290 13                       # parallel-rne.mlir:1290:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1278 11                       # parallel-rne.mlir:1278:11
	bneq r8, zero, .LBB0_994
.LBB0_1005:                             # %vector.body478
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_995 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	add.s r11, r16, r8
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	loads.w r2, 0(r15)
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	and r3, r2, r6
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	and r5, r2, r1
	.loc	1 1284 19                       # parallel-rne.mlir:1284:19
	seteq r3, r3, r6
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	setneq r5, r5, zero
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	and r3, r3, r5
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r3, zero, .LBB0_1007
# %bb.1006:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1008
.LBB0_1007:                             #   in Loop: Header=BB0_1005 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1008:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r3, zero, .LBB0_1010
# %bb.1009:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1011
.LBB0_1010:                             #   in Loop: Header=BB0_1005 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1011:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r5, zero, .LBB0_1013
# %bb.1012:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1014
.LBB0_1013:                             #   in Loop: Header=BB0_1005 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1014:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r7, zero, .LBB0_1016
# %bb.1015:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1017
.LBB0_1016:                             #   in Loop: Header=BB0_1005 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1017:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r7, zero, .LBB0_1019
# %bb.1018:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1020
.LBB0_1019:                             #   in Loop: Header=BB0_1005 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1020:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r7, zero, .LBB0_1022
# %bb.1021:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1023
.LBB0_1022:                             #   in Loop: Header=BB0_1005 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1023:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r10, zero, .LBB0_1025
# %bb.1024:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1026
.LBB0_1025:                             #   in Loop: Header=BB0_1005 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1026:                             # %vector.body478
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	beq r10, zero, .LBB0_1003
# %bb.1027:                             #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	j .LBB0_1004
.LBB0_1028:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1270 7 is_stmt 1              # parallel-rne.mlir:1270:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	addli r2, zero, 1
	bneq r13, r2, .LBB0_987
.LBB0_1029:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_1031
.LBB0_1030:                             # %middle.block471
                                        #   in Loop: Header=BB0_1031 Depth=2
	.loc	1 1302 9 is_stmt 1              # parallel-rne.mlir:1302:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1064
.LBB0_1031:                             # %.preheader141
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1041 Depth 3
                                        #       Child Loop BB0_1034 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1303 11 is_stmt 1             # parallel-rne.mlir:1303:11
	bneq r4, r12, .LBB0_1038
# %bb.1032:                             # %scalar.ph462.preheader
                                        #   in Loop: Header=BB0_1031 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1034
.LBB0_1033:                             # %scalar.ph462
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1315 13 is_stmt 1             # parallel-rne.mlir:1315:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1030
.LBB0_1034:                             # %scalar.ph462
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1031 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	and r5, r11, r1
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r5, zero, .LBB0_1036
# %bb.1035:                             # %scalar.ph462
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	beq r5, r6, .LBB0_1033
	j .LBB0_1037
.LBB0_1036:                             #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	beq r5, r6, .LBB0_1033
.LBB0_1037:                             # %scalar.ph462
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1033
.LBB0_1038:                             # %vector.body464.preheader
                                        #   in Loop: Header=BB0_1031 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1041
.LBB0_1039:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r11, 28(r11)
.LBB0_1040:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 1303 11 is_stmt 1             # parallel-rne.mlir:1303:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1315 13                       # parallel-rne.mlir:1315:13
	add.s r5, r4, r8
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1315 13                       # parallel-rne.mlir:1315:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	bneq r8, zero, .LBB0_1030
.LBB0_1041:                             # %vector.body464
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1031 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.s r11, r16, r8
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	loads.w r2, 0(r15)
	.loc	1 1308 19                       # parallel-rne.mlir:1308:19
	and r3, r2, r6
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	and r5, r2, r1
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	seteq r3, r3, r6
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	setneq r5, r5, zero
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	and r3, r3, r5
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r3, zero, .LBB0_1043
# %bb.1042:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1044
.LBB0_1043:                             #   in Loop: Header=BB0_1041 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1044:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r3, zero, .LBB0_1046
# %bb.1045:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1047
.LBB0_1046:                             #   in Loop: Header=BB0_1041 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1047:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r5, zero, .LBB0_1049
# %bb.1048:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1050
.LBB0_1049:                             #   in Loop: Header=BB0_1041 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1050:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r7, zero, .LBB0_1052
# %bb.1051:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1053
.LBB0_1052:                             #   in Loop: Header=BB0_1041 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1053:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r7, zero, .LBB0_1055
# %bb.1054:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1056
.LBB0_1055:                             #   in Loop: Header=BB0_1041 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1056:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r7, zero, .LBB0_1058
# %bb.1057:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1059
.LBB0_1058:                             #   in Loop: Header=BB0_1041 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1059:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	bneq r10, zero, .LBB0_1061
# %bb.1060:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1062
.LBB0_1061:                             #   in Loop: Header=BB0_1041 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1062:                             # %vector.body464
                                        #   in Loop: Header=BB0_1041 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	beq r10, zero, .LBB0_1039
# %bb.1063:                             #   in Loop: Header=BB0_1041 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	j .LBB0_1040
.LBB0_1064:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1295 7 is_stmt 1              # parallel-rne.mlir:1295:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1320 7                        # parallel-rne.mlir:1320:7
	addli r2, zero, 2
	bneq r13, r2, .LBB0_988
.LBB0_1065:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 1320 7                        # parallel-rne.mlir:1320:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_1067
.LBB0_1066:                             # %middle.block457
                                        #   in Loop: Header=BB0_1067 Depth=2
	.loc	1 1327 9 is_stmt 1              # parallel-rne.mlir:1327:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1100
.LBB0_1067:                             # %.preheader140
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1077 Depth 3
                                        #       Child Loop BB0_1070 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1328 11 is_stmt 1             # parallel-rne.mlir:1328:11
	bneq r4, r12, .LBB0_1074
# %bb.1068:                             # %scalar.ph448.preheader
                                        #   in Loop: Header=BB0_1067 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1070
.LBB0_1069:                             # %scalar.ph448
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 1328 11                       # parallel-rne.mlir:1328:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1340 13 is_stmt 1             # parallel-rne.mlir:1340:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1328 11                       # parallel-rne.mlir:1328:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1066
.LBB0_1070:                             # %scalar.ph448
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1067 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1329 19                       # parallel-rne.mlir:1329:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1335 19                       # parallel-rne.mlir:1335:19
	and r5, r11, r1
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r5, zero, .LBB0_1072
# %bb.1071:                             # %scalar.ph448
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	beq r5, r6, .LBB0_1069
	j .LBB0_1073
.LBB0_1072:                             #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	beq r5, r6, .LBB0_1069
.LBB0_1073:                             # %scalar.ph448
                                        #   in Loop: Header=BB0_1070 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1069
.LBB0_1074:                             # %vector.body450.preheader
                                        #   in Loop: Header=BB0_1067 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1077
.LBB0_1075:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r11, 28(r11)
.LBB0_1076:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 1328 11 is_stmt 1             # parallel-rne.mlir:1328:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1340 13                       # parallel-rne.mlir:1340:13
	add.s r5, r4, r8
	.loc	1 1328 11                       # parallel-rne.mlir:1328:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1340 13                       # parallel-rne.mlir:1340:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1328 11                       # parallel-rne.mlir:1328:11
	bneq r8, zero, .LBB0_1066
.LBB0_1077:                             # %vector.body450
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1067 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1329 19                       # parallel-rne.mlir:1329:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1330 19                       # parallel-rne.mlir:1330:19
	add.s r11, r16, r8
	.loc	1 1329 19                       # parallel-rne.mlir:1329:19
	loads.w r2, 0(r15)
	.loc	1 1333 19                       # parallel-rne.mlir:1333:19
	and r3, r2, r6
	.loc	1 1335 19                       # parallel-rne.mlir:1335:19
	and r5, r2, r1
	.loc	1 1334 19                       # parallel-rne.mlir:1334:19
	seteq r3, r3, r6
	.loc	1 1336 19                       # parallel-rne.mlir:1336:19
	setneq r5, r5, zero
	.loc	1 1337 19                       # parallel-rne.mlir:1337:19
	and r3, r3, r5
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r3, zero, .LBB0_1079
# %bb.1078:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1080
.LBB0_1079:                             #   in Loop: Header=BB0_1077 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1080:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r3, zero, .LBB0_1082
# %bb.1081:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1083
.LBB0_1082:                             #   in Loop: Header=BB0_1077 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1083:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r5, zero, .LBB0_1085
# %bb.1084:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1086
.LBB0_1085:                             #   in Loop: Header=BB0_1077 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1086:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r7, zero, .LBB0_1088
# %bb.1087:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1089
.LBB0_1088:                             #   in Loop: Header=BB0_1077 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1089:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r7, zero, .LBB0_1091
# %bb.1090:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1092
.LBB0_1091:                             #   in Loop: Header=BB0_1077 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1092:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r7, zero, .LBB0_1094
# %bb.1093:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1095
.LBB0_1094:                             #   in Loop: Header=BB0_1077 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1095:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	bneq r10, zero, .LBB0_1097
# %bb.1096:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1098
.LBB0_1097:                             #   in Loop: Header=BB0_1077 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1098:                             # %vector.body450
                                        #   in Loop: Header=BB0_1077 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	beq r10, zero, .LBB0_1075
# %bb.1099:                             #   in Loop: Header=BB0_1077 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1338 19                       # parallel-rne.mlir:1338:19
	j .LBB0_1076
.LBB0_1100:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1320 7 is_stmt 1              # parallel-rne.mlir:1320:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1345 7                        # parallel-rne.mlir:1345:7
	addli r2, zero, 3
	bneq r13, r2, .LBB0_989
.LBB0_1101:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 1345 7                        # parallel-rne.mlir:1345:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_1103
.LBB0_1102:                             # %middle.block443
                                        #   in Loop: Header=BB0_1103 Depth=2
	.loc	1 1352 9 is_stmt 1              # parallel-rne.mlir:1352:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1136
.LBB0_1103:                             # %.preheader139
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1113 Depth 3
                                        #       Child Loop BB0_1106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1353 11 is_stmt 1             # parallel-rne.mlir:1353:11
	bneq r4, r12, .LBB0_1110
# %bb.1104:                             # %scalar.ph434.preheader
                                        #   in Loop: Header=BB0_1103 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1106
.LBB0_1105:                             # %scalar.ph434
                                        #   in Loop: Header=BB0_1106 Depth=3
	.loc	1 1353 11                       # parallel-rne.mlir:1353:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1365 13 is_stmt 1             # parallel-rne.mlir:1365:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1353 11                       # parallel-rne.mlir:1353:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1102
.LBB0_1106:                             # %scalar.ph434
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1354 19                       # parallel-rne.mlir:1354:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1355 19                       # parallel-rne.mlir:1355:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1360 19                       # parallel-rne.mlir:1360:19
	and r5, r11, r1
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r5, zero, .LBB0_1108
# %bb.1107:                             # %scalar.ph434
                                        #   in Loop: Header=BB0_1106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	beq r5, r6, .LBB0_1105
	j .LBB0_1109
.LBB0_1108:                             #   in Loop: Header=BB0_1106 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	beq r5, r6, .LBB0_1105
.LBB0_1109:                             # %scalar.ph434
                                        #   in Loop: Header=BB0_1106 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1105
.LBB0_1110:                             # %vector.body436.preheader
                                        #   in Loop: Header=BB0_1103 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1113
.LBB0_1111:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r11, 28(r11)
.LBB0_1112:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 1353 11 is_stmt 1             # parallel-rne.mlir:1353:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1365 13                       # parallel-rne.mlir:1365:13
	add.s r5, r4, r8
	.loc	1 1353 11                       # parallel-rne.mlir:1353:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1365 13                       # parallel-rne.mlir:1365:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1353 11                       # parallel-rne.mlir:1353:11
	bneq r8, zero, .LBB0_1102
.LBB0_1113:                             # %vector.body436
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1354 19                       # parallel-rne.mlir:1354:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1355 19                       # parallel-rne.mlir:1355:19
	add.s r11, r16, r8
	.loc	1 1354 19                       # parallel-rne.mlir:1354:19
	loads.w r2, 0(r15)
	.loc	1 1358 19                       # parallel-rne.mlir:1358:19
	and r3, r2, r6
	.loc	1 1360 19                       # parallel-rne.mlir:1360:19
	and r5, r2, r1
	.loc	1 1359 19                       # parallel-rne.mlir:1359:19
	seteq r3, r3, r6
	.loc	1 1361 19                       # parallel-rne.mlir:1361:19
	setneq r5, r5, zero
	.loc	1 1362 19                       # parallel-rne.mlir:1362:19
	and r3, r3, r5
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r3, zero, .LBB0_1115
# %bb.1114:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1116
.LBB0_1115:                             #   in Loop: Header=BB0_1113 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1116:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r3, zero, .LBB0_1118
# %bb.1117:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1119
.LBB0_1118:                             #   in Loop: Header=BB0_1113 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1119:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r5, zero, .LBB0_1121
# %bb.1120:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1122
.LBB0_1121:                             #   in Loop: Header=BB0_1113 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1122:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r7, zero, .LBB0_1124
# %bb.1123:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1125
.LBB0_1124:                             #   in Loop: Header=BB0_1113 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1125:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r7, zero, .LBB0_1127
# %bb.1126:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1128
.LBB0_1127:                             #   in Loop: Header=BB0_1113 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1128:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r7, zero, .LBB0_1130
# %bb.1129:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1131
.LBB0_1130:                             #   in Loop: Header=BB0_1113 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1131:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	bneq r10, zero, .LBB0_1133
# %bb.1132:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1134
.LBB0_1133:                             #   in Loop: Header=BB0_1113 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1134:                             # %vector.body436
                                        #   in Loop: Header=BB0_1113 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	beq r10, zero, .LBB0_1111
# %bb.1135:                             #   in Loop: Header=BB0_1113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1363 19                       # parallel-rne.mlir:1363:19
	j .LBB0_1112
.LBB0_1136:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1345 7 is_stmt 1              # parallel-rne.mlir:1345:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1370 7                        # parallel-rne.mlir:1370:7
	addli r2, zero, 4
	bneq r13, r2, .LBB0_990
.LBB0_1137:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	.loc	1 1370 7                        # parallel-rne.mlir:1370:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_1139
.LBB0_1138:                             # %middle.block429
                                        #   in Loop: Header=BB0_1139 Depth=2
	.loc	1 1377 9 is_stmt 1              # parallel-rne.mlir:1377:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1172
.LBB0_1139:                             # %.preheader138
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1149 Depth 3
                                        #       Child Loop BB0_1142 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1378 11 is_stmt 1             # parallel-rne.mlir:1378:11
	bneq r4, r12, .LBB0_1146
# %bb.1140:                             # %scalar.ph420.preheader
                                        #   in Loop: Header=BB0_1139 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1142
.LBB0_1141:                             # %scalar.ph420
                                        #   in Loop: Header=BB0_1142 Depth=3
	.loc	1 1378 11                       # parallel-rne.mlir:1378:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1390 13 is_stmt 1             # parallel-rne.mlir:1390:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1378 11                       # parallel-rne.mlir:1378:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1138
.LBB0_1142:                             # %scalar.ph420
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1379 19                       # parallel-rne.mlir:1379:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1380 19                       # parallel-rne.mlir:1380:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1385 19                       # parallel-rne.mlir:1385:19
	and r5, r11, r1
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r5, zero, .LBB0_1144
# %bb.1143:                             # %scalar.ph420
                                        #   in Loop: Header=BB0_1142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	beq r5, r6, .LBB0_1141
	j .LBB0_1145
.LBB0_1144:                             #   in Loop: Header=BB0_1142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	beq r5, r6, .LBB0_1141
.LBB0_1145:                             # %scalar.ph420
                                        #   in Loop: Header=BB0_1142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1141
.LBB0_1146:                             # %vector.body422.preheader
                                        #   in Loop: Header=BB0_1139 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1149
.LBB0_1147:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r11, 28(r11)
.LBB0_1148:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 1378 11 is_stmt 1             # parallel-rne.mlir:1378:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1390 13                       # parallel-rne.mlir:1390:13
	add.s r5, r4, r8
	.loc	1 1378 11                       # parallel-rne.mlir:1378:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1390 13                       # parallel-rne.mlir:1390:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1378 11                       # parallel-rne.mlir:1378:11
	bneq r8, zero, .LBB0_1138
.LBB0_1149:                             # %vector.body422
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1139 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1379 19                       # parallel-rne.mlir:1379:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1380 19                       # parallel-rne.mlir:1380:19
	add.s r11, r16, r8
	.loc	1 1379 19                       # parallel-rne.mlir:1379:19
	loads.w r2, 0(r15)
	.loc	1 1383 19                       # parallel-rne.mlir:1383:19
	and r3, r2, r6
	.loc	1 1385 19                       # parallel-rne.mlir:1385:19
	and r5, r2, r1
	.loc	1 1384 19                       # parallel-rne.mlir:1384:19
	seteq r3, r3, r6
	.loc	1 1386 19                       # parallel-rne.mlir:1386:19
	setneq r5, r5, zero
	.loc	1 1387 19                       # parallel-rne.mlir:1387:19
	and r3, r3, r5
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r3, zero, .LBB0_1151
# %bb.1150:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1152
.LBB0_1151:                             #   in Loop: Header=BB0_1149 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1152:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r3, zero, .LBB0_1154
# %bb.1153:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1155
.LBB0_1154:                             #   in Loop: Header=BB0_1149 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1155:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r5, zero, .LBB0_1157
# %bb.1156:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1158
.LBB0_1157:                             #   in Loop: Header=BB0_1149 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1158:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r7, zero, .LBB0_1160
# %bb.1159:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1161
.LBB0_1160:                             #   in Loop: Header=BB0_1149 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1161:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r7, zero, .LBB0_1163
# %bb.1162:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1164
.LBB0_1163:                             #   in Loop: Header=BB0_1149 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1164:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r7, zero, .LBB0_1166
# %bb.1165:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1167
.LBB0_1166:                             #   in Loop: Header=BB0_1149 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1167:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	bneq r10, zero, .LBB0_1169
# %bb.1168:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1170
.LBB0_1169:                             #   in Loop: Header=BB0_1149 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1170:                             # %vector.body422
                                        #   in Loop: Header=BB0_1149 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	beq r10, zero, .LBB0_1147
# %bb.1171:                             #   in Loop: Header=BB0_1149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1388 19                       # parallel-rne.mlir:1388:19
	j .LBB0_1148
.LBB0_1172:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1370 7 is_stmt 1              # parallel-rne.mlir:1370:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1395 7                        # parallel-rne.mlir:1395:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_991
.LBB0_1173:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 1395 7                        # parallel-rne.mlir:1395:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_1175
.LBB0_1174:                             # %middle.block415
                                        #   in Loop: Header=BB0_1175 Depth=2
	.loc	1 1402 9 is_stmt 1              # parallel-rne.mlir:1402:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1208
.LBB0_1175:                             # %.preheader137
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1185 Depth 3
                                        #       Child Loop BB0_1178 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1403 11 is_stmt 1             # parallel-rne.mlir:1403:11
	bneq r4, r12, .LBB0_1182
# %bb.1176:                             # %scalar.ph406.preheader
                                        #   in Loop: Header=BB0_1175 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1178
.LBB0_1177:                             # %scalar.ph406
                                        #   in Loop: Header=BB0_1178 Depth=3
	.loc	1 1403 11                       # parallel-rne.mlir:1403:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1415 13 is_stmt 1             # parallel-rne.mlir:1415:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1403 11                       # parallel-rne.mlir:1403:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1174
.LBB0_1178:                             # %scalar.ph406
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1404 19                       # parallel-rne.mlir:1404:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1405 19                       # parallel-rne.mlir:1405:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1410 19                       # parallel-rne.mlir:1410:19
	and r5, r11, r1
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r5, zero, .LBB0_1180
# %bb.1179:                             # %scalar.ph406
                                        #   in Loop: Header=BB0_1178 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	beq r5, r6, .LBB0_1177
	j .LBB0_1181
.LBB0_1180:                             #   in Loop: Header=BB0_1178 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	beq r5, r6, .LBB0_1177
.LBB0_1181:                             # %scalar.ph406
                                        #   in Loop: Header=BB0_1178 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1177
.LBB0_1182:                             # %vector.body408.preheader
                                        #   in Loop: Header=BB0_1175 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1185
.LBB0_1183:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r11, 28(r11)
.LBB0_1184:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 1403 11 is_stmt 1             # parallel-rne.mlir:1403:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1415 13                       # parallel-rne.mlir:1415:13
	add.s r5, r4, r8
	.loc	1 1403 11                       # parallel-rne.mlir:1403:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1415 13                       # parallel-rne.mlir:1415:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1403 11                       # parallel-rne.mlir:1403:11
	bneq r8, zero, .LBB0_1174
.LBB0_1185:                             # %vector.body408
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1175 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1404 19                       # parallel-rne.mlir:1404:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1405 19                       # parallel-rne.mlir:1405:19
	add.s r11, r16, r8
	.loc	1 1404 19                       # parallel-rne.mlir:1404:19
	loads.w r2, 0(r15)
	.loc	1 1408 19                       # parallel-rne.mlir:1408:19
	and r3, r2, r6
	.loc	1 1410 19                       # parallel-rne.mlir:1410:19
	and r5, r2, r1
	.loc	1 1409 19                       # parallel-rne.mlir:1409:19
	seteq r3, r3, r6
	.loc	1 1411 19                       # parallel-rne.mlir:1411:19
	setneq r5, r5, zero
	.loc	1 1412 19                       # parallel-rne.mlir:1412:19
	and r3, r3, r5
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r3, zero, .LBB0_1187
# %bb.1186:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1188
.LBB0_1187:                             #   in Loop: Header=BB0_1185 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1188:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r3, zero, .LBB0_1190
# %bb.1189:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1191
.LBB0_1190:                             #   in Loop: Header=BB0_1185 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1191:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r5, zero, .LBB0_1193
# %bb.1192:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1194
.LBB0_1193:                             #   in Loop: Header=BB0_1185 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1194:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r7, zero, .LBB0_1196
# %bb.1195:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1197
.LBB0_1196:                             #   in Loop: Header=BB0_1185 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1197:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r7, zero, .LBB0_1199
# %bb.1198:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1200
.LBB0_1199:                             #   in Loop: Header=BB0_1185 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1200:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r7, zero, .LBB0_1202
# %bb.1201:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1203
.LBB0_1202:                             #   in Loop: Header=BB0_1185 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1203:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	bneq r10, zero, .LBB0_1205
# %bb.1204:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1206
.LBB0_1205:                             #   in Loop: Header=BB0_1185 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1206:                             # %vector.body408
                                        #   in Loop: Header=BB0_1185 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	beq r10, zero, .LBB0_1183
# %bb.1207:                             #   in Loop: Header=BB0_1185 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1413 19                       # parallel-rne.mlir:1413:19
	j .LBB0_1184
.LBB0_1208:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1395 7 is_stmt 1              # parallel-rne.mlir:1395:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1420 7                        # parallel-rne.mlir:1420:7
	addli r2, zero, 6
	bneq r13, r2, .LBB0_992
.LBB0_1209:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 96
	.loc	1 1420 7                        # parallel-rne.mlir:1420:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_1211
.LBB0_1210:                             # %middle.block401
                                        #   in Loop: Header=BB0_1211 Depth=2
	.loc	1 1427 9 is_stmt 1              # parallel-rne.mlir:1427:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1244
.LBB0_1211:                             # %.preheader136
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1221 Depth 3
                                        #       Child Loop BB0_1214 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1428 11 is_stmt 1             # parallel-rne.mlir:1428:11
	bneq r4, r12, .LBB0_1218
# %bb.1212:                             # %scalar.ph392.preheader
                                        #   in Loop: Header=BB0_1211 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1214
.LBB0_1213:                             # %scalar.ph392
                                        #   in Loop: Header=BB0_1214 Depth=3
	.loc	1 1428 11                       # parallel-rne.mlir:1428:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1440 13 is_stmt 1             # parallel-rne.mlir:1440:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1428 11                       # parallel-rne.mlir:1428:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1210
.LBB0_1214:                             # %scalar.ph392
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1429 19                       # parallel-rne.mlir:1429:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1430 19                       # parallel-rne.mlir:1430:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	and r5, r11, r1
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r5, zero, .LBB0_1216
# %bb.1215:                             # %scalar.ph392
                                        #   in Loop: Header=BB0_1214 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	beq r5, r6, .LBB0_1213
	j .LBB0_1217
.LBB0_1216:                             #   in Loop: Header=BB0_1214 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	beq r5, r6, .LBB0_1213
.LBB0_1217:                             # %scalar.ph392
                                        #   in Loop: Header=BB0_1214 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1213
.LBB0_1218:                             # %vector.body394.preheader
                                        #   in Loop: Header=BB0_1211 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1221
.LBB0_1219:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r11, 28(r11)
.LBB0_1220:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 1428 11 is_stmt 1             # parallel-rne.mlir:1428:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1440 13                       # parallel-rne.mlir:1440:13
	add.s r5, r4, r8
	.loc	1 1428 11                       # parallel-rne.mlir:1428:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1440 13                       # parallel-rne.mlir:1440:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1428 11                       # parallel-rne.mlir:1428:11
	bneq r8, zero, .LBB0_1210
.LBB0_1221:                             # %vector.body394
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1211 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1429 19                       # parallel-rne.mlir:1429:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1430 19                       # parallel-rne.mlir:1430:19
	add.s r11, r16, r8
	.loc	1 1429 19                       # parallel-rne.mlir:1429:19
	loads.w r2, 0(r15)
	.loc	1 1433 19                       # parallel-rne.mlir:1433:19
	and r3, r2, r6
	.loc	1 1435 19                       # parallel-rne.mlir:1435:19
	and r5, r2, r1
	.loc	1 1434 19                       # parallel-rne.mlir:1434:19
	seteq r3, r3, r6
	.loc	1 1436 19                       # parallel-rne.mlir:1436:19
	setneq r5, r5, zero
	.loc	1 1437 19                       # parallel-rne.mlir:1437:19
	and r3, r3, r5
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r3, zero, .LBB0_1223
# %bb.1222:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1224
.LBB0_1223:                             #   in Loop: Header=BB0_1221 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1224:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r3, zero, .LBB0_1226
# %bb.1225:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1227
.LBB0_1226:                             #   in Loop: Header=BB0_1221 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1227:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r5, zero, .LBB0_1229
# %bb.1228:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1230
.LBB0_1229:                             #   in Loop: Header=BB0_1221 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1230:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r7, zero, .LBB0_1232
# %bb.1231:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1233
.LBB0_1232:                             #   in Loop: Header=BB0_1221 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1233:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r7, zero, .LBB0_1235
# %bb.1234:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1236
.LBB0_1235:                             #   in Loop: Header=BB0_1221 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1236:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r7, zero, .LBB0_1238
# %bb.1237:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1239
.LBB0_1238:                             #   in Loop: Header=BB0_1221 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1239:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	bneq r10, zero, .LBB0_1241
# %bb.1240:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1242
.LBB0_1241:                             #   in Loop: Header=BB0_1221 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1242:                             # %vector.body394
                                        #   in Loop: Header=BB0_1221 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	beq r10, zero, .LBB0_1219
# %bb.1243:                             #   in Loop: Header=BB0_1221 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1438 19                       # parallel-rne.mlir:1438:19
	j .LBB0_1220
.LBB0_1244:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1420 7 is_stmt 1              # parallel-rne.mlir:1420:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1445 7                        # parallel-rne.mlir:1445:7
	bneq r13, r14, .LBB0_1281
.LBB0_1245:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 1445 7                        # parallel-rne.mlir:1445:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_1247
.LBB0_1246:                             # %middle.block387
                                        #   in Loop: Header=BB0_1247 Depth=2
	.loc	1 1452 9 is_stmt 1              # parallel-rne.mlir:1452:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[7:8], -544(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1280
.LBB0_1247:                             # %.preheader135
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1257 Depth 3
                                        #       Child Loop BB0_1250 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -544(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1453 11 is_stmt 1             # parallel-rne.mlir:1453:11
	bneq r4, r12, .LBB0_1254
# %bb.1248:                             # %scalar.ph378.preheader
                                        #   in Loop: Header=BB0_1247 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_1250
.LBB0_1249:                             # %scalar.ph378
                                        #   in Loop: Header=BB0_1250 Depth=3
	.loc	1 1453 11                       # parallel-rne.mlir:1453:11
	load.d r[9:10], -448(r30)               # 8-byte Folded Reload
	.loc	1 1465 13 is_stmt 1             # parallel-rne.mlir:1465:13
	add.s r7, r4, r7
	stores.w r8, 0(r7)
	.loc	1 1453 11                       # parallel-rne.mlir:1453:11
	setlt.ul r5, r[2:3], r[9:10]
	addli.d r[2:3], r[2:3], 1
	beq r5, zero, .LBB0_1246
.LBB0_1250:                             # %scalar.ph378
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1454 19                       # parallel-rne.mlir:1454:19
	add.ul r[7:8], r[2:3], r[13:14]
	slli r7, r7, 2
	add.s r5, r12, r7
	loads.w r11, 0(r5)
	.loc	1 1455 19                       # parallel-rne.mlir:1455:19
	add.s r5, r16, r7
	loads.w r9, 0(r5)
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	and r5, r11, r1
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r5, zero, .LBB0_1252
# %bb.1251:                             # %scalar.ph378
                                        #   in Loop: Header=BB0_1250 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r9, 0
	and r5, r11, r6
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	beq r5, r6, .LBB0_1249
	j .LBB0_1253
.LBB0_1252:                             #   in Loop: Header=BB0_1250 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r8, r11, r5
	and r5, r11, r6
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	beq r5, r6, .LBB0_1249
.LBB0_1253:                             # %scalar.ph378
                                        #   in Loop: Header=BB0_1250 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r9, 0
	j .LBB0_1249
.LBB0_1254:                             # %vector.body380.preheader
                                        #   in Loop: Header=BB0_1247 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1257
.LBB0_1255:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r11, 28(r11)
.LBB0_1256:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 1453 11 is_stmt 1             # parallel-rne.mlir:1453:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 1465 13                       # parallel-rne.mlir:1465:13
	add.s r5, r4, r8
	.loc	1 1453 11                       # parallel-rne.mlir:1453:11
	seteq.d r8, r[19:20], r[26:27]
	.loc	1 1465 13                       # parallel-rne.mlir:1465:13
	stores.w r24, 12(r5)
	stores.w r3, 8(r5)
	stores.w r2, 4(r5)
	stores.w r9, 0(r5)
	stores.w r11, 28(r5)
	stores.w r17, 24(r5)
	stores.w r7, 20(r5)
	stores.w r28, 16(r5)
	.loc	1 1453 11                       # parallel-rne.mlir:1453:11
	bneq r8, zero, .LBB0_1246
.LBB0_1257:                             # %vector.body380
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1454 19                       # parallel-rne.mlir:1454:19
	add.ul r[2:3], r[19:20], r[13:14]
	slli r8, r2, 2
	add.s r15, r12, r8
	.loc	1 1455 19                       # parallel-rne.mlir:1455:19
	add.s r11, r16, r8
	.loc	1 1454 19                       # parallel-rne.mlir:1454:19
	loads.w r2, 0(r15)
	.loc	1 1458 19                       # parallel-rne.mlir:1458:19
	and r3, r2, r6
	.loc	1 1460 19                       # parallel-rne.mlir:1460:19
	and r5, r2, r1
	.loc	1 1459 19                       # parallel-rne.mlir:1459:19
	seteq r3, r3, r6
	.loc	1 1461 19                       # parallel-rne.mlir:1461:19
	setneq r5, r5, zero
	.loc	1 1462 19                       # parallel-rne.mlir:1462:19
	and r3, r3, r5
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r3, zero, .LBB0_1259
# %bb.1258:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r11)
	j .LBB0_1260
.LBB0_1259:                             #   in Loop: Header=BB0_1257 Depth=3
	lui r3, 1024
	or r9, r2, r3
.LBB0_1260:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r2, 4(r15)
	and r3, r2, r6
	and r5, r2, r1
	seteq r3, r3, r6
	setneq r5, r5, zero
	and r3, r3, r5
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r3, zero, .LBB0_1262
# %bb.1261:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 4(r11)
	j .LBB0_1263
.LBB0_1262:                             #   in Loop: Header=BB0_1257 Depth=3
	lui r3, 1024
	or r2, r2, r3
.LBB0_1263:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r3, 8(r15)
	and r5, r3, r6
	and r7, r3, r1
	seteq r5, r5, r6
	setneq r7, r7, zero
	and r5, r5, r7
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r5, zero, .LBB0_1265
# %bb.1264:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r3, 8(r11)
	j .LBB0_1266
.LBB0_1265:                             #   in Loop: Header=BB0_1257 Depth=3
	lui r5, 1024
	or r3, r3, r5
.LBB0_1266:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r5, 12(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r7, zero, .LBB0_1268
# %bb.1267:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 12(r11)
	j .LBB0_1269
.LBB0_1268:                             #   in Loop: Header=BB0_1257 Depth=3
	lui r7, 1024
	or r24, r5, r7
.LBB0_1269:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r5, 16(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r7, zero, .LBB0_1271
# %bb.1270:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r28, 16(r11)
	j .LBB0_1272
.LBB0_1271:                             #   in Loop: Header=BB0_1257 Depth=3
	lui r7, 1024
	or r28, r5, r7
.LBB0_1272:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r5, 20(r15)
	and r7, r5, r6
	and r10, r5, r1
	seteq r7, r7, r6
	setneq r10, r10, zero
	and r7, r7, r10
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r7, zero, .LBB0_1274
# %bb.1273:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r7, 20(r11)
	j .LBB0_1275
.LBB0_1274:                             #   in Loop: Header=BB0_1257 Depth=3
	lui r7, 1024
	or r7, r5, r7
.LBB0_1275:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r5, 24(r15)
	and r10, r5, r6
	and r17, r5, r1
	seteq r10, r10, r6
	setneq r17, r17, zero
	and r10, r10, r17
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	bneq r10, zero, .LBB0_1277
# %bb.1276:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 24(r11)
	j .LBB0_1278
.LBB0_1277:                             #   in Loop: Header=BB0_1257 Depth=3
	lui r10, 1024
	or r17, r5, r10
.LBB0_1278:                             # %vector.body380
                                        #   in Loop: Header=BB0_1257 Depth=3
	loads.w r5, 28(r15)
	and r10, r5, r6
	and r15, r5, r1
	seteq r10, r10, r6
	setneq r15, r15, zero
	and r10, r10, r15
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	beq r10, zero, .LBB0_1255
# %bb.1279:                             #   in Loop: Header=BB0_1257 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r11, r5, r10
	.loc	1 1463 19                       # parallel-rne.mlir:1463:19
	j .LBB0_1256
.LBB0_1280:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1445 7 is_stmt 1              # parallel-rne.mlir:1445:7
	mfence { sm }
	.loc	1 39 5                          # parallel-rne.mlir:39:5
	core_id r13
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
.LBB0_1281:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1470 7                        # parallel-rne.mlir:1470:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1471 7                        # parallel-rne.mlir:1471:7
	addli r2, zero, 3
	.loc	1 1470 7                        # parallel-rne.mlir:1470:7
	sync_core
	.loc	1 1471 7                        # parallel-rne.mlir:1471:7
	bneq r13, r2, .LBB0_1283
# %bb.1282:                             # %.critedge37
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 19
	.loc	1 1472 7 is_stmt 1              # parallel-rne.mlir:1472:7
	addli r2, zero, 41
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	addli r3, zero, 2
	.loc	1 1471 7                        # parallel-rne.mlir:1471:7
	xsignal r5, 0
	.loc	1 1472 7                        # parallel-rne.mlir:1472:7
	xsignal r2, 0
	.loc	1 1473 7                        # parallel-rne.mlir:1473:7
	addli r2, zero, 42
	xsignal r2, 0
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	loadli.w r2,  -12(r30)
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	.loc	1 1479 7                        # parallel-rne.mlir:1479:7
	xwait r5, 0
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	slli r2, r3, 16
	.loc	1 1480 7                        # parallel-rne.mlir:1480:7
	addli r3, zero, 31
	xwait r3, 0
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	loadli.w r3,  -652(r30)                 # 4-byte Folded Reload
	add.s r12, r2, r3
	.loc	1 1481 7                        # parallel-rne.mlir:1481:7
	addli r2, zero, 43
	xwait r2, 0
	.loc	1 1482 7                        # parallel-rne.mlir:1482:7
	addli r2, zero, 45
	xwait r2, 0
	j .LBB0_1286
.LBB0_1283:                             # %.critedge35
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1474 7                        # parallel-rne.mlir:1474:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_1285
# %bb.1284:                             # %.thread125
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 42
	addli r5, zero, 2
	addli r8, zero, 4095
	addli r7, zero, 4
	xwait r2, 0
	lock zero, r5
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, zero, 19
	dsmadd r4, r4, r4, 0
	ew_cfg zero, zero, zero, 19
	unlock r5
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	loadli.w r2,  -12(r30)
	addli r3, r2, 1
	mod.s r2, r2, r5
	storeli.w r3, -12(r30)
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	addli r3, zero, 30
	xwait r3, 0
	addli r3, zero, 46
	xwait r3, 0
	lock zero, r5
	lui r3, 258048
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	slli r2, r2, 16
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	loadli.w r3,  -652(r30)                 # 4-byte Folded Reload
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	ew_cfg zero, r8, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, r7, 19
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	add.s r12, r2, r3
	.loc	1 1477 7                        # parallel-rne.mlir:1477:7
	loadli.w r2,  -456(r30)                 # 4-byte Folded Reload
	dsmul r12, r2, r4, 0
	addli r2, zero, 29
	ew_cfg zero, zero, zero, 19
	unlock r5
	xsignal r2, 0
	addli r2, zero, 43
	xsignal r2, 0
	addli r2, zero, 45
	xsignal r2, 0
	.loc	1 1479 7                        # parallel-rne.mlir:1479:7
	j .LBB0_1286
.LBB0_1285:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1476 13                       # parallel-rne.mlir:1476:13
	loadli.w r2,  -12(r30)
	addli r3, zero, 2
	loadli.w r5,  -652(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -12(r30)
	slli r3, r3, 16
	add.s r12, r3, r5
.LBB0_1286:                             # %.critedge39
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1486 7                        # parallel-rne.mlir:1486:7
	addli r2, zero, 255
	.loc	1 1484 7                        # parallel-rne.mlir:1484:7
	xfence
	.loc	1 1485 7                        # parallel-rne.mlir:1485:7
	mfence { lm, sm, gm }
	.loc	1 1486 7                        # parallel-rne.mlir:1486:7
	csr_set csr5, r2
	sub.s r2, r16, r17
	storeli.w r2, -548(r30)                 # 4-byte Folded Spill
	sub.s r2, r16, r12
	storeli.w r2, -552(r30)                 # 4-byte Folded Spill
	sync_core
	.loc	1 1487 7                        # parallel-rne.mlir:1487:7
	beq r13, zero, .LBB0_1294
# %bb.1287:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1533 7                        # parallel-rne.mlir:1533:7
	addli r2, zero, 1
	beq r13, r2, .LBB0_1345
.LBB0_1288:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1579 7                        # parallel-rne.mlir:1579:7
	addli r2, zero, 2
	beq r13, r2, .LBB0_1396
.LBB0_1289:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1625 7                        # parallel-rne.mlir:1625:7
	addli r2, zero, 3
	beq r13, r2, .LBB0_1447
.LBB0_1290:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1671 7                        # parallel-rne.mlir:1671:7
	addli r2, zero, 4
	beq r13, r2, .LBB0_1498
.LBB0_1291:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1717 7                        # parallel-rne.mlir:1717:7
	addli r2, zero, 5
	beq r13, r2, .LBB0_1549
.LBB0_1292:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1763 7                        # parallel-rne.mlir:1763:7
	addli r2, zero, 6
	beq r13, r2, .LBB0_1600
.LBB0_1293:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1809 7                        # parallel-rne.mlir:1809:7
	beq r13, r14, .LBB0_1651
	j .LBB0_1702
.LBB0_1294:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	zext_int2long r[7:8], zero
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 1487 7 is_stmt 1              # parallel-rne.mlir:1487:7
	storeli.w r2, -544(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1296
.LBB0_1295:                             # %middle.block373
                                        #   in Loop: Header=BB0_1296 Depth=2
	.loc	1 1494 9                        # parallel-rne.mlir:1494:9
	load.d r[2:3], -520(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1344
.LBB0_1296:                             # %.preheader134
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1317 Depth 3
                                        #       Child Loop BB0_1299 Depth 3
	.loc	1 1495 11                       # parallel-rne.mlir:1495:11
	loadli.w r5,  -544(r30)                 # 4-byte Folded Reload
	sll.d r[2:3], r[7:8], r14
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	beq r5, zero, .LBB0_1315
# %bb.1297:                             # %scalar.ph365.preheader
                                        #   in Loop: Header=BB0_1296 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_1299
.LBB0_1298:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 1495 11                       # parallel-rne.mlir:1495:11
	load.d r[13:14], -448(r30)              # 8-byte Folded Reload
	.loc	1 1528 13 is_stmt 1             # parallel-rne.mlir:1528:13
	add.s r7, r16, r10
	stores.w r11, 0(r7)
	.loc	1 1495 11                       # parallel-rne.mlir:1495:11
	setlt.ul r5, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	beq r5, zero, .LBB0_1295
.LBB0_1299:                             # %scalar.ph365
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1296 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	add.ul r[10:11], r[8:9], r[2:3]
	lui r14, 523264
	slli r10, r10, 2
	.loc	1 1497 19                       # parallel-rne.mlir:1497:19
	add.s r5, r4, r10
	.loc	1 1498 19                       # parallel-rne.mlir:1498:19
	add.s r7, r12, r10
	.loc	1 1497 19                       # parallel-rne.mlir:1497:19
	loads.w r5, 0(r5)
	.loc	1 1498 19                       # parallel-rne.mlir:1498:19
	loads.w r15, 0(r7)
	lui r7, 523264
	.loc	1 1501 19                       # parallel-rne.mlir:1501:19
	and r11, r5, r21
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	beq r11, r6, .LBB0_1301
# %bb.1300:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r15, 0
.LBB0_1301:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	add.s r5, r17, r10
	loads.w r5, 0(r5)
	and r13, r5, r21
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r13, zero, .LBB0_1311
# %bb.1302:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r15, 523264
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r11, zero, .LBB0_1312
.LBB0_1303:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	beq r13, r6, .LBB0_1305
.LBB0_1304:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
.LBB0_1305:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	setlt.u r11, r6, r11
	lui r5, 523264
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r11, zero, .LBB0_1307
# %bb.1306:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
.LBB0_1307:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	setlt.u r11, r6, r13
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r11, zero, .LBB0_1309
# %bb.1308:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
.LBB0_1309:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 1516 19 is_stmt 1             # parallel-rne.mlir:1516:19
	and r5, r7, r21
	.loc	1 1518 19                       # parallel-rne.mlir:1518:19
	setlt.u r11, r6, r5
	.loc	1 1519 19                       # parallel-rne.mlir:1519:19
	bneq r11, zero, .LBB0_1313
# %bb.1310:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r7, 0
	.loc	1 1525 19 is_stmt 1             # parallel-rne.mlir:1525:19
	setlt.u r5, r23, r5
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	bneq r5, zero, .LBB0_1298
	j .LBB0_1314
.LBB0_1311:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r15, 0
	lui r15, 523264
	.loc	1 1515 19 is_stmt 1             # parallel-rne.mlir:1515:19
	beq r11, zero, .LBB0_1303
.LBB0_1312:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r14, 0
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r13, r6, .LBB0_1304
	j .LBB0_1305
.LBB0_1313:                             #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r7, r11
	.loc	1 1525 19 is_stmt 1             # parallel-rne.mlir:1525:19
	setlt.u r5, r23, r5
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	bneq r5, zero, .LBB0_1298
.LBB0_1314:                             # %scalar.ph365
                                        #   in Loop: Header=BB0_1299 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	lui r7, 1048560
	add.s r5, r5, r22
	and r11, r5, r7
	j .LBB0_1298
.LBB0_1315:                             # %vector.body367.preheader
                                        #   in Loop: Header=BB0_1296 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_1317
.LBB0_1316:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 1495 11 is_stmt 1             # parallel-rne.mlir:1495:11
	addli.d r[13:14], r[13:14], 4
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1528 13                       # parallel-rne.mlir:1528:13
	add.s r7, r16, r15
	.loc	1 1495 11                       # parallel-rne.mlir:1495:11
	seteq.d r5, r[13:14], r[26:27]
	.loc	1 1528 13                       # parallel-rne.mlir:1528:13
	stores.w r28, 12(r7)
	stores.w r19, 8(r7)
	stores.w r20, 4(r7)
	stores.w r9, 0(r7)
	.loc	1 1495 11                       # parallel-rne.mlir:1495:11
	bneq r5, zero, .LBB0_1295
.LBB0_1317:                             # %vector.body367
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1296 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	add.ul r[7:8], r[13:14], r[2:3]
	slli r15, r7, 2
	add.s r28, r17, r15
	.loc	1 1497 19                       # parallel-rne.mlir:1497:19
	add.s r10, r4, r15
	.loc	1 1498 19                       # parallel-rne.mlir:1498:19
	add.s r19, r12, r15
	.loc	1 1496 19                       # parallel-rne.mlir:1496:19
	loads.w r5, 0(r28)
	.loc	1 1497 19                       # parallel-rne.mlir:1497:19
	loads.w r7, 0(r10)
	.loc	1 1503 19                       # parallel-rne.mlir:1503:19
	and r5, r5, r21
	.loc	1 1501 19                       # parallel-rne.mlir:1501:19
	and r7, r7, r21
	.loc	1 1504 19                       # parallel-rne.mlir:1504:19
	seteq r8, r5, r6
	.loc	1 1508 19                       # parallel-rne.mlir:1508:19
	seteq r17, r5, zero
	.loc	1 1505 19                       # parallel-rne.mlir:1505:19
	seteq r9, r7, zero
	.loc	1 1507 19                       # parallel-rne.mlir:1507:19
	seteq r11, r7, r6
	.loc	1 1513 19                       # parallel-rne.mlir:1513:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1506 19                       # parallel-rne.mlir:1506:19
	and r7, r8, r9
	.loc	1 1509 19                       # parallel-rne.mlir:1509:19
	and r8, r17, r11
	.loc	1 1510 19                       # parallel-rne.mlir:1510:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 1514 19                       # parallel-rne.mlir:1514:19
	or r5, r5, r7
	lui r7, 523264
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r5, zero, .LBB0_1319
# %bb.1318:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r7, 0(r19)
.LBB0_1319:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	loads.w r5, 4(r28)
	loads.w r9, 4(r10)
	and r5, r5, r21
	and r9, r9, r21
	seteq r11, r5, r6
	seteq r20, r5, zero
	seteq r17, r9, zero
	seteq r18, r9, r6
	max.u r5, r5, r9
	setlt.u r5, r6, r5
	and r9, r11, r17
	and r11, r20, r18
	or r9, r9, r11
	lui r11, 523264
	or r5, r5, r9
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r5, zero, .LBB0_1321
# %bb.1320:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r19)
.LBB0_1321:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	loads.w r5, 8(r28)
	loads.w r9, 8(r10)
	and r5, r5, r21
	and r9, r9, r21
	seteq r17, r5, r6
	seteq r24, r5, zero
	seteq r18, r9, zero
	seteq r20, r9, r6
	max.u r5, r5, r9
	setlt.u r5, r6, r5
	and r9, r17, r18
	and r17, r24, r20
	lui r24, 523264
	or r9, r9, r17
	or r5, r5, r9
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r5, zero, .LBB0_1323
# %bb.1322:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r19)
.LBB0_1323:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	loads.w r5, 12(r28)
	loads.w r9, 12(r10)
	and r5, r5, r21
	and r9, r9, r21
	seteq r10, r5, r6
	seteq r20, r5, zero
	seteq r17, r9, zero
	seteq r18, r9, r6
	max.u r5, r5, r9
	setlt.u r5, r6, r5
	and r9, r10, r17
	and r10, r20, r18
	or r9, r9, r10
	or r5, r5, r9
	.loc	1 1515 19                       # parallel-rne.mlir:1515:19
	bneq r5, zero, .LBB0_1325
# %bb.1324:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r19)
.LBB0_1325:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 1516 19 is_stmt 1             # parallel-rne.mlir:1516:19
	and r10, r8, r21
	.loc	1 1518 19                       # parallel-rne.mlir:1518:19
	setlt.u r5, r6, r10
	.loc	1 1519 19                       # parallel-rne.mlir:1519:19
	bneq r5, zero, .LBB0_1327
# %bb.1326:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r8, 0
	j .LBB0_1328
.LBB0_1327:                             #   in Loop: Header=BB0_1317 Depth=3
	lui r5, 1024
	or r28, r8, r5
.LBB0_1328:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1519 19                       # parallel-rne.mlir:1519:19
	bneq r5, zero, .LBB0_1330
# %bb.1329:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_1331
.LBB0_1330:                             #   in Loop: Header=BB0_1317 Depth=3
	lui r5, 1024
	or r19, r24, r5
.LBB0_1331:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1519 19                       # parallel-rne.mlir:1519:19
	bneq r5, zero, .LBB0_1333
# %bb.1332:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_1334
.LBB0_1333:                             #   in Loop: Header=BB0_1317 Depth=3
	lui r5, 1024
	or r20, r11, r5
.LBB0_1334:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	and r5, r7, r21
	setlt.u r9, r6, r5
	.loc	1 1519 19                       # parallel-rne.mlir:1519:19
	bneq r9, zero, .LBB0_1336
# %bb.1335:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r7, 0
	.loc	1 1525 19 is_stmt 1             # parallel-rne.mlir:1525:19
	setlt.u r5, r23, r5
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	beq r5, zero, .LBB0_1337
	j .LBB0_1338
.LBB0_1336:                             #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r7, r9
	.loc	1 1525 19 is_stmt 1             # parallel-rne.mlir:1525:19
	setlt.u r5, r23, r5
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	bneq r5, zero, .LBB0_1338
.LBB0_1337:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	lui r7, 1048560
	add.s r5, r5, r22
	and r9, r5, r7
.LBB0_1338:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	beq r5, zero, .LBB0_1341
# %bb.1339:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	beq r5, zero, .LBB0_1342
.LBB0_1340:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r10
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	bneq r5, zero, .LBB0_1316
	j .LBB0_1343
.LBB0_1341:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r20, r5, r7
	setlt.u r5, r23, r17
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	bneq r5, zero, .LBB0_1340
.LBB0_1342:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r19, r5, r7
	setlt.u r5, r23, r10
	.loc	1 1526 20                       # parallel-rne.mlir:1526:20
	bneq r5, zero, .LBB0_1316
.LBB0_1343:                             # %vector.body367
                                        #   in Loop: Header=BB0_1317 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r8, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r8, r5
	add.s r5, r5, r22
	and r28, r5, r7
	j .LBB0_1316
.LBB0_1344:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1487 7                        # parallel-rne.mlir:1487:7
	mfence { sm }
	.loc	1 1533 7                        # parallel-rne.mlir:1533:7
	addli r2, zero, 1
	bneq r13, r2, .LBB0_1288
.LBB0_1345:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[7:8], r3
	storeli.w r2, -520(r30)                 # 4-byte Folded Spill
	.loc	1 1533 7                        # parallel-rne.mlir:1533:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_1347
.LBB0_1346:                             # %middle.block358
                                        #   in Loop: Header=BB0_1347 Depth=2
	.loc	1 1540 9 is_stmt 1              # parallel-rne.mlir:1540:9
	load.d r[2:3], -512(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1395
.LBB0_1347:                             # %.preheader133
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1368 Depth 3
                                        #       Child Loop BB0_1350 Depth 3
	.loc	1 1541 11                       # parallel-rne.mlir:1541:11
	loadli.w r5,  -520(r30)                 # 4-byte Folded Reload
	sll.d r[2:3], r[7:8], r14
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	beq r5, zero, .LBB0_1366
# %bb.1348:                             # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_1347 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_1350
.LBB0_1349:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 1541 11                       # parallel-rne.mlir:1541:11
	load.d r[13:14], -448(r30)              # 8-byte Folded Reload
	.loc	1 1574 13 is_stmt 1             # parallel-rne.mlir:1574:13
	add.s r7, r16, r10
	stores.w r11, 0(r7)
	.loc	1 1541 11                       # parallel-rne.mlir:1541:11
	setlt.ul r5, r[8:9], r[13:14]
	addli.d r[8:9], r[8:9], 1
	beq r5, zero, .LBB0_1346
.LBB0_1350:                             # %scalar.ph350
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1347 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1542 19                       # parallel-rne.mlir:1542:19
	add.ul r[10:11], r[8:9], r[2:3]
	lui r14, 523264
	slli r10, r10, 2
	.loc	1 1543 19                       # parallel-rne.mlir:1543:19
	add.s r5, r4, r10
	.loc	1 1544 19                       # parallel-rne.mlir:1544:19
	add.s r7, r12, r10
	.loc	1 1543 19                       # parallel-rne.mlir:1543:19
	loads.w r5, 0(r5)
	.loc	1 1544 19                       # parallel-rne.mlir:1544:19
	loads.w r15, 0(r7)
	lui r7, 523264
	.loc	1 1547 19                       # parallel-rne.mlir:1547:19
	and r11, r5, r21
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	beq r11, r6, .LBB0_1352
# %bb.1351:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r15, 0
.LBB0_1352:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	add.s r5, r17, r10
	loads.w r5, 0(r5)
	and r13, r5, r21
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r13, zero, .LBB0_1362
# %bb.1353:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r15, 523264
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r11, zero, .LBB0_1363
.LBB0_1354:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	beq r13, r6, .LBB0_1356
.LBB0_1355:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r14, 0
.LBB0_1356:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	setlt.u r11, r6, r11
	lui r5, 523264
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r11, zero, .LBB0_1358
# %bb.1357:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
.LBB0_1358:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	setlt.u r11, r6, r13
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r11, zero, .LBB0_1360
# %bb.1359:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
.LBB0_1360:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 1562 19 is_stmt 1             # parallel-rne.mlir:1562:19
	and r5, r7, r21
	.loc	1 1564 19                       # parallel-rne.mlir:1564:19
	setlt.u r11, r6, r5
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r11, zero, .LBB0_1364
# %bb.1361:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r7, 0
	.loc	1 1571 19 is_stmt 1             # parallel-rne.mlir:1571:19
	setlt.u r5, r23, r5
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	bneq r5, zero, .LBB0_1349
	j .LBB0_1365
.LBB0_1362:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r14, r15, 0
	lui r15, 523264
	.loc	1 1561 19 is_stmt 1             # parallel-rne.mlir:1561:19
	beq r11, zero, .LBB0_1354
.LBB0_1363:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r14, 0
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r13, r6, .LBB0_1355
	j .LBB0_1356
.LBB0_1364:                             #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r11, 1024
	or r11, r7, r11
	.loc	1 1571 19 is_stmt 1             # parallel-rne.mlir:1571:19
	setlt.u r5, r23, r5
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	bneq r5, zero, .LBB0_1349
.LBB0_1365:                             # %scalar.ph350
                                        #   in Loop: Header=BB0_1350 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	lui r7, 1048560
	add.s r5, r5, r22
	and r11, r5, r7
	j .LBB0_1349
.LBB0_1366:                             # %vector.body352.preheader
                                        #   in Loop: Header=BB0_1347 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_1368
.LBB0_1367:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 1541 11 is_stmt 1             # parallel-rne.mlir:1541:11
	addli.d r[13:14], r[13:14], 4
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1574 13                       # parallel-rne.mlir:1574:13
	add.s r8, r16, r15
	.loc	1 1541 11                       # parallel-rne.mlir:1541:11
	seteq.d r5, r[13:14], r[26:27]
	.loc	1 1574 13                       # parallel-rne.mlir:1574:13
	stores.w r28, 12(r8)
	stores.w r19, 8(r8)
	stores.w r20, 4(r8)
	stores.w r7, 0(r8)
	.loc	1 1541 11                       # parallel-rne.mlir:1541:11
	bneq r5, zero, .LBB0_1346
.LBB0_1368:                             # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1347 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1542 19                       # parallel-rne.mlir:1542:19
	add.ul r[7:8], r[13:14], r[2:3]
	slli r15, r7, 2
	add.s r28, r17, r15
	.loc	1 1543 19                       # parallel-rne.mlir:1543:19
	add.s r10, r4, r15
	.loc	1 1544 19                       # parallel-rne.mlir:1544:19
	add.s r19, r12, r15
	.loc	1 1542 19                       # parallel-rne.mlir:1542:19
	loads.w r5, 0(r28)
	.loc	1 1543 19                       # parallel-rne.mlir:1543:19
	loads.w r7, 0(r10)
	.loc	1 1549 19                       # parallel-rne.mlir:1549:19
	and r5, r5, r21
	.loc	1 1547 19                       # parallel-rne.mlir:1547:19
	and r7, r7, r21
	.loc	1 1550 19                       # parallel-rne.mlir:1550:19
	seteq r8, r5, r6
	.loc	1 1554 19                       # parallel-rne.mlir:1554:19
	seteq r17, r5, zero
	.loc	1 1551 19                       # parallel-rne.mlir:1551:19
	seteq r9, r7, zero
	.loc	1 1553 19                       # parallel-rne.mlir:1553:19
	seteq r11, r7, r6
	.loc	1 1559 19                       # parallel-rne.mlir:1559:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1552 19                       # parallel-rne.mlir:1552:19
	and r7, r8, r9
	.loc	1 1555 19                       # parallel-rne.mlir:1555:19
	and r8, r17, r11
	lui r9, 523264
	.loc	1 1556 19                       # parallel-rne.mlir:1556:19
	or r7, r7, r8
	lui r8, 523264
	.loc	1 1560 19                       # parallel-rne.mlir:1560:19
	or r5, r5, r7
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r5, zero, .LBB0_1370
# %bb.1369:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r9, 0(r19)
.LBB0_1370:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r10)
	and r5, r5, r21
	and r7, r7, r21
	seteq r11, r5, r6
	seteq r20, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r11, r17
	and r11, r20, r18
	or r7, r7, r11
	lui r11, 523264
	or r5, r5, r7
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r5, zero, .LBB0_1372
# %bb.1371:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r19)
.LBB0_1372:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r10)
	and r5, r5, r21
	and r7, r7, r21
	seteq r17, r5, r6
	seteq r24, r5, zero
	seteq r18, r7, zero
	seteq r20, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r17, r18
	and r17, r24, r20
	lui r24, 523264
	or r7, r7, r17
	or r5, r5, r7
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r5, zero, .LBB0_1374
# %bb.1373:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r19)
.LBB0_1374:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	loads.w r5, 12(r28)
	loads.w r7, 12(r10)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r20, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r17
	and r10, r20, r18
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 1561 19                       # parallel-rne.mlir:1561:19
	bneq r5, zero, .LBB0_1376
# %bb.1375:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r8, 12(r19)
.LBB0_1376:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 1562 19 is_stmt 1             # parallel-rne.mlir:1562:19
	and r10, r8, r21
	.loc	1 1564 19                       # parallel-rne.mlir:1564:19
	setlt.u r5, r6, r10
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r5, zero, .LBB0_1378
# %bb.1377:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r8, 0
	j .LBB0_1379
.LBB0_1378:                             #   in Loop: Header=BB0_1368 Depth=3
	lui r5, 1024
	or r28, r8, r5
.LBB0_1379:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r5, zero, .LBB0_1381
# %bb.1380:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r24, 0
	j .LBB0_1382
.LBB0_1381:                             #   in Loop: Header=BB0_1368 Depth=3
	lui r5, 1024
	or r19, r24, r5
.LBB0_1382:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r5, zero, .LBB0_1384
# %bb.1383:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_1385
.LBB0_1384:                             #   in Loop: Header=BB0_1368 Depth=3
	lui r5, 1024
	or r20, r11, r5
.LBB0_1385:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	and r5, r9, r21
	setlt.u r7, r6, r5
	.loc	1 1565 19                       # parallel-rne.mlir:1565:19
	bneq r7, zero, .LBB0_1387
# %bb.1386:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r9, 0
	.loc	1 1571 19 is_stmt 1             # parallel-rne.mlir:1571:19
	setlt.u r5, r23, r5
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	beq r5, zero, .LBB0_1388
	j .LBB0_1389
.LBB0_1387:                             #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r9, r7
	.loc	1 1571 19 is_stmt 1             # parallel-rne.mlir:1571:19
	setlt.u r5, r23, r5
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	bneq r5, zero, .LBB0_1389
.LBB0_1388:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r9, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r9, r5
	add.s r5, r5, r22
	and r7, r5, r7
.LBB0_1389:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	beq r5, zero, .LBB0_1392
# %bb.1390:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	beq r5, zero, .LBB0_1393
.LBB0_1391:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r10
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	bneq r5, zero, .LBB0_1367
	j .LBB0_1394
.LBB0_1392:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r20, r5, r9
	setlt.u r5, r23, r17
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	bneq r5, zero, .LBB0_1391
.LBB0_1393:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r19, r5, r9
	setlt.u r5, r23, r10
	.loc	1 1572 20                       # parallel-rne.mlir:1572:20
	bneq r5, zero, .LBB0_1367
.LBB0_1394:                             # %vector.body352
                                        #   in Loop: Header=BB0_1368 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r8, 16
	andi r5, r5, 1
	add.s r5, r8, r5
	lui r8, 1048560
	add.s r5, r5, r22
	and r28, r5, r8
	j .LBB0_1367
.LBB0_1395:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1533 7                        # parallel-rne.mlir:1533:7
	mfence { sm }
	.loc	1 1579 7                        # parallel-rne.mlir:1579:7
	addli r2, zero, 2
	bneq r13, r2, .LBB0_1289
.LBB0_1396:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -512(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 1579 7                        # parallel-rne.mlir:1579:7
	xfence
	zext_int2long r[7:8], r2
	mfence { lm, sm, gm }
	j .LBB0_1398
.LBB0_1397:                             # %middle.block343
                                        #   in Loop: Header=BB0_1398 Depth=2
	.loc	1 1586 9 is_stmt 1              # parallel-rne.mlir:1586:9
	load.d r[2:3], -504(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1446
.LBB0_1398:                             # %.preheader132
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1419 Depth 3
                                        #       Child Loop BB0_1401 Depth 3
	.loc	1 1587 11                       # parallel-rne.mlir:1587:11
	loadli.w r5,  -512(r30)                 # 4-byte Folded Reload
	sll.d r[2:3], r[7:8], r14
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	beq r5, zero, .LBB0_1417
# %bb.1399:                             # %scalar.ph335.preheader
                                        #   in Loop: Header=BB0_1398 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_1401
.LBB0_1400:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 1587 11                       # parallel-rne.mlir:1587:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 1620 13 is_stmt 1             # parallel-rne.mlir:1620:13
	add.s r7, r16, r8
	stores.w r9, 0(r7)
	.loc	1 1587 11                       # parallel-rne.mlir:1587:11
	setlt.ul r5, r[13:14], r[10:11]
	addli.d r[13:14], r[13:14], 1
	beq r5, zero, .LBB0_1397
.LBB0_1401:                             # %scalar.ph335
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1398 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1588 19                       # parallel-rne.mlir:1588:19
	add.ul r[7:8], r[13:14], r[2:3]
	lui r11, 523264
	slli r8, r7, 2
	.loc	1 1589 19                       # parallel-rne.mlir:1589:19
	add.s r5, r4, r8
	.loc	1 1590 19                       # parallel-rne.mlir:1590:19
	add.s r7, r12, r8
	.loc	1 1589 19                       # parallel-rne.mlir:1589:19
	loads.w r5, 0(r5)
	.loc	1 1590 19                       # parallel-rne.mlir:1590:19
	loads.w r15, 0(r7)
	lui r7, 523264
	.loc	1 1593 19                       # parallel-rne.mlir:1593:19
	and r9, r5, r21
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	beq r9, r6, .LBB0_1403
# %bb.1402:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r15, 0
.LBB0_1403:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	add.s r5, r17, r8
	loads.w r5, 0(r5)
	and r10, r5, r21
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r10, zero, .LBB0_1413
# %bb.1404:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r15, 523264
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r9, zero, .LBB0_1414
.LBB0_1405:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	beq r10, r6, .LBB0_1407
.LBB0_1406:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r11, 0
.LBB0_1407:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r9, zero, .LBB0_1409
# %bb.1408:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
.LBB0_1409:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	setlt.u r9, r6, r10
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r9, zero, .LBB0_1411
# %bb.1410:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
.LBB0_1411:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 1608 19 is_stmt 1             # parallel-rne.mlir:1608:19
	and r5, r7, r21
	.loc	1 1610 19                       # parallel-rne.mlir:1610:19
	setlt.u r9, r6, r5
	.loc	1 1611 19                       # parallel-rne.mlir:1611:19
	bneq r9, zero, .LBB0_1415
# %bb.1412:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r7, 0
	.loc	1 1617 19 is_stmt 1             # parallel-rne.mlir:1617:19
	setlt.u r5, r23, r5
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	bneq r5, zero, .LBB0_1400
	j .LBB0_1416
.LBB0_1413:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r15, 0
	lui r15, 523264
	.loc	1 1607 19 is_stmt 1             # parallel-rne.mlir:1607:19
	beq r9, zero, .LBB0_1405
.LBB0_1414:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r11, 0
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r10, r6, .LBB0_1406
	j .LBB0_1407
.LBB0_1415:                             #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r7, r9
	.loc	1 1617 19 is_stmt 1             # parallel-rne.mlir:1617:19
	setlt.u r5, r23, r5
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	bneq r5, zero, .LBB0_1400
.LBB0_1416:                             # %scalar.ph335
                                        #   in Loop: Header=BB0_1401 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	lui r7, 1048560
	add.s r5, r5, r22
	and r9, r5, r7
	j .LBB0_1400
.LBB0_1417:                             # %vector.body337.preheader
                                        #   in Loop: Header=BB0_1398 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_1419
.LBB0_1418:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 1587 11 is_stmt 1             # parallel-rne.mlir:1587:11
	addli.d r[13:14], r[13:14], 4
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1620 13                       # parallel-rne.mlir:1620:13
	add.s r8, r16, r15
	.loc	1 1587 11                       # parallel-rne.mlir:1587:11
	seteq.d r5, r[13:14], r[26:27]
	.loc	1 1620 13                       # parallel-rne.mlir:1620:13
	stores.w r28, 12(r8)
	stores.w r9, 8(r8)
	stores.w r10, 4(r8)
	stores.w r7, 0(r8)
	.loc	1 1587 11                       # parallel-rne.mlir:1587:11
	bneq r5, zero, .LBB0_1397
.LBB0_1419:                             # %vector.body337
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1398 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1588 19                       # parallel-rne.mlir:1588:19
	add.ul r[7:8], r[13:14], r[2:3]
	lui r19, 523264
	lui r20, 523264
	slli r15, r7, 2
	add.s r28, r17, r15
	.loc	1 1589 19                       # parallel-rne.mlir:1589:19
	add.s r8, r4, r15
	.loc	1 1588 19                       # parallel-rne.mlir:1588:19
	loads.w r5, 0(r28)
	.loc	1 1589 19                       # parallel-rne.mlir:1589:19
	loads.w r7, 0(r8)
	.loc	1 1595 19                       # parallel-rne.mlir:1595:19
	and r5, r5, r21
	.loc	1 1593 19                       # parallel-rne.mlir:1593:19
	and r7, r7, r21
	.loc	1 1596 19                       # parallel-rne.mlir:1596:19
	seteq r9, r5, r6
	.loc	1 1600 19                       # parallel-rne.mlir:1600:19
	seteq r17, r5, zero
	.loc	1 1597 19                       # parallel-rne.mlir:1597:19
	seteq r10, r7, zero
	.loc	1 1599 19                       # parallel-rne.mlir:1599:19
	seteq r11, r7, r6
	.loc	1 1605 19                       # parallel-rne.mlir:1605:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1598 19                       # parallel-rne.mlir:1598:19
	and r7, r9, r10
	.loc	1 1601 19                       # parallel-rne.mlir:1601:19
	and r9, r17, r11
	.loc	1 1602 19                       # parallel-rne.mlir:1602:19
	or r7, r7, r9
	.loc	1 1590 19                       # parallel-rne.mlir:1590:19
	add.s r9, r12, r15
	.loc	1 1606 19                       # parallel-rne.mlir:1606:19
	or r5, r5, r7
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r5, zero, .LBB0_1421
# %bb.1420:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r9)
.LBB0_1421:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r8)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r11, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r11
	and r10, r18, r17
	lui r11, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r5, zero, .LBB0_1423
# %bb.1422:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r9)
.LBB0_1423:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r8)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r24, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r17
	and r10, r24, r18
	lui r24, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r5, zero, .LBB0_1425
# %bb.1424:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r9)
.LBB0_1425:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	loads.w r5, 12(r28)
	loads.w r7, 12(r8)
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r6
	seteq r18, r5, zero
	seteq r10, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r8, r10
	and r8, r18, r17
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 1607 19                       # parallel-rne.mlir:1607:19
	bneq r5, zero, .LBB0_1427
# %bb.1426:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r9)
.LBB0_1427:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 1608 19 is_stmt 1             # parallel-rne.mlir:1608:19
	and r8, r19, r21
	.loc	1 1610 19                       # parallel-rne.mlir:1610:19
	setlt.u r5, r6, r8
	.loc	1 1611 19                       # parallel-rne.mlir:1611:19
	bneq r5, zero, .LBB0_1429
# %bb.1428:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_1430
.LBB0_1429:                             #   in Loop: Header=BB0_1419 Depth=3
	lui r5, 1024
	or r28, r19, r5
.LBB0_1430:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1611 19                       # parallel-rne.mlir:1611:19
	bneq r5, zero, .LBB0_1432
# %bb.1431:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r24, 0
	j .LBB0_1433
.LBB0_1432:                             #   in Loop: Header=BB0_1419 Depth=3
	lui r5, 1024
	or r9, r24, r5
.LBB0_1433:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1611 19                       # parallel-rne.mlir:1611:19
	bneq r5, zero, .LBB0_1435
# %bb.1434:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_1436
.LBB0_1435:                             #   in Loop: Header=BB0_1419 Depth=3
	lui r5, 1024
	or r10, r11, r5
.LBB0_1436:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	and r5, r20, r21
	setlt.u r7, r6, r5
	.loc	1 1611 19                       # parallel-rne.mlir:1611:19
	bneq r7, zero, .LBB0_1438
# %bb.1437:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r20, 0
	.loc	1 1617 19 is_stmt 1             # parallel-rne.mlir:1617:19
	setlt.u r5, r23, r5
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	beq r5, zero, .LBB0_1439
	j .LBB0_1440
.LBB0_1438:                             #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r20, r7
	.loc	1 1617 19 is_stmt 1             # parallel-rne.mlir:1617:19
	setlt.u r5, r23, r5
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	bneq r5, zero, .LBB0_1440
.LBB0_1439:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r20, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r22
	and r7, r5, r7
.LBB0_1440:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	beq r5, zero, .LBB0_1443
# %bb.1441:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	beq r5, zero, .LBB0_1444
.LBB0_1442:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r8
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	bneq r5, zero, .LBB0_1418
	j .LBB0_1445
.LBB0_1443:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r10, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r10, r5, r10
	setlt.u r5, r23, r17
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	bneq r5, zero, .LBB0_1442
.LBB0_1444:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r9, r5, r9
	setlt.u r5, r23, r8
	.loc	1 1618 20                       # parallel-rne.mlir:1618:20
	bneq r5, zero, .LBB0_1418
.LBB0_1445:                             # %vector.body337
                                        #   in Loop: Header=BB0_1419 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r19, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r22
	and r28, r5, r8
	j .LBB0_1418
.LBB0_1446:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1579 7                        # parallel-rne.mlir:1579:7
	mfence { sm }
	.loc	1 1625 7                        # parallel-rne.mlir:1625:7
	addli r2, zero, 3
	bneq r13, r2, .LBB0_1290
.LBB0_1447:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -504(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 1625 7                        # parallel-rne.mlir:1625:7
	xfence
	zext_int2long r[7:8], r2
	mfence { lm, sm, gm }
	j .LBB0_1449
.LBB0_1448:                             # %middle.block328
                                        #   in Loop: Header=BB0_1449 Depth=2
	.loc	1 1632 9 is_stmt 1              # parallel-rne.mlir:1632:9
	load.d r[2:3], -496(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1497
.LBB0_1449:                             # %.preheader131
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1470 Depth 3
                                        #       Child Loop BB0_1452 Depth 3
	.loc	1 1633 11                       # parallel-rne.mlir:1633:11
	loadli.w r5,  -504(r30)                 # 4-byte Folded Reload
	sll.d r[2:3], r[7:8], r14
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	beq r5, zero, .LBB0_1468
# %bb.1450:                             # %scalar.ph320.preheader
                                        #   in Loop: Header=BB0_1449 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[13:14], zero
	j .LBB0_1452
.LBB0_1451:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 1633 11                       # parallel-rne.mlir:1633:11
	load.d r[10:11], -448(r30)              # 8-byte Folded Reload
	.loc	1 1666 13 is_stmt 1             # parallel-rne.mlir:1666:13
	add.s r7, r16, r8
	stores.w r9, 0(r7)
	.loc	1 1633 11                       # parallel-rne.mlir:1633:11
	setlt.ul r5, r[13:14], r[10:11]
	addli.d r[13:14], r[13:14], 1
	beq r5, zero, .LBB0_1448
.LBB0_1452:                             # %scalar.ph320
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1449 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1634 19                       # parallel-rne.mlir:1634:19
	add.ul r[7:8], r[13:14], r[2:3]
	lui r11, 523264
	slli r8, r7, 2
	.loc	1 1635 19                       # parallel-rne.mlir:1635:19
	add.s r5, r4, r8
	.loc	1 1636 19                       # parallel-rne.mlir:1636:19
	add.s r7, r12, r8
	.loc	1 1635 19                       # parallel-rne.mlir:1635:19
	loads.w r5, 0(r5)
	.loc	1 1636 19                       # parallel-rne.mlir:1636:19
	loads.w r15, 0(r7)
	lui r7, 523264
	.loc	1 1639 19                       # parallel-rne.mlir:1639:19
	and r9, r5, r21
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	beq r9, r6, .LBB0_1454
# %bb.1453:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r15, 0
.LBB0_1454:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	add.s r5, r17, r8
	loads.w r5, 0(r5)
	and r10, r5, r21
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r10, zero, .LBB0_1464
# %bb.1455:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r15, 523264
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r9, zero, .LBB0_1465
.LBB0_1456:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	beq r10, r6, .LBB0_1458
.LBB0_1457:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r11, 0
.LBB0_1458:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	setlt.u r9, r6, r9
	lui r5, 523264
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r9, zero, .LBB0_1460
# %bb.1459:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
.LBB0_1460:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	setlt.u r9, r6, r10
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r9, zero, .LBB0_1462
# %bb.1461:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r5, 0
.LBB0_1462:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 1654 19 is_stmt 1             # parallel-rne.mlir:1654:19
	and r5, r7, r21
	.loc	1 1656 19                       # parallel-rne.mlir:1656:19
	setlt.u r9, r6, r5
	.loc	1 1657 19                       # parallel-rne.mlir:1657:19
	bneq r9, zero, .LBB0_1466
# %bb.1463:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r7, 0
	.loc	1 1663 19 is_stmt 1             # parallel-rne.mlir:1663:19
	setlt.u r5, r23, r5
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	bneq r5, zero, .LBB0_1451
	j .LBB0_1467
.LBB0_1464:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r11, r15, 0
	lui r15, 523264
	.loc	1 1653 19 is_stmt 1             # parallel-rne.mlir:1653:19
	beq r9, zero, .LBB0_1456
.LBB0_1465:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r11, 0
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r10, r6, .LBB0_1457
	j .LBB0_1458
.LBB0_1466:                             #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r7, r9
	.loc	1 1663 19 is_stmt 1             # parallel-rne.mlir:1663:19
	setlt.u r5, r23, r5
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	bneq r5, zero, .LBB0_1451
.LBB0_1467:                             # %scalar.ph320
                                        #   in Loop: Header=BB0_1452 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r7, 16
	andi r5, r5, 1
	add.s r5, r7, r5
	lui r7, 1048560
	add.s r5, r5, r22
	and r9, r5, r7
	j .LBB0_1451
.LBB0_1468:                             # %vector.body322.preheader
                                        #   in Loop: Header=BB0_1449 Depth=2
	zext_int2long r[13:14], zero
	j .LBB0_1470
.LBB0_1469:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 1633 11 is_stmt 1             # parallel-rne.mlir:1633:11
	addli.d r[13:14], r[13:14], 4
	loadli.w r17,  -464(r30)                # 4-byte Folded Reload
	.loc	1 1666 13                       # parallel-rne.mlir:1666:13
	add.s r8, r16, r15
	.loc	1 1633 11                       # parallel-rne.mlir:1633:11
	seteq.d r5, r[13:14], r[26:27]
	.loc	1 1666 13                       # parallel-rne.mlir:1666:13
	stores.w r28, 12(r8)
	stores.w r9, 8(r8)
	stores.w r10, 4(r8)
	stores.w r7, 0(r8)
	.loc	1 1633 11                       # parallel-rne.mlir:1633:11
	bneq r5, zero, .LBB0_1448
.LBB0_1470:                             # %vector.body322
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1449 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1634 19                       # parallel-rne.mlir:1634:19
	add.ul r[7:8], r[13:14], r[2:3]
	lui r19, 523264
	lui r20, 523264
	slli r15, r7, 2
	add.s r28, r17, r15
	.loc	1 1635 19                       # parallel-rne.mlir:1635:19
	add.s r8, r4, r15
	.loc	1 1634 19                       # parallel-rne.mlir:1634:19
	loads.w r5, 0(r28)
	.loc	1 1635 19                       # parallel-rne.mlir:1635:19
	loads.w r7, 0(r8)
	.loc	1 1641 19                       # parallel-rne.mlir:1641:19
	and r5, r5, r21
	.loc	1 1639 19                       # parallel-rne.mlir:1639:19
	and r7, r7, r21
	.loc	1 1642 19                       # parallel-rne.mlir:1642:19
	seteq r9, r5, r6
	.loc	1 1646 19                       # parallel-rne.mlir:1646:19
	seteq r17, r5, zero
	.loc	1 1643 19                       # parallel-rne.mlir:1643:19
	seteq r10, r7, zero
	.loc	1 1645 19                       # parallel-rne.mlir:1645:19
	seteq r11, r7, r6
	.loc	1 1651 19                       # parallel-rne.mlir:1651:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1644 19                       # parallel-rne.mlir:1644:19
	and r7, r9, r10
	.loc	1 1647 19                       # parallel-rne.mlir:1647:19
	and r9, r17, r11
	.loc	1 1648 19                       # parallel-rne.mlir:1648:19
	or r7, r7, r9
	.loc	1 1636 19                       # parallel-rne.mlir:1636:19
	add.s r9, r12, r15
	.loc	1 1652 19                       # parallel-rne.mlir:1652:19
	or r5, r5, r7
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r5, zero, .LBB0_1472
# %bb.1471:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r20, 0(r9)
.LBB0_1472:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r8)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r18, r5, zero
	seteq r11, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r11
	and r10, r18, r17
	lui r11, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r5, zero, .LBB0_1474
# %bb.1473:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r9)
.LBB0_1474:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r8)
	and r5, r5, r21
	and r7, r7, r21
	seteq r10, r5, r6
	seteq r24, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r10, r17
	and r10, r24, r18
	lui r24, 523264
	or r7, r7, r10
	or r5, r5, r7
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r5, zero, .LBB0_1476
# %bb.1475:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r9)
.LBB0_1476:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	loads.w r5, 12(r28)
	loads.w r7, 12(r8)
	and r5, r5, r21
	and r7, r7, r21
	seteq r8, r5, r6
	seteq r18, r5, zero
	seteq r10, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r8, r10
	and r8, r18, r17
	or r7, r7, r8
	or r5, r5, r7
	.loc	1 1653 19                       # parallel-rne.mlir:1653:19
	bneq r5, zero, .LBB0_1478
# %bb.1477:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 12(r9)
.LBB0_1478:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 1654 19 is_stmt 1             # parallel-rne.mlir:1654:19
	and r8, r19, r21
	.loc	1 1656 19                       # parallel-rne.mlir:1656:19
	setlt.u r5, r6, r8
	.loc	1 1657 19                       # parallel-rne.mlir:1657:19
	bneq r5, zero, .LBB0_1480
# %bb.1479:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r19, 0
	j .LBB0_1481
.LBB0_1480:                             #   in Loop: Header=BB0_1470 Depth=3
	lui r5, 1024
	or r28, r19, r5
.LBB0_1481:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1657 19                       # parallel-rne.mlir:1657:19
	bneq r5, zero, .LBB0_1483
# %bb.1482:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r24, 0
	j .LBB0_1484
.LBB0_1483:                             #   in Loop: Header=BB0_1470 Depth=3
	lui r5, 1024
	or r9, r24, r5
.LBB0_1484:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1657 19                       # parallel-rne.mlir:1657:19
	bneq r5, zero, .LBB0_1486
# %bb.1485:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_1487
.LBB0_1486:                             #   in Loop: Header=BB0_1470 Depth=3
	lui r5, 1024
	or r10, r11, r5
.LBB0_1487:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	and r5, r20, r21
	setlt.u r7, r6, r5
	.loc	1 1657 19                       # parallel-rne.mlir:1657:19
	bneq r7, zero, .LBB0_1489
# %bb.1488:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r20, 0
	.loc	1 1663 19 is_stmt 1             # parallel-rne.mlir:1663:19
	setlt.u r5, r23, r5
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	beq r5, zero, .LBB0_1490
	j .LBB0_1491
.LBB0_1489:                             #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r20, r7
	.loc	1 1663 19 is_stmt 1             # parallel-rne.mlir:1663:19
	setlt.u r5, r23, r5
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	bneq r5, zero, .LBB0_1491
.LBB0_1490:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r20, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r20, r5
	add.s r5, r5, r22
	and r7, r5, r7
.LBB0_1491:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	beq r5, zero, .LBB0_1494
# %bb.1492:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	beq r5, zero, .LBB0_1495
.LBB0_1493:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r8
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	bneq r5, zero, .LBB0_1469
	j .LBB0_1496
.LBB0_1494:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r10, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r10, r5, r10
	setlt.u r5, r23, r17
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	bneq r5, zero, .LBB0_1493
.LBB0_1495:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r9, r5, r9
	setlt.u r5, r23, r8
	.loc	1 1664 20                       # parallel-rne.mlir:1664:20
	bneq r5, zero, .LBB0_1469
.LBB0_1496:                             # %vector.body322
                                        #   in Loop: Header=BB0_1470 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r19, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r19, r5
	add.s r5, r5, r22
	and r28, r5, r8
	j .LBB0_1469
.LBB0_1497:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1625 7                        # parallel-rne.mlir:1625:7
	mfence { sm }
	.loc	1 1671 7                        # parallel-rne.mlir:1671:7
	addli r2, zero, 4
	bneq r13, r2, .LBB0_1291
.LBB0_1498:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -496(r30)                 # 4-byte Folded Spill
	addli r2, zero, 64
	.loc	1 1671 7                        # parallel-rne.mlir:1671:7
	xfence
	zext_int2long r[7:8], r2
	mfence { lm, sm, gm }
	j .LBB0_1500
.LBB0_1499:                             # %middle.block313
                                        #   in Loop: Header=BB0_1500 Depth=2
	.loc	1 1678 9 is_stmt 1              # parallel-rne.mlir:1678:9
	load.d r[2:3], -488(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1548
.LBB0_1500:                             # %.preheader130
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1521 Depth 3
                                        #       Child Loop BB0_1503 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	sll.d r[14:15], r[7:8], r2
	.loc	1 1679 11 is_stmt 1             # parallel-rne.mlir:1679:11
	loadli.w r2,  -496(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1519
# %bb.1501:                             # %scalar.ph305.preheader
                                        #   in Loop: Header=BB0_1500 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1503
.LBB0_1502:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 1679 11                       # parallel-rne.mlir:1679:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1712 13 is_stmt 1             # parallel-rne.mlir:1712:13
	add.s r2, r16, r2
	stores.w r7, 0(r2)
	.loc	1 1679 11                       # parallel-rne.mlir:1679:11
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_1499
.LBB0_1503:                             # %scalar.ph305
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1500 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1680 19                       # parallel-rne.mlir:1680:19
	add.ul r[2:3], r[10:11], r[14:15]
	lui r9, 523264
	slli r2, r2, 2
	.loc	1 1681 19                       # parallel-rne.mlir:1681:19
	add.s r3, r4, r2
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	add.s r5, r12, r2
	.loc	1 1681 19                       # parallel-rne.mlir:1681:19
	loads.w r3, 0(r3)
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	loads.w r13, 0(r5)
	.loc	1 1685 19                       # parallel-rne.mlir:1685:19
	and r7, r3, r21
	lui r3, 523264
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	beq r7, r6, .LBB0_1505
# %bb.1504:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1505:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	loadli.w r5,  -464(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r2
	loads.w r5, 0(r5)
	and r8, r5, r21
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r8, zero, .LBB0_1515
# %bb.1506:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r7, zero, .LBB0_1516
.LBB0_1507:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	beq r8, r6, .LBB0_1509
.LBB0_1508:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r9, 0
.LBB0_1509:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	setlt.u r7, r6, r7
	lui r5, 523264
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r7, zero, .LBB0_1511
# %bb.1510:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_1511:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	setlt.u r7, r6, r8
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r7, zero, .LBB0_1513
# %bb.1512:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r5, 0
.LBB0_1513:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 1700 19 is_stmt 1             # parallel-rne.mlir:1700:19
	and r5, r3, r21
	.loc	1 1702 19                       # parallel-rne.mlir:1702:19
	setlt.u r7, r6, r5
	.loc	1 1703 19                       # parallel-rne.mlir:1703:19
	bneq r7, zero, .LBB0_1517
# %bb.1514:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r3, 0
	.loc	1 1709 19 is_stmt 1             # parallel-rne.mlir:1709:19
	setlt.u r5, r23, r5
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	bneq r5, zero, .LBB0_1502
	j .LBB0_1518
.LBB0_1515:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r13, 0
	lui r13, 523264
	.loc	1 1699 19 is_stmt 1             # parallel-rne.mlir:1699:19
	beq r7, zero, .LBB0_1507
.LBB0_1516:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r9, 0
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r8, r6, .LBB0_1508
	j .LBB0_1509
.LBB0_1517:                             #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r3, r7
	.loc	1 1709 19 is_stmt 1             # parallel-rne.mlir:1709:19
	setlt.u r5, r23, r5
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	bneq r5, zero, .LBB0_1502
.LBB0_1518:                             # %scalar.ph305
                                        #   in Loop: Header=BB0_1503 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r3, 16
	andi r5, r5, 1
	add.s r3, r3, r5
	lui r5, 1048560
	add.s r3, r3, r22
	and r7, r3, r5
	j .LBB0_1502
.LBB0_1519:                             # %vector.body307.preheader
                                        #   in Loop: Header=BB0_1500 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1521
.LBB0_1520:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 1679 11 is_stmt 1             # parallel-rne.mlir:1679:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1712 13                       # parallel-rne.mlir:1712:13
	add.s r3, r16, r3
	.loc	1 1679 11                       # parallel-rne.mlir:1679:11
	seteq.d r2, r[19:20], r[26:27]
	.loc	1 1712 13                       # parallel-rne.mlir:1712:13
	stores.w r28, 12(r3)
	stores.w r8, 8(r3)
	stores.w r9, 4(r3)
	stores.w r7, 0(r3)
	.loc	1 1679 11                       # parallel-rne.mlir:1679:11
	bneq r2, zero, .LBB0_1499
.LBB0_1521:                             # %vector.body307
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1500 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1680 19                       # parallel-rne.mlir:1680:19
	add.ul r[2:3], r[19:20], r[14:15]
	lui r13, 523264
	slli r3, r2, 2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	add.s r28, r2, r3
	.loc	1 1681 19                       # parallel-rne.mlir:1681:19
	add.s r2, r4, r3
	.loc	1 1680 19                       # parallel-rne.mlir:1680:19
	loads.w r5, 0(r28)
	.loc	1 1681 19                       # parallel-rne.mlir:1681:19
	loads.w r7, 0(r2)
	.loc	1 1687 19                       # parallel-rne.mlir:1687:19
	and r5, r5, r21
	.loc	1 1685 19                       # parallel-rne.mlir:1685:19
	and r7, r7, r21
	.loc	1 1688 19                       # parallel-rne.mlir:1688:19
	seteq r8, r5, r6
	.loc	1 1692 19                       # parallel-rne.mlir:1692:19
	seteq r11, r5, zero
	.loc	1 1689 19                       # parallel-rne.mlir:1689:19
	seteq r9, r7, zero
	.loc	1 1691 19                       # parallel-rne.mlir:1691:19
	seteq r10, r7, r6
	.loc	1 1697 19                       # parallel-rne.mlir:1697:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1690 19                       # parallel-rne.mlir:1690:19
	and r7, r8, r9
	.loc	1 1693 19                       # parallel-rne.mlir:1693:19
	and r8, r11, r10
	lui r10, 523264
	.loc	1 1694 19                       # parallel-rne.mlir:1694:19
	or r7, r7, r8
	.loc	1 1682 19                       # parallel-rne.mlir:1682:19
	add.s r8, r12, r3
	.loc	1 1698 19                       # parallel-rne.mlir:1698:19
	or r5, r5, r7
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r5, zero, .LBB0_1523
# %bb.1522:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r8)
.LBB0_1523:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r18, r5, zero
	seteq r11, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r11
	and r9, r18, r17
	lui r11, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r5, zero, .LBB0_1525
# %bb.1524:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r8)
.LBB0_1525:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r24, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r17
	and r9, r24, r18
	lui r24, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r5, zero, .LBB0_1527
# %bb.1526:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r8)
.LBB0_1527:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	loads.w r5, 12(r28)
	loads.w r2, 12(r2)
	and r5, r5, r21
	and r2, r2, r21
	seteq r7, r5, r6
	seteq r9, r2, zero
	seteq r17, r2, r6
	seteq r18, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r6, r2
	and r5, r7, r9
	and r7, r18, r17
	or r5, r5, r7
	or r2, r2, r5
	.loc	1 1699 19                       # parallel-rne.mlir:1699:19
	bneq r2, zero, .LBB0_1529
# %bb.1528:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
.LBB0_1529:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 1700 19 is_stmt 1             # parallel-rne.mlir:1700:19
	and r2, r10, r21
	.loc	1 1702 19                       # parallel-rne.mlir:1702:19
	setlt.u r5, r6, r2
	.loc	1 1703 19                       # parallel-rne.mlir:1703:19
	bneq r5, zero, .LBB0_1531
# %bb.1530:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r10, 0
	j .LBB0_1532
.LBB0_1531:                             #   in Loop: Header=BB0_1521 Depth=3
	lui r5, 1024
	or r28, r10, r5
.LBB0_1532:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1703 19                       # parallel-rne.mlir:1703:19
	bneq r5, zero, .LBB0_1534
# %bb.1533:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r24, 0
	j .LBB0_1535
.LBB0_1534:                             #   in Loop: Header=BB0_1521 Depth=3
	lui r5, 1024
	or r8, r24, r5
.LBB0_1535:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1703 19                       # parallel-rne.mlir:1703:19
	bneq r5, zero, .LBB0_1537
# %bb.1536:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_1538
.LBB0_1537:                             #   in Loop: Header=BB0_1521 Depth=3
	lui r5, 1024
	or r9, r11, r5
.LBB0_1538:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	and r5, r13, r21
	setlt.u r7, r6, r5
	.loc	1 1703 19                       # parallel-rne.mlir:1703:19
	bneq r7, zero, .LBB0_1540
# %bb.1539:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r13, 0
	.loc	1 1709 19 is_stmt 1             # parallel-rne.mlir:1709:19
	setlt.u r5, r23, r5
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	beq r5, zero, .LBB0_1541
	j .LBB0_1542
.LBB0_1540:                             #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r13, r7
	.loc	1 1709 19 is_stmt 1             # parallel-rne.mlir:1709:19
	setlt.u r5, r23, r5
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	bneq r5, zero, .LBB0_1542
.LBB0_1541:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r22
	and r7, r5, r7
.LBB0_1542:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	beq r5, zero, .LBB0_1545
# %bb.1543:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	beq r5, zero, .LBB0_1546
.LBB0_1544:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	bneq r2, zero, .LBB0_1520
	j .LBB0_1547
.LBB0_1545:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r9, r5, r9
	setlt.u r5, r23, r17
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	bneq r5, zero, .LBB0_1544
.LBB0_1546:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r8, r5, r8
	setlt.u r2, r23, r2
	.loc	1 1710 20                       # parallel-rne.mlir:1710:20
	bneq r2, zero, .LBB0_1520
.LBB0_1547:                             # %vector.body307
                                        #   in Loop: Header=BB0_1521 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r28, r2, r5
	j .LBB0_1520
.LBB0_1548:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1671 7                        # parallel-rne.mlir:1671:7
	mfence { sm }
	.loc	1 1717 7                        # parallel-rne.mlir:1717:7
	addli r2, zero, 5
	bneq r13, r2, .LBB0_1292
.LBB0_1549:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -488(r30)                 # 4-byte Folded Spill
	addli r2, zero, 80
	.loc	1 1717 7                        # parallel-rne.mlir:1717:7
	xfence
	zext_int2long r[7:8], r2
	mfence { lm, sm, gm }
	j .LBB0_1551
.LBB0_1550:                             # %middle.block298
                                        #   in Loop: Header=BB0_1551 Depth=2
	.loc	1 1724 9 is_stmt 1              # parallel-rne.mlir:1724:9
	load.d r[2:3], -480(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1599
.LBB0_1551:                             # %.preheader129
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1572 Depth 3
                                        #       Child Loop BB0_1554 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	sll.d r[14:15], r[7:8], r2
	.loc	1 1725 11 is_stmt 1             # parallel-rne.mlir:1725:11
	loadli.w r2,  -488(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1570
# %bb.1552:                             # %scalar.ph290.preheader
                                        #   in Loop: Header=BB0_1551 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1554
.LBB0_1553:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 1725 11                       # parallel-rne.mlir:1725:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1758 13 is_stmt 1             # parallel-rne.mlir:1758:13
	add.s r2, r16, r2
	stores.w r7, 0(r2)
	.loc	1 1725 11                       # parallel-rne.mlir:1725:11
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_1550
.LBB0_1554:                             # %scalar.ph290
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1551 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1726 19                       # parallel-rne.mlir:1726:19
	add.ul r[2:3], r[10:11], r[14:15]
	lui r9, 523264
	slli r2, r2, 2
	.loc	1 1727 19                       # parallel-rne.mlir:1727:19
	add.s r3, r4, r2
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	add.s r5, r12, r2
	.loc	1 1727 19                       # parallel-rne.mlir:1727:19
	loads.w r3, 0(r3)
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	loads.w r13, 0(r5)
	.loc	1 1731 19                       # parallel-rne.mlir:1731:19
	and r7, r3, r21
	lui r3, 523264
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	beq r7, r6, .LBB0_1556
# %bb.1555:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1556:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	loadli.w r5,  -464(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r2
	loads.w r5, 0(r5)
	and r8, r5, r21
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r8, zero, .LBB0_1566
# %bb.1557:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r7, zero, .LBB0_1567
.LBB0_1558:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	beq r8, r6, .LBB0_1560
.LBB0_1559:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r9, 0
.LBB0_1560:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	setlt.u r7, r6, r7
	lui r5, 523264
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r7, zero, .LBB0_1562
# %bb.1561:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_1562:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	setlt.u r7, r6, r8
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r7, zero, .LBB0_1564
# %bb.1563:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r5, 0
.LBB0_1564:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 1746 19 is_stmt 1             # parallel-rne.mlir:1746:19
	and r5, r3, r21
	.loc	1 1748 19                       # parallel-rne.mlir:1748:19
	setlt.u r7, r6, r5
	.loc	1 1749 19                       # parallel-rne.mlir:1749:19
	bneq r7, zero, .LBB0_1568
# %bb.1565:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r3, 0
	.loc	1 1755 19 is_stmt 1             # parallel-rne.mlir:1755:19
	setlt.u r5, r23, r5
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	bneq r5, zero, .LBB0_1553
	j .LBB0_1569
.LBB0_1566:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r13, 0
	lui r13, 523264
	.loc	1 1745 19 is_stmt 1             # parallel-rne.mlir:1745:19
	beq r7, zero, .LBB0_1558
.LBB0_1567:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r9, 0
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r8, r6, .LBB0_1559
	j .LBB0_1560
.LBB0_1568:                             #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r3, r7
	.loc	1 1755 19 is_stmt 1             # parallel-rne.mlir:1755:19
	setlt.u r5, r23, r5
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	bneq r5, zero, .LBB0_1553
.LBB0_1569:                             # %scalar.ph290
                                        #   in Loop: Header=BB0_1554 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r3, 16
	andi r5, r5, 1
	add.s r3, r3, r5
	lui r5, 1048560
	add.s r3, r3, r22
	and r7, r3, r5
	j .LBB0_1553
.LBB0_1570:                             # %vector.body292.preheader
                                        #   in Loop: Header=BB0_1551 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1572
.LBB0_1571:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 1725 11 is_stmt 1             # parallel-rne.mlir:1725:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1758 13                       # parallel-rne.mlir:1758:13
	add.s r3, r16, r3
	.loc	1 1725 11                       # parallel-rne.mlir:1725:11
	seteq.d r2, r[19:20], r[26:27]
	.loc	1 1758 13                       # parallel-rne.mlir:1758:13
	stores.w r28, 12(r3)
	stores.w r8, 8(r3)
	stores.w r9, 4(r3)
	stores.w r7, 0(r3)
	.loc	1 1725 11                       # parallel-rne.mlir:1725:11
	bneq r2, zero, .LBB0_1550
.LBB0_1572:                             # %vector.body292
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1551 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1726 19                       # parallel-rne.mlir:1726:19
	add.ul r[2:3], r[19:20], r[14:15]
	lui r13, 523264
	slli r3, r2, 2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	add.s r28, r2, r3
	.loc	1 1727 19                       # parallel-rne.mlir:1727:19
	add.s r2, r4, r3
	.loc	1 1726 19                       # parallel-rne.mlir:1726:19
	loads.w r5, 0(r28)
	.loc	1 1727 19                       # parallel-rne.mlir:1727:19
	loads.w r7, 0(r2)
	.loc	1 1733 19                       # parallel-rne.mlir:1733:19
	and r5, r5, r21
	.loc	1 1731 19                       # parallel-rne.mlir:1731:19
	and r7, r7, r21
	.loc	1 1734 19                       # parallel-rne.mlir:1734:19
	seteq r8, r5, r6
	.loc	1 1738 19                       # parallel-rne.mlir:1738:19
	seteq r11, r5, zero
	.loc	1 1735 19                       # parallel-rne.mlir:1735:19
	seteq r9, r7, zero
	.loc	1 1737 19                       # parallel-rne.mlir:1737:19
	seteq r10, r7, r6
	.loc	1 1743 19                       # parallel-rne.mlir:1743:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1736 19                       # parallel-rne.mlir:1736:19
	and r7, r8, r9
	.loc	1 1739 19                       # parallel-rne.mlir:1739:19
	and r8, r11, r10
	lui r10, 523264
	.loc	1 1740 19                       # parallel-rne.mlir:1740:19
	or r7, r7, r8
	.loc	1 1728 19                       # parallel-rne.mlir:1728:19
	add.s r8, r12, r3
	.loc	1 1744 19                       # parallel-rne.mlir:1744:19
	or r5, r5, r7
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r5, zero, .LBB0_1574
# %bb.1573:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r8)
.LBB0_1574:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r18, r5, zero
	seteq r11, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r11
	and r9, r18, r17
	lui r11, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r5, zero, .LBB0_1576
# %bb.1575:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r8)
.LBB0_1576:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r24, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r17
	and r9, r24, r18
	lui r24, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r5, zero, .LBB0_1578
# %bb.1577:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r8)
.LBB0_1578:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	loads.w r5, 12(r28)
	loads.w r2, 12(r2)
	and r5, r5, r21
	and r2, r2, r21
	seteq r7, r5, r6
	seteq r9, r2, zero
	seteq r17, r2, r6
	seteq r18, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r6, r2
	and r5, r7, r9
	and r7, r18, r17
	or r5, r5, r7
	or r2, r2, r5
	.loc	1 1745 19                       # parallel-rne.mlir:1745:19
	bneq r2, zero, .LBB0_1580
# %bb.1579:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
.LBB0_1580:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 1746 19 is_stmt 1             # parallel-rne.mlir:1746:19
	and r2, r10, r21
	.loc	1 1748 19                       # parallel-rne.mlir:1748:19
	setlt.u r5, r6, r2
	.loc	1 1749 19                       # parallel-rne.mlir:1749:19
	bneq r5, zero, .LBB0_1582
# %bb.1581:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r10, 0
	j .LBB0_1583
.LBB0_1582:                             #   in Loop: Header=BB0_1572 Depth=3
	lui r5, 1024
	or r28, r10, r5
.LBB0_1583:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1749 19                       # parallel-rne.mlir:1749:19
	bneq r5, zero, .LBB0_1585
# %bb.1584:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r24, 0
	j .LBB0_1586
.LBB0_1585:                             #   in Loop: Header=BB0_1572 Depth=3
	lui r5, 1024
	or r8, r24, r5
.LBB0_1586:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1749 19                       # parallel-rne.mlir:1749:19
	bneq r5, zero, .LBB0_1588
# %bb.1587:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_1589
.LBB0_1588:                             #   in Loop: Header=BB0_1572 Depth=3
	lui r5, 1024
	or r9, r11, r5
.LBB0_1589:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	and r5, r13, r21
	setlt.u r7, r6, r5
	.loc	1 1749 19                       # parallel-rne.mlir:1749:19
	bneq r7, zero, .LBB0_1591
# %bb.1590:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r13, 0
	.loc	1 1755 19 is_stmt 1             # parallel-rne.mlir:1755:19
	setlt.u r5, r23, r5
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	beq r5, zero, .LBB0_1592
	j .LBB0_1593
.LBB0_1591:                             #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r13, r7
	.loc	1 1755 19 is_stmt 1             # parallel-rne.mlir:1755:19
	setlt.u r5, r23, r5
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	bneq r5, zero, .LBB0_1593
.LBB0_1592:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r22
	and r7, r5, r7
.LBB0_1593:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	beq r5, zero, .LBB0_1596
# %bb.1594:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	beq r5, zero, .LBB0_1597
.LBB0_1595:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	bneq r2, zero, .LBB0_1571
	j .LBB0_1598
.LBB0_1596:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r9, r5, r9
	setlt.u r5, r23, r17
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	bneq r5, zero, .LBB0_1595
.LBB0_1597:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r8, r5, r8
	setlt.u r2, r23, r2
	.loc	1 1756 20                       # parallel-rne.mlir:1756:20
	bneq r2, zero, .LBB0_1571
.LBB0_1598:                             # %vector.body292
                                        #   in Loop: Header=BB0_1572 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r28, r2, r5
	j .LBB0_1571
.LBB0_1599:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1717 7                        # parallel-rne.mlir:1717:7
	mfence { sm }
	.loc	1 1763 7                        # parallel-rne.mlir:1763:7
	addli r2, zero, 6
	bneq r13, r2, .LBB0_1293
.LBB0_1600:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -480(r30)                 # 4-byte Folded Spill
	addli r2, zero, 96
	.loc	1 1763 7                        # parallel-rne.mlir:1763:7
	xfence
	zext_int2long r[7:8], r2
	mfence { lm, sm, gm }
	j .LBB0_1602
.LBB0_1601:                             # %middle.block283
                                        #   in Loop: Header=BB0_1602 Depth=2
	.loc	1 1770 9 is_stmt 1              # parallel-rne.mlir:1770:9
	load.d r[2:3], -472(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1650
.LBB0_1602:                             # %.preheader128
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1623 Depth 3
                                        #       Child Loop BB0_1605 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	sll.d r[14:15], r[7:8], r2
	.loc	1 1771 11 is_stmt 1             # parallel-rne.mlir:1771:11
	loadli.w r2,  -480(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1621
# %bb.1603:                             # %scalar.ph275.preheader
                                        #   in Loop: Header=BB0_1602 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1605
.LBB0_1604:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 1771 11                       # parallel-rne.mlir:1771:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1804 13 is_stmt 1             # parallel-rne.mlir:1804:13
	add.s r2, r16, r2
	stores.w r7, 0(r2)
	.loc	1 1771 11                       # parallel-rne.mlir:1771:11
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_1601
.LBB0_1605:                             # %scalar.ph275
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1602 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1772 19                       # parallel-rne.mlir:1772:19
	add.ul r[2:3], r[10:11], r[14:15]
	lui r9, 523264
	slli r2, r2, 2
	.loc	1 1773 19                       # parallel-rne.mlir:1773:19
	add.s r3, r4, r2
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	add.s r5, r12, r2
	.loc	1 1773 19                       # parallel-rne.mlir:1773:19
	loads.w r3, 0(r3)
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	loads.w r13, 0(r5)
	.loc	1 1777 19                       # parallel-rne.mlir:1777:19
	and r7, r3, r21
	lui r3, 523264
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	beq r7, r6, .LBB0_1607
# %bb.1606:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r13, 0
.LBB0_1607:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	loadli.w r5,  -464(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r2
	loads.w r5, 0(r5)
	and r8, r5, r21
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r8, zero, .LBB0_1617
# %bb.1608:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r13, 523264
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r7, zero, .LBB0_1618
.LBB0_1609:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	beq r8, r6, .LBB0_1611
.LBB0_1610:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r9, 0
.LBB0_1611:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	setlt.u r7, r6, r7
	lui r5, 523264
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r7, zero, .LBB0_1613
# %bb.1612:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r13, 0
.LBB0_1613:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	setlt.u r7, r6, r8
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r7, zero, .LBB0_1615
# %bb.1614:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r5, 0
.LBB0_1615:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 1792 19 is_stmt 1             # parallel-rne.mlir:1792:19
	and r5, r3, r21
	.loc	1 1794 19                       # parallel-rne.mlir:1794:19
	setlt.u r7, r6, r5
	.loc	1 1795 19                       # parallel-rne.mlir:1795:19
	bneq r7, zero, .LBB0_1619
# %bb.1616:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r3, 0
	.loc	1 1801 19 is_stmt 1             # parallel-rne.mlir:1801:19
	setlt.u r5, r23, r5
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	bneq r5, zero, .LBB0_1604
	j .LBB0_1620
.LBB0_1617:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r13, 0
	lui r13, 523264
	.loc	1 1791 19 is_stmt 1             # parallel-rne.mlir:1791:19
	beq r7, zero, .LBB0_1609
.LBB0_1618:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r9, 0
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r8, r6, .LBB0_1610
	j .LBB0_1611
.LBB0_1619:                             #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r3, r7
	.loc	1 1801 19 is_stmt 1             # parallel-rne.mlir:1801:19
	setlt.u r5, r23, r5
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	bneq r5, zero, .LBB0_1604
.LBB0_1620:                             # %scalar.ph275
                                        #   in Loop: Header=BB0_1605 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r3, 16
	andi r5, r5, 1
	add.s r3, r3, r5
	lui r5, 1048560
	add.s r3, r3, r22
	and r7, r3, r5
	j .LBB0_1604
.LBB0_1621:                             # %vector.body277.preheader
                                        #   in Loop: Header=BB0_1602 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1623
.LBB0_1622:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 1771 11 is_stmt 1             # parallel-rne.mlir:1771:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1804 13                       # parallel-rne.mlir:1804:13
	add.s r3, r16, r3
	.loc	1 1771 11                       # parallel-rne.mlir:1771:11
	seteq.d r2, r[19:20], r[26:27]
	.loc	1 1804 13                       # parallel-rne.mlir:1804:13
	stores.w r28, 12(r3)
	stores.w r8, 8(r3)
	stores.w r9, 4(r3)
	stores.w r7, 0(r3)
	.loc	1 1771 11                       # parallel-rne.mlir:1771:11
	bneq r2, zero, .LBB0_1601
.LBB0_1623:                             # %vector.body277
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1602 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1772 19                       # parallel-rne.mlir:1772:19
	add.ul r[2:3], r[19:20], r[14:15]
	lui r13, 523264
	slli r3, r2, 2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	add.s r28, r2, r3
	.loc	1 1773 19                       # parallel-rne.mlir:1773:19
	add.s r2, r4, r3
	.loc	1 1772 19                       # parallel-rne.mlir:1772:19
	loads.w r5, 0(r28)
	.loc	1 1773 19                       # parallel-rne.mlir:1773:19
	loads.w r7, 0(r2)
	.loc	1 1779 19                       # parallel-rne.mlir:1779:19
	and r5, r5, r21
	.loc	1 1777 19                       # parallel-rne.mlir:1777:19
	and r7, r7, r21
	.loc	1 1780 19                       # parallel-rne.mlir:1780:19
	seteq r8, r5, r6
	.loc	1 1784 19                       # parallel-rne.mlir:1784:19
	seteq r11, r5, zero
	.loc	1 1781 19                       # parallel-rne.mlir:1781:19
	seteq r9, r7, zero
	.loc	1 1783 19                       # parallel-rne.mlir:1783:19
	seteq r10, r7, r6
	.loc	1 1789 19                       # parallel-rne.mlir:1789:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1782 19                       # parallel-rne.mlir:1782:19
	and r7, r8, r9
	.loc	1 1785 19                       # parallel-rne.mlir:1785:19
	and r8, r11, r10
	lui r10, 523264
	.loc	1 1786 19                       # parallel-rne.mlir:1786:19
	or r7, r7, r8
	.loc	1 1774 19                       # parallel-rne.mlir:1774:19
	add.s r8, r12, r3
	.loc	1 1790 19                       # parallel-rne.mlir:1790:19
	or r5, r5, r7
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r5, zero, .LBB0_1625
# %bb.1624:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r8)
.LBB0_1625:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r18, r5, zero
	seteq r11, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r11
	and r9, r18, r17
	lui r11, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r5, zero, .LBB0_1627
# %bb.1626:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r8)
.LBB0_1627:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r24, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r17
	and r9, r24, r18
	lui r24, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r5, zero, .LBB0_1629
# %bb.1628:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r8)
.LBB0_1629:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	loads.w r5, 12(r28)
	loads.w r2, 12(r2)
	and r5, r5, r21
	and r2, r2, r21
	seteq r7, r5, r6
	seteq r9, r2, zero
	seteq r17, r2, r6
	seteq r18, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r6, r2
	and r5, r7, r9
	and r7, r18, r17
	or r5, r5, r7
	or r2, r2, r5
	.loc	1 1791 19                       # parallel-rne.mlir:1791:19
	bneq r2, zero, .LBB0_1631
# %bb.1630:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
.LBB0_1631:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 1792 19 is_stmt 1             # parallel-rne.mlir:1792:19
	and r2, r10, r21
	.loc	1 1794 19                       # parallel-rne.mlir:1794:19
	setlt.u r5, r6, r2
	.loc	1 1795 19                       # parallel-rne.mlir:1795:19
	bneq r5, zero, .LBB0_1633
# %bb.1632:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r10, 0
	j .LBB0_1634
.LBB0_1633:                             #   in Loop: Header=BB0_1623 Depth=3
	lui r5, 1024
	or r28, r10, r5
.LBB0_1634:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1795 19                       # parallel-rne.mlir:1795:19
	bneq r5, zero, .LBB0_1636
# %bb.1635:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r24, 0
	j .LBB0_1637
.LBB0_1636:                             #   in Loop: Header=BB0_1623 Depth=3
	lui r5, 1024
	or r8, r24, r5
.LBB0_1637:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1795 19                       # parallel-rne.mlir:1795:19
	bneq r5, zero, .LBB0_1639
# %bb.1638:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_1640
.LBB0_1639:                             #   in Loop: Header=BB0_1623 Depth=3
	lui r5, 1024
	or r9, r11, r5
.LBB0_1640:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	and r5, r13, r21
	setlt.u r7, r6, r5
	.loc	1 1795 19                       # parallel-rne.mlir:1795:19
	bneq r7, zero, .LBB0_1642
# %bb.1641:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r13, 0
	.loc	1 1801 19 is_stmt 1             # parallel-rne.mlir:1801:19
	setlt.u r5, r23, r5
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	beq r5, zero, .LBB0_1643
	j .LBB0_1644
.LBB0_1642:                             #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r13, r7
	.loc	1 1801 19 is_stmt 1             # parallel-rne.mlir:1801:19
	setlt.u r5, r23, r5
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	bneq r5, zero, .LBB0_1644
.LBB0_1643:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r13, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r13, r5
	add.s r5, r5, r22
	and r7, r5, r7
.LBB0_1644:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	beq r5, zero, .LBB0_1647
# %bb.1645:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	beq r5, zero, .LBB0_1648
.LBB0_1646:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	bneq r2, zero, .LBB0_1622
	j .LBB0_1649
.LBB0_1647:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r9, r5, r9
	setlt.u r5, r23, r17
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	bneq r5, zero, .LBB0_1646
.LBB0_1648:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r8, r5, r8
	setlt.u r2, r23, r2
	.loc	1 1802 20                       # parallel-rne.mlir:1802:20
	bneq r2, zero, .LBB0_1622
.LBB0_1649:                             # %vector.body277
                                        #   in Loop: Header=BB0_1623 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r28, r2, r5
	j .LBB0_1622
.LBB0_1650:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1763 7                        # parallel-rne.mlir:1763:7
	mfence { sm }
	.loc	1 1809 7                        # parallel-rne.mlir:1809:7
	bneq r13, r14, .LBB0_1702
.LBB0_1651:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -548(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -552(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -472(r30)                 # 4-byte Folded Spill
	addli r2, zero, 112
	.loc	1 1809 7                        # parallel-rne.mlir:1809:7
	xfence
	zext_int2long r[7:8], r2
	mfence { lm, sm, gm }
	j .LBB0_1653
.LBB0_1652:                             # %middle.block
                                        #   in Loop: Header=BB0_1653 Depth=2
	.loc	1 1816 9 is_stmt 1              # parallel-rne.mlir:1816:9
	load.d r[2:3], -448(r30)                # 8-byte Folded Reload
	load.d r[7:8], -456(r30)                # 8-byte Folded Reload
	addli r14, zero, 7
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_1701
.LBB0_1653:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1674 Depth 3
                                        #       Child Loop BB0_1656 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[7:8], -456(r30)               # 8-byte Folded Spill
	sll.d r[13:14], r[7:8], r2
	.loc	1 1817 11 is_stmt 1             # parallel-rne.mlir:1817:11
	loadli.w r2,  -472(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1672
# %bb.1654:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1653 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1656
.LBB0_1655:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 1817 11                       # parallel-rne.mlir:1817:11
	load.d r[8:9], -448(r30)                # 8-byte Folded Reload
	.loc	1 1850 13 is_stmt 1             # parallel-rne.mlir:1850:13
	add.s r2, r16, r2
	stores.w r7, 0(r2)
	.loc	1 1817 11                       # parallel-rne.mlir:1817:11
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[10:11], r[10:11], 1
	beq r3, zero, .LBB0_1652
.LBB0_1656:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1653 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1818 19                       # parallel-rne.mlir:1818:19
	add.ul r[2:3], r[10:11], r[13:14]
	lui r9, 523264
	slli r2, r2, 2
	.loc	1 1819 19                       # parallel-rne.mlir:1819:19
	add.s r3, r4, r2
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	add.s r5, r12, r2
	.loc	1 1819 19                       # parallel-rne.mlir:1819:19
	loads.w r3, 0(r3)
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	loads.w r15, 0(r5)
	.loc	1 1823 19                       # parallel-rne.mlir:1823:19
	and r7, r3, r21
	lui r3, 523264
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	beq r7, r6, .LBB0_1658
# %bb.1657:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r15, 0
.LBB0_1658:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	loadli.w r5,  -464(r30)                 # 4-byte Folded Reload
	add.s r5, r5, r2
	loads.w r5, 0(r5)
	and r8, r5, r21
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r8, zero, .LBB0_1668
# %bb.1659:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r15, 523264
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r7, zero, .LBB0_1669
.LBB0_1660:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	beq r8, r6, .LBB0_1662
.LBB0_1661:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r9, 0
.LBB0_1662:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	setlt.u r7, r6, r7
	lui r5, 523264
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r7, zero, .LBB0_1664
# %bb.1663:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r15, 0
.LBB0_1664:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	setlt.u r7, r6, r8
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r7, zero, .LBB0_1666
# %bb.1665:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r3, r5, 0
.LBB0_1666:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 1838 19 is_stmt 1             # parallel-rne.mlir:1838:19
	and r5, r3, r21
	.loc	1 1840 19                       # parallel-rne.mlir:1840:19
	setlt.u r7, r6, r5
	.loc	1 1841 19                       # parallel-rne.mlir:1841:19
	bneq r7, zero, .LBB0_1670
# %bb.1667:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r3, 0
	.loc	1 1847 19 is_stmt 1             # parallel-rne.mlir:1847:19
	setlt.u r5, r23, r5
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	bneq r5, zero, .LBB0_1655
	j .LBB0_1671
.LBB0_1668:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	addli r9, r15, 0
	lui r15, 523264
	.loc	1 1837 19 is_stmt 1             # parallel-rne.mlir:1837:19
	beq r7, zero, .LBB0_1660
.LBB0_1669:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r9, 0
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r8, r6, .LBB0_1661
	j .LBB0_1662
.LBB0_1670:                             #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r3, r7
	.loc	1 1847 19 is_stmt 1             # parallel-rne.mlir:1847:19
	setlt.u r5, r23, r5
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	bneq r5, zero, .LBB0_1655
.LBB0_1671:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1656 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r3, 16
	andi r5, r5, 1
	add.s r3, r3, r5
	lui r5, 1048560
	add.s r3, r3, r22
	and r7, r3, r5
	j .LBB0_1655
.LBB0_1672:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1653 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_1674
.LBB0_1673:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 1817 11 is_stmt 1             # parallel-rne.mlir:1817:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 1850 13                       # parallel-rne.mlir:1850:13
	add.s r3, r16, r3
	.loc	1 1817 11                       # parallel-rne.mlir:1817:11
	seteq.d r2, r[19:20], r[26:27]
	.loc	1 1850 13                       # parallel-rne.mlir:1850:13
	stores.w r28, 12(r3)
	stores.w r8, 8(r3)
	stores.w r9, 4(r3)
	stores.w r7, 0(r3)
	.loc	1 1817 11                       # parallel-rne.mlir:1817:11
	bneq r2, zero, .LBB0_1652
.LBB0_1674:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1653 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1818 19                       # parallel-rne.mlir:1818:19
	add.ul r[2:3], r[19:20], r[13:14]
	lui r15, 523264
	slli r3, r2, 2
	loadli.w r2,  -464(r30)                 # 4-byte Folded Reload
	add.s r28, r2, r3
	.loc	1 1819 19                       # parallel-rne.mlir:1819:19
	add.s r2, r4, r3
	.loc	1 1818 19                       # parallel-rne.mlir:1818:19
	loads.w r5, 0(r28)
	.loc	1 1819 19                       # parallel-rne.mlir:1819:19
	loads.w r7, 0(r2)
	.loc	1 1825 19                       # parallel-rne.mlir:1825:19
	and r5, r5, r21
	.loc	1 1823 19                       # parallel-rne.mlir:1823:19
	and r7, r7, r21
	.loc	1 1826 19                       # parallel-rne.mlir:1826:19
	seteq r8, r5, r6
	.loc	1 1830 19                       # parallel-rne.mlir:1830:19
	seteq r11, r5, zero
	.loc	1 1827 19                       # parallel-rne.mlir:1827:19
	seteq r9, r7, zero
	.loc	1 1829 19                       # parallel-rne.mlir:1829:19
	seteq r10, r7, r6
	.loc	1 1835 19                       # parallel-rne.mlir:1835:19
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	.loc	1 1828 19                       # parallel-rne.mlir:1828:19
	and r7, r8, r9
	.loc	1 1831 19                       # parallel-rne.mlir:1831:19
	and r8, r11, r10
	lui r10, 523264
	.loc	1 1832 19                       # parallel-rne.mlir:1832:19
	or r7, r7, r8
	.loc	1 1820 19                       # parallel-rne.mlir:1820:19
	add.s r8, r12, r3
	.loc	1 1836 19                       # parallel-rne.mlir:1836:19
	or r5, r5, r7
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r5, zero, .LBB0_1676
# %bb.1675:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r15, 0(r8)
.LBB0_1676:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	loads.w r5, 4(r28)
	loads.w r7, 4(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r18, r5, zero
	seteq r11, r7, zero
	seteq r17, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r11
	and r9, r18, r17
	lui r11, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r5, zero, .LBB0_1678
# %bb.1677:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r8)
.LBB0_1678:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	loads.w r5, 8(r28)
	loads.w r7, 8(r2)
	and r5, r5, r21
	and r7, r7, r21
	seteq r9, r5, r6
	seteq r24, r5, zero
	seteq r17, r7, zero
	seteq r18, r7, r6
	max.u r5, r5, r7
	setlt.u r5, r6, r5
	and r7, r9, r17
	and r9, r24, r18
	lui r24, 523264
	or r7, r7, r9
	or r5, r5, r7
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r5, zero, .LBB0_1680
# %bb.1679:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r8)
.LBB0_1680:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	loads.w r5, 12(r28)
	loads.w r2, 12(r2)
	and r5, r5, r21
	and r2, r2, r21
	seteq r7, r5, r6
	seteq r9, r2, zero
	seteq r17, r2, r6
	seteq r18, r5, zero
	max.u r2, r5, r2
	setlt.u r2, r6, r2
	and r5, r7, r9
	and r7, r18, r17
	or r5, r5, r7
	or r2, r2, r5
	.loc	1 1837 19                       # parallel-rne.mlir:1837:19
	bneq r2, zero, .LBB0_1682
# %bb.1681:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 12(r8)
.LBB0_1682:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 1838 19 is_stmt 1             # parallel-rne.mlir:1838:19
	and r2, r10, r21
	.loc	1 1840 19                       # parallel-rne.mlir:1840:19
	setlt.u r5, r6, r2
	.loc	1 1841 19                       # parallel-rne.mlir:1841:19
	bneq r5, zero, .LBB0_1684
# %bb.1683:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r10, 0
	j .LBB0_1685
.LBB0_1684:                             #   in Loop: Header=BB0_1674 Depth=3
	lui r5, 1024
	or r28, r10, r5
.LBB0_1685:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	and r17, r24, r21
	setlt.u r5, r6, r17
	.loc	1 1841 19                       # parallel-rne.mlir:1841:19
	bneq r5, zero, .LBB0_1687
# %bb.1686:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r24, 0
	j .LBB0_1688
.LBB0_1687:                             #   in Loop: Header=BB0_1674 Depth=3
	lui r5, 1024
	or r8, r24, r5
.LBB0_1688:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	and r18, r11, r21
	setlt.u r5, r6, r18
	.loc	1 1841 19                       # parallel-rne.mlir:1841:19
	bneq r5, zero, .LBB0_1690
# %bb.1689:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r11, 0
	j .LBB0_1691
.LBB0_1690:                             #   in Loop: Header=BB0_1674 Depth=3
	lui r5, 1024
	or r9, r11, r5
.LBB0_1691:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	and r5, r15, r21
	setlt.u r7, r6, r5
	.loc	1 1841 19                       # parallel-rne.mlir:1841:19
	bneq r7, zero, .LBB0_1693
# %bb.1692:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r7, r15, 0
	.loc	1 1847 19 is_stmt 1             # parallel-rne.mlir:1847:19
	setlt.u r5, r23, r5
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	beq r5, zero, .LBB0_1694
	j .LBB0_1695
.LBB0_1693:                             #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r7, 1024
	or r7, r15, r7
	.loc	1 1847 19 is_stmt 1             # parallel-rne.mlir:1847:19
	setlt.u r5, r23, r5
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	bneq r5, zero, .LBB0_1695
.LBB0_1694:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 20 is_stmt 0                # parallel-rne.mlir:0:20
	srli r5, r15, 16
	lui r7, 1048560
	andi r5, r5, 1
	add.s r5, r15, r5
	add.s r5, r5, r22
	and r7, r5, r7
.LBB0_1695:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	setlt.u r5, r23, r18
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	beq r5, zero, .LBB0_1698
# %bb.1696:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r23, r17
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	beq r5, zero, .LBB0_1699
.LBB0_1697:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r23, r2
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	bneq r2, zero, .LBB0_1673
	j .LBB0_1700
.LBB0_1698:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r11, 16
	lui r9, 1048560
	andi r5, r5, 1
	add.s r5, r11, r5
	add.s r5, r5, r22
	and r9, r5, r9
	setlt.u r5, r23, r17
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	bneq r5, zero, .LBB0_1697
.LBB0_1699:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r5, r24, 16
	lui r8, 1048560
	andi r5, r5, 1
	add.s r5, r24, r5
	add.s r5, r5, r22
	and r8, r5, r8
	setlt.u r2, r23, r2
	.loc	1 1848 20                       # parallel-rne.mlir:1848:20
	bneq r2, zero, .LBB0_1673
.LBB0_1700:                             # %vector.body
                                        #   in Loop: Header=BB0_1674 Depth=3
	.loc	1 0 20                          # parallel-rne.mlir:0:20
	srli r2, r10, 16
	lui r5, 1048560
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r22
	and r28, r2, r5
	j .LBB0_1673
.LBB0_1701:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 39 5 is_stmt 1                # parallel-rne.mlir:39:5
	core_id r13
	.loc	1 1809 7                        # parallel-rne.mlir:1809:7
	mfence { sm }
.LBB0_1702:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1855 7                        # parallel-rne.mlir:1855:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 1856 7                        # parallel-rne.mlir:1856:7
	addli r2, zero, 3
	.loc	1 1855 7                        # parallel-rne.mlir:1855:7
	sync_core
	.loc	1 1856 7                        # parallel-rne.mlir:1856:7
	beq r13, r2, .LBB0_5
# %bb.1703:                             # %.critedge43
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -568(r30)              # 8-byte Folded Reload
	.loc	1 1867 7 is_stmt 1              # parallel-rne.mlir:1867:7
	bneq r13, zero, .LBB0_6
# %bb.1704:                             #   in Loop: Header=BB0_7 Depth=1
	load.d r[7:8], -600(r30)                # 8-byte Folded Reload
	loadli.w r2,  -604(r30)                 # 4-byte Folded Reload
	addli r4, zero, 19
	load.d r[17:18], 24(r30)
	addli r9, zero, 20
	addli r12, zero, 64
	sll.d r[4:5], r[7:8], r4
	load.d r[7:8], -528(r30)                # 8-byte Folded Reload
	sext_int2long r[2:3], r2
	xwait r9, 0
	addli r9, zero, 5
	add.ul r[4:5], r[17:18], r[4:5]
	load.d r[17:18], -584(r30)              # 8-byte Folded Reload
	lock zero, r9
	min.sl r[7:8], r[2:3], r[7:8]
	addli.d r[7:8], r[7:8], 128
	add.ul r[4:5], r[4:5], r[17:18]
	max.sl r[7:8], r[7:8], r[2:3]
	sub.sl r[2:3], r[7:8], r[2:3]
	addli r8, zero, 1
	ori r7, r16, 64
	dma_cfg r8, r8, zero, 0
	.loc	1 1863 13                       # parallel-rne.mlir:1863:13
	min.sl r[2:3], r[2:3], r[26:27]
	.loc	1 1867 7                        # parallel-rne.mlir:1867:7
	dma_cfg zero, r8, zero, 1
	dma_cfg r5, zero, zero, 2
	dma_cfg r4, r7, r12, 3
	addli r7, zero, 128
	load.d r[15:16], -592(r30)              # 8-byte Folded Reload
	addli r4, r15, 31
	slli r5, r15, 1
	srli r4, r4, 5
	dma_cfg r12, r7, r4, 4
	andi r4, r5, 62
	addli r5, zero, 512
	addli r7, zero, 4096
	dma_cfg r7, r5, r2, 5
	addli r2, zero, 21
	dma_cfg zero, zero, r4, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r2, 0
	j .LBB0_6
.LBB0_1705:                             # %._crit_edge
	.loc	1 1869 5                        # parallel-rne.mlir:1869:5
	xsignal zero, 0
	bneq r13, zero, .LBB0_1707
# %bb.1706:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1869 5                        # parallel-rne.mlir:1869:5
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
.LBB0_1707:
	.loc	1 1870 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1870:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu7/cache/triton-p800-ops-5134b460d69771aa/division-hzgkyah4" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
