	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-0esx0txo" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -912
	addli r2, zero, 1
.Ltmp0:
	.loc	1 36 5 prologue_end             # parallel-rne.mlir:36:5
	core_id r16
	addli r30, sp, 848
	xsignal_mode_cfg r2
	beq r16, zero, .LBB0_2
# %bb.1:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	.loc	1 36 5                          # parallel-rne.mlir:36:5
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
	.loc	1 36 5                          # parallel-rne.mlir:36:5
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
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 23
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 26
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 28
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	addli r3, zero, 30
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r2, zero, 35
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r3, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	addli r2, zero, 38
	addli r1, zero, 40
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  40(r30)
	loadli.w r2,  44(r30)
	.loc	1 38 10 is_stmt 1               # parallel-rne.mlir:38:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -20(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -40(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -60(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -80(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -100(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -120(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -140(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -160(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -180(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -216(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -380(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -420(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -616(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -636(r30)
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r1
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r4, r1, r4
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	addli r2, r2, -1
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	storeli.w r3, -144(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -176(r30)
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -212(r30)
	storeli.w r3, -208(r30)
	storeli.w r3, -204(r30)
	storeli.w r3, -200(r30)
	storeli.w r3, -196(r30)
	storeli.w r3, -192(r30)
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
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
	storeli.w r3, -312(r30)
	storeli.w r3, -308(r30)
	storeli.w r3, -304(r30)
	storeli.w r3, -300(r30)
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
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w r3, -416(r30)
	storeli.w r3, -412(r30)
	storeli.w r3, -408(r30)
	storeli.w r3, -404(r30)
	storeli.w r3, -400(r30)
	storeli.w r3, -396(r30)
	storeli.w r3, -392(r30)
	storeli.w r3, -388(r30)
	storeli.w r3, -384(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -612(r30)
	storeli.w r3, -608(r30)
	storeli.w r3, -604(r30)
	storeli.w r3, -600(r30)
	storeli.w r3, -596(r30)
	storeli.w r3, -592(r30)
	storeli.w r3, -588(r30)
	storeli.w r3, -584(r30)
	storeli.w r3, -580(r30)
	storeli.w r3, -576(r30)
	storeli.w r3, -572(r30)
	storeli.w r3, -568(r30)
	storeli.w r3, -564(r30)
	storeli.w r3, -560(r30)
	storeli.w r3, -556(r30)
	storeli.w r3, -552(r30)
	storeli.w r3, -548(r30)
	storeli.w r3, -544(r30)
	storeli.w r3, -540(r30)
	storeli.w r3, -536(r30)
	storeli.w r3, -532(r30)
	storeli.w r3, -528(r30)
	storeli.w r3, -524(r30)
	storeli.w r3, -520(r30)
	storeli.w r3, -516(r30)
	storeli.w r3, -512(r30)
	storeli.w r3, -508(r30)
	storeli.w r3, -504(r30)
	storeli.w r3, -500(r30)
	storeli.w r3, -496(r30)
	storeli.w r3, -492(r30)
	storeli.w r3, -488(r30)
	storeli.w r3, -484(r30)
	storeli.w r3, -480(r30)
	storeli.w r3, -476(r30)
	storeli.w r3, -472(r30)
	storeli.w r3, -468(r30)
	storeli.w r3, -464(r30)
	storeli.w r3, -460(r30)
	storeli.w r3, -456(r30)
	storeli.w r3, -452(r30)
	storeli.w r3, -448(r30)
	storeli.w r3, -444(r30)
	storeli.w r3, -440(r30)
	storeli.w r3, -436(r30)
	storeli.w r3, -432(r30)
	storeli.w r3, -428(r30)
	storeli.w r3, -424(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w r3, -632(r30)
	storeli.w r3, -628(r30)
	storeli.w r3, -624(r30)
	storeli.w r3, -620(r30)
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	mul.s r1, r2, r6
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	fmac.s r2, r2, r6
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	min.s r2, r2, r4
	.loc	1 63 5                          # parallel-rne.mlir:63:5
	ble.s r2, r1, .LBB0_1049
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 47 11 is_stmt 1               # parallel-rne.mlir:47:11
	sext_int2long r[10:11], r1
	lui r1, 7
	addli r22, zero, 64
	addli r23, zero, 8
	addli r24, zero, 4
	addli r21, zero, 1
	addli r12, zero, 128
	lui r27, 524288
	lui r28, 268288
	store.d r[2:3], -800(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r3, 250738
	lui r1, 1048448
	store.d r[1:2], -808(r30)               # 8-byte Folded Spill
	lui r1, 164
	lui r2, 228
	ori r1, r1, 2048
	storeli.w r1, -812(r30)                 # 4-byte Folded Spill
	lui r1, 196
	ori r1, r1, 2048
	storeli.w r1, -816(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 524287
	storeli.w r1, -820(r30)                 # 4-byte Folded Spill
	lui r1, 260
	ori r26, r2, 4095
	lui r2, 324
	ori r1, r1, 2048
	storeli.w r1, -824(r30)                 # 4-byte Folded Spill
	lui r1, 292
	ori r1, r1, 2048
	storeli.w r1, -828(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 356
	ori r2, r2, 2048
	storeli.w r1, -832(r30)                 # 4-byte Folded Spill
	lui r1, 2047
	storeli.w r2, -836(r30)                 # 4-byte Folded Spill
	lui r2, 56
	ori r1, r1, 4095
	ori r2, r2, 2115
	storeli.w r2, -840(r30)                 # 4-byte Folded Spill
	ori r2, r3, 1811
	lui r3, 127
	storeli.w r2, -844(r30)                 # 4-byte Folded Spill
	lui r2, 259268
	ori r2, r2, 554
	storeli.w r2, -848(r30)                 # 4-byte Folded Spill
	ori r2, r3, 4095
	lui r3, 522240
	storeli.w r2, -736(r30)                 # 4-byte Folded Spill
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	addli r2, zero, 17
	addli r22, zero, 64
	addli r23, zero, 8
	addli r24, zero, 4
	addli r21, zero, 1
	xsignal r2, 0
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	addli r2, zero, 38
	xsignal r2, 0
	.loc	1 1334 7                        # parallel-rne.mlir:1334:7
	addli r2, zero, 40
	xsignal r2, 0
	load.d r[10:11], -752(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 63 5                          # parallel-rne.mlir:63:5
	load.d r[4:5], -800(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	setlt.sl r2, r[10:11], r[4:5]
	beq r2, zero, .LBB0_1049
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_70 Depth 2
                                        #       Child Loop BB0_87 Depth 3
                                        #       Child Loop BB0_73 Depth 3
                                        #     Child Loop BB0_99 Depth 2
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #     Child Loop BB0_128 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_131 Depth 3
                                        #     Child Loop BB0_157 Depth 2
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_160 Depth 3
                                        #     Child Loop BB0_186 Depth 2
                                        #       Child Loop BB0_203 Depth 3
                                        #       Child Loop BB0_189 Depth 3
                                        #     Child Loop BB0_215 Depth 2
                                        #       Child Loop BB0_232 Depth 3
                                        #       Child Loop BB0_218 Depth 3
                                        #     Child Loop BB0_244 Depth 2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
                                        #     Child Loop BB0_278 Depth 2
                                        #       Child Loop BB0_280 Depth 3
                                        #       Child Loop BB0_279 Depth 3
                                        #     Child Loop BB0_284 Depth 2
                                        #       Child Loop BB0_286 Depth 3
                                        #       Child Loop BB0_285 Depth 3
                                        #     Child Loop BB0_291 Depth 2
                                        #       Child Loop BB0_293 Depth 3
                                        #       Child Loop BB0_292 Depth 3
                                        #     Child Loop BB0_298 Depth 2
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_299 Depth 3
                                        #     Child Loop BB0_305 Depth 2
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_306 Depth 3
                                        #     Child Loop BB0_312 Depth 2
                                        #       Child Loop BB0_314 Depth 3
                                        #       Child Loop BB0_313 Depth 3
                                        #     Child Loop BB0_319 Depth 2
                                        #       Child Loop BB0_321 Depth 3
                                        #       Child Loop BB0_320 Depth 3
                                        #     Child Loop BB0_326 Depth 2
                                        #       Child Loop BB0_328 Depth 3
                                        #       Child Loop BB0_327 Depth 3
                                        #     Child Loop BB0_342 Depth 2
                                        #       Child Loop BB0_344 Depth 3
                                        #     Child Loop BB0_363 Depth 2
                                        #       Child Loop BB0_365 Depth 3
                                        #     Child Loop BB0_384 Depth 2
                                        #       Child Loop BB0_386 Depth 3
                                        #     Child Loop BB0_405 Depth 2
                                        #       Child Loop BB0_407 Depth 3
                                        #     Child Loop BB0_426 Depth 2
                                        #       Child Loop BB0_428 Depth 3
                                        #     Child Loop BB0_447 Depth 2
                                        #       Child Loop BB0_449 Depth 3
                                        #     Child Loop BB0_468 Depth 2
                                        #       Child Loop BB0_470 Depth 3
                                        #     Child Loop BB0_489 Depth 2
                                        #       Child Loop BB0_491 Depth 3
                                        #     Child Loop BB0_516 Depth 2
                                        #       Child Loop BB0_526 Depth 3
                                        #       Child Loop BB0_519 Depth 3
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
                                        #     Child Loop BB0_818 Depth 2
                                        #       Child Loop BB0_835 Depth 3
                                        #       Child Loop BB0_821 Depth 3
                                        #     Child Loop BB0_846 Depth 2
                                        #       Child Loop BB0_863 Depth 3
                                        #       Child Loop BB0_849 Depth 3
                                        #     Child Loop BB0_875 Depth 2
                                        #       Child Loop BB0_892 Depth 3
                                        #       Child Loop BB0_878 Depth 3
                                        #     Child Loop BB0_904 Depth 2
                                        #       Child Loop BB0_921 Depth 3
                                        #       Child Loop BB0_907 Depth 3
                                        #     Child Loop BB0_933 Depth 2
                                        #       Child Loop BB0_950 Depth 3
                                        #       Child Loop BB0_936 Depth 3
                                        #     Child Loop BB0_962 Depth 2
                                        #       Child Loop BB0_979 Depth 3
                                        #       Child Loop BB0_965 Depth 3
                                        #     Child Loop BB0_991 Depth 2
                                        #       Child Loop BB0_1008 Depth 3
                                        #       Child Loop BB0_994 Depth 3
                                        #     Child Loop BB0_1020 Depth 2
                                        #       Child Loop BB0_1037 Depth 3
                                        #       Child Loop BB0_1023 Depth 3
	.loc	1 87 13                         # parallel-rne.mlir:87:13
	loadli.w r2,  -636(r30)
	addli r4, r2, 1
	storeli.w r4, -636(r30)
	.loc	1 88 7                          # parallel-rne.mlir:88:7
	bneq r16, r24, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 18
	xwait r4, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r4,  48(r30)
	loadli.w r5,  44(r30)
	mod.s r8, r2, r24
	store.d r[10:11], -752(r30)             # 8-byte Folded Spill
	loadli.w r2,  -616(r30)
	loadli.w r7,  -216(r30)
	div.s r4, r10, r4
	slli r25, r8, 15
	div.s r4, r4, r5
	div.s r5, r4, r22
	slli r9, r5, 3
	slli r5, r5, 6
	sub.s r6, r23, r9
	sub.s r5, r4, r5
	min.s r6, r6, r23
	mod.s r4, r4, r6
	div.s r10, r5, r6
	loadli.w r5,  -420(r30)
	loadli.w r6,  -380(r30)
	add.s r8, r9, r4
	slli r4, r10, 7
	zext_int2long r[9:10], r10
	slli r11, r8, 6
	zext_int2long r[17:18], r8
	addli r8, zero, 16
	storeli.w r11, -780(r30)                # 4-byte Folded Spill
	addli r11, zero, 7
	store.d r[17:18], -776(r30)             # 8-byte Folded Spill
	sll.d r[9:10], r[9:10], r11
	.loc	1 89 7 is_stmt 1                # parallel-rne.mlir:89:7
	sll.d r[13:14], r[9:10], r21
	load.d r[10:11], 8(r30)
	sll.d r[8:9], r[17:18], r8
	addli r17, zero, 0
	store.d r[13:14], -768(r30)             # 8-byte Folded Spill
	add.ul r[10:11], r[10:11], r[13:14]
	load.d r[13:14], -808(r30)              # 8-byte Folded Reload
	store.d r[10:11], -656(r30)             # 8-byte Folded Spill
	and.d r[10:11], r[8:9], r[13:14]
	store.d r[10:11], -648(r30)             # 8-byte Folded Spill
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 1024
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	sub.sl r[20:21], r[18:19], r[20:21]
	addli r16, zero, 1
	addli r22, zero, 64
	zext_int2long r[23:24], r10
	addli r10, zero, 448
	.loc	1 112 9                         # parallel-rne.mlir:112:9
	sll.d r[18:19], r[18:19], r16
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	div.sl r[20:21], r[20:21], r[23:24]
	zext_int2long r[23:24], r10
	.loc	1 112 9                         # parallel-rne.mlir:112:9
	addli r10, zero, 3
	xwait r10, 0
	addli r10, zero, 4
	lock zero, r10
	load.d r[10:11], 0(r30)
	dma_cfg r16, r16, zero, 0
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r16
	.loc	1 112 9                         # parallel-rne.mlir:112:9
	add.ul r[18:19], r[10:11], r[18:19]
	addli r11, zero, 256
	dma_cfg zero, r19, zero, 2
	dma_cfg r13, r18, r11, 3
	addli r13, zero, 2048
	.loc	1 101 15                        # parallel-rne.mlir:101:15
	min.sl r[23:24], r[20:21], r[23:24]
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	sub.sl r[20:21], r[23:24], r[20:21]
	addli r24, zero, 4
	addli r23, zero, 8
	.loc	1 112 9                         # parallel-rne.mlir:112:9
	addli r10, r20, 64
	addli r21, zero, 1
	dma_cfg r11, r13, r10, 4
	addli r10, zero, 2
	dma_run zero
	unlock r24
	xsignal r10, 0
.LBB0_11:                               # %.thread80
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	addli r2, r2, 1
	addli r5, r5, 1
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r6, r6, 1
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	addli r17, r17, 1
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	addli r7, r7, 1
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	beq r17, r23, .LBB0_27
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	addli r10, zero, 9
	.loc	1 106 15                        # parallel-rne.mlir:106:15
	addli r13, zero, 48
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	mod.s r10, r5, r10
	.loc	1 106 15                        # parallel-rne.mlir:106:15
	mod.s r13, r2, r13
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	slli r18, r10, 14
	.loc	1 106 15                        # parallel-rne.mlir:106:15
	slli r10, r13, 14
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	lui r13, 32
	add.s r13, r18, r13
	.loc	1 112 9                         # parallel-rne.mlir:112:9
	addli r18, zero, 2
	beq r16, r18, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[19:20], r17
	.loc	1 112 9                         # parallel-rne.mlir:112:9
	bneq r16, r21, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 91 15 is_stmt 1               # parallel-rne.mlir:91:15
	addli r10, zero, 7
	sll.d r[18:19], r[19:20], r10
	loadli.w r10,  -736(r30)                # 4-byte Folded Reload
	.loc	1 93 15                         # parallel-rne.mlir:93:15
	add.ul r[18:19], r[18:19], r[8:9]
	zext_int2long r[20:21], r10
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	setlt.ul r10, r[20:21], r[18:19]
	load.d r[20:21], -648(r30)              # 8-byte Folded Reload
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	bneq r10, zero, .LBB0_10
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[20:21], zero
	j .LBB0_10
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 113 9 is_stmt 1               # parallel-rne.mlir:113:9
	addli r18, zero, 2
	xwait r18, 0
	addli r18, zero, 5
	xwait r18, 0
	addli r18, zero, 3
	lock zero, zero
	ds_cfg r18, zero, 0
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r22, zero, 13
	shuffle_batch r10, r13, r12, 1
	unlock zero
	xsignal r18, 0
	xsignal r24, 0
	j .LBB0_11
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	mod.s r13, r7, r23
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	addli r11, zero, 40
	mod.s r18, r6, r11
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	lui r11, 68
	slli r21, r13, 15
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	slli r13, r18, 15
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	add.s r18, r21, r11
	.loc	1 129 9                         # parallel-rne.mlir:129:9
	addli r21, zero, 7
	beq r16, r21, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 6
	.loc	1 129 9                         # parallel-rne.mlir:129:9
	bneq r16, r11, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	addli r10, zero, 18
	addli r21, zero, 1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r16
	.loc	1 129 9                         # parallel-rne.mlir:129:9
	sll.d r[19:20], r[19:20], r10
	addli r10, zero, 7
	xwait r10, 0
	load.d r[13:14], -656(r30)              # 8-byte Folded Reload
	lock zero, r24
	addli r10, zero, 256
	dma_cfg r21, r21, zero, 0
	add.ul r[19:20], r[13:14], r[19:20]
	addli r13, zero, 2048
	dma_cfg zero, r20, zero, 2
	dma_cfg r18, r19, r10, 3
	dma_cfg r10, r13, r12, 4
	dma_run zero
	unlock r24
	xsignal r11, 0
	.loc	1 130 9                         # parallel-rne.mlir:130:9
	j .LBB0_11
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=2
	addli r10, zero, 6
	xwait r10, 0
	addli r10, zero, 9
	xwait r10, 0
	addli r10, zero, 3
	lock zero, zero
	ds_cfg r10, zero, 0
	addli r10, zero, 7
	ds_cfg r12, zero, 1
	ds_cfg r12, zero, 14
	ds_cfg r12, zero, 13
	shuffle_coa r13, r18, r12, 2
	unlock zero
	xsignal r10, 0
	xsignal r23, 0
	j .LBB0_26
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r21, zero, 1
	.loc	1 132 9 is_stmt 1               # parallel-rne.mlir:132:9
	bneq r16, r24, .LBB0_11
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r18, zero, 1
	addli r19, zero, 1
	addli r20, zero, 0
	.loc	1 132 9                         # parallel-rne.mlir:132:9
	xwait r24, 0
	xwait r23, 0
	beq r17, zero, .LBB0_24
.LBB0_23:                               # %.preheader132
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r21, r20, 14
	slli r20, r20, 8
	lock zero, r18
	mm_cfg r22, r12, r22, 0
	or r21, r21, r13
	or r20, r20, r25
	mm_cfg r24, r24, r18, 2
	mm_acc r20, r10, r21, 5
	andi r21, r19, 1
	addli r20, zero, 1
	addli r19, zero, 0
	unlock r18
	bneq r21, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader131
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r21, r20, 14
	slli r20, r20, 8
	lock zero, r18
	mm_cfg r22, r12, r22, 0
	or r21, r21, r13
	or r20, r20, r25
	mm_cfg r24, r24, r18, 2
	mm r20, r10, r21, 5
	andi r21, r19, 1
	addli r20, zero, 1
	addli r19, zero, 0
	unlock r18
	bneq r21, zero, .LBB0_24
.LBB0_25:                               # %.loopexit
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r10, zero, 5
	xsignal r10, 0
	addli r10, zero, 9
	xsignal r10, 0
.LBB0_26:                               # %.thread80
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r21, zero, 1
	j .LBB0_11
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 106 15 is_stmt 1              # parallel-rne.mlir:106:15
	storeli.w r2, -616(r30)
	.loc	1 108 15                        # parallel-rne.mlir:108:15
	storeli.w r5, -420(r30)
	.loc	1 123 15                        # parallel-rne.mlir:123:15
	storeli.w r6, -380(r30)
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	storeli.w r7, -216(r30)
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	bneq r16, r24, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 896
	.loc	1 143 13 is_stmt 1              # parallel-rne.mlir:143:13
	zext_int2long r[4:5], r4
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	loadli.w r8,  -180(r30)
	zext_int2long r[14:15], r12
	zext_int2long r[6:7], r2
	mod.s r2, r8, r24
	.loc	1 145 13                        # parallel-rne.mlir:145:13
	min.ul r[6:7], r[4:5], r[6:7]
	addli.d r[6:7], r[6:7], 128
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	max.ul r[6:7], r[6:7], r[4:5]
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	slli r2, r2, 9
	.loc	1 147 13                        # parallel-rne.mlir:147:13
	sub.sl r[4:5], r[6:7], r[4:5]
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	min.ul r[17:18], r[4:5], r[14:15]
	lui r4, 132
	.loc	1 150 13                        # parallel-rne.mlir:150:13
	addli r5, r8, 1
	add.s r2, r2, r4
	ori r4, r4, 2048
	storeli.w r5, -180(r30)
	store.d r[17:18], -792(r30)             # 8-byte Folded Spill
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	bneq r16, r21, .LBB0_31
# %bb.30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	load.d r[5:6], 16(r30)
	load.d r[9:10], -768(r30)               # 8-byte Folded Reload
	addli r7, zero, 20
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r8
	.loc	1 153 7                         # parallel-rne.mlir:153:7
	xwait r7, 0
	lock zero, r24
	slli r7, r17, 1
	add.ul r[5:6], r[5:6], r[9:10]
	dma_cfg zero, r21, zero, 0
	dma_cfg zero, r6, zero, 2
	dma_cfg r2, r5, r7, 3
	addli r2, zero, 256
	addli r5, zero, 512
	dma_cfg r5, r2, r21, 4
	addli r2, zero, 19
	dma_run zero
	unlock r24
	xsignal r2, 0
	.loc	1 155 13                        # parallel-rne.mlir:155:13
	loadli.w r2,  -160(r30)
	mod.s r5, r2, r24
	addli r2, r2, 1
	storeli.w r2, -160(r30)
	slli r5, r5, 15
	add.s r4, r5, r4
	storeli.w r4, -648(r30)                 # 4-byte Folded Spill
	j .LBB0_36
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r5,  -160(r30)
	mod.s r6, r5, r24
	addli r5, r5, 1
	storeli.w r5, -160(r30)
	slli r6, r6, 15
	add.s r4, r6, r4
	storeli.w r4, -648(r30)                 # 4-byte Folded Spill
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	addli r4, zero, 5
	bneq r16, r4, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r5, zero, 10
	addli r4, zero, 0
	lui r7, 8
	xwait r5, 0
	addli r5, zero, 19
	xwait r5, 0
	addli r5, zero, 23
	xwait r5, 0
	addli r5, zero, 2
	lock zero, r5
	lui r5, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r5, r5, zero, 0
	addli r5, zero, 127
	ew_cfg zero, r5, zero, 2
	ew_cfg r21, zero, zero, 3
	loadli.w r9,  -648(r30)                 # 4-byte Folded Reload
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r5, r9, r4
	add.s r6, r25, r4
	addli r4, r4, 512
	dsmadd r5, r6, r2, 0
	bneq r4, r7, .LBB0_33
# %bb.34:                               # %.thread198
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r6, zero, 2
	.loc	1 156 7                         # parallel-rne.mlir:156:7
	addli r2, zero, 11
	addli r8, zero, 2047
	lui r7, 260096
	addli r5, zero, 4
	unlock r6
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 158 13 is_stmt 1              # parallel-rne.mlir:158:13
	loadli.w r2,  -140(r30)
	mod.s r4, r2, r24
	addli r2, r2, 1
	storeli.w r2, -140(r30)
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r6
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	slli r2, r4, 15
	loadli.w r4,  -812(r30)                 # 4-byte Folded Reload
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	ew_cfg zero, zero, zero, 1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r4, r2, r4
	.loc	1 159 7                         # parallel-rne.mlir:159:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r8, zero, 2
	ew_cfg r24, zero, zero, 3
	ew_cfg r24, r24, zero, 19
	storeli.w r4, -656(r30)                 # 4-byte Folded Spill
	hp_ssmul r4, r9, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r2, 0
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	loadli.w r2,  -120(r30)
	mod.s r4, r2, r24
	addli r2, r2, 1
	storeli.w r2, -120(r30)
	loadli.w r2,  -816(r30)                 # 4-byte Folded Reload
	slli r4, r4, 15
	add.s r24, r4, r2
	.loc	1 162 7                         # parallel-rne.mlir:162:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r6
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmul r24, r9, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	loadli.w r2,  -100(r30)
	mod.s r4, r2, r5
	addli r2, r2, 1
	storeli.w r2, -100(r30)
	loadli.w r2,  -820(r30)                 # 4-byte Folded Reload
	slli r4, r4, 15
	add.s r21, r4, r2
	.loc	1 165 7                         # parallel-rne.mlir:165:7
	addli r2, zero, 30
	xwait r2, 0
	lock zero, r6
	addli r2, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	dsmul r21, r24, r9, 0
	ew_cfg zero, zero, zero, 19
	unlock r6
	xsignal r2, 0
	addli r2, zero, 27
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r2, 0
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r2,  -80(r30)
	storeli.w r2, -756(r30)                 # 4-byte Folded Spill
	addli r2, r2, 1
	storeli.w r2, -80(r30)
	j .LBB0_38
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r8
.LBB0_36:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	loadli.w r2,  -140(r30)
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	loadli.w r4,  -120(r30)
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	loadli.w r7,  -100(r30)
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	loadli.w r9,  -80(r30)
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	mod.s r5, r2, r24
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	mod.s r6, r4, r24
	addli r4, r4, 1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	addli r2, r2, 1
	storeli.w r9, -756(r30)                 # 4-byte Folded Spill
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	storeli.w r4, -120(r30)
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	storeli.w r2, -140(r30)
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	mod.s r2, r7, r24
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	slli r4, r5, 15
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	slli r5, r6, 15
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	loadli.w r6,  -812(r30)                 # 4-byte Folded Reload
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	slli r2, r2, 15
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r4, r4, r6
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	storeli.w r4, -656(r30)                 # 4-byte Folded Spill
	loadli.w r4,  -816(r30)                 # 4-byte Folded Reload
	add.s r24, r5, r4
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	loadli.w r5,  -820(r30)                 # 4-byte Folded Reload
	addli r4, r7, 1
	storeli.w r4, -100(r30)
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	addli r4, r9, 1
	.loc	1 164 13                        # parallel-rne.mlir:164:13
	add.s r21, r2, r5
	.loc	1 169 7                         # parallel-rne.mlir:169:7
	addli r2, zero, 3
	.loc	1 167 13                        # parallel-rne.mlir:167:13
	storeli.w r4, -80(r30)
	bneq r8, r2, .LBB0_38
# %bb.37:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 169 7                         # parallel-rne.mlir:169:7
	addli r2, zero, 11
	xwait r2, 0
	.loc	1 170 7                         # parallel-rne.mlir:170:7
	addli r2, zero, 21
	xwait r2, 0
	.loc	1 171 7                         # parallel-rne.mlir:171:7
	addli r2, zero, 27
	xwait r2, 0
	.loc	1 172 7                         # parallel-rne.mlir:172:7
	addli r2, zero, 29
	xwait r2, 0
.LBB0_38:                               # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	addli r2, zero, 255
	.loc	1 174 7                         # parallel-rne.mlir:174:7
	xfence
	.loc	1 175 7                         # parallel-rne.mlir:175:7
	mfence { lm, sm, gm }
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	csr_set csr5, r2
	sub.s r2, r25, r24
	storeli.w r2, -732(r30)                 # 4-byte Folded Spill
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	sub.s r2, r25, r2
	storeli.w r2, -740(r30)                 # 4-byte Folded Spill
	sub.s r2, r25, r21
	storeli.w r2, -744(r30)                 # 4-byte Folded Spill
	addli r2, zero, 7
	zext_int2long r[4:5], r2
	addli r2, zero, 127
	zext_int2long r[6:7], r2
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r2
	store.d r[4:5], -720(r30)               # 8-byte Folded Spill
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	sync_core
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	bneq r2, zero, .LBB0_67
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], zero
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	storeli.w r2, -672(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block709
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 185 9 is_stmt 1               # parallel-rne.mlir:185:9
	load.d r[4:5], -720(r30)                # 8-byte Folded Reload
	load.d r[8:9], -664(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_66
.LBB0_41:                               # %.preheader130
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_58 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	store.d r[4:5], -664(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	loadli.w r2,  -672(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_56
# %bb.42:                               # %scalar.ph701.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	setlt.ul r2, r[10:11], r[6:7]
	.loc	1 208 13 is_stmt 1              # parallel-rne.mlir:208:13
	add.s r4, r25, r12
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	stores.w r13, 0(r4)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	beq r2, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph701
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[4:5], r[10:11], r[8:9]
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	lui r18, 523264
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	slli r12, r4, 2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.s r2, r2, r12
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r4, r21, r12
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loads.w r2, 0(r2)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r19, 0(r4)
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	and r2, r2, r26
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r2, r3, .LBB0_46
# %bb.45:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_46:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	add.s r4, r24, r12
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r17, zero, .LBB0_54
# %bb.47:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_55
.LBB0_48:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	beq r17, r3, .LBB0_50
.LBB0_49:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_50:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	setlt.u r4, r3, r2
	lui r2, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_52
# %bb.51:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_52:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	setlt.u r4, r3, r17
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_43
# %bb.53:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	j .LBB0_43
.LBB0_54:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	beq r2, zero, .LBB0_48
.LBB0_55:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r17, r3, .LBB0_49
	j .LBB0_50
.LBB0_56:                               # %vector.body703.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[11:12], zero
	j .LBB0_58
.LBB0_57:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 186 11 is_stmt 1              # parallel-rne.mlir:186:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	add.s r5, r25, r13
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	seteq.d r4, r[11:12], r[14:15]
	.loc	1 208 13                        # parallel-rne.mlir:208:13
	stores.w r17, 12(r5)
	stores.w r2, 8(r5)
	stores.w r23, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 186 11                        # parallel-rne.mlir:186:11
	bneq r4, zero, .LBB0_40
.LBB0_58:                               # %vector.body703
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.ul r[17:18], r[11:12], r[8:9]
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	slli r13, r17, 2
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.s r19, r2, r13
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	add.s r18, r24, r13
	loads.w r2, 0(r18)
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loads.w r10, 0(r19)
	.loc	1 194 19                        # parallel-rne.mlir:194:19
	and r2, r2, r26
	.loc	1 192 19                        # parallel-rne.mlir:192:19
	and r10, r10, r26
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	seteq r17, r2, r3
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	seteq r20, r10, zero
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	seteq r4, r2, zero
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	seteq r23, r10, r3
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	max.u r2, r2, r10
	lui r10, 523264
	setlt.u r2, r3, r2
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	and r5, r17, r20
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r4, r4, r23
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r20, r21, r13
	lui r17, 523264
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	or r4, r5, r4
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	or r2, r2, r4
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_60
# %bb.59:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_60:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r2, 4(r18)
	loads.w r4, 4(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r27, r2, zero
	seteq r23, r4, zero
	seteq r22, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r23
	and r5, r27, r22
	lui r23, 523264
	or r4, r4, r5
	or r2, r2, r4
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_62
# %bb.61:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_62:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r2, 8(r18)
	loads.w r4, 8(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r16, r2, zero
	seteq r22, r4, zero
	seteq r27, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r22
	and r5, r16, r27
	or r4, r4, r5
	or r4, r2, r4
	lui r2, 523264
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_64
# %bb.63:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_64:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	loads.w r4, 12(r18)
	loads.w r5, 12(r19)
	lui r27, 524288
	and r4, r4, r26
	and r5, r5, r26
	seteq r16, r4, r3
	seteq r22, r4, zero
	seteq r18, r5, zero
	seteq r19, r5, r3
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	and r5, r16, r18
	and r16, r22, r19
	or r5, r5, r16
	or r4, r4, r5
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r4, zero, .LBB0_57
# %bb.65:                               # %vector.body703
                                        #   in Loop: Header=BB0_58 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_57
.LBB0_66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r12, zero, 128
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	mfence { sm }
.LBB0_67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 15
	zext_int2long r[4:5], r4
	.loc	1 213 7 is_stmt 1               # parallel-rne.mlir:213:7
	store.d r[4:5], -664(r30)               # 8-byte Folded Spill
	addli r4, zero, 1
	bneq r2, r4, .LBB0_96
# %bb.68:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 213 7                         # parallel-rne.mlir:213:7
	storeli.w r2, -680(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_70
.LBB0_69:                               # %middle.block694
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 221 9 is_stmt 1               # parallel-rne.mlir:221:9
	load.d r[4:5], -664(r30)                # 8-byte Folded Reload
	load.d r[8:9], -672(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_95
.LBB0_70:                               # %.preheader129
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_87 Depth 3
                                        #       Child Loop BB0_73 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 222 11 is_stmt 1              # parallel-rne.mlir:222:11
	store.d r[4:5], -672(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	loadli.w r2,  -680(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_85
# %bb.71:                               # %scalar.ph686.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_73
.LBB0_72:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 222 11                        # parallel-rne.mlir:222:11
	setlt.ul r2, r[10:11], r[6:7]
	.loc	1 244 13 is_stmt 1              # parallel-rne.mlir:244:13
	add.s r4, r25, r12
	.loc	1 222 11                        # parallel-rne.mlir:222:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r13, 0(r4)
	.loc	1 222 11                        # parallel-rne.mlir:222:11
	beq r2, zero, .LBB0_69
.LBB0_73:                               # %scalar.ph686
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	add.ul r[4:5], r[10:11], r[8:9]
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	lui r18, 523264
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	slli r12, r4, 2
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.s r2, r2, r12
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.s r4, r21, r12
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loads.w r2, 0(r2)
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	loads.w r19, 0(r4)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	and r2, r2, r26
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r2, r3, .LBB0_75
# %bb.74:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_75:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	add.s r4, r24, r12
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r17, zero, .LBB0_83
# %bb.76:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r2, zero, .LBB0_84
.LBB0_77:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	beq r17, r3, .LBB0_79
.LBB0_78:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_79:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	setlt.u r4, r3, r2
	lui r2, 523264
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r4, zero, .LBB0_81
# %bb.80:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_81:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	setlt.u r4, r3, r17
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r4, zero, .LBB0_72
# %bb.82:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	j .LBB0_72
.LBB0_83:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	beq r2, zero, .LBB0_77
.LBB0_84:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_73 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r17, r3, .LBB0_78
	j .LBB0_79
.LBB0_85:                               # %vector.body688.preheader
                                        #   in Loop: Header=BB0_70 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[11:12], zero
	j .LBB0_87
.LBB0_86:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 222 11 is_stmt 1              # parallel-rne.mlir:222:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	add.s r5, r25, r13
	.loc	1 222 11                        # parallel-rne.mlir:222:11
	seteq.d r4, r[11:12], r[14:15]
	.loc	1 244 13                        # parallel-rne.mlir:244:13
	stores.w r17, 12(r5)
	stores.w r2, 8(r5)
	stores.w r23, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 222 11                        # parallel-rne.mlir:222:11
	bneq r4, zero, .LBB0_69
.LBB0_87:                               # %vector.body688
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_70 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	add.ul r[16:17], r[11:12], r[8:9]
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	slli r13, r16, 2
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.s r19, r2, r13
	.loc	1 223 19                        # parallel-rne.mlir:223:19
	add.s r18, r24, r13
	loads.w r2, 0(r18)
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loads.w r10, 0(r19)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r2, r2, r26
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	and r10, r10, r26
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	seteq r16, r2, r3
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	seteq r22, r2, zero
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	seteq r17, r10, zero
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	seteq r20, r10, r3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	max.u r2, r2, r10
	setlt.u r2, r3, r2
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	and r10, r16, r17
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r16, r22, r20
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.s r20, r21, r13
	lui r17, 523264
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	or r10, r10, r16
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	or r2, r2, r10
	lui r10, 523264
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r2, zero, .LBB0_89
# %bb.88:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_89:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	loads.w r2, 4(r18)
	loads.w r16, 4(r19)
	and r2, r2, r26
	and r16, r16, r26
	seteq r22, r2, r3
	seteq r23, r16, zero
	seteq r4, r2, zero
	seteq r27, r16, r3
	max.u r2, r2, r16
	setlt.u r2, r3, r2
	and r5, r22, r23
	and r4, r4, r27
	lui r23, 523264
	or r4, r5, r4
	or r2, r2, r4
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r2, zero, .LBB0_91
# %bb.90:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_91:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	loads.w r2, 8(r18)
	loads.w r4, 8(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r27, r2, zero
	seteq r16, r4, zero
	seteq r22, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r16
	and r5, r27, r22
	or r4, r4, r5
	or r4, r2, r4
	lui r2, 523264
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r4, zero, .LBB0_93
# %bb.92:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_93:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	loads.w r4, 12(r18)
	loads.w r5, 12(r19)
	lui r27, 524288
	and r4, r4, r26
	and r5, r5, r26
	seteq r16, r4, r3
	seteq r22, r4, zero
	seteq r18, r5, zero
	seteq r19, r5, r3
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	and r5, r16, r18
	and r16, r22, r19
	or r5, r5, r16
	or r4, r4, r5
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	bneq r4, zero, .LBB0_86
# %bb.94:                               # %vector.body688
                                        #   in Loop: Header=BB0_87 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_86
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 213 7 is_stmt 1               # parallel-rne.mlir:213:7
	mfence { sm }
.LBB0_96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[4:5], r2
	.loc	1 249 7 is_stmt 1               # parallel-rne.mlir:249:7
	core_id r2
	store.d r[4:5], -672(r30)               # 8-byte Folded Spill
	addli r4, zero, 2
	bneq r2, r4, .LBB0_125
# %bb.97:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], r4
	.loc	1 249 7                         # parallel-rne.mlir:249:7
	storeli.w r2, -688(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_99
.LBB0_98:                               # %middle.block679
                                        #   in Loop: Header=BB0_99 Depth=2
	.loc	1 257 9 is_stmt 1               # parallel-rne.mlir:257:9
	load.d r[4:5], -672(r30)                # 8-byte Folded Reload
	load.d r[8:9], -680(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_124
.LBB0_99:                               # %.preheader128
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_102 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 258 11 is_stmt 1              # parallel-rne.mlir:258:11
	store.d r[4:5], -680(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	loadli.w r2,  -688(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_114
# %bb.100:                              # %scalar.ph671.preheader
                                        #   in Loop: Header=BB0_99 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_102
.LBB0_101:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	setlt.ul r2, r[10:11], r[6:7]
	.loc	1 280 13 is_stmt 1              # parallel-rne.mlir:280:13
	add.s r4, r25, r12
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	stores.w r13, 0(r4)
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	beq r2, zero, .LBB0_98
.LBB0_102:                              # %scalar.ph671
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.ul r[4:5], r[10:11], r[8:9]
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	lui r18, 523264
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	slli r12, r4, 2
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.s r2, r2, r12
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.s r4, r21, r12
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	loads.w r2, 0(r2)
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	loads.w r19, 0(r4)
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r2, r2, r26
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	beq r2, r3, .LBB0_104
# %bb.103:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_104:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	add.s r4, r24, r12
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r17, zero, .LBB0_112
# %bb.105:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r2, zero, .LBB0_113
.LBB0_106:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	beq r17, r3, .LBB0_108
.LBB0_107:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_108:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	setlt.u r4, r3, r2
	lui r2, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r4, zero, .LBB0_110
# %bb.109:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_110:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	setlt.u r4, r3, r17
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r4, zero, .LBB0_101
# %bb.111:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	j .LBB0_101
.LBB0_112:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	beq r2, zero, .LBB0_106
.LBB0_113:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_102 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r17, r3, .LBB0_107
	j .LBB0_108
.LBB0_114:                              # %vector.body673.preheader
                                        #   in Loop: Header=BB0_99 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[11:12], zero
	j .LBB0_116
.LBB0_115:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 258 11 is_stmt 1              # parallel-rne.mlir:258:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	add.s r5, r25, r13
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	seteq.d r4, r[11:12], r[14:15]
	.loc	1 280 13                        # parallel-rne.mlir:280:13
	stores.w r17, 12(r5)
	stores.w r2, 8(r5)
	stores.w r23, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	bneq r4, zero, .LBB0_98
.LBB0_116:                              # %vector.body673
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_99 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.ul r[16:17], r[11:12], r[8:9]
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	slli r13, r16, 2
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.s r19, r2, r13
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.s r18, r24, r13
	loads.w r2, 0(r18)
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	loads.w r10, 0(r19)
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	and r2, r2, r26
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	and r10, r10, r26
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	seteq r16, r2, r3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	seteq r22, r2, zero
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	seteq r17, r10, zero
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	seteq r20, r10, r3
	.loc	1 276 19                        # parallel-rne.mlir:276:19
	max.u r2, r2, r10
	setlt.u r2, r3, r2
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	and r10, r16, r17
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	and r16, r22, r20
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.s r20, r21, r13
	lui r17, 523264
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	or r10, r10, r16
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	or r2, r2, r10
	lui r10, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r2, zero, .LBB0_118
# %bb.117:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_118:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	loads.w r2, 4(r18)
	loads.w r16, 4(r19)
	and r2, r2, r26
	and r16, r16, r26
	seteq r22, r2, r3
	seteq r23, r16, zero
	seteq r4, r2, zero
	seteq r27, r16, r3
	max.u r2, r2, r16
	setlt.u r2, r3, r2
	and r5, r22, r23
	and r4, r4, r27
	lui r23, 523264
	or r4, r5, r4
	or r2, r2, r4
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r2, zero, .LBB0_120
# %bb.119:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_120:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	loads.w r2, 8(r18)
	loads.w r4, 8(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r27, r2, zero
	seteq r16, r4, zero
	seteq r22, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r16
	and r5, r27, r22
	or r4, r4, r5
	or r4, r2, r4
	lui r2, 523264
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r4, zero, .LBB0_122
# %bb.121:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_122:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	loads.w r4, 12(r18)
	loads.w r5, 12(r19)
	lui r27, 524288
	and r4, r4, r26
	and r5, r5, r26
	seteq r16, r4, r3
	seteq r22, r4, zero
	seteq r18, r5, zero
	seteq r19, r5, r3
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	and r5, r16, r18
	and r16, r22, r19
	or r5, r5, r16
	or r4, r4, r5
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	bneq r4, zero, .LBB0_115
# %bb.123:                              # %vector.body673
                                        #   in Loop: Header=BB0_116 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_115
.LBB0_124:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 249 7 is_stmt 1               # parallel-rne.mlir:249:7
	mfence { sm }
.LBB0_125:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[4:5], r2
	.loc	1 285 7 is_stmt 1               # parallel-rne.mlir:285:7
	core_id r2
	store.d r[4:5], -680(r30)               # 8-byte Folded Spill
	addli r4, zero, 3
	bneq r2, r4, .LBB0_154
# %bb.126:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 285 7                         # parallel-rne.mlir:285:7
	storeli.w r2, -696(r30)                 # 4-byte Folded Spill
	addli r2, zero, 24
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_128
.LBB0_127:                              # %middle.block664
                                        #   in Loop: Header=BB0_128 Depth=2
	.loc	1 293 9 is_stmt 1               # parallel-rne.mlir:293:9
	load.d r[4:5], -680(r30)                # 8-byte Folded Reload
	load.d r[8:9], -688(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_153
.LBB0_128:                              # %.preheader127
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_131 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 294 11 is_stmt 1              # parallel-rne.mlir:294:11
	store.d r[4:5], -688(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	loadli.w r2,  -696(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_143
# %bb.129:                              # %scalar.ph656.preheader
                                        #   in Loop: Header=BB0_128 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_131
.LBB0_130:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	setlt.ul r2, r[10:11], r[6:7]
	.loc	1 316 13 is_stmt 1              # parallel-rne.mlir:316:13
	add.s r4, r25, r12
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	stores.w r13, 0(r4)
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	beq r2, zero, .LBB0_127
.LBB0_131:                              # %scalar.ph656
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	add.ul r[4:5], r[10:11], r[8:9]
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	lui r18, 523264
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	slli r12, r4, 2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	add.s r2, r2, r12
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.s r4, r21, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	loads.w r2, 0(r2)
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	loads.w r19, 0(r4)
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	and r2, r2, r26
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	beq r2, r3, .LBB0_133
# %bb.132:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_133:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	add.s r4, r24, r12
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r17, zero, .LBB0_141
# %bb.134:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r2, zero, .LBB0_142
.LBB0_135:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	beq r17, r3, .LBB0_137
.LBB0_136:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_137:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r4, r3, r2
	lui r2, 523264
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r4, zero, .LBB0_139
# %bb.138:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_139:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	setlt.u r4, r3, r17
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r4, zero, .LBB0_130
# %bb.140:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	j .LBB0_130
.LBB0_141:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	beq r2, zero, .LBB0_135
.LBB0_142:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_131 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r17, r3, .LBB0_136
	j .LBB0_137
.LBB0_143:                              # %vector.body658.preheader
                                        #   in Loop: Header=BB0_128 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[11:12], zero
	j .LBB0_145
.LBB0_144:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 294 11 is_stmt 1              # parallel-rne.mlir:294:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	add.s r5, r25, r13
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	seteq.d r4, r[11:12], r[14:15]
	.loc	1 316 13                        # parallel-rne.mlir:316:13
	stores.w r17, 12(r5)
	stores.w r2, 8(r5)
	stores.w r23, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 294 11                        # parallel-rne.mlir:294:11
	bneq r4, zero, .LBB0_127
.LBB0_145:                              # %vector.body658
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_128 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	add.ul r[16:17], r[11:12], r[8:9]
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	slli r13, r16, 2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	add.s r19, r2, r13
	.loc	1 295 19                        # parallel-rne.mlir:295:19
	add.s r18, r24, r13
	loads.w r2, 0(r18)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	loads.w r10, 0(r19)
	.loc	1 302 19                        # parallel-rne.mlir:302:19
	and r2, r2, r26
	.loc	1 300 19                        # parallel-rne.mlir:300:19
	and r10, r10, r26
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	seteq r16, r2, r3
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	seteq r22, r2, zero
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	seteq r17, r10, zero
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	seteq r20, r10, r3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	max.u r2, r2, r10
	setlt.u r2, r3, r2
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	and r10, r16, r17
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	and r16, r22, r20
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.s r20, r21, r13
	lui r17, 523264
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	or r10, r10, r16
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	or r2, r2, r10
	lui r10, 523264
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r2, zero, .LBB0_147
# %bb.146:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_147:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r2, 4(r18)
	loads.w r16, 4(r19)
	and r2, r2, r26
	and r16, r16, r26
	seteq r22, r2, r3
	seteq r23, r16, zero
	seteq r4, r2, zero
	seteq r27, r16, r3
	max.u r2, r2, r16
	setlt.u r2, r3, r2
	and r5, r22, r23
	and r4, r4, r27
	lui r23, 523264
	or r4, r5, r4
	or r2, r2, r4
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r2, zero, .LBB0_149
# %bb.148:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_149:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r2, 8(r18)
	loads.w r4, 8(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r27, r2, zero
	seteq r16, r4, zero
	seteq r22, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r16
	and r5, r27, r22
	or r4, r4, r5
	or r4, r2, r4
	lui r2, 523264
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r4, zero, .LBB0_151
# %bb.150:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_151:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r4, 12(r18)
	loads.w r5, 12(r19)
	lui r27, 524288
	and r4, r4, r26
	and r5, r5, r26
	seteq r16, r4, r3
	seteq r22, r4, zero
	seteq r18, r5, zero
	seteq r19, r5, r3
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	and r5, r16, r18
	and r16, r22, r19
	or r5, r5, r16
	or r4, r4, r5
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	bneq r4, zero, .LBB0_144
# %bb.152:                              # %vector.body658
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_144
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 285 7 is_stmt 1               # parallel-rne.mlir:285:7
	mfence { sm }
.LBB0_154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 39
	zext_int2long r[4:5], r2
	.loc	1 321 7 is_stmt 1               # parallel-rne.mlir:321:7
	core_id r2
	store.d r[4:5], -688(r30)               # 8-byte Folded Spill
	addli r4, zero, 4
	bneq r2, r4, .LBB0_183
# %bb.155:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 321 7                         # parallel-rne.mlir:321:7
	storeli.w r2, -704(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_157
.LBB0_156:                              # %middle.block649
                                        #   in Loop: Header=BB0_157 Depth=2
	.loc	1 329 9 is_stmt 1               # parallel-rne.mlir:329:9
	load.d r[4:5], -688(r30)                # 8-byte Folded Reload
	load.d r[8:9], -696(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_182
.LBB0_157:                              # %.preheader126
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_174 Depth 3
                                        #       Child Loop BB0_160 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	store.d r[4:5], -696(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	loadli.w r2,  -704(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_172
# %bb.158:                              # %scalar.ph641.preheader
                                        #   in Loop: Header=BB0_157 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_160
.LBB0_159:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	setlt.ul r2, r[10:11], r[6:7]
	.loc	1 352 13 is_stmt 1              # parallel-rne.mlir:352:13
	add.s r4, r25, r12
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	stores.w r13, 0(r4)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	beq r2, zero, .LBB0_156
.LBB0_160:                              # %scalar.ph641
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_157 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[4:5], r[10:11], r[8:9]
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	lui r18, 523264
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	slli r12, r4, 2
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.s r2, r2, r12
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.s r4, r21, r12
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	loads.w r2, 0(r2)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	loads.w r19, 0(r4)
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r2, r2, r26
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r2, r3, .LBB0_162
# %bb.161:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_162:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	add.s r4, r24, r12
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r17, zero, .LBB0_170
# %bb.163:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r2, zero, .LBB0_171
.LBB0_164:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	beq r17, r3, .LBB0_166
.LBB0_165:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_166:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	setlt.u r4, r3, r2
	lui r2, 523264
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_168
# %bb.167:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_168:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	setlt.u r4, r3, r17
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_159
# %bb.169:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	j .LBB0_159
.LBB0_170:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r2, zero, .LBB0_164
.LBB0_171:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_160 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r17, r3, .LBB0_165
	j .LBB0_166
.LBB0_172:                              # %vector.body643.preheader
                                        #   in Loop: Header=BB0_157 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[11:12], zero
	j .LBB0_174
.LBB0_173:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 330 11 is_stmt 1              # parallel-rne.mlir:330:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	add.s r5, r25, r13
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	seteq.d r4, r[11:12], r[14:15]
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	stores.w r17, 12(r5)
	stores.w r2, 8(r5)
	stores.w r23, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 330 11                        # parallel-rne.mlir:330:11
	bneq r4, zero, .LBB0_156
.LBB0_174:                              # %vector.body643
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_157 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.ul r[16:17], r[11:12], r[8:9]
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	slli r13, r16, 2
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.s r19, r2, r13
	.loc	1 331 19                        # parallel-rne.mlir:331:19
	add.s r18, r24, r13
	loads.w r2, 0(r18)
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	loads.w r10, 0(r19)
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	and r2, r2, r26
	.loc	1 336 19                        # parallel-rne.mlir:336:19
	and r10, r10, r26
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	seteq r16, r2, r3
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	seteq r22, r2, zero
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	seteq r17, r10, zero
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	seteq r20, r10, r3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	max.u r2, r2, r10
	setlt.u r2, r3, r2
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	and r10, r16, r17
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	and r16, r22, r20
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.s r20, r21, r13
	lui r17, 523264
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	or r10, r10, r16
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	or r2, r2, r10
	lui r10, 523264
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r2, zero, .LBB0_176
# %bb.175:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_176:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	loads.w r2, 4(r18)
	loads.w r16, 4(r19)
	and r2, r2, r26
	and r16, r16, r26
	seteq r22, r2, r3
	seteq r23, r16, zero
	seteq r4, r2, zero
	seteq r27, r16, r3
	max.u r2, r2, r16
	setlt.u r2, r3, r2
	and r5, r22, r23
	and r4, r4, r27
	lui r23, 523264
	or r4, r5, r4
	or r2, r2, r4
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r2, zero, .LBB0_178
# %bb.177:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_178:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	loads.w r2, 8(r18)
	loads.w r4, 8(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r27, r2, zero
	seteq r16, r4, zero
	seteq r22, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r16
	and r5, r27, r22
	or r4, r4, r5
	or r4, r2, r4
	lui r2, 523264
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_180
# %bb.179:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_180:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	loads.w r4, 12(r18)
	loads.w r5, 12(r19)
	lui r27, 524288
	and r4, r4, r26
	and r5, r5, r26
	seteq r16, r4, r3
	seteq r22, r4, zero
	seteq r18, r5, zero
	seteq r19, r5, r3
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	and r5, r16, r18
	and r16, r22, r19
	or r5, r5, r16
	or r4, r4, r5
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_173
# %bb.181:                              # %vector.body643
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_173
.LBB0_182:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 321 7 is_stmt 1               # parallel-rne.mlir:321:7
	mfence { sm }
.LBB0_183:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[4:5], r2
	.loc	1 357 7 is_stmt 1               # parallel-rne.mlir:357:7
	core_id r2
	store.d r[4:5], -696(r30)               # 8-byte Folded Spill
	addli r4, zero, 5
	bneq r2, r4, .LBB0_212
# %bb.184:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 357 7                         # parallel-rne.mlir:357:7
	storeli.w r2, -712(r30)                 # 4-byte Folded Spill
	addli r2, zero, 40
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_186
.LBB0_185:                              # %middle.block634
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 365 9 is_stmt 1               # parallel-rne.mlir:365:9
	load.d r[4:5], -696(r30)                # 8-byte Folded Reload
	load.d r[8:9], -704(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_211
.LBB0_186:                              # %.preheader125
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_203 Depth 3
                                        #       Child Loop BB0_189 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 366 11 is_stmt 1              # parallel-rne.mlir:366:11
	store.d r[4:5], -704(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	loadli.w r2,  -712(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_201
# %bb.187:                              # %scalar.ph626.preheader
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_189
.LBB0_188:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 366 11                        # parallel-rne.mlir:366:11
	setlt.ul r2, r[10:11], r[6:7]
	.loc	1 388 13 is_stmt 1              # parallel-rne.mlir:388:13
	add.s r4, r25, r12
	.loc	1 366 11                        # parallel-rne.mlir:366:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 388 13                        # parallel-rne.mlir:388:13
	stores.w r13, 0(r4)
	.loc	1 366 11                        # parallel-rne.mlir:366:11
	beq r2, zero, .LBB0_185
.LBB0_189:                              # %scalar.ph626
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	add.ul r[4:5], r[10:11], r[8:9]
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	lui r18, 523264
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	slli r12, r4, 2
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	add.s r2, r2, r12
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.s r4, r21, r12
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	loads.w r2, 0(r2)
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	loads.w r19, 0(r4)
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	and r2, r2, r26
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	beq r2, r3, .LBB0_191
# %bb.190:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_191:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	add.s r4, r24, r12
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r17, zero, .LBB0_199
# %bb.192:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r2, zero, .LBB0_200
.LBB0_193:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	beq r17, r3, .LBB0_195
.LBB0_194:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_195:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	setlt.u r4, r3, r2
	lui r2, 523264
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r4, zero, .LBB0_197
# %bb.196:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_197:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	setlt.u r4, r3, r17
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r4, zero, .LBB0_188
# %bb.198:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	j .LBB0_188
.LBB0_199:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	beq r2, zero, .LBB0_193
.LBB0_200:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_189 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r17, r3, .LBB0_194
	j .LBB0_195
.LBB0_201:                              # %vector.body628.preheader
                                        #   in Loop: Header=BB0_186 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[11:12], zero
	j .LBB0_203
.LBB0_202:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 366 11 is_stmt 1              # parallel-rne.mlir:366:11
	addli.d r[11:12], r[11:12], 4
	.loc	1 388 13                        # parallel-rne.mlir:388:13
	add.s r5, r25, r13
	.loc	1 366 11                        # parallel-rne.mlir:366:11
	seteq.d r4, r[11:12], r[14:15]
	.loc	1 388 13                        # parallel-rne.mlir:388:13
	stores.w r17, 12(r5)
	stores.w r2, 8(r5)
	stores.w r23, 4(r5)
	stores.w r10, 0(r5)
	.loc	1 366 11                        # parallel-rne.mlir:366:11
	bneq r4, zero, .LBB0_185
.LBB0_203:                              # %vector.body628
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_186 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	add.ul r[16:17], r[11:12], r[8:9]
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	slli r13, r16, 2
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	add.s r19, r2, r13
	.loc	1 367 19                        # parallel-rne.mlir:367:19
	add.s r18, r24, r13
	loads.w r2, 0(r18)
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	loads.w r10, 0(r19)
	.loc	1 374 19                        # parallel-rne.mlir:374:19
	and r2, r2, r26
	.loc	1 372 19                        # parallel-rne.mlir:372:19
	and r10, r10, r26
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	seteq r16, r2, r3
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	seteq r22, r2, zero
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	seteq r17, r10, zero
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	seteq r20, r10, r3
	.loc	1 384 19                        # parallel-rne.mlir:384:19
	max.u r2, r2, r10
	setlt.u r2, r3, r2
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	and r10, r16, r17
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	and r16, r22, r20
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.s r20, r21, r13
	lui r17, 523264
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	or r10, r10, r16
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	or r2, r2, r10
	lui r10, 523264
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r2, zero, .LBB0_205
# %bb.204:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_205:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r2, 4(r18)
	loads.w r16, 4(r19)
	and r2, r2, r26
	and r16, r16, r26
	seteq r22, r2, r3
	seteq r23, r16, zero
	seteq r4, r2, zero
	seteq r27, r16, r3
	max.u r2, r2, r16
	setlt.u r2, r3, r2
	and r5, r22, r23
	and r4, r4, r27
	lui r23, 523264
	or r4, r5, r4
	or r2, r2, r4
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r2, zero, .LBB0_207
# %bb.206:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_207:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r2, 8(r18)
	loads.w r4, 8(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r27, r2, zero
	seteq r16, r4, zero
	seteq r22, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r16
	and r5, r27, r22
	or r4, r4, r5
	or r4, r2, r4
	lui r2, 523264
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r4, zero, .LBB0_209
# %bb.208:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_209:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	loads.w r4, 12(r18)
	loads.w r5, 12(r19)
	lui r27, 524288
	and r4, r4, r26
	and r5, r5, r26
	seteq r16, r4, r3
	seteq r22, r4, zero
	seteq r18, r5, zero
	seteq r19, r5, r3
	max.u r4, r4, r5
	setlt.u r4, r3, r4
	and r5, r16, r18
	and r16, r22, r19
	or r5, r5, r16
	or r4, r4, r5
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	bneq r4, zero, .LBB0_202
# %bb.210:                              # %vector.body628
                                        #   in Loop: Header=BB0_203 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_202
.LBB0_211:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 357 7 is_stmt 1               # parallel-rne.mlir:357:7
	mfence { sm }
.LBB0_212:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	zext_int2long r[4:5], r2
	.loc	1 393 7 is_stmt 1               # parallel-rne.mlir:393:7
	core_id r2
	store.d r[4:5], -704(r30)               # 8-byte Folded Spill
	addli r4, zero, 6
	bneq r2, r4, .LBB0_241
# %bb.213:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 393 7                         # parallel-rne.mlir:393:7
	storeli.w r2, -728(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_215
.LBB0_214:                              # %middle.block619
                                        #   in Loop: Header=BB0_215 Depth=2
	.loc	1 401 9 is_stmt 1               # parallel-rne.mlir:401:9
	load.d r[4:5], -704(r30)                # 8-byte Folded Reload
	load.d r[8:9], -712(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_240
.LBB0_215:                              # %.preheader124
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_232 Depth 3
                                        #       Child Loop BB0_218 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -712(r30)               # 8-byte Folded Spill
	sll.d r[11:12], r[4:5], r2
	.loc	1 402 11 is_stmt 1              # parallel-rne.mlir:402:11
	loadli.w r2,  -728(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_230
# %bb.216:                              # %scalar.ph611.preheader
                                        #   in Loop: Header=BB0_215 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_218
.LBB0_217:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 402 11                        # parallel-rne.mlir:402:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 424 13 is_stmt 1              # parallel-rne.mlir:424:13
	add.s r8, r25, r10
	.loc	1 402 11                        # parallel-rne.mlir:402:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 424 13                        # parallel-rne.mlir:424:13
	stores.w r13, 0(r8)
	.loc	1 402 11                        # parallel-rne.mlir:402:11
	beq r2, zero, .LBB0_214
.LBB0_218:                              # %scalar.ph611
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	add.ul r[8:9], r[4:5], r[11:12]
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r13, 523264
	lui r18, 523264
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	slli r10, r8, 2
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	add.s r2, r2, r10
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.s r8, r21, r10
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	loads.w r2, 0(r2)
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	loads.w r19, 0(r8)
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	and r2, r2, r26
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	beq r2, r3, .LBB0_220
# %bb.219:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_220:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	add.s r8, r24, r10
	loads.w r8, 0(r8)
	and r17, r8, r26
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r17, zero, .LBB0_228
# %bb.221:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r19, 523264
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r2, zero, .LBB0_229
.LBB0_222:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	beq r17, r3, .LBB0_224
.LBB0_223:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_224:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	setlt.u r8, r3, r2
	lui r2, 523264
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r8, zero, .LBB0_226
# %bb.225:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
.LBB0_226:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	setlt.u r8, r3, r17
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r8, zero, .LBB0_217
# %bb.227:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	j .LBB0_217
.LBB0_228:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	beq r2, zero, .LBB0_222
.LBB0_229:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_218 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r17, r3, .LBB0_223
	j .LBB0_224
.LBB0_230:                              # %vector.body613.preheader
                                        #   in Loop: Header=BB0_215 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_232
.LBB0_231:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 402 11 is_stmt 1              # parallel-rne.mlir:402:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 424 13                        # parallel-rne.mlir:424:13
	add.s r9, r25, r13
	.loc	1 402 11                        # parallel-rne.mlir:402:11
	seteq.d r8, r[4:5], r[14:15]
	.loc	1 424 13                        # parallel-rne.mlir:424:13
	stores.w r17, 12(r9)
	stores.w r2, 8(r9)
	stores.w r23, 4(r9)
	stores.w r10, 0(r9)
	.loc	1 402 11                        # parallel-rne.mlir:402:11
	bneq r8, zero, .LBB0_214
.LBB0_232:                              # %vector.body613
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_215 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	add.ul r[16:17], r[4:5], r[11:12]
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	slli r13, r16, 2
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	add.s r19, r2, r13
	.loc	1 403 19                        # parallel-rne.mlir:403:19
	add.s r18, r24, r13
	loads.w r2, 0(r18)
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	loads.w r10, 0(r19)
	.loc	1 410 19                        # parallel-rne.mlir:410:19
	and r2, r2, r26
	.loc	1 408 19                        # parallel-rne.mlir:408:19
	and r10, r10, r26
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	seteq r16, r2, r3
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	seteq r22, r2, zero
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	seteq r17, r10, zero
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	seteq r20, r10, r3
	.loc	1 420 19                        # parallel-rne.mlir:420:19
	max.u r2, r2, r10
	setlt.u r2, r3, r2
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	and r10, r16, r17
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	and r16, r22, r20
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.s r20, r21, r13
	lui r17, 523264
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	or r10, r10, r16
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	or r2, r2, r10
	lui r10, 523264
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r2, zero, .LBB0_234
# %bb.233:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_234:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	loads.w r2, 4(r18)
	loads.w r16, 4(r19)
	and r2, r2, r26
	and r16, r16, r26
	seteq r22, r2, r3
	seteq r23, r16, zero
	seteq r8, r2, zero
	seteq r27, r16, r3
	max.u r2, r2, r16
	setlt.u r2, r3, r2
	and r9, r22, r23
	and r8, r8, r27
	lui r23, 523264
	or r8, r9, r8
	or r2, r2, r8
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r2, zero, .LBB0_236
# %bb.235:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_236:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	loads.w r2, 8(r18)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r8, zero, .LBB0_238
# %bb.237:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r20)
.LBB0_238:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	loads.w r8, 12(r18)
	loads.w r9, 12(r19)
	lui r27, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r16, r8, r3
	seteq r22, r8, zero
	seteq r18, r9, zero
	seteq r19, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r16, r18
	and r16, r22, r19
	or r9, r9, r16
	or r8, r8, r9
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	bneq r8, zero, .LBB0_231
# %bb.239:                              # %vector.body613
                                        #   in Loop: Header=BB0_232 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r20)
	j .LBB0_231
.LBB0_240:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 393 7 is_stmt 1               # parallel-rne.mlir:393:7
	mfence { sm }
.LBB0_241:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[4:5], r2
	.loc	1 429 7 is_stmt 1               # parallel-rne.mlir:429:7
	core_id r2
	store.d r[4:5], -712(r30)               # 8-byte Folded Spill
	addli r4, zero, 7
	bneq r2, r4, .LBB0_270
# %bb.242:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	loadli.w r4,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	.loc	1 429 7                         # parallel-rne.mlir:429:7
	storeli.w r2, -732(r30)                 # 4-byte Folded Spill
	addli r2, zero, 56
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_244
.LBB0_243:                              # %middle.block604
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 437 9 is_stmt 1               # parallel-rne.mlir:437:9
	load.d r[4:5], -712(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_269
.LBB0_244:                              # %.preheader123
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_261 Depth 3
                                        #       Child Loop BB0_247 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 438 11 is_stmt 1              # parallel-rne.mlir:438:11
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_259
# %bb.245:                              # %scalar.ph596.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_247
.LBB0_246:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 460 13 is_stmt 1              # parallel-rne.mlir:460:13
	add.s r8, r25, r10
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 460 13                        # parallel-rne.mlir:460:13
	stores.w r11, 0(r8)
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	beq r2, zero, .LBB0_243
.LBB0_247:                              # %scalar.ph596
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	add.ul r[8:9], r[4:5], r[19:20]
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	lui r11, 523264
	lui r13, 523264
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	slli r10, r8, 2
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	add.s r2, r2, r10
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.s r8, r21, r10
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	loads.w r2, 0(r2)
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	loads.w r17, 0(r8)
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	and r2, r2, r26
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	beq r2, r3, .LBB0_249
# %bb.248:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r13, r17, 0
.LBB0_249:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	add.s r8, r24, r10
	loads.w r8, 0(r8)
	and r12, r8, r26
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r12, zero, .LBB0_257
# %bb.250:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r17, 523264
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r2, zero, .LBB0_258
.LBB0_251:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	beq r12, r3, .LBB0_253
.LBB0_252:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r13, 0
.LBB0_253:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r8, r3, r2
	lui r2, 523264
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r8, zero, .LBB0_255
# %bb.254:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r17, 0
.LBB0_255:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	setlt.u r8, r3, r12
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r8, zero, .LBB0_246
# %bb.256:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_246
.LBB0_257:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	addli r13, r17, 0
	lui r17, 523264
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	beq r2, zero, .LBB0_251
.LBB0_258:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_247 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r13, 0
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r12, r3, .LBB0_252
	j .LBB0_253
.LBB0_259:                              # %vector.body598.preheader
                                        #   in Loop: Header=BB0_244 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_261
.LBB0_260:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 438 11 is_stmt 1              # parallel-rne.mlir:438:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 460 13                        # parallel-rne.mlir:460:13
	add.s r9, r25, r11
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	seteq.d r8, r[4:5], r[14:15]
	.loc	1 460 13                        # parallel-rne.mlir:460:13
	stores.w r12, 12(r9)
	stores.w r2, 8(r9)
	stores.w r23, 4(r9)
	stores.w r10, 0(r9)
	.loc	1 438 11                        # parallel-rne.mlir:438:11
	bneq r8, zero, .LBB0_243
.LBB0_261:                              # %vector.body598
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_244 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	add.ul r[10:11], r[4:5], r[19:20]
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	slli r11, r10, 2
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	add.s r17, r2, r11
	.loc	1 439 19                        # parallel-rne.mlir:439:19
	add.s r13, r24, r11
	loads.w r2, 0(r13)
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	loads.w r10, 0(r17)
	.loc	1 446 19                        # parallel-rne.mlir:446:19
	and r2, r2, r26
	.loc	1 444 19                        # parallel-rne.mlir:444:19
	and r10, r10, r26
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	seteq r12, r2, r3
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	seteq r22, r2, zero
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	seteq r16, r10, zero
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	seteq r18, r10, r3
	.loc	1 456 19                        # parallel-rne.mlir:456:19
	max.u r2, r2, r10
	setlt.u r2, r3, r2
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	and r10, r12, r16
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	and r12, r22, r18
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.s r18, r21, r11
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	or r10, r10, r12
	lui r12, 523264
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	or r2, r2, r10
	lui r10, 523264
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r2, zero, .LBB0_263
# %bb.262:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r18)
.LBB0_263:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r2, 4(r13)
	loads.w r16, 4(r17)
	and r2, r2, r26
	and r16, r16, r26
	seteq r22, r2, r3
	seteq r23, r16, zero
	seteq r8, r2, zero
	seteq r27, r16, r3
	max.u r2, r2, r16
	setlt.u r2, r3, r2
	and r9, r22, r23
	and r8, r8, r27
	lui r23, 523264
	or r8, r9, r8
	or r2, r2, r8
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r2, zero, .LBB0_265
# %bb.264:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r18)
.LBB0_265:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	or r8, r8, r9
	or r8, r2, r8
	lui r2, 523264
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r8, zero, .LBB0_267
# %bb.266:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r18)
.LBB0_267:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	loads.w r8, 12(r13)
	loads.w r9, 12(r17)
	lui r27, 524288
	and r8, r8, r26
	and r9, r9, r26
	seteq r13, r8, r3
	seteq r22, r8, zero
	seteq r16, r9, zero
	seteq r17, r9, r3
	max.u r8, r8, r9
	setlt.u r8, r3, r8
	and r9, r13, r16
	and r13, r22, r17
	or r9, r9, r13
	or r8, r8, r9
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	bneq r8, zero, .LBB0_260
# %bb.268:                              # %vector.body598
                                        #   in Loop: Header=BB0_261 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r18)
	j .LBB0_260
.LBB0_269:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 429 7 is_stmt 1               # parallel-rne.mlir:429:7
	mfence { sm }
.LBB0_270:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	addli r2, zero, 255
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r5
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	csr_set csr5, r2
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	addli r2, zero, 3
	.loc	1 465 7                         # parallel-rne.mlir:465:7
	sync_core
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	bneq r5, r2, .LBB0_272
# %bb.271:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	addli r8, zero, 4
	xsignal r2, 0
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r2, zero, 28
	xsignal r2, 0
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r2, zero, 30
	xsignal r2, 0
	.loc	1 471 13                        # parallel-rne.mlir:471:13
	loadli.w r2,  -60(r30)
	mod.s r4, r2, r8
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	loadli.w r2,  -828(r30)                 # 4-byte Folded Reload
	slli r4, r4, 15
	add.s r24, r4, r2
	.loc	1 475 7                         # parallel-rne.mlir:475:7
	addli r2, zero, 31
	xwait r2, 0
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	addli r2, zero, 35
	xwait r2, 0
	j .LBB0_274
.LBB0_272:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 471 13                        # parallel-rne.mlir:471:13
	loadli.w r2,  -60(r30)
	addli r8, zero, 4
	loadli.w r9,  -828(r30)                 # 4-byte Folded Reload
	mod.s r4, r2, r8
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	addli r2, zero, 5
	.loc	1 471 13                        # parallel-rne.mlir:471:13
	slli r4, r4, 15
	add.s r24, r4, r9
	.loc	1 472 7                         # parallel-rne.mlir:472:7
	bneq r5, r2, .LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	lui r5, 260096
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r4,  -844(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r5, r4, zero, 0
	addli r5, zero, 2047
	ew_cfg zero, r5, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, r8, 19
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	dsmadd r24, r4, r25, 0
	addli r4, zero, 13
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r4, 0
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r4,  -848(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r4, zero, zero, 0
	ew_cfg zero, r5, zero, 2
	ew_cfg r8, zero, zero, 3
	ew_cfg r8, r8, zero, 19
	hp_ssmul r24, r24, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	addli r2, zero, 31
	xsignal r2, 0
.LBB0_274:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -756(r30)                 # 4-byte Folded Reload
	.loc	1 478 7 is_stmt 1               # parallel-rne.mlir:478:7
	xfence
	loadli.w r4,  -824(r30)                 # 4-byte Folded Reload
	.loc	1 479 7                         # parallel-rne.mlir:479:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r8
	slli r2, r2, 15
	add.s r21, r2, r4
	.loc	1 480 7                         # parallel-rne.mlir:480:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r21, r24
	storeli.w r2, -728(r30)                 # 4-byte Folded Spill
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r2
	.loc	1 480 7                         # parallel-rne.mlir:480:7
	sync_core
	.loc	1 481 7                         # parallel-rne.mlir:481:7
	beq r2, zero, .LBB0_276
# %bb.275:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_282
	j .LBB0_288
.LBB0_276:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 481 7 is_stmt 1               # parallel-rne.mlir:481:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	setlt.u r4, r4, r2
	j .LBB0_278
.LBB0_277:                              # %middle.block589
                                        #   in Loop: Header=BB0_278 Depth=2
	.loc	1 489 9                         # parallel-rne.mlir:489:9
	load.d r[10:11], -720(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_281
.LBB0_278:                              # %.preheader122
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_280 Depth 3
                                        #       Child Loop BB0_279 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r2
	.loc	1 490 11 is_stmt 1              # parallel-rne.mlir:490:11
	beq r4, zero, .LBB0_280
.LBB0_279:                              # %scalar.ph582
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	add.ul r[16:17], r[12:13], r[10:11]
	slli r2, r16, 2
	.loc	1 490 11                        # parallel-rne.mlir:490:11
	setlt.ul r16, r[12:13], r[6:7]
	addli.d r[12:13], r[12:13], 1
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	add.s r5, r24, r2
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	add.s r2, r21, r2
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	loads.w r5, 0(r5)
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	stores.w r5, 0(r2)
	.loc	1 490 11                        # parallel-rne.mlir:490:11
	bneq r16, zero, .LBB0_279
	j .LBB0_277
.LBB0_280:                              # %vector.body584
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_278 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	add.ul r[16:17], r[12:13], r[10:11]
	.loc	1 490 11                        # parallel-rne.mlir:490:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	slli r5, r16, 2
	.loc	1 490 11                        # parallel-rne.mlir:490:11
	seteq.d r16, r[12:13], r[14:15]
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	add.s r17, r24, r5
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	add.s r5, r21, r5
	.loc	1 491 19                        # parallel-rne.mlir:491:19
	loads.w r18, 12(r17)
	loads.w r19, 8(r17)
	loads.w r20, 4(r17)
	loads.w r22, 0(r17)
	loads.w r23, 28(r17)
	loads.w r27, 24(r17)
	loads.w r2, 20(r17)
	loads.w r17, 16(r17)
	.loc	1 493 13                        # parallel-rne.mlir:493:13
	stores.w r18, 12(r5)
	stores.w r19, 8(r5)
	stores.w r20, 4(r5)
	stores.w r22, 0(r5)
	stores.w r23, 28(r5)
	stores.w r27, 24(r5)
	stores.w r2, 20(r5)
	stores.w r17, 16(r5)
	.loc	1 490 11                        # parallel-rne.mlir:490:11
	beq r16, zero, .LBB0_280
	j .LBB0_277
.LBB0_281:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r2
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 481 7                         # parallel-rne.mlir:481:7
	mfence { sm }
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	addli r4, zero, 1
	bneq r2, r4, .LBB0_288
.LBB0_282:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 498 7                         # parallel-rne.mlir:498:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r4, r4, r2
	addli r2, zero, 8
	zext_int2long r[8:9], r2
	j .LBB0_284
.LBB0_283:                              # %middle.block579
                                        #   in Loop: Header=BB0_284 Depth=2
	.loc	1 506 9 is_stmt 1               # parallel-rne.mlir:506:9
	load.d r[10:11], -664(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_287
.LBB0_284:                              # %.preheader121
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_286 Depth 3
                                        #       Child Loop BB0_285 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r2
	.loc	1 507 11 is_stmt 1              # parallel-rne.mlir:507:11
	beq r4, zero, .LBB0_286
.LBB0_285:                              # %scalar.ph572
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_284 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	add.ul r[16:17], r[12:13], r[10:11]
	slli r2, r16, 2
	.loc	1 507 11                        # parallel-rne.mlir:507:11
	setlt.ul r16, r[12:13], r[6:7]
	addli.d r[12:13], r[12:13], 1
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	add.s r5, r24, r2
	.loc	1 510 13                        # parallel-rne.mlir:510:13
	add.s r2, r21, r2
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	loads.w r5, 0(r5)
	.loc	1 510 13                        # parallel-rne.mlir:510:13
	stores.w r5, 0(r2)
	.loc	1 507 11                        # parallel-rne.mlir:507:11
	bneq r16, zero, .LBB0_285
	j .LBB0_283
.LBB0_286:                              # %vector.body574
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_284 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	add.ul r[16:17], r[12:13], r[10:11]
	.loc	1 507 11                        # parallel-rne.mlir:507:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	slli r2, r16, 2
	.loc	1 507 11                        # parallel-rne.mlir:507:11
	seteq.d r5, r[12:13], r[14:15]
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	add.s r16, r24, r2
	.loc	1 510 13                        # parallel-rne.mlir:510:13
	add.s r2, r21, r2
	.loc	1 508 19                        # parallel-rne.mlir:508:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r22, 28(r16)
	loads.w r23, 24(r16)
	loads.w r27, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 510 13                        # parallel-rne.mlir:510:13
	stores.w r17, 12(r2)
	stores.w r18, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	stores.w r22, 28(r2)
	stores.w r23, 24(r2)
	stores.w r27, 20(r2)
	stores.w r16, 16(r2)
	.loc	1 507 11                        # parallel-rne.mlir:507:11
	beq r5, zero, .LBB0_286
	j .LBB0_283
.LBB0_287:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 498 7 is_stmt 1               # parallel-rne.mlir:498:7
	mfence { sm }
.LBB0_288:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 515 7                         # parallel-rne.mlir:515:7
	core_id r2
	addli r4, zero, 2
	bneq r2, r4, .LBB0_295
# %bb.289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 515 7                         # parallel-rne.mlir:515:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r4, r4, r2
	addli r2, zero, 16
	zext_int2long r[8:9], r2
	j .LBB0_291
.LBB0_290:                              # %middle.block569
                                        #   in Loop: Header=BB0_291 Depth=2
	.loc	1 523 9 is_stmt 1               # parallel-rne.mlir:523:9
	load.d r[10:11], -672(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_294
.LBB0_291:                              # %.preheader120
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_293 Depth 3
                                        #       Child Loop BB0_292 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r2
	.loc	1 524 11 is_stmt 1              # parallel-rne.mlir:524:11
	beq r4, zero, .LBB0_293
.LBB0_292:                              # %scalar.ph562
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	add.ul r[16:17], r[12:13], r[10:11]
	slli r2, r16, 2
	.loc	1 524 11                        # parallel-rne.mlir:524:11
	setlt.ul r16, r[12:13], r[6:7]
	addli.d r[12:13], r[12:13], 1
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	add.s r5, r24, r2
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	add.s r2, r21, r2
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	loads.w r5, 0(r5)
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	stores.w r5, 0(r2)
	.loc	1 524 11                        # parallel-rne.mlir:524:11
	bneq r16, zero, .LBB0_292
	j .LBB0_290
.LBB0_293:                              # %vector.body564
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_291 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	add.ul r[16:17], r[12:13], r[10:11]
	.loc	1 524 11                        # parallel-rne.mlir:524:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	slli r2, r16, 2
	.loc	1 524 11                        # parallel-rne.mlir:524:11
	seteq.d r5, r[12:13], r[14:15]
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	add.s r16, r24, r2
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	add.s r2, r21, r2
	.loc	1 525 19                        # parallel-rne.mlir:525:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r22, 28(r16)
	loads.w r23, 24(r16)
	loads.w r27, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 527 13                        # parallel-rne.mlir:527:13
	stores.w r17, 12(r2)
	stores.w r18, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	stores.w r22, 28(r2)
	stores.w r23, 24(r2)
	stores.w r27, 20(r2)
	stores.w r16, 16(r2)
	.loc	1 524 11                        # parallel-rne.mlir:524:11
	beq r5, zero, .LBB0_293
	j .LBB0_290
.LBB0_294:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 515 7 is_stmt 1               # parallel-rne.mlir:515:7
	mfence { sm }
.LBB0_295:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	core_id r2
	addli r4, zero, 3
	bneq r2, r4, .LBB0_302
# %bb.296:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 532 7                         # parallel-rne.mlir:532:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r4, r4, r2
	addli r2, zero, 24
	zext_int2long r[8:9], r2
	j .LBB0_298
.LBB0_297:                              # %middle.block559
                                        #   in Loop: Header=BB0_298 Depth=2
	.loc	1 540 9 is_stmt 1               # parallel-rne.mlir:540:9
	load.d r[10:11], -680(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_301
.LBB0_298:                              # %.preheader119
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_299 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r2
	.loc	1 541 11 is_stmt 1              # parallel-rne.mlir:541:11
	beq r4, zero, .LBB0_300
.LBB0_299:                              # %scalar.ph552
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_298 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	add.ul r[16:17], r[12:13], r[10:11]
	slli r2, r16, 2
	.loc	1 541 11                        # parallel-rne.mlir:541:11
	setlt.ul r16, r[12:13], r[6:7]
	addli.d r[12:13], r[12:13], 1
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	add.s r5, r24, r2
	.loc	1 544 13                        # parallel-rne.mlir:544:13
	add.s r2, r21, r2
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	loads.w r5, 0(r5)
	.loc	1 544 13                        # parallel-rne.mlir:544:13
	stores.w r5, 0(r2)
	.loc	1 541 11                        # parallel-rne.mlir:541:11
	bneq r16, zero, .LBB0_299
	j .LBB0_297
.LBB0_300:                              # %vector.body554
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_298 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	add.ul r[16:17], r[12:13], r[10:11]
	.loc	1 541 11                        # parallel-rne.mlir:541:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	slli r2, r16, 2
	.loc	1 541 11                        # parallel-rne.mlir:541:11
	seteq.d r5, r[12:13], r[14:15]
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	add.s r16, r24, r2
	.loc	1 544 13                        # parallel-rne.mlir:544:13
	add.s r2, r21, r2
	.loc	1 542 19                        # parallel-rne.mlir:542:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r22, 28(r16)
	loads.w r23, 24(r16)
	loads.w r27, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 544 13                        # parallel-rne.mlir:544:13
	stores.w r17, 12(r2)
	stores.w r18, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	stores.w r22, 28(r2)
	stores.w r23, 24(r2)
	stores.w r27, 20(r2)
	stores.w r16, 16(r2)
	.loc	1 541 11                        # parallel-rne.mlir:541:11
	beq r5, zero, .LBB0_300
	j .LBB0_297
.LBB0_301:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 532 7 is_stmt 1               # parallel-rne.mlir:532:7
	mfence { sm }
.LBB0_302:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 549 7                         # parallel-rne.mlir:549:7
	core_id r2
	addli r4, zero, 4
	bneq r2, r4, .LBB0_309
# %bb.303:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 549 7                         # parallel-rne.mlir:549:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	setlt.u r4, r4, r2
	j .LBB0_305
.LBB0_304:                              # %middle.block549
                                        #   in Loop: Header=BB0_305 Depth=2
	.loc	1 557 9 is_stmt 1               # parallel-rne.mlir:557:9
	load.d r[10:11], -688(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_308
.LBB0_305:                              # %.preheader118
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_306 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r2
	.loc	1 558 11 is_stmt 1              # parallel-rne.mlir:558:11
	beq r4, zero, .LBB0_307
.LBB0_306:                              # %scalar.ph542
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	add.ul r[16:17], r[12:13], r[10:11]
	slli r2, r16, 2
	.loc	1 558 11                        # parallel-rne.mlir:558:11
	setlt.ul r16, r[12:13], r[6:7]
	addli.d r[12:13], r[12:13], 1
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	add.s r5, r24, r2
	.loc	1 561 13                        # parallel-rne.mlir:561:13
	add.s r2, r21, r2
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	loads.w r5, 0(r5)
	.loc	1 561 13                        # parallel-rne.mlir:561:13
	stores.w r5, 0(r2)
	.loc	1 558 11                        # parallel-rne.mlir:558:11
	bneq r16, zero, .LBB0_306
	j .LBB0_304
.LBB0_307:                              # %vector.body544
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_305 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	add.ul r[16:17], r[12:13], r[10:11]
	.loc	1 558 11                        # parallel-rne.mlir:558:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	slli r2, r16, 2
	.loc	1 558 11                        # parallel-rne.mlir:558:11
	seteq.d r5, r[12:13], r[14:15]
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	add.s r16, r24, r2
	.loc	1 561 13                        # parallel-rne.mlir:561:13
	add.s r2, r21, r2
	.loc	1 559 19                        # parallel-rne.mlir:559:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r22, 28(r16)
	loads.w r23, 24(r16)
	loads.w r27, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 561 13                        # parallel-rne.mlir:561:13
	stores.w r17, 12(r2)
	stores.w r18, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	stores.w r22, 28(r2)
	stores.w r23, 24(r2)
	stores.w r27, 20(r2)
	stores.w r16, 16(r2)
	.loc	1 558 11                        # parallel-rne.mlir:558:11
	beq r5, zero, .LBB0_307
	j .LBB0_304
.LBB0_308:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 549 7 is_stmt 1               # parallel-rne.mlir:549:7
	mfence { sm }
.LBB0_309:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 566 7                         # parallel-rne.mlir:566:7
	core_id r2
	addli r4, zero, 5
	bneq r2, r4, .LBB0_316
# %bb.310:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 566 7                         # parallel-rne.mlir:566:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r4, r4, r2
	addli r2, zero, 40
	zext_int2long r[8:9], r2
	j .LBB0_312
.LBB0_311:                              # %middle.block539
                                        #   in Loop: Header=BB0_312 Depth=2
	.loc	1 574 9 is_stmt 1               # parallel-rne.mlir:574:9
	load.d r[10:11], -696(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_315
.LBB0_312:                              # %.preheader117
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_314 Depth 3
                                        #       Child Loop BB0_313 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r2
	.loc	1 575 11 is_stmt 1              # parallel-rne.mlir:575:11
	beq r4, zero, .LBB0_314
.LBB0_313:                              # %scalar.ph532
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_312 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	add.ul r[16:17], r[12:13], r[10:11]
	slli r2, r16, 2
	.loc	1 575 11                        # parallel-rne.mlir:575:11
	setlt.ul r16, r[12:13], r[6:7]
	addli.d r[12:13], r[12:13], 1
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	add.s r5, r24, r2
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	add.s r2, r21, r2
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	loads.w r5, 0(r5)
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	stores.w r5, 0(r2)
	.loc	1 575 11                        # parallel-rne.mlir:575:11
	bneq r16, zero, .LBB0_313
	j .LBB0_311
.LBB0_314:                              # %vector.body534
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_312 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	add.ul r[16:17], r[12:13], r[10:11]
	.loc	1 575 11                        # parallel-rne.mlir:575:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	slli r2, r16, 2
	.loc	1 575 11                        # parallel-rne.mlir:575:11
	seteq.d r5, r[12:13], r[14:15]
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	add.s r16, r24, r2
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	add.s r2, r21, r2
	.loc	1 576 19                        # parallel-rne.mlir:576:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r22, 28(r16)
	loads.w r23, 24(r16)
	loads.w r27, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 578 13                        # parallel-rne.mlir:578:13
	stores.w r17, 12(r2)
	stores.w r18, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	stores.w r22, 28(r2)
	stores.w r23, 24(r2)
	stores.w r27, 20(r2)
	stores.w r16, 16(r2)
	.loc	1 575 11                        # parallel-rne.mlir:575:11
	beq r5, zero, .LBB0_314
	j .LBB0_311
.LBB0_315:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 566 7 is_stmt 1               # parallel-rne.mlir:566:7
	mfence { sm }
.LBB0_316:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 583 7                         # parallel-rne.mlir:583:7
	core_id r2
	addli r4, zero, 6
	bneq r2, r4, .LBB0_323
# %bb.317:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 583 7                         # parallel-rne.mlir:583:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r4, r4, r2
	addli r2, zero, 48
	zext_int2long r[8:9], r2
	j .LBB0_319
.LBB0_318:                              # %middle.block529
                                        #   in Loop: Header=BB0_319 Depth=2
	.loc	1 591 9 is_stmt 1               # parallel-rne.mlir:591:9
	load.d r[10:11], -704(r30)              # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[10:11]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_322
.LBB0_319:                              # %.preheader116
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_321 Depth 3
                                        #       Child Loop BB0_320 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[12:13], zero
	sll.d r[10:11], r[8:9], r2
	.loc	1 592 11 is_stmt 1              # parallel-rne.mlir:592:11
	beq r4, zero, .LBB0_321
.LBB0_320:                              # %scalar.ph522
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.ul r[16:17], r[12:13], r[10:11]
	slli r2, r16, 2
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	setlt.ul r16, r[12:13], r[6:7]
	addli.d r[12:13], r[12:13], 1
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.s r5, r24, r2
	.loc	1 595 13                        # parallel-rne.mlir:595:13
	add.s r2, r21, r2
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	loads.w r5, 0(r5)
	.loc	1 595 13                        # parallel-rne.mlir:595:13
	stores.w r5, 0(r2)
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	bneq r16, zero, .LBB0_320
	j .LBB0_318
.LBB0_321:                              # %vector.body524
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_319 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.ul r[16:17], r[12:13], r[10:11]
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	addli.d r[12:13], r[12:13], 8
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	slli r2, r16, 2
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	seteq.d r5, r[12:13], r[14:15]
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	add.s r16, r24, r2
	.loc	1 595 13                        # parallel-rne.mlir:595:13
	add.s r2, r21, r2
	.loc	1 593 19                        # parallel-rne.mlir:593:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r22, 28(r16)
	loads.w r23, 24(r16)
	loads.w r27, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 595 13                        # parallel-rne.mlir:595:13
	stores.w r17, 12(r2)
	stores.w r18, 8(r2)
	stores.w r19, 4(r2)
	stores.w r20, 0(r2)
	stores.w r22, 28(r2)
	stores.w r23, 24(r2)
	stores.w r27, 20(r2)
	stores.w r16, 16(r2)
	.loc	1 592 11                        # parallel-rne.mlir:592:11
	beq r5, zero, .LBB0_321
	j .LBB0_318
.LBB0_322:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 583 7 is_stmt 1               # parallel-rne.mlir:583:7
	mfence { sm }
.LBB0_323:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 600 7                         # parallel-rne.mlir:600:7
	core_id r2
	addli r4, zero, 7
	bneq r2, r4, .LBB0_330
# %bb.324:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r4,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 600 7                         # parallel-rne.mlir:600:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r4, r2
	addli r4, zero, 56
	zext_int2long r[4:5], r4
	j .LBB0_326
.LBB0_325:                              # %middle.block519
                                        #   in Loop: Header=BB0_326 Depth=2
	.loc	1 608 9 is_stmt 1               # parallel-rne.mlir:608:9
	load.d r[8:9], -712(r30)                # 8-byte Folded Reload
	setlt.ul r8, r[4:5], r[8:9]
	addli.d r[4:5], r[4:5], 1
	beq r8, zero, .LBB0_329
.LBB0_326:                              # %.preheader115
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_328 Depth 3
                                        #       Child Loop BB0_327 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 7
	zext_int2long r[10:11], zero
	sll.d r[8:9], r[4:5], r8
	.loc	1 609 11 is_stmt 1              # parallel-rne.mlir:609:11
	beq r2, zero, .LBB0_328
.LBB0_327:                              # %scalar.ph512
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_326 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	add.ul r[12:13], r[10:11], r[8:9]
	.loc	1 609 11                        # parallel-rne.mlir:609:11
	setlt.ul r16, r[10:11], r[6:7]
	addli.d r[10:11], r[10:11], 1
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	slli r12, r12, 2
	add.s r13, r24, r12
	.loc	1 612 13                        # parallel-rne.mlir:612:13
	add.s r12, r21, r12
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	loads.w r13, 0(r13)
	.loc	1 612 13                        # parallel-rne.mlir:612:13
	stores.w r13, 0(r12)
	.loc	1 609 11                        # parallel-rne.mlir:609:11
	bneq r16, zero, .LBB0_327
	j .LBB0_325
.LBB0_328:                              # %vector.body514
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_326 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	add.ul r[12:13], r[10:11], r[8:9]
	.loc	1 609 11                        # parallel-rne.mlir:609:11
	addli.d r[10:11], r[10:11], 8
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	slli r12, r12, 2
	.loc	1 609 11                        # parallel-rne.mlir:609:11
	seteq.d r13, r[10:11], r[14:15]
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	add.s r16, r24, r12
	.loc	1 612 13                        # parallel-rne.mlir:612:13
	add.s r12, r21, r12
	.loc	1 610 19                        # parallel-rne.mlir:610:19
	loads.w r17, 12(r16)
	loads.w r18, 8(r16)
	loads.w r19, 4(r16)
	loads.w r20, 0(r16)
	loads.w r22, 28(r16)
	loads.w r23, 24(r16)
	loads.w r27, 20(r16)
	loads.w r16, 16(r16)
	.loc	1 612 13                        # parallel-rne.mlir:612:13
	stores.w r17, 12(r12)
	stores.w r18, 8(r12)
	stores.w r19, 4(r12)
	stores.w r20, 0(r12)
	stores.w r22, 28(r12)
	stores.w r23, 24(r12)
	stores.w r27, 20(r12)
	stores.w r16, 16(r12)
	.loc	1 609 11                        # parallel-rne.mlir:609:11
	beq r13, zero, .LBB0_328
	j .LBB0_325
.LBB0_329:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	addli r12, zero, 128
	lui r27, 524288
	.loc	1 600 7 is_stmt 1               # parallel-rne.mlir:600:7
	mfence { sm }
.LBB0_330:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	addli r2, zero, 255
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r4, zero, 3
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	csr_set csr5, r2
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r2
	.loc	1 617 7                         # parallel-rne.mlir:617:7
	sync_core
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	bneq r2, r4, .LBB0_332
# %bb.331:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 32
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	addli r5, zero, 13
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	xsignal r4, 0
	addli r4, zero, 33
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	xsignal r4, 0
	.loc	1 621 7                         # parallel-rne.mlir:621:7
	xwait r5, 0
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	xwait r4, 0
.LBB0_332:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	addli r4, zero, 255
	.loc	1 624 7                         # parallel-rne.mlir:624:7
	xfence
	addli r5, zero, 4
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	mfence { lm, sm, gm }
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	csr_set csr5, r4
	addli r4, zero, 8
	sync_core
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	beq r2, zero, .LBB0_340
# %bb.333:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	addli r8, zero, 1
	beq r2, r8, .LBB0_361
.LBB0_334:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 671 7                         # parallel-rne.mlir:671:7
	addli r4, zero, 2
	beq r2, r4, .LBB0_382
.LBB0_335:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 693 7                         # parallel-rne.mlir:693:7
	addli r4, zero, 3
	beq r2, r4, .LBB0_403
.LBB0_336:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 715 7                         # parallel-rne.mlir:715:7
	beq r2, r5, .LBB0_424
.LBB0_337:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 737 7                         # parallel-rne.mlir:737:7
	addli r4, zero, 5
	beq r2, r4, .LBB0_445
.LBB0_338:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r4, zero, 6
	beq r2, r4, .LBB0_466
.LBB0_339:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	addli r4, zero, 7
	beq r2, r4, .LBB0_487
	j .LBB0_508
.LBB0_340:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	j .LBB0_342
.LBB0_341:                              # %middle.block509
                                        #   in Loop: Header=BB0_342 Depth=2
	.loc	1 635 9                         # parallel-rne.mlir:635:9
	load.d r[4:5], -720(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[22:23], r[4:5]
	addli.d r[4:5], r[22:23], 1
	beq r2, zero, .LBB0_360
.LBB0_342:                              # %.preheader114
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_344 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	addli.d r[22:23], r[4:5], 0
	sll.d r[19:20], r[4:5], r2
	j .LBB0_344
.LBB0_343:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	.loc	1 644 13 is_stmt 1              # parallel-rne.mlir:644:13
	add.s r16, r25, r17
	.loc	1 636 11                        # parallel-rne.mlir:636:11
	addli.d r[8:9], r[8:9], 8
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	stores.w r5, 12(r16)
	.loc	1 636 11                        # parallel-rne.mlir:636:11
	setneq.d r5, r[8:9], r[14:15]
	.loc	1 644 13                        # parallel-rne.mlir:644:13
	stores.w r4, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r24, 28(r16)
	stores.w r13, 24(r16)
	stores.w r12, 20(r16)
	stores.w r11, 16(r16)
	.loc	1 636 11                        # parallel-rne.mlir:636:11
	beq r5, zero, .LBB0_341
.LBB0_344:                              # %vector.body504
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_342 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 637 19                        # parallel-rne.mlir:637:19
	add.ul r[4:5], r[8:9], r[19:20]
	slli r17, r4, 2
	add.s r11, r21, r17
	loads.w r2, 0(r11)
	loads.w r5, 12(r11)
	loads.w r4, 8(r11)
	loads.w r10, 4(r11)
	loads.w r24, 28(r11)
	loads.w r13, 24(r11)
	loads.w r12, 20(r11)
	loads.w r11, 16(r11)
	.loc	1 640 19                        # parallel-rne.mlir:640:19
	and r16, r2, r26
	.loc	1 641 19                        # parallel-rne.mlir:641:19
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_346:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_348:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_350
# %bb.349:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_350:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_352:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_354
# %bb.353:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_354:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_356
# %bb.355:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
.LBB0_356:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_358:                              # %vector.body504
                                        #   in Loop: Header=BB0_344 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	beq r16, zero, .LBB0_343
# %bb.359:                              #   in Loop: Header=BB0_344 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
	j .LBB0_343
.LBB0_360:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r4, zero, 8
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	mfence { sm }
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	addli r8, zero, 1
	bneq r2, r8, .LBB0_334
.LBB0_361:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[8:9], r4
	mfence { lm, sm, gm }
	j .LBB0_363
.LBB0_362:                              # %middle.block499
                                        #   in Loop: Header=BB0_363 Depth=2
	.loc	1 657 9                         # parallel-rne.mlir:657:9
	load.d r[4:5], -664(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_381
.LBB0_363:                              # %.preheader113
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_365 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_365
.LBB0_364:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	.loc	1 658 11 is_stmt 1              # parallel-rne.mlir:658:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 666 13                        # parallel-rne.mlir:666:13
	add.s r16, r25, r23
	.loc	1 658 11                        # parallel-rne.mlir:658:11
	setneq.d r22, r[19:20], r[14:15]
	.loc	1 666 13                        # parallel-rne.mlir:666:13
	stores.w r24, 12(r16)
	stores.w r13, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r12, 28(r16)
	stores.w r11, 24(r16)
	stores.w r5, 20(r16)
	stores.w r4, 16(r16)
	.loc	1 658 11                        # parallel-rne.mlir:658:11
	beq r22, zero, .LBB0_362
.LBB0_365:                              # %vector.body494
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_363 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 659 19                        # parallel-rne.mlir:659:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r23, r4, 2
	add.s r4, r21, r23
	loads.w r2, 0(r4)
	loads.w r24, 12(r4)
	loads.w r13, 8(r4)
	loads.w r10, 4(r4)
	loads.w r12, 28(r4)
	loads.w r11, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 662 19                        # parallel-rne.mlir:662:19
	and r16, r2, r26
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_367
# %bb.366:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_367:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_369
# %bb.368:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_369:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_371:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_373
# %bb.372:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
.LBB0_373:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_375:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_377
# %bb.376:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_377:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_379:                              # %vector.body494
                                        #   in Loop: Header=BB0_365 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	beq r16, zero, .LBB0_364
# %bb.380:                              #   in Loop: Header=BB0_365 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
	j .LBB0_364
.LBB0_381:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 649 7                         # parallel-rne.mlir:649:7
	mfence { sm }
	.loc	1 671 7                         # parallel-rne.mlir:671:7
	addli r4, zero, 2
	bneq r2, r4, .LBB0_335
.LBB0_382:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 671 7                         # parallel-rne.mlir:671:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_384
.LBB0_383:                              # %middle.block489
                                        #   in Loop: Header=BB0_384 Depth=2
	.loc	1 679 9 is_stmt 1               # parallel-rne.mlir:679:9
	load.d r[4:5], -672(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_402
.LBB0_384:                              # %.preheader112
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_386 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_386
.LBB0_385:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	.loc	1 680 11 is_stmt 1              # parallel-rne.mlir:680:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 688 13                        # parallel-rne.mlir:688:13
	add.s r16, r25, r23
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	setneq.d r22, r[19:20], r[14:15]
	.loc	1 688 13                        # parallel-rne.mlir:688:13
	stores.w r24, 12(r16)
	stores.w r13, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r12, 28(r16)
	stores.w r11, 24(r16)
	stores.w r5, 20(r16)
	stores.w r4, 16(r16)
	.loc	1 680 11                        # parallel-rne.mlir:680:11
	beq r22, zero, .LBB0_383
.LBB0_386:                              # %vector.body484
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_384 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 681 19                        # parallel-rne.mlir:681:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r23, r4, 2
	add.s r4, r21, r23
	loads.w r2, 0(r4)
	loads.w r24, 12(r4)
	loads.w r13, 8(r4)
	loads.w r10, 4(r4)
	loads.w r12, 28(r4)
	loads.w r11, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 684 19                        # parallel-rne.mlir:684:19
	and r16, r2, r26
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_388
# %bb.387:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_388:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_390
# %bb.389:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_390:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_392
# %bb.391:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_392:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_394
# %bb.393:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
.LBB0_394:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_396
# %bb.395:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_396:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_398
# %bb.397:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_398:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_400
# %bb.399:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_400:                              # %vector.body484
                                        #   in Loop: Header=BB0_386 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	beq r16, zero, .LBB0_385
# %bb.401:                              #   in Loop: Header=BB0_386 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
	j .LBB0_385
.LBB0_402:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 671 7                         # parallel-rne.mlir:671:7
	mfence { sm }
	.loc	1 693 7                         # parallel-rne.mlir:693:7
	addli r4, zero, 3
	bneq r2, r4, .LBB0_336
.LBB0_403:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 693 7                         # parallel-rne.mlir:693:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_405
.LBB0_404:                              # %middle.block479
                                        #   in Loop: Header=BB0_405 Depth=2
	.loc	1 701 9 is_stmt 1               # parallel-rne.mlir:701:9
	load.d r[4:5], -680(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_423
.LBB0_405:                              # %.preheader111
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_407 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_407
.LBB0_406:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	.loc	1 702 11 is_stmt 1              # parallel-rne.mlir:702:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 710 13                        # parallel-rne.mlir:710:13
	add.s r16, r25, r23
	.loc	1 702 11                        # parallel-rne.mlir:702:11
	setneq.d r22, r[19:20], r[14:15]
	.loc	1 710 13                        # parallel-rne.mlir:710:13
	stores.w r24, 12(r16)
	stores.w r13, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r12, 28(r16)
	stores.w r11, 24(r16)
	stores.w r5, 20(r16)
	stores.w r4, 16(r16)
	.loc	1 702 11                        # parallel-rne.mlir:702:11
	beq r22, zero, .LBB0_404
.LBB0_407:                              # %vector.body474
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_405 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 703 19                        # parallel-rne.mlir:703:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r23, r4, 2
	add.s r4, r21, r23
	loads.w r2, 0(r4)
	loads.w r24, 12(r4)
	loads.w r13, 8(r4)
	loads.w r10, 4(r4)
	loads.w r12, 28(r4)
	loads.w r11, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 706 19                        # parallel-rne.mlir:706:19
	and r16, r2, r26
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_409:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_411:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_413:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
.LBB0_415:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_417
# %bb.416:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_417:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_419
# %bb.418:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_419:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_421
# %bb.420:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_421:                              # %vector.body474
                                        #   in Loop: Header=BB0_407 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	beq r16, zero, .LBB0_406
# %bb.422:                              #   in Loop: Header=BB0_407 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
	j .LBB0_406
.LBB0_423:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 693 7                         # parallel-rne.mlir:693:7
	mfence { sm }
	.loc	1 715 7                         # parallel-rne.mlir:715:7
	bneq r2, r5, .LBB0_337
.LBB0_424:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 715 7                         # parallel-rne.mlir:715:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_426
.LBB0_425:                              # %middle.block469
                                        #   in Loop: Header=BB0_426 Depth=2
	.loc	1 723 9 is_stmt 1               # parallel-rne.mlir:723:9
	load.d r[4:5], -688(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_444
.LBB0_426:                              # %.preheader110
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_428 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_428
.LBB0_427:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	.loc	1 724 11 is_stmt 1              # parallel-rne.mlir:724:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 732 13                        # parallel-rne.mlir:732:13
	add.s r16, r25, r23
	.loc	1 724 11                        # parallel-rne.mlir:724:11
	setneq.d r22, r[19:20], r[14:15]
	.loc	1 732 13                        # parallel-rne.mlir:732:13
	stores.w r24, 12(r16)
	stores.w r13, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r12, 28(r16)
	stores.w r11, 24(r16)
	stores.w r5, 20(r16)
	stores.w r4, 16(r16)
	.loc	1 724 11                        # parallel-rne.mlir:724:11
	beq r22, zero, .LBB0_425
.LBB0_428:                              # %vector.body464
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_426 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 725 19                        # parallel-rne.mlir:725:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r23, r4, 2
	add.s r4, r21, r23
	loads.w r2, 0(r4)
	loads.w r24, 12(r4)
	loads.w r13, 8(r4)
	loads.w r10, 4(r4)
	loads.w r12, 28(r4)
	loads.w r11, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 728 19                        # parallel-rne.mlir:728:19
	and r16, r2, r26
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_430
# %bb.429:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_430:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_432
# %bb.431:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_432:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_434
# %bb.433:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_434:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_436
# %bb.435:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
.LBB0_436:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_438
# %bb.437:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_438:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_440
# %bb.439:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_440:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_442:                              # %vector.body464
                                        #   in Loop: Header=BB0_428 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	beq r16, zero, .LBB0_427
# %bb.443:                              #   in Loop: Header=BB0_428 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
	j .LBB0_427
.LBB0_444:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 715 7                         # parallel-rne.mlir:715:7
	mfence { sm }
	.loc	1 737 7                         # parallel-rne.mlir:737:7
	addli r4, zero, 5
	bneq r2, r4, .LBB0_338
.LBB0_445:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 737 7                         # parallel-rne.mlir:737:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_447
.LBB0_446:                              # %middle.block459
                                        #   in Loop: Header=BB0_447 Depth=2
	.loc	1 745 9 is_stmt 1               # parallel-rne.mlir:745:9
	load.d r[4:5], -696(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_465
.LBB0_447:                              # %.preheader109
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_449 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_449
.LBB0_448:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	.loc	1 746 11 is_stmt 1              # parallel-rne.mlir:746:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	add.s r16, r25, r23
	.loc	1 746 11                        # parallel-rne.mlir:746:11
	setneq.d r22, r[19:20], r[14:15]
	.loc	1 754 13                        # parallel-rne.mlir:754:13
	stores.w r24, 12(r16)
	stores.w r13, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r12, 28(r16)
	stores.w r11, 24(r16)
	stores.w r5, 20(r16)
	stores.w r4, 16(r16)
	.loc	1 746 11                        # parallel-rne.mlir:746:11
	beq r22, zero, .LBB0_446
.LBB0_449:                              # %vector.body454
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_447 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 747 19                        # parallel-rne.mlir:747:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r23, r4, 2
	add.s r4, r21, r23
	loads.w r2, 0(r4)
	loads.w r24, 12(r4)
	loads.w r13, 8(r4)
	loads.w r10, 4(r4)
	loads.w r12, 28(r4)
	loads.w r11, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 750 19                        # parallel-rne.mlir:750:19
	and r16, r2, r26
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_451:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_453:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_455:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
.LBB0_457:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_459:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_461
# %bb.460:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_461:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_463
# %bb.462:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_463:                              # %vector.body454
                                        #   in Loop: Header=BB0_449 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	beq r16, zero, .LBB0_448
# %bb.464:                              #   in Loop: Header=BB0_449 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
	j .LBB0_448
.LBB0_465:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 737 7                         # parallel-rne.mlir:737:7
	mfence { sm }
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	addli r4, zero, 6
	bneq r2, r4, .LBB0_339
.LBB0_466:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_468
.LBB0_467:                              # %middle.block449
                                        #   in Loop: Header=BB0_468 Depth=2
	.loc	1 767 9 is_stmt 1               # parallel-rne.mlir:767:9
	load.d r[4:5], -704(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_486
.LBB0_468:                              # %.preheader108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_470 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_470
.LBB0_469:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	.loc	1 768 11 is_stmt 1              # parallel-rne.mlir:768:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 776 13                        # parallel-rne.mlir:776:13
	add.s r16, r25, r23
	.loc	1 768 11                        # parallel-rne.mlir:768:11
	setneq.d r22, r[19:20], r[14:15]
	.loc	1 776 13                        # parallel-rne.mlir:776:13
	stores.w r24, 12(r16)
	stores.w r13, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r12, 28(r16)
	stores.w r11, 24(r16)
	stores.w r5, 20(r16)
	stores.w r4, 16(r16)
	.loc	1 768 11                        # parallel-rne.mlir:768:11
	beq r22, zero, .LBB0_467
.LBB0_470:                              # %vector.body444
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_468 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 769 19                        # parallel-rne.mlir:769:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r23, r4, 2
	add.s r4, r21, r23
	loads.w r2, 0(r4)
	loads.w r24, 12(r4)
	loads.w r13, 8(r4)
	loads.w r10, 4(r4)
	loads.w r12, 28(r4)
	loads.w r11, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 772 19                        # parallel-rne.mlir:772:19
	and r16, r2, r26
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_472
# %bb.471:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_472:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_474
# %bb.473:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_474:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_476
# %bb.475:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_476:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_478
# %bb.477:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
.LBB0_478:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_480
# %bb.479:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_480:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_482
# %bb.481:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_482:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_484
# %bb.483:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_484:                              # %vector.body444
                                        #   in Loop: Header=BB0_470 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	beq r16, zero, .LBB0_469
# %bb.485:                              #   in Loop: Header=BB0_470 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
	j .LBB0_469
.LBB0_486:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 759 7                         # parallel-rne.mlir:759:7
	mfence { sm }
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	addli r4, zero, 7
	bneq r2, r4, .LBB0_508
.LBB0_487:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_489
.LBB0_488:                              # %middle.block439
                                        #   in Loop: Header=BB0_489 Depth=2
	.loc	1 789 9 is_stmt 1               # parallel-rne.mlir:789:9
	load.d r[4:5], -712(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_507
.LBB0_489:                              # %.preheader107
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_491 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[19:20], zero
	sll.d r[17:18], r[8:9], r2
	j .LBB0_491
.LBB0_490:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	.loc	1 790 11 is_stmt 1              # parallel-rne.mlir:790:11
	addli.d r[19:20], r[19:20], 8
	.loc	1 798 13                        # parallel-rne.mlir:798:13
	add.s r16, r25, r23
	.loc	1 790 11                        # parallel-rne.mlir:790:11
	setneq.d r22, r[19:20], r[14:15]
	.loc	1 798 13                        # parallel-rne.mlir:798:13
	stores.w r24, 12(r16)
	stores.w r13, 8(r16)
	stores.w r10, 4(r16)
	stores.w r2, 0(r16)
	stores.w r12, 28(r16)
	stores.w r11, 24(r16)
	stores.w r5, 20(r16)
	stores.w r4, 16(r16)
	.loc	1 790 11                        # parallel-rne.mlir:790:11
	beq r22, zero, .LBB0_488
.LBB0_491:                              # %vector.body434
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_489 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 791 19                        # parallel-rne.mlir:791:19
	add.ul r[4:5], r[19:20], r[17:18]
	slli r23, r4, 2
	add.s r4, r21, r23
	loads.w r2, 0(r4)
	loads.w r24, 12(r4)
	loads.w r13, 8(r4)
	loads.w r10, 4(r4)
	loads.w r12, 28(r4)
	loads.w r11, 24(r4)
	loads.w r5, 20(r4)
	loads.w r4, 16(r4)
	.loc	1 794 19                        # parallel-rne.mlir:794:19
	and r16, r2, r26
	.loc	1 795 19                        # parallel-rne.mlir:795:19
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_493
# %bb.492:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	and r2, r2, r27
	or r2, r2, r28
.LBB0_493:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	and r16, r10, r26
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_495
# %bb.494:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r10, r10, r27
	or r10, r10, r28
.LBB0_495:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	and r16, r13, r26
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_497
# %bb.496:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r13, r13, r27
	or r13, r13, r28
.LBB0_497:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	and r16, r24, r26
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_499
# %bb.498:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r16, r24, r27
	or r24, r16, r28
.LBB0_499:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	and r16, r4, r26
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_501
# %bb.500:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r4, r4, r27
	or r4, r4, r28
.LBB0_501:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	and r16, r5, r26
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_503
# %bb.502:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r5, r5, r27
	or r5, r5, r28
.LBB0_503:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	and r16, r11, r26
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_505
# %bb.504:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r11, r11, r27
	or r11, r11, r28
.LBB0_505:                              # %vector.body434
                                        #   in Loop: Header=BB0_491 Depth=3
	and r16, r12, r26
	setlt.u r16, r28, r16
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	beq r16, zero, .LBB0_490
# %bb.506:                              #   in Loop: Header=BB0_491 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	and r12, r12, r27
	or r12, r12, r28
	j .LBB0_490
.LBB0_507:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r5, zero, 4
	addli r12, zero, 128
	.loc	1 781 7                         # parallel-rne.mlir:781:7
	mfence { sm }
.LBB0_508:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 803 7                         # parallel-rne.mlir:803:7
	addli r4, zero, 255
	csr_set csr5, r4
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	addli r4, zero, 3
	.loc	1 803 7                         # parallel-rne.mlir:803:7
	sync_core
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	bneq r2, r4, .LBB0_510
# %bb.509:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r8, zero, 34
	xsignal r2, 0
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	xsignal r8, 0
	.loc	1 808 13                        # parallel-rne.mlir:808:13
	loadli.w r2,  -40(r30)
	addli r4, r2, 1
	storeli.w r4, -40(r30)
	.loc	1 810 7                         # parallel-rne.mlir:810:7
	addli r4, zero, 15
	xwait r4, 0
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	addli r4, zero, 38
	.loc	1 811 7                         # parallel-rne.mlir:811:7
	xwait r8, 0
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	xwait r4, 0
	j .LBB0_513
.LBB0_510:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	addli r4, zero, 5
	bneq r2, r4, .LBB0_512
# %bb.511:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r4, zero, 2
	xwait r2, 0
	lock zero, r4
	addli r2, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 3
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	ew_cfg r2, zero, zero, 10
	addli r2, zero, 1
	loadli.w r8,  -840(r30)                 # 4-byte Folded Reload
	ew_cfg r4, r2, r8, 11
	lui r2, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r5, r2, 14
	addli r2, zero, 15
	ew_cfg zero, zero, zero, 15
	sslut r25, r25, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
.LBB0_512:                              # %.thread86
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 808 13                        # parallel-rne.mlir:808:13
	loadli.w r2,  -40(r30)
	addli r4, r2, 1
	storeli.w r4, -40(r30)
.LBB0_513:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	mod.s r2, r2, r5
	.loc	1 814 7                         # parallel-rne.mlir:814:7
	xfence
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	mfence { lm, sm, gm }
	.loc	1 808 13                        # parallel-rne.mlir:808:13
	loadli.w r4,  -832(r30)                 # 4-byte Folded Reload
	slli r2, r2, 15
	add.s r24, r2, r4
	.loc	1 816 7                         # parallel-rne.mlir:816:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r2
	.loc	1 816 7                         # parallel-rne.mlir:816:7
	sync_core
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	bneq r2, zero, .LBB0_550
# %bb.514:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_516
.LBB0_515:                              # %middle.block429
                                        #   in Loop: Header=BB0_516 Depth=2
	.loc	1 825 9                         # parallel-rne.mlir:825:9
	load.d r[4:5], -720(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_549
.LBB0_516:                              # %.preheader106
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_526 Depth 3
                                        #       Child Loop BB0_519 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 826 11 is_stmt 1              # parallel-rne.mlir:826:11
	bneq r24, r21, .LBB0_523
# %bb.517:                              # %scalar.ph420.preheader
                                        #   in Loop: Header=BB0_516 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_519
.LBB0_518:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 826 11                        # parallel-rne.mlir:826:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 838 13 is_stmt 1              # parallel-rne.mlir:838:13
	add.s r2, r24, r2
	.loc	1 826 11                        # parallel-rne.mlir:826:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 838 13                        # parallel-rne.mlir:838:13
	stores.w r10, 0(r2)
	.loc	1 826 11                        # parallel-rne.mlir:826:11
	beq r11, zero, .LBB0_515
.LBB0_519:                              # %scalar.ph420
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	and r10, r12, r1
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r10, zero, .LBB0_521
# %bb.520:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	beq r12, r3, .LBB0_518
	j .LBB0_522
.LBB0_521:                              #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	beq r12, r3, .LBB0_518
.LBB0_522:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_519 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_518
.LBB0_523:                              # %vector.body422.preheader
                                        #   in Loop: Header=BB0_516 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_526
.LBB0_524:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r4, 28(r5)
.LBB0_525:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 826 11 is_stmt 1              # parallel-rne.mlir:826:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 838 13                        # parallel-rne.mlir:838:13
	add.s r2, r24, r2
	.loc	1 826 11                        # parallel-rne.mlir:826:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 838 13                        # parallel-rne.mlir:838:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 826 11                        # parallel-rne.mlir:826:11
	bneq r5, zero, .LBB0_515
.LBB0_526:                              # %vector.body422
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 827 19                        # parallel-rne.mlir:827:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 831 19                        # parallel-rne.mlir:831:19
	and r5, r10, r3
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	and r11, r10, r1
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	seteq r5, r5, r3
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	setneq r11, r11, zero
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	and r11, r5, r11
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.s r5, r25, r2
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r11, zero, .LBB0_528
# %bb.527:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_529
.LBB0_528:                              #   in Loop: Header=BB0_526 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_529:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r11, zero, .LBB0_531
# %bb.530:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_526 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_532:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r12, zero, .LBB0_534
# %bb.533:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_526 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_535:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r16, zero, .LBB0_537
# %bb.536:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_538
.LBB0_537:                              #   in Loop: Header=BB0_526 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_538:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r16, zero, .LBB0_540
# %bb.539:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_526 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_541:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r16, zero, .LBB0_543
# %bb.542:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_544
.LBB0_543:                              #   in Loop: Header=BB0_526 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_544:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	bneq r16, zero, .LBB0_546
# %bb.545:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_547
.LBB0_546:                              #   in Loop: Header=BB0_526 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_547:                              # %vector.body422
                                        #   in Loop: Header=BB0_526 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	beq r16, zero, .LBB0_524
# %bb.548:                              #   in Loop: Header=BB0_526 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	j .LBB0_525
.LBB0_549:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r12, zero, 128
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	mfence { sm }
.LBB0_550:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r27
	.loc	1 843 7                         # parallel-rne.mlir:843:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_557
# %bb.551:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	addli r2, zero, 2
	beq r27, r2, .LBB0_593
.LBB0_552:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 895 7                         # parallel-rne.mlir:895:7
	addli r2, zero, 3
	beq r27, r2, .LBB0_629
.LBB0_553:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	addli r2, zero, 4
	beq r27, r2, .LBB0_665
.LBB0_554:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 947 7                         # parallel-rne.mlir:947:7
	addli r2, zero, 5
	beq r27, r2, .LBB0_701
.LBB0_555:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 973 7                         # parallel-rne.mlir:973:7
	addli r2, zero, 6
	beq r27, r2, .LBB0_737
.LBB0_556:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	addli r2, zero, 7
	beq r27, r2, .LBB0_773
	j .LBB0_809
.LBB0_557:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 843 7 is_stmt 1               # parallel-rne.mlir:843:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_559
.LBB0_558:                              # %middle.block415
                                        #   in Loop: Header=BB0_559 Depth=2
	.loc	1 851 9                         # parallel-rne.mlir:851:9
	load.d r[4:5], -664(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_592
.LBB0_559:                              # %.preheader105
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_569 Depth 3
                                        #       Child Loop BB0_562 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 852 11 is_stmt 1              # parallel-rne.mlir:852:11
	bneq r24, r21, .LBB0_566
# %bb.560:                              # %scalar.ph406.preheader
                                        #   in Loop: Header=BB0_559 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_562
.LBB0_561:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 864 13 is_stmt 1              # parallel-rne.mlir:864:13
	add.s r2, r24, r2
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	stores.w r10, 0(r2)
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	beq r11, zero, .LBB0_558
.LBB0_562:                              # %scalar.ph406
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_559 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r10, r12, r1
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r10, zero, .LBB0_564
# %bb.563:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r12, r3, .LBB0_561
	j .LBB0_565
.LBB0_564:                              #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r12, r3, .LBB0_561
.LBB0_565:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_562 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_561
.LBB0_566:                              # %vector.body408.preheader
                                        #   in Loop: Header=BB0_559 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_569
.LBB0_567:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r4, 28(r5)
.LBB0_568:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 852 11 is_stmt 1              # parallel-rne.mlir:852:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	add.s r2, r24, r2
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 864 13                        # parallel-rne.mlir:864:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 852 11                        # parallel-rne.mlir:852:11
	bneq r5, zero, .LBB0_558
.LBB0_569:                              # %vector.body408
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_559 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 853 19                        # parallel-rne.mlir:853:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 857 19                        # parallel-rne.mlir:857:19
	and r5, r10, r3
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	and r11, r10, r1
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	seteq r5, r5, r3
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	setneq r11, r11, zero
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	and r11, r5, r11
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.s r5, r25, r2
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r11, zero, .LBB0_571
# %bb.570:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_569 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_572:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r11, zero, .LBB0_574
# %bb.573:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_569 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_575:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r12, zero, .LBB0_577
# %bb.576:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_569 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_578:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r16, zero, .LBB0_580
# %bb.579:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_581
.LBB0_580:                              #   in Loop: Header=BB0_569 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_581:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r16, zero, .LBB0_583
# %bb.582:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_584
.LBB0_583:                              #   in Loop: Header=BB0_569 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_584:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r16, zero, .LBB0_586
# %bb.585:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_587
.LBB0_586:                              #   in Loop: Header=BB0_569 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_587:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	bneq r16, zero, .LBB0_589
# %bb.588:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_590
.LBB0_589:                              #   in Loop: Header=BB0_569 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_590:                              # %vector.body408
                                        #   in Loop: Header=BB0_569 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	beq r16, zero, .LBB0_567
# %bb.591:                              #   in Loop: Header=BB0_569 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	j .LBB0_568
.LBB0_592:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, zero, 128
	.loc	1 843 7 is_stmt 1               # parallel-rne.mlir:843:7
	mfence { sm }
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	addli r2, zero, 2
	bneq r27, r2, .LBB0_552
.LBB0_593:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 869 7                         # parallel-rne.mlir:869:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_595
.LBB0_594:                              # %middle.block401
                                        #   in Loop: Header=BB0_595 Depth=2
	.loc	1 877 9 is_stmt 1               # parallel-rne.mlir:877:9
	load.d r[4:5], -672(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_628
.LBB0_595:                              # %.preheader104
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_605 Depth 3
                                        #       Child Loop BB0_598 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 878 11 is_stmt 1              # parallel-rne.mlir:878:11
	bneq r24, r21, .LBB0_602
# %bb.596:                              # %scalar.ph392.preheader
                                        #   in Loop: Header=BB0_595 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_598
.LBB0_597:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_598 Depth=3
	.loc	1 878 11                        # parallel-rne.mlir:878:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 890 13 is_stmt 1              # parallel-rne.mlir:890:13
	add.s r2, r24, r2
	.loc	1 878 11                        # parallel-rne.mlir:878:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 890 13                        # parallel-rne.mlir:890:13
	stores.w r10, 0(r2)
	.loc	1 878 11                        # parallel-rne.mlir:878:11
	beq r11, zero, .LBB0_594
.LBB0_598:                              # %scalar.ph392
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_595 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	and r10, r12, r1
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r10, zero, .LBB0_600
# %bb.599:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_598 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	beq r12, r3, .LBB0_597
	j .LBB0_601
.LBB0_600:                              #   in Loop: Header=BB0_598 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	beq r12, r3, .LBB0_597
.LBB0_601:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_598 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_597
.LBB0_602:                              # %vector.body394.preheader
                                        #   in Loop: Header=BB0_595 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_605
.LBB0_603:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r4, 28(r5)
.LBB0_604:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 878 11 is_stmt 1              # parallel-rne.mlir:878:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 890 13                        # parallel-rne.mlir:890:13
	add.s r2, r24, r2
	.loc	1 878 11                        # parallel-rne.mlir:878:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 890 13                        # parallel-rne.mlir:890:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 878 11                        # parallel-rne.mlir:878:11
	bneq r5, zero, .LBB0_594
.LBB0_605:                              # %vector.body394
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_595 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 879 19                        # parallel-rne.mlir:879:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 883 19                        # parallel-rne.mlir:883:19
	and r5, r10, r3
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	and r11, r10, r1
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	seteq r5, r5, r3
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	setneq r11, r11, zero
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	and r11, r5, r11
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	add.s r5, r25, r2
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r11, zero, .LBB0_607
# %bb.606:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_605 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_608:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r11, zero, .LBB0_610
# %bb.609:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_605 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_611:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r12, zero, .LBB0_613
# %bb.612:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_605 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_614:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r16, zero, .LBB0_616
# %bb.615:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_617
.LBB0_616:                              #   in Loop: Header=BB0_605 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_617:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r16, zero, .LBB0_619
# %bb.618:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_620
.LBB0_619:                              #   in Loop: Header=BB0_605 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_620:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r16, zero, .LBB0_622
# %bb.621:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_623
.LBB0_622:                              #   in Loop: Header=BB0_605 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_623:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	bneq r16, zero, .LBB0_625
# %bb.624:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_626
.LBB0_625:                              #   in Loop: Header=BB0_605 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_626:                              # %vector.body394
                                        #   in Loop: Header=BB0_605 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	beq r16, zero, .LBB0_603
# %bb.627:                              #   in Loop: Header=BB0_605 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	j .LBB0_604
.LBB0_628:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, zero, 128
	.loc	1 869 7 is_stmt 1               # parallel-rne.mlir:869:7
	mfence { sm }
	.loc	1 895 7                         # parallel-rne.mlir:895:7
	addli r2, zero, 3
	bneq r27, r2, .LBB0_553
.LBB0_629:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 895 7                         # parallel-rne.mlir:895:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_631
.LBB0_630:                              # %middle.block387
                                        #   in Loop: Header=BB0_631 Depth=2
	.loc	1 903 9 is_stmt 1               # parallel-rne.mlir:903:9
	load.d r[4:5], -680(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_664
.LBB0_631:                              # %.preheader103
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_641 Depth 3
                                        #       Child Loop BB0_634 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 904 11 is_stmt 1              # parallel-rne.mlir:904:11
	bneq r24, r21, .LBB0_638
# %bb.632:                              # %scalar.ph378.preheader
                                        #   in Loop: Header=BB0_631 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_634
.LBB0_633:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 916 13 is_stmt 1              # parallel-rne.mlir:916:13
	add.s r2, r24, r2
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 916 13                        # parallel-rne.mlir:916:13
	stores.w r10, 0(r2)
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	beq r11, zero, .LBB0_630
.LBB0_634:                              # %scalar.ph378
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_631 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r10, r12, r1
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r10, zero, .LBB0_636
# %bb.635:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	beq r12, r3, .LBB0_633
	j .LBB0_637
.LBB0_636:                              #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	beq r12, r3, .LBB0_633
.LBB0_637:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_634 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_633
.LBB0_638:                              # %vector.body380.preheader
                                        #   in Loop: Header=BB0_631 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_641
.LBB0_639:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r4, 28(r5)
.LBB0_640:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 904 11 is_stmt 1              # parallel-rne.mlir:904:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 916 13                        # parallel-rne.mlir:916:13
	add.s r2, r24, r2
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 916 13                        # parallel-rne.mlir:916:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 904 11                        # parallel-rne.mlir:904:11
	bneq r5, zero, .LBB0_630
.LBB0_641:                              # %vector.body380
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_631 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 905 19                        # parallel-rne.mlir:905:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 909 19                        # parallel-rne.mlir:909:19
	and r5, r10, r3
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	and r11, r10, r1
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	seteq r5, r5, r3
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	setneq r11, r11, zero
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	and r11, r5, r11
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.s r5, r25, r2
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r11, zero, .LBB0_643
# %bb.642:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_644
.LBB0_643:                              #   in Loop: Header=BB0_641 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_644:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r11, zero, .LBB0_646
# %bb.645:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_647
.LBB0_646:                              #   in Loop: Header=BB0_641 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_647:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r12, zero, .LBB0_649
# %bb.648:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_650
.LBB0_649:                              #   in Loop: Header=BB0_641 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_650:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r16, zero, .LBB0_652
# %bb.651:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_653
.LBB0_652:                              #   in Loop: Header=BB0_641 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_653:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r16, zero, .LBB0_655
# %bb.654:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_656
.LBB0_655:                              #   in Loop: Header=BB0_641 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_656:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r16, zero, .LBB0_658
# %bb.657:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_659
.LBB0_658:                              #   in Loop: Header=BB0_641 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_659:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	bneq r16, zero, .LBB0_661
# %bb.660:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_662
.LBB0_661:                              #   in Loop: Header=BB0_641 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_662:                              # %vector.body380
                                        #   in Loop: Header=BB0_641 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	beq r16, zero, .LBB0_639
# %bb.663:                              #   in Loop: Header=BB0_641 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	j .LBB0_640
.LBB0_664:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, zero, 128
	.loc	1 895 7 is_stmt 1               # parallel-rne.mlir:895:7
	mfence { sm }
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	addli r2, zero, 4
	bneq r27, r2, .LBB0_554
.LBB0_665:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 921 7                         # parallel-rne.mlir:921:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_667
.LBB0_666:                              # %middle.block373
                                        #   in Loop: Header=BB0_667 Depth=2
	.loc	1 929 9 is_stmt 1               # parallel-rne.mlir:929:9
	load.d r[4:5], -688(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_700
.LBB0_667:                              # %.preheader102
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_677 Depth 3
                                        #       Child Loop BB0_670 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 930 11 is_stmt 1              # parallel-rne.mlir:930:11
	bneq r24, r21, .LBB0_674
# %bb.668:                              # %scalar.ph364.preheader
                                        #   in Loop: Header=BB0_667 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_670
.LBB0_669:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 930 11                        # parallel-rne.mlir:930:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 942 13 is_stmt 1              # parallel-rne.mlir:942:13
	add.s r2, r24, r2
	.loc	1 930 11                        # parallel-rne.mlir:930:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 942 13                        # parallel-rne.mlir:942:13
	stores.w r10, 0(r2)
	.loc	1 930 11                        # parallel-rne.mlir:930:11
	beq r11, zero, .LBB0_666
.LBB0_670:                              # %scalar.ph364
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_667 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	and r10, r12, r1
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r10, zero, .LBB0_672
# %bb.671:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	beq r12, r3, .LBB0_669
	j .LBB0_673
.LBB0_672:                              #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	beq r12, r3, .LBB0_669
.LBB0_673:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_669
.LBB0_674:                              # %vector.body366.preheader
                                        #   in Loop: Header=BB0_667 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_677
.LBB0_675:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r4, 28(r5)
.LBB0_676:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 930 11 is_stmt 1              # parallel-rne.mlir:930:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 942 13                        # parallel-rne.mlir:942:13
	add.s r2, r24, r2
	.loc	1 930 11                        # parallel-rne.mlir:930:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 942 13                        # parallel-rne.mlir:942:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 930 11                        # parallel-rne.mlir:930:11
	bneq r5, zero, .LBB0_666
.LBB0_677:                              # %vector.body366
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_667 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 931 19                        # parallel-rne.mlir:931:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 935 19                        # parallel-rne.mlir:935:19
	and r5, r10, r3
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	and r11, r10, r1
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	seteq r5, r5, r3
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	setneq r11, r11, zero
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	and r11, r5, r11
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	add.s r5, r25, r2
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r11, zero, .LBB0_679
# %bb.678:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_680
.LBB0_679:                              #   in Loop: Header=BB0_677 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_680:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r11, zero, .LBB0_682
# %bb.681:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_683
.LBB0_682:                              #   in Loop: Header=BB0_677 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_683:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r12, zero, .LBB0_685
# %bb.684:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_686
.LBB0_685:                              #   in Loop: Header=BB0_677 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_686:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r16, zero, .LBB0_688
# %bb.687:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_689
.LBB0_688:                              #   in Loop: Header=BB0_677 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_689:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r16, zero, .LBB0_691
# %bb.690:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_692
.LBB0_691:                              #   in Loop: Header=BB0_677 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_692:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r16, zero, .LBB0_694
# %bb.693:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_695
.LBB0_694:                              #   in Loop: Header=BB0_677 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_695:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	bneq r16, zero, .LBB0_697
# %bb.696:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_698
.LBB0_697:                              #   in Loop: Header=BB0_677 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_698:                              # %vector.body366
                                        #   in Loop: Header=BB0_677 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	beq r16, zero, .LBB0_675
# %bb.699:                              #   in Loop: Header=BB0_677 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	j .LBB0_676
.LBB0_700:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, zero, 128
	.loc	1 921 7 is_stmt 1               # parallel-rne.mlir:921:7
	mfence { sm }
	.loc	1 947 7                         # parallel-rne.mlir:947:7
	addli r2, zero, 5
	bneq r27, r2, .LBB0_555
.LBB0_701:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 947 7                         # parallel-rne.mlir:947:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_703
.LBB0_702:                              # %middle.block359
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 955 9 is_stmt 1               # parallel-rne.mlir:955:9
	load.d r[4:5], -696(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_736
.LBB0_703:                              # %.preheader101
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_713 Depth 3
                                        #       Child Loop BB0_706 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 956 11 is_stmt 1              # parallel-rne.mlir:956:11
	bneq r24, r21, .LBB0_710
# %bb.704:                              # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_706
.LBB0_705:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 968 13 is_stmt 1              # parallel-rne.mlir:968:13
	add.s r2, r24, r2
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 968 13                        # parallel-rne.mlir:968:13
	stores.w r10, 0(r2)
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	beq r11, zero, .LBB0_702
.LBB0_706:                              # %scalar.ph350
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	and r10, r12, r1
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r10, zero, .LBB0_708
# %bb.707:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	beq r12, r3, .LBB0_705
	j .LBB0_709
.LBB0_708:                              #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	beq r12, r3, .LBB0_705
.LBB0_709:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_706 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_705
.LBB0_710:                              # %vector.body352.preheader
                                        #   in Loop: Header=BB0_703 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_713
.LBB0_711:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r4, 28(r5)
.LBB0_712:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 956 11 is_stmt 1              # parallel-rne.mlir:956:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 968 13                        # parallel-rne.mlir:968:13
	add.s r2, r24, r2
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 968 13                        # parallel-rne.mlir:968:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 956 11                        # parallel-rne.mlir:956:11
	bneq r5, zero, .LBB0_702
.LBB0_713:                              # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_703 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 957 19                        # parallel-rne.mlir:957:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 961 19                        # parallel-rne.mlir:961:19
	and r5, r10, r3
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	and r11, r10, r1
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	seteq r5, r5, r3
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	setneq r11, r11, zero
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	and r11, r5, r11
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	add.s r5, r25, r2
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r11, zero, .LBB0_715
# %bb.714:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_713 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_716:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r11, zero, .LBB0_718
# %bb.717:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_713 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_719:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r12, zero, .LBB0_721
# %bb.720:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_713 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_722:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r16, zero, .LBB0_724
# %bb.723:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_725
.LBB0_724:                              #   in Loop: Header=BB0_713 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_725:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r16, zero, .LBB0_727
# %bb.726:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_728
.LBB0_727:                              #   in Loop: Header=BB0_713 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_728:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r16, zero, .LBB0_730
# %bb.729:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_731
.LBB0_730:                              #   in Loop: Header=BB0_713 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_731:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	bneq r16, zero, .LBB0_733
# %bb.732:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_734
.LBB0_733:                              #   in Loop: Header=BB0_713 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_734:                              # %vector.body352
                                        #   in Loop: Header=BB0_713 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	beq r16, zero, .LBB0_711
# %bb.735:                              #   in Loop: Header=BB0_713 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	j .LBB0_712
.LBB0_736:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, zero, 128
	.loc	1 947 7 is_stmt 1               # parallel-rne.mlir:947:7
	mfence { sm }
	.loc	1 973 7                         # parallel-rne.mlir:973:7
	addli r2, zero, 6
	bneq r27, r2, .LBB0_556
.LBB0_737:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 973 7                         # parallel-rne.mlir:973:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_739
.LBB0_738:                              # %middle.block345
                                        #   in Loop: Header=BB0_739 Depth=2
	.loc	1 981 9 is_stmt 1               # parallel-rne.mlir:981:9
	load.d r[4:5], -704(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_772
.LBB0_739:                              # %.preheader100
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_749 Depth 3
                                        #       Child Loop BB0_742 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 982 11 is_stmt 1              # parallel-rne.mlir:982:11
	bneq r24, r21, .LBB0_746
# %bb.740:                              # %scalar.ph336.preheader
                                        #   in Loop: Header=BB0_739 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_742
.LBB0_741:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_742 Depth=3
	.loc	1 982 11                        # parallel-rne.mlir:982:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 994 13 is_stmt 1              # parallel-rne.mlir:994:13
	add.s r2, r24, r2
	.loc	1 982 11                        # parallel-rne.mlir:982:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 994 13                        # parallel-rne.mlir:994:13
	stores.w r10, 0(r2)
	.loc	1 982 11                        # parallel-rne.mlir:982:11
	beq r11, zero, .LBB0_738
.LBB0_742:                              # %scalar.ph336
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_739 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 983 19                        # parallel-rne.mlir:983:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	and r10, r12, r1
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r10, zero, .LBB0_744
# %bb.743:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_742 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	beq r12, r3, .LBB0_741
	j .LBB0_745
.LBB0_744:                              #   in Loop: Header=BB0_742 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	beq r12, r3, .LBB0_741
.LBB0_745:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_742 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_741
.LBB0_746:                              # %vector.body338.preheader
                                        #   in Loop: Header=BB0_739 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_749
.LBB0_747:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r4, 28(r5)
.LBB0_748:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 982 11 is_stmt 1              # parallel-rne.mlir:982:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 994 13                        # parallel-rne.mlir:994:13
	add.s r2, r24, r2
	.loc	1 982 11                        # parallel-rne.mlir:982:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 994 13                        # parallel-rne.mlir:994:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 982 11                        # parallel-rne.mlir:982:11
	bneq r5, zero, .LBB0_738
.LBB0_749:                              # %vector.body338
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_739 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 983 19                        # parallel-rne.mlir:983:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 987 19                        # parallel-rne.mlir:987:19
	and r5, r10, r3
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	and r11, r10, r1
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	seteq r5, r5, r3
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	setneq r11, r11, zero
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	and r11, r5, r11
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	add.s r5, r25, r2
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r11, zero, .LBB0_751
# %bb.750:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_752
.LBB0_751:                              #   in Loop: Header=BB0_749 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_752:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r11, zero, .LBB0_754
# %bb.753:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_755
.LBB0_754:                              #   in Loop: Header=BB0_749 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_755:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r12, zero, .LBB0_757
# %bb.756:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_758
.LBB0_757:                              #   in Loop: Header=BB0_749 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_758:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r16, zero, .LBB0_760
# %bb.759:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_761
.LBB0_760:                              #   in Loop: Header=BB0_749 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_761:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r16, zero, .LBB0_763
# %bb.762:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_764
.LBB0_763:                              #   in Loop: Header=BB0_749 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_764:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r16, zero, .LBB0_766
# %bb.765:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_767
.LBB0_766:                              #   in Loop: Header=BB0_749 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_767:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	bneq r16, zero, .LBB0_769
# %bb.768:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_770
.LBB0_769:                              #   in Loop: Header=BB0_749 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_770:                              # %vector.body338
                                        #   in Loop: Header=BB0_749 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	beq r16, zero, .LBB0_747
# %bb.771:                              #   in Loop: Header=BB0_749 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	j .LBB0_748
.LBB0_772:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, zero, 128
	.loc	1 973 7 is_stmt 1               # parallel-rne.mlir:973:7
	mfence { sm }
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	addli r2, zero, 7
	bneq r27, r2, .LBB0_809
.LBB0_773:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 999 7                         # parallel-rne.mlir:999:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_775
.LBB0_774:                              # %middle.block331
                                        #   in Loop: Header=BB0_775 Depth=2
	.loc	1 1007 9 is_stmt 1              # parallel-rne.mlir:1007:9
	load.d r[4:5], -712(r30)                # 8-byte Folded Reload
	load.d r[8:9], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_808
.LBB0_775:                              # %.preheader99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_785 Depth 3
                                        #       Child Loop BB0_778 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -728(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	.loc	1 1008 11 is_stmt 1             # parallel-rne.mlir:1008:11
	bneq r24, r21, .LBB0_782
# %bb.776:                              # %scalar.ph322.preheader
                                        #   in Loop: Header=BB0_775 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_778
.LBB0_777:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	setlt.ul r11, r[4:5], r[6:7]
	.loc	1 1020 13 is_stmt 1             # parallel-rne.mlir:1020:13
	add.s r2, r24, r2
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	stores.w r10, 0(r2)
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	beq r11, zero, .LBB0_774
.LBB0_778:                              # %scalar.ph322
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_775 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	add.ul r[10:11], r[4:5], r[8:9]
	slli r2, r10, 2
	add.s r10, r21, r2
	loads.w r12, 0(r10)
	.loc	1 1010 19                       # parallel-rne.mlir:1010:19
	add.s r10, r25, r2
	loads.w r11, 0(r10)
	.loc	1 1015 19                       # parallel-rne.mlir:1015:19
	and r10, r12, r1
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r10, zero, .LBB0_780
# %bb.779:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	and r12, r12, r3
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	beq r12, r3, .LBB0_777
	j .LBB0_781
.LBB0_780:                              #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r12, r10
	and r12, r12, r3
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	beq r12, r3, .LBB0_777
.LBB0_781:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_778 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_777
.LBB0_782:                              # %vector.body324.preheader
                                        #   in Loop: Header=BB0_775 Depth=2
	zext_int2long r[17:18], zero
	j .LBB0_785
.LBB0_783:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r4, 28(r5)
.LBB0_784:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 1008 11 is_stmt 1             # parallel-rne.mlir:1008:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	add.s r2, r24, r2
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	seteq.d r5, r[17:18], r[14:15]
	.loc	1 1020 13                       # parallel-rne.mlir:1020:13
	stores.w r12, 12(r2)
	stores.w r10, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	stores.w r4, 28(r2)
	stores.w r20, 24(r2)
	stores.w r19, 20(r2)
	stores.w r23, 16(r2)
	.loc	1 1008 11                       # parallel-rne.mlir:1008:11
	bneq r5, zero, .LBB0_774
.LBB0_785:                              # %vector.body324
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_775 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1009 19                       # parallel-rne.mlir:1009:19
	add.ul r[4:5], r[17:18], r[8:9]
	slli r2, r4, 2
	add.s r4, r21, r2
	loads.w r10, 0(r4)
	.loc	1 1013 19                       # parallel-rne.mlir:1013:19
	and r5, r10, r3
	.loc	1 1015 19                       # parallel-rne.mlir:1015:19
	and r11, r10, r1
	.loc	1 1014 19                       # parallel-rne.mlir:1014:19
	seteq r5, r5, r3
	.loc	1 1016 19                       # parallel-rne.mlir:1016:19
	setneq r11, r11, zero
	.loc	1 1017 19                       # parallel-rne.mlir:1017:19
	and r11, r5, r11
	.loc	1 1010 19                       # parallel-rne.mlir:1010:19
	add.s r5, r25, r2
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r11, zero, .LBB0_787
# %bb.786:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r13, 0(r5)
	j .LBB0_788
.LBB0_787:                              #   in Loop: Header=BB0_785 Depth=3
	lui r11, 1024
	or r13, r10, r11
.LBB0_788:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r10, 4(r4)
	and r11, r10, r3
	and r12, r10, r1
	seteq r11, r11, r3
	setneq r12, r12, zero
	and r11, r11, r12
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r11, zero, .LBB0_790
# %bb.789:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 4(r5)
	j .LBB0_791
.LBB0_790:                              #   in Loop: Header=BB0_785 Depth=3
	lui r11, 1024
	or r11, r10, r11
.LBB0_791:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r10, 8(r4)
	and r12, r10, r3
	and r16, r10, r1
	seteq r12, r12, r3
	setneq r16, r16, zero
	and r12, r12, r16
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r12, zero, .LBB0_793
# %bb.792:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r10, 8(r5)
	j .LBB0_794
.LBB0_793:                              #   in Loop: Header=BB0_785 Depth=3
	lui r12, 1024
	or r10, r10, r12
.LBB0_794:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r12, 12(r4)
	and r16, r12, r3
	and r19, r12, r1
	seteq r16, r16, r3
	setneq r19, r19, zero
	and r16, r16, r19
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r16, zero, .LBB0_796
# %bb.795:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r5)
	j .LBB0_797
.LBB0_796:                              #   in Loop: Header=BB0_785 Depth=3
	lui r16, 1024
	or r12, r12, r16
.LBB0_797:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r19, 16(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r16, zero, .LBB0_799
# %bb.798:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 16(r5)
	j .LBB0_800
.LBB0_799:                              #   in Loop: Header=BB0_785 Depth=3
	lui r16, 1024
	or r23, r19, r16
.LBB0_800:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r19, 20(r4)
	and r16, r19, r3
	and r20, r19, r1
	seteq r16, r16, r3
	setneq r20, r20, zero
	and r16, r16, r20
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r16, zero, .LBB0_802
# %bb.801:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 20(r5)
	j .LBB0_803
.LBB0_802:                              #   in Loop: Header=BB0_785 Depth=3
	lui r16, 1024
	or r19, r19, r16
.LBB0_803:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r20, 24(r4)
	and r16, r20, r3
	and r22, r20, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	bneq r16, zero, .LBB0_805
# %bb.804:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 24(r5)
	j .LBB0_806
.LBB0_805:                              #   in Loop: Header=BB0_785 Depth=3
	lui r16, 1024
	or r20, r20, r16
.LBB0_806:                              # %vector.body324
                                        #   in Loop: Header=BB0_785 Depth=3
	loads.w r4, 28(r4)
	and r16, r4, r3
	and r22, r4, r1
	seteq r16, r16, r3
	setneq r22, r22, zero
	and r16, r16, r22
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	beq r16, zero, .LBB0_783
# %bb.807:                              #   in Loop: Header=BB0_785 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r5, 1024
	or r4, r4, r5
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	j .LBB0_784
.LBB0_808:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, zero, 128
	.loc	1 999 7 is_stmt 1               # parallel-rne.mlir:999:7
	mfence { sm }
.LBB0_809:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	addli r2, zero, 255
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	addli r4, zero, 3
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	csr_set csr5, r2
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r2
	.loc	1 1025 7                        # parallel-rne.mlir:1025:7
	sync_core
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	bneq r2, r4, .LBB0_811
# %bb.810:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r5, zero, 16
	.loc	1 1027 7 is_stmt 1              # parallel-rne.mlir:1027:7
	addli r2, zero, 35
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	addli r4, zero, 4
	lui r27, 524288
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	xsignal r5, 0
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	xsignal r2, 0
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	loadli.w r2,  -20(r30)
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -20(r30)
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	xwait r5, 0
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	slli r2, r4, 15
	.loc	1 1035 7                        # parallel-rne.mlir:1035:7
	addli r4, zero, 25
	xwait r4, 0
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	loadli.w r4,  -836(r30)                 # 4-byte Folded Reload
	add.s r21, r2, r4
	.loc	1 1036 7                        # parallel-rne.mlir:1036:7
	addli r2, zero, 37
	xwait r2, 0
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	addli r2, zero, 39
	xwait r2, 0
	j .LBB0_814
.LBB0_811:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	addli r4, zero, 5
	lui r27, 524288
	bneq r2, r4, .LBB0_813
# %bb.812:                              # %.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 36
	addli r8, zero, 2
	addli r9, zero, 2047
	addli r5, zero, 4
	xwait r2, 0
	lock zero, r8
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r9, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, zero, 19
	dsmadd r24, r24, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r8
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	loadli.w r2,  -20(r30)
	addli r4, r2, 1
	mod.s r2, r2, r5
	storeli.w r4, -20(r30)
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	addli r4, zero, 24
	xwait r4, 0
	addli r4, zero, 40
	xwait r4, 0
	lock zero, r8
	lui r4, 258048
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	slli r2, r2, 15
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r4, 0
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	loadli.w r4,  -836(r30)                 # 4-byte Folded Reload
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	ew_cfg zero, r9, zero, 2
	ew_cfg r5, zero, zero, 3
	ew_cfg r5, r5, r5, 19
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	add.s r21, r2, r4
	.loc	1 1032 7                        # parallel-rne.mlir:1032:7
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	dsmul r21, r2, r24, 0
	addli r2, zero, 23
	ew_cfg zero, zero, zero, 19
	unlock r8
	xsignal r2, 0
	addli r2, zero, 37
	xsignal r2, 0
	addli r2, zero, 39
	xsignal r2, 0
	.loc	1 1034 7                        # parallel-rne.mlir:1034:7
	j .LBB0_814
.LBB0_813:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1031 13                       # parallel-rne.mlir:1031:13
	loadli.w r2,  -20(r30)
	addli r4, zero, 4
	loadli.w r5,  -836(r30)                 # 4-byte Folded Reload
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -20(r30)
	slli r4, r4, 15
	add.s r21, r4, r5
.LBB0_814:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1041 7                        # parallel-rne.mlir:1041:7
	addli r2, zero, 255
	.loc	1 1039 7                        # parallel-rne.mlir:1039:7
	xfence
	.loc	1 1040 7                        # parallel-rne.mlir:1040:7
	mfence { lm, sm, gm }
	.loc	1 1041 7                        # parallel-rne.mlir:1041:7
	csr_set csr5, r2
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	sub.s r2, r25, r2
	storeli.w r2, -732(r30)                 # 4-byte Folded Spill
	sub.s r2, r25, r21
	storeli.w r2, -740(r30)                 # 4-byte Folded Spill
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r2
	.loc	1 1041 7                        # parallel-rne.mlir:1041:7
	sync_core
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	beq r2, zero, .LBB0_816
# %bb.815:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	addli r4, zero, 1
	beq r2, r4, .LBB0_844
	j .LBB0_872
.LBB0_816:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], zero
	.loc	1 1042 7 is_stmt 1              # parallel-rne.mlir:1042:7
	storeli.w r2, -728(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_818
.LBB0_817:                              # %middle.block317
                                        #   in Loop: Header=BB0_818 Depth=2
	.loc	1 1050 9                        # parallel-rne.mlir:1050:9
	load.d r[4:5], -720(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_843
.LBB0_818:                              # %.preheader98
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_835 Depth 3
                                        #       Child Loop BB0_821 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 1051 11 is_stmt 1             # parallel-rne.mlir:1051:11
	loadli.w r2,  -728(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_833
# %bb.819:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_818 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_821
.LBB0_820:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 1051 11                       # parallel-rne.mlir:1051:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 1073 13 is_stmt 1             # parallel-rne.mlir:1073:13
	add.s r8, r25, r10
	.loc	1 1051 11                       # parallel-rne.mlir:1051:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	stores.w r11, 0(r8)
	.loc	1 1051 11                       # parallel-rne.mlir:1051:11
	beq r2, zero, .LBB0_817
.LBB0_821:                              # %scalar.ph309
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_818 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1052 19                       # parallel-rne.mlir:1052:19
	add.ul r[8:9], r[4:5], r[19:20]
	lui r11, 523264
	lui r17, 523264
	slli r10, r8, 2
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.s r2, r24, r10
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.s r8, r21, r10
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	loads.w r2, 0(r2)
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	loads.w r18, 0(r8)
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	and r12, r2, r26
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	beq r12, r3, .LBB0_823
# %bb.822:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_823:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r10
	loads.w r2, 0(r2)
	and r13, r2, r26
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r13, zero, .LBB0_831
# %bb.824:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r12, zero, .LBB0_832
.LBB0_825:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	beq r13, r3, .LBB0_827
.LBB0_826:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_827:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	setlt.u r2, r3, r12
	lui r12, 523264
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r2, zero, .LBB0_829
# %bb.828:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_829:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	setlt.u r2, r3, r13
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r2, zero, .LBB0_820
# %bb.830:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_820
.LBB0_831:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	beq r12, zero, .LBB0_825
.LBB0_832:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_821 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r13, r3, .LBB0_826
	j .LBB0_827
.LBB0_833:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_818 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_835
.LBB0_834:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 1051 11 is_stmt 1             # parallel-rne.mlir:1051:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	add.s r8, r25, r11
	.loc	1 1051 11                       # parallel-rne.mlir:1051:11
	seteq.d r2, r[4:5], r[14:15]
	.loc	1 1073 13                       # parallel-rne.mlir:1073:13
	stores.w r27, 8(r8)
	lui r27, 524288
	stores.w r12, 12(r8)
	stores.w r23, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 1051 11                       # parallel-rne.mlir:1051:11
	bneq r2, zero, .LBB0_817
.LBB0_835:                              # %vector.body311
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_818 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1052 19                       # parallel-rne.mlir:1052:19
	add.ul r[10:11], r[4:5], r[19:20]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.s r17, r24, r11
	.loc	1 1052 19                       # parallel-rne.mlir:1052:19
	loads.w r10, 0(r13)
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	loads.w r12, 0(r17)
	.loc	1 1059 19                       # parallel-rne.mlir:1059:19
	and r10, r10, r26
	.loc	1 1057 19                       # parallel-rne.mlir:1057:19
	and r12, r12, r26
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	seteq r16, r10, r3
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	seteq r23, r10, zero
	.loc	1 1061 19                       # parallel-rne.mlir:1061:19
	seteq r18, r12, zero
	.loc	1 1063 19                       # parallel-rne.mlir:1063:19
	seteq r22, r12, r3
	.loc	1 1069 19                       # parallel-rne.mlir:1069:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	and r12, r16, r18
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	and r16, r23, r22
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.s r18, r21, r11
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	or r12, r12, r16
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r16, zero, .LBB0_837
# %bb.836:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r18)
.LBB0_837:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r17)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r8, r16, zero
	max.u r9, r16, r22
	setlt.u r9, r3, r9
	and r16, r23, r27
	and r2, r8, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r9, r2
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r2, zero, .LBB0_839
# %bb.838:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r18)
.LBB0_839:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r2, zero, .LBB0_841
# %bb.840:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r18)
.LBB0_841:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r17, r2, zero
	seteq r13, r8, zero
	seteq r16, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r13
	and r9, r17, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	bneq r2, zero, .LBB0_834
# %bb.842:                              # %vector.body311
                                        #   in Loop: Header=BB0_835 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r18)
	j .LBB0_834
.LBB0_843:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 36 5 is_stmt 1                # parallel-rne.mlir:36:5
	core_id r2
	addli r12, zero, 128
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	mfence { sm }
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	addli r4, zero, 1
	bneq r2, r4, .LBB0_872
.LBB0_844:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -720(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	.loc	1 1078 7                        # parallel-rne.mlir:1078:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_846
.LBB0_845:                              # %middle.block302
                                        #   in Loop: Header=BB0_846 Depth=2
	.loc	1 1086 9 is_stmt 1              # parallel-rne.mlir:1086:9
	load.d r[4:5], -664(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_871
.LBB0_846:                              # %.preheader97
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_863 Depth 3
                                        #       Child Loop BB0_849 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 1087 11 is_stmt 1             # parallel-rne.mlir:1087:11
	loadli.w r2,  -720(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_861
# %bb.847:                              # %scalar.ph294.preheader
                                        #   in Loop: Header=BB0_846 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_849
.LBB0_848:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 1109 13 is_stmt 1             # parallel-rne.mlir:1109:13
	add.s r8, r25, r10
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1109 13                       # parallel-rne.mlir:1109:13
	stores.w r11, 0(r8)
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	beq r2, zero, .LBB0_845
.LBB0_849:                              # %scalar.ph294
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_846 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	add.ul r[8:9], r[4:5], r[19:20]
	lui r11, 523264
	lui r17, 523264
	slli r10, r8, 2
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	add.s r2, r24, r10
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.s r8, r21, r10
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	loads.w r2, 0(r2)
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	loads.w r18, 0(r8)
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	and r12, r2, r26
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	beq r12, r3, .LBB0_851
# %bb.850:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_851:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r10
	loads.w r2, 0(r2)
	and r13, r2, r26
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r13, zero, .LBB0_859
# %bb.852:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r12, zero, .LBB0_860
.LBB0_853:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	beq r13, r3, .LBB0_855
.LBB0_854:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_855:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	setlt.u r2, r3, r12
	lui r12, 523264
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r2, zero, .LBB0_857
# %bb.856:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_857:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	setlt.u r2, r3, r13
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r2, zero, .LBB0_848
# %bb.858:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_848
.LBB0_859:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	beq r12, zero, .LBB0_853
.LBB0_860:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_849 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r13, r3, .LBB0_854
	j .LBB0_855
.LBB0_861:                              # %vector.body296.preheader
                                        #   in Loop: Header=BB0_846 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_863
.LBB0_862:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 1087 11 is_stmt 1             # parallel-rne.mlir:1087:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 1109 13                       # parallel-rne.mlir:1109:13
	add.s r8, r25, r11
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	seteq.d r2, r[4:5], r[14:15]
	.loc	1 1109 13                       # parallel-rne.mlir:1109:13
	stores.w r27, 8(r8)
	lui r27, 524288
	stores.w r12, 12(r8)
	stores.w r23, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 1087 11                       # parallel-rne.mlir:1087:11
	bneq r2, zero, .LBB0_845
.LBB0_863:                              # %vector.body296
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_846 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	add.ul r[10:11], r[4:5], r[19:20]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	add.s r17, r24, r11
	.loc	1 1088 19                       # parallel-rne.mlir:1088:19
	loads.w r10, 0(r13)
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	loads.w r12, 0(r17)
	.loc	1 1095 19                       # parallel-rne.mlir:1095:19
	and r10, r10, r26
	.loc	1 1093 19                       # parallel-rne.mlir:1093:19
	and r12, r12, r26
	.loc	1 1096 19                       # parallel-rne.mlir:1096:19
	seteq r16, r10, r3
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	seteq r23, r10, zero
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	seteq r18, r12, zero
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	seteq r22, r12, r3
	.loc	1 1105 19                       # parallel-rne.mlir:1105:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	and r12, r16, r18
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	and r16, r23, r22
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.s r18, r21, r11
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	or r12, r12, r16
	.loc	1 1106 19                       # parallel-rne.mlir:1106:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r16, zero, .LBB0_865
# %bb.864:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r18)
.LBB0_865:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r17)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r8, r16, zero
	max.u r9, r16, r22
	setlt.u r9, r3, r9
	and r16, r23, r27
	and r2, r8, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r9, r2
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r2, zero, .LBB0_867
# %bb.866:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r18)
.LBB0_867:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r2, zero, .LBB0_869
# %bb.868:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r18)
.LBB0_869:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r17, r2, zero
	seteq r13, r8, zero
	seteq r16, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r13
	and r9, r17, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	bneq r2, zero, .LBB0_862
# %bb.870:                              # %vector.body296
                                        #   in Loop: Header=BB0_863 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r18)
	j .LBB0_862
.LBB0_871:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 1078 7 is_stmt 1              # parallel-rne.mlir:1078:7
	mfence { sm }
.LBB0_872:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1114 7                        # parallel-rne.mlir:1114:7
	core_id r2
	addli r4, zero, 2
	bneq r2, r4, .LBB0_901
# %bb.873:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	zext_int2long r[4:5], r4
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	.loc	1 1114 7                        # parallel-rne.mlir:1114:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_875
.LBB0_874:                              # %middle.block287
                                        #   in Loop: Header=BB0_875 Depth=2
	.loc	1 1122 9 is_stmt 1              # parallel-rne.mlir:1122:9
	load.d r[4:5], -672(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_900
.LBB0_875:                              # %.preheader96
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_892 Depth 3
                                        #       Child Loop BB0_878 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 1123 11 is_stmt 1             # parallel-rne.mlir:1123:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_890
# %bb.876:                              # %scalar.ph279.preheader
                                        #   in Loop: Header=BB0_875 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_878
.LBB0_877:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 1145 13 is_stmt 1             # parallel-rne.mlir:1145:13
	add.s r8, r25, r10
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1145 13                       # parallel-rne.mlir:1145:13
	stores.w r11, 0(r8)
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	beq r2, zero, .LBB0_874
.LBB0_878:                              # %scalar.ph279
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_875 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	add.ul r[8:9], r[4:5], r[19:20]
	lui r11, 523264
	lui r17, 523264
	slli r10, r8, 2
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.s r2, r24, r10
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r8, r21, r10
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	loads.w r2, 0(r2)
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r18, 0(r8)
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	and r12, r2, r26
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	beq r12, r3, .LBB0_880
# %bb.879:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_880:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r10
	loads.w r2, 0(r2)
	and r13, r2, r26
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r13, zero, .LBB0_888
# %bb.881:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r12, zero, .LBB0_889
.LBB0_882:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	beq r13, r3, .LBB0_884
.LBB0_883:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_884:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	setlt.u r2, r3, r12
	lui r12, 523264
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r2, zero, .LBB0_886
# %bb.885:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_886:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	setlt.u r2, r3, r13
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r2, zero, .LBB0_877
# %bb.887:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_877
.LBB0_888:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	beq r12, zero, .LBB0_882
.LBB0_889:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_878 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r13, r3, .LBB0_883
	j .LBB0_884
.LBB0_890:                              # %vector.body281.preheader
                                        #   in Loop: Header=BB0_875 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_892
.LBB0_891:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	.loc	1 1123 11 is_stmt 1             # parallel-rne.mlir:1123:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 1145 13                       # parallel-rne.mlir:1145:13
	add.s r8, r25, r11
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	seteq.d r2, r[4:5], r[14:15]
	.loc	1 1145 13                       # parallel-rne.mlir:1145:13
	stores.w r27, 8(r8)
	lui r27, 524288
	stores.w r12, 12(r8)
	stores.w r23, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 1123 11                       # parallel-rne.mlir:1123:11
	bneq r2, zero, .LBB0_874
.LBB0_892:                              # %vector.body281
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_875 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	add.ul r[10:11], r[4:5], r[19:20]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.s r17, r24, r11
	.loc	1 1124 19                       # parallel-rne.mlir:1124:19
	loads.w r10, 0(r13)
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	loads.w r12, 0(r17)
	.loc	1 1131 19                       # parallel-rne.mlir:1131:19
	and r10, r10, r26
	.loc	1 1129 19                       # parallel-rne.mlir:1129:19
	and r12, r12, r26
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	seteq r16, r10, r3
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	seteq r23, r10, zero
	.loc	1 1133 19                       # parallel-rne.mlir:1133:19
	seteq r18, r12, zero
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	seteq r22, r12, r3
	.loc	1 1141 19                       # parallel-rne.mlir:1141:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	and r12, r16, r18
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	and r16, r23, r22
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r18, r21, r11
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	or r12, r12, r16
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r16, zero, .LBB0_894
# %bb.893:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r18)
.LBB0_894:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r17)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r8, r16, zero
	max.u r9, r16, r22
	setlt.u r9, r3, r9
	and r16, r23, r27
	and r2, r8, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r9, r2
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r2, zero, .LBB0_896
# %bb.895:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r18)
.LBB0_896:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r2, zero, .LBB0_898
# %bb.897:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r18)
.LBB0_898:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r17, r2, zero
	seteq r13, r8, zero
	seteq r16, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r13
	and r9, r17, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	bneq r2, zero, .LBB0_891
# %bb.899:                              # %vector.body281
                                        #   in Loop: Header=BB0_892 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r18)
	j .LBB0_891
.LBB0_900:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 1114 7 is_stmt 1              # parallel-rne.mlir:1114:7
	mfence { sm }
.LBB0_901:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1150 7                        # parallel-rne.mlir:1150:7
	core_id r2
	addli r4, zero, 3
	bneq r2, r4, .LBB0_930
# %bb.902:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 24
	.loc	1 1150 7                        # parallel-rne.mlir:1150:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_904
.LBB0_903:                              # %middle.block272
                                        #   in Loop: Header=BB0_904 Depth=2
	.loc	1 1158 9 is_stmt 1              # parallel-rne.mlir:1158:9
	load.d r[4:5], -680(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_929
.LBB0_904:                              # %.preheader95
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_921 Depth 3
                                        #       Child Loop BB0_907 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 1159 11 is_stmt 1             # parallel-rne.mlir:1159:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_919
# %bb.905:                              # %scalar.ph264.preheader
                                        #   in Loop: Header=BB0_904 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_907
.LBB0_906:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 1181 13 is_stmt 1             # parallel-rne.mlir:1181:13
	add.s r8, r25, r10
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	stores.w r11, 0(r8)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	beq r2, zero, .LBB0_903
.LBB0_907:                              # %scalar.ph264
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_904 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.ul r[8:9], r[4:5], r[19:20]
	lui r11, 523264
	lui r17, 523264
	slli r10, r8, 2
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.s r2, r24, r10
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r8, r21, r10
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	loads.w r2, 0(r2)
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r18, 0(r8)
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	and r12, r2, r26
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r12, r3, .LBB0_909
# %bb.908:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_909:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r10
	loads.w r2, 0(r2)
	and r13, r2, r26
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r13, zero, .LBB0_917
# %bb.910:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r12, zero, .LBB0_918
.LBB0_911:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	beq r13, r3, .LBB0_913
.LBB0_912:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_913:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	setlt.u r2, r3, r12
	lui r12, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r2, zero, .LBB0_915
# %bb.914:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_915:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	setlt.u r2, r3, r13
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r2, zero, .LBB0_906
# %bb.916:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_906
.LBB0_917:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	beq r12, zero, .LBB0_911
.LBB0_918:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_907 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r13, r3, .LBB0_912
	j .LBB0_913
.LBB0_919:                              # %vector.body266.preheader
                                        #   in Loop: Header=BB0_904 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_921
.LBB0_920:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	.loc	1 1159 11 is_stmt 1             # parallel-rne.mlir:1159:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	add.s r8, r25, r11
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	seteq.d r2, r[4:5], r[14:15]
	.loc	1 1181 13                       # parallel-rne.mlir:1181:13
	stores.w r27, 8(r8)
	lui r27, 524288
	stores.w r12, 12(r8)
	stores.w r23, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 1159 11                       # parallel-rne.mlir:1159:11
	bneq r2, zero, .LBB0_903
.LBB0_921:                              # %vector.body266
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_904 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	add.ul r[10:11], r[4:5], r[19:20]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.s r17, r24, r11
	.loc	1 1160 19                       # parallel-rne.mlir:1160:19
	loads.w r10, 0(r13)
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	loads.w r12, 0(r17)
	.loc	1 1167 19                       # parallel-rne.mlir:1167:19
	and r10, r10, r26
	.loc	1 1165 19                       # parallel-rne.mlir:1165:19
	and r12, r12, r26
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	seteq r16, r10, r3
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	seteq r23, r10, zero
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	seteq r18, r12, zero
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	seteq r22, r12, r3
	.loc	1 1177 19                       # parallel-rne.mlir:1177:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	and r12, r16, r18
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	and r16, r23, r22
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r18, r21, r11
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	or r12, r12, r16
	.loc	1 1178 19                       # parallel-rne.mlir:1178:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r16, zero, .LBB0_923
# %bb.922:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r18)
.LBB0_923:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r17)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r8, r16, zero
	max.u r9, r16, r22
	setlt.u r9, r3, r9
	and r16, r23, r27
	and r2, r8, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r9, r2
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r2, zero, .LBB0_925
# %bb.924:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r18)
.LBB0_925:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r2, zero, .LBB0_927
# %bb.926:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r18)
.LBB0_927:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r17, r2, zero
	seteq r13, r8, zero
	seteq r16, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r13
	and r9, r17, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	bneq r2, zero, .LBB0_920
# %bb.928:                              # %vector.body266
                                        #   in Loop: Header=BB0_921 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r18)
	j .LBB0_920
.LBB0_929:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 1150 7 is_stmt 1              # parallel-rne.mlir:1150:7
	mfence { sm }
.LBB0_930:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	core_id r2
	addli r4, zero, 4
	bneq r2, r4, .LBB0_959
# %bb.931:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 1186 7                        # parallel-rne.mlir:1186:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_933
.LBB0_932:                              # %middle.block257
                                        #   in Loop: Header=BB0_933 Depth=2
	.loc	1 1194 9 is_stmt 1              # parallel-rne.mlir:1194:9
	load.d r[4:5], -688(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_958
.LBB0_933:                              # %.preheader94
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_950 Depth 3
                                        #       Child Loop BB0_936 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 1195 11 is_stmt 1             # parallel-rne.mlir:1195:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_948
# %bb.934:                              # %scalar.ph249.preheader
                                        #   in Loop: Header=BB0_933 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_936
.LBB0_935:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	.loc	1 1195 11                       # parallel-rne.mlir:1195:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 1217 13 is_stmt 1             # parallel-rne.mlir:1217:13
	add.s r8, r25, r10
	.loc	1 1195 11                       # parallel-rne.mlir:1195:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1217 13                       # parallel-rne.mlir:1217:13
	stores.w r11, 0(r8)
	.loc	1 1195 11                       # parallel-rne.mlir:1195:11
	beq r2, zero, .LBB0_932
.LBB0_936:                              # %scalar.ph249
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_933 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	add.ul r[8:9], r[4:5], r[19:20]
	lui r11, 523264
	lui r17, 523264
	slli r10, r8, 2
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.s r2, r24, r10
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.s r8, r21, r10
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	loads.w r2, 0(r2)
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	loads.w r18, 0(r8)
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	and r12, r2, r26
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	beq r12, r3, .LBB0_938
# %bb.937:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_938:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r10
	loads.w r2, 0(r2)
	and r13, r2, r26
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r13, zero, .LBB0_946
# %bb.939:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r12, zero, .LBB0_947
.LBB0_940:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	beq r13, r3, .LBB0_942
.LBB0_941:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_942:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	setlt.u r2, r3, r12
	lui r12, 523264
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r2, zero, .LBB0_944
# %bb.943:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_944:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	setlt.u r2, r3, r13
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r2, zero, .LBB0_935
# %bb.945:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_935
.LBB0_946:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	beq r12, zero, .LBB0_940
.LBB0_947:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_936 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r13, r3, .LBB0_941
	j .LBB0_942
.LBB0_948:                              # %vector.body251.preheader
                                        #   in Loop: Header=BB0_933 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_950
.LBB0_949:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	.loc	1 1195 11 is_stmt 1             # parallel-rne.mlir:1195:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 1217 13                       # parallel-rne.mlir:1217:13
	add.s r8, r25, r11
	.loc	1 1195 11                       # parallel-rne.mlir:1195:11
	seteq.d r2, r[4:5], r[14:15]
	.loc	1 1217 13                       # parallel-rne.mlir:1217:13
	stores.w r27, 8(r8)
	lui r27, 524288
	stores.w r12, 12(r8)
	stores.w r23, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 1195 11                       # parallel-rne.mlir:1195:11
	bneq r2, zero, .LBB0_932
.LBB0_950:                              # %vector.body251
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_933 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	add.ul r[10:11], r[4:5], r[19:20]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.s r17, r24, r11
	.loc	1 1196 19                       # parallel-rne.mlir:1196:19
	loads.w r10, 0(r13)
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	loads.w r12, 0(r17)
	.loc	1 1203 19                       # parallel-rne.mlir:1203:19
	and r10, r10, r26
	.loc	1 1201 19                       # parallel-rne.mlir:1201:19
	and r12, r12, r26
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	seteq r16, r10, r3
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	seteq r23, r10, zero
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	seteq r18, r12, zero
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	seteq r22, r12, r3
	.loc	1 1213 19                       # parallel-rne.mlir:1213:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	and r12, r16, r18
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	and r16, r23, r22
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.s r18, r21, r11
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	or r12, r12, r16
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r16, zero, .LBB0_952
# %bb.951:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r18)
.LBB0_952:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r17)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r8, r16, zero
	max.u r9, r16, r22
	setlt.u r9, r3, r9
	and r16, r23, r27
	and r2, r8, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r9, r2
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r2, zero, .LBB0_954
# %bb.953:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r18)
.LBB0_954:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r2, zero, .LBB0_956
# %bb.955:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r18)
.LBB0_956:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r17, r2, zero
	seteq r13, r8, zero
	seteq r16, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r13
	and r9, r17, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	bneq r2, zero, .LBB0_949
# %bb.957:                              # %vector.body251
                                        #   in Loop: Header=BB0_950 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r18)
	j .LBB0_949
.LBB0_958:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 1186 7 is_stmt 1              # parallel-rne.mlir:1186:7
	mfence { sm }
.LBB0_959:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1222 7                        # parallel-rne.mlir:1222:7
	core_id r2
	addli r4, zero, 5
	bneq r2, r4, .LBB0_988
# %bb.960:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 40
	.loc	1 1222 7                        # parallel-rne.mlir:1222:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_962
.LBB0_961:                              # %middle.block242
                                        #   in Loop: Header=BB0_962 Depth=2
	.loc	1 1230 9 is_stmt 1              # parallel-rne.mlir:1230:9
	load.d r[4:5], -696(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_987
.LBB0_962:                              # %.preheader93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_979 Depth 3
                                        #       Child Loop BB0_965 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[19:20], r[4:5], r2
	.loc	1 1231 11 is_stmt 1             # parallel-rne.mlir:1231:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_977
# %bb.963:                              # %scalar.ph234.preheader
                                        #   in Loop: Header=BB0_962 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_965
.LBB0_964:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 1253 13 is_stmt 1             # parallel-rne.mlir:1253:13
	add.s r8, r25, r10
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	stores.w r11, 0(r8)
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	beq r2, zero, .LBB0_961
.LBB0_965:                              # %scalar.ph234
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_962 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.ul r[8:9], r[4:5], r[19:20]
	lui r11, 523264
	lui r17, 523264
	slli r10, r8, 2
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	add.s r2, r24, r10
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.s r8, r21, r10
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	loads.w r2, 0(r2)
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	loads.w r18, 0(r8)
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	and r12, r2, r26
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r12, r3, .LBB0_967
# %bb.966:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_967:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r10
	loads.w r2, 0(r2)
	and r13, r2, r26
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r13, zero, .LBB0_975
# %bb.968:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r18, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r12, zero, .LBB0_976
.LBB0_969:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	beq r13, r3, .LBB0_971
.LBB0_970:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_971:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	setlt.u r2, r3, r12
	lui r12, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r2, zero, .LBB0_973
# %bb.972:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
.LBB0_973:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	setlt.u r2, r3, r13
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r2, zero, .LBB0_964
# %bb.974:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_964
.LBB0_975:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	beq r12, zero, .LBB0_969
.LBB0_976:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_965 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r13, r3, .LBB0_970
	j .LBB0_971
.LBB0_977:                              # %vector.body236.preheader
                                        #   in Loop: Header=BB0_962 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_979
.LBB0_978:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	.loc	1 1231 11 is_stmt 1             # parallel-rne.mlir:1231:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	add.s r8, r25, r11
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	seteq.d r2, r[4:5], r[14:15]
	.loc	1 1253 13                       # parallel-rne.mlir:1253:13
	stores.w r27, 8(r8)
	lui r27, 524288
	stores.w r12, 12(r8)
	stores.w r23, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 1231 11                       # parallel-rne.mlir:1231:11
	bneq r2, zero, .LBB0_961
.LBB0_979:                              # %vector.body236
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_962 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	add.ul r[10:11], r[4:5], r[19:20]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	add.s r17, r24, r11
	.loc	1 1232 19                       # parallel-rne.mlir:1232:19
	loads.w r10, 0(r13)
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	loads.w r12, 0(r17)
	.loc	1 1239 19                       # parallel-rne.mlir:1239:19
	and r10, r10, r26
	.loc	1 1237 19                       # parallel-rne.mlir:1237:19
	and r12, r12, r26
	.loc	1 1240 19                       # parallel-rne.mlir:1240:19
	seteq r16, r10, r3
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	seteq r23, r10, zero
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	seteq r18, r12, zero
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	seteq r22, r12, r3
	.loc	1 1249 19                       # parallel-rne.mlir:1249:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	and r12, r16, r18
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	and r16, r23, r22
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.s r18, r21, r11
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	or r12, r12, r16
	.loc	1 1250 19                       # parallel-rne.mlir:1250:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r16, zero, .LBB0_981
# %bb.980:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r18)
.LBB0_981:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r17)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r8, r16, zero
	max.u r9, r16, r22
	setlt.u r9, r3, r9
	and r16, r23, r27
	and r2, r8, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r9, r2
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r2, zero, .LBB0_983
# %bb.982:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r18)
.LBB0_983:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r2, zero, .LBB0_985
# %bb.984:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r18)
.LBB0_985:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r17)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r17, r2, zero
	seteq r13, r8, zero
	seteq r16, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r13
	and r9, r17, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	bneq r2, zero, .LBB0_978
# %bb.986:                              # %vector.body236
                                        #   in Loop: Header=BB0_979 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r18)
	j .LBB0_978
.LBB0_987:                              #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 1222 7 is_stmt 1              # parallel-rne.mlir:1222:7
	mfence { sm }
.LBB0_988:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1258 7                        # parallel-rne.mlir:1258:7
	core_id r2
	addli r4, zero, 6
	bneq r2, r4, .LBB0_1017
# %bb.989:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 1258 7                        # parallel-rne.mlir:1258:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_991
.LBB0_990:                              # %middle.block227
                                        #   in Loop: Header=BB0_991 Depth=2
	.loc	1 1266 9 is_stmt 1              # parallel-rne.mlir:1266:9
	load.d r[4:5], -704(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_1016
.LBB0_991:                              # %.preheader92
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1008 Depth 3
                                        #       Child Loop BB0_994 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[17:18], r[4:5], r2
	.loc	1 1267 11 is_stmt 1             # parallel-rne.mlir:1267:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1006
# %bb.992:                              # %scalar.ph219.preheader
                                        #   in Loop: Header=BB0_991 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_994
.LBB0_993:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	.loc	1 1267 11                       # parallel-rne.mlir:1267:11
	setlt.ul r2, r[4:5], r[6:7]
	.loc	1 1289 13 is_stmt 1             # parallel-rne.mlir:1289:13
	add.s r8, r25, r10
	.loc	1 1267 11                       # parallel-rne.mlir:1267:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 1289 13                       # parallel-rne.mlir:1289:13
	stores.w r11, 0(r8)
	.loc	1 1267 11                       # parallel-rne.mlir:1267:11
	beq r2, zero, .LBB0_990
.LBB0_994:                              # %scalar.ph219
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_991 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	add.ul r[8:9], r[4:5], r[17:18]
	lui r11, 523264
	lui r19, 523264
	slli r10, r8, 2
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	add.s r2, r24, r10
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.s r8, r21, r10
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	loads.w r2, 0(r2)
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	loads.w r20, 0(r8)
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	and r12, r2, r26
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	beq r12, r3, .LBB0_996
# %bb.995:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_996:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r10
	loads.w r2, 0(r2)
	and r13, r2, r26
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r13, zero, .LBB0_1004
# %bb.997:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r12, zero, .LBB0_1005
.LBB0_998:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	beq r13, r3, .LBB0_1000
.LBB0_999:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_1000:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	setlt.u r2, r3, r12
	lui r12, 523264
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r2, zero, .LBB0_1002
# %bb.1001:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r20, 0
.LBB0_1002:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	setlt.u r2, r3, r13
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r2, zero, .LBB0_993
# %bb.1003:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r12, 0
	j .LBB0_993
.LBB0_1004:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	beq r12, zero, .LBB0_998
.LBB0_1005:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_994 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r13, r3, .LBB0_999
	j .LBB0_1000
.LBB0_1006:                             # %vector.body221.preheader
                                        #   in Loop: Header=BB0_991 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[4:5], zero
	j .LBB0_1008
.LBB0_1007:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	.loc	1 1267 11 is_stmt 1             # parallel-rne.mlir:1267:11
	addli.d r[4:5], r[4:5], 4
	.loc	1 1289 13                       # parallel-rne.mlir:1289:13
	add.s r8, r25, r11
	.loc	1 1267 11                       # parallel-rne.mlir:1267:11
	seteq.d r2, r[4:5], r[14:15]
	.loc	1 1289 13                       # parallel-rne.mlir:1289:13
	stores.w r27, 8(r8)
	lui r27, 524288
	stores.w r12, 12(r8)
	stores.w r23, 4(r8)
	stores.w r10, 0(r8)
	.loc	1 1267 11                       # parallel-rne.mlir:1267:11
	bneq r2, zero, .LBB0_990
.LBB0_1008:                             # %vector.body221
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_991 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	add.ul r[10:11], r[4:5], r[17:18]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	add.s r19, r24, r11
	.loc	1 1268 19                       # parallel-rne.mlir:1268:19
	loads.w r10, 0(r13)
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	loads.w r12, 0(r19)
	.loc	1 1275 19                       # parallel-rne.mlir:1275:19
	and r10, r10, r26
	.loc	1 1273 19                       # parallel-rne.mlir:1273:19
	and r12, r12, r26
	.loc	1 1276 19                       # parallel-rne.mlir:1276:19
	seteq r16, r10, r3
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	seteq r23, r10, zero
	.loc	1 1277 19                       # parallel-rne.mlir:1277:19
	seteq r20, r12, zero
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	seteq r22, r12, r3
	.loc	1 1285 19                       # parallel-rne.mlir:1285:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	and r12, r16, r20
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	and r16, r23, r22
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.s r20, r21, r11
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	or r12, r12, r16
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r16, zero, .LBB0_1010
# %bb.1009:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_1010:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r19)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r8, r16, zero
	max.u r9, r16, r22
	setlt.u r9, r3, r9
	and r16, r23, r27
	and r2, r8, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r9, r2
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r2, zero, .LBB0_1012
# %bb.1011:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_1012:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	loads.w r2, 8(r13)
	loads.w r8, 8(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r27, r2, zero
	seteq r16, r8, zero
	seteq r22, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r16
	and r9, r27, r22
	lui r27, 523264
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r2, zero, .LBB0_1014
# %bb.1013:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r20)
.LBB0_1014:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	loads.w r2, 12(r13)
	loads.w r8, 12(r19)
	and r2, r2, r26
	and r8, r8, r26
	seteq r9, r2, r3
	seteq r19, r2, zero
	seteq r13, r8, zero
	seteq r16, r8, r3
	max.u r2, r2, r8
	setlt.u r2, r3, r2
	and r8, r9, r13
	and r9, r19, r16
	or r8, r8, r9
	or r2, r2, r8
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	bneq r2, zero, .LBB0_1007
# %bb.1015:                             # %vector.body221
                                        #   in Loop: Header=BB0_1008 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r20)
	j .LBB0_1007
.LBB0_1016:                             #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 1258 7 is_stmt 1              # parallel-rne.mlir:1258:7
	mfence { sm }
.LBB0_1017:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1294 7                        # parallel-rne.mlir:1294:7
	core_id r2
	addli r4, zero, 7
	bneq r2, r4, .LBB0_1046
# %bb.1018:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -732(r30)                 # 4-byte Folded Reload
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r4
	addli r4, zero, 16
	setlt.u r2, r2, r4
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 56
	.loc	1 1294 7                        # parallel-rne.mlir:1294:7
	xfence
	zext_int2long r[4:5], r2
	mfence { lm, sm, gm }
	j .LBB0_1020
.LBB0_1019:                             # %middle.block
                                        #   in Loop: Header=BB0_1020 Depth=2
	.loc	1 1302 9 is_stmt 1              # parallel-rne.mlir:1302:9
	load.d r[4:5], -712(r30)                # 8-byte Folded Reload
	load.d r[8:9], -648(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_1045
.LBB0_1020:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1037 Depth 3
                                        #       Child Loop BB0_1023 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1303 11 is_stmt 1             # parallel-rne.mlir:1303:11
	store.d r[4:5], -648(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[4:5], r2
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1035
# %bb.1021:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1020 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_1023
.LBB0_1022:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	setlt.ul r2, r[10:11], r[6:7]
	.loc	1 1325 13 is_stmt 1             # parallel-rne.mlir:1325:13
	add.s r4, r25, r12
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 1325 13                       # parallel-rne.mlir:1325:13
	stores.w r13, 0(r4)
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	beq r2, zero, .LBB0_1019
.LBB0_1023:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1020 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	add.ul r[4:5], r[10:11], r[8:9]
	lui r13, 523264
	lui r19, 523264
	slli r12, r4, 2
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.s r2, r24, r12
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.s r4, r21, r12
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	loads.w r2, 0(r2)
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	loads.w r20, 0(r4)
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	and r17, r2, r26
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	beq r17, r3, .LBB0_1025
# %bb.1024:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r20, 0
.LBB0_1025:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r12
	loads.w r2, 0(r2)
	and r18, r2, r26
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r18, zero, .LBB0_1033
# %bb.1026:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	lui r20, 523264
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r17, zero, .LBB0_1034
.LBB0_1027:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	beq r18, r3, .LBB0_1029
.LBB0_1028:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
.LBB0_1029:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	setlt.u r2, r3, r17
	lui r17, 523264
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r2, zero, .LBB0_1031
# %bb.1030:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r20, 0
.LBB0_1031:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	setlt.u r2, r3, r18
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r2, zero, .LBB0_1022
# %bb.1032:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r17, 0
	j .LBB0_1022
.LBB0_1033:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	addli r19, r20, 0
	lui r20, 523264
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	beq r17, zero, .LBB0_1027
.LBB0_1034:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1023 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r19, 0
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r18, r3, .LBB0_1028
	j .LBB0_1029
.LBB0_1035:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1020 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[17:18], zero
	j .LBB0_1037
.LBB0_1036:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	.loc	1 1303 11 is_stmt 1             # parallel-rne.mlir:1303:11
	addli.d r[17:18], r[17:18], 4
	.loc	1 1325 13                       # parallel-rne.mlir:1325:13
	add.s r4, r25, r11
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	seteq.d r2, r[17:18], r[14:15]
	.loc	1 1325 13                       # parallel-rne.mlir:1325:13
	stores.w r27, 8(r4)
	lui r27, 524288
	stores.w r12, 12(r4)
	stores.w r23, 4(r4)
	stores.w r10, 0(r4)
	.loc	1 1303 11                       # parallel-rne.mlir:1303:11
	bneq r2, zero, .LBB0_1019
.LBB0_1037:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1020 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	add.ul r[10:11], r[17:18], r[8:9]
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	slli r11, r10, 2
	add.s r13, r2, r11
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.s r19, r24, r11
	.loc	1 1304 19                       # parallel-rne.mlir:1304:19
	loads.w r10, 0(r13)
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	loads.w r12, 0(r19)
	.loc	1 1311 19                       # parallel-rne.mlir:1311:19
	and r10, r10, r26
	.loc	1 1309 19                       # parallel-rne.mlir:1309:19
	and r12, r12, r26
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	seteq r16, r10, r3
	.loc	1 1316 19                       # parallel-rne.mlir:1316:19
	seteq r23, r10, zero
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	seteq r20, r12, zero
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	seteq r22, r12, r3
	.loc	1 1321 19                       # parallel-rne.mlir:1321:19
	max.u r10, r10, r12
	setlt.u r10, r3, r10
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	and r12, r16, r20
	.loc	1 1317 19                       # parallel-rne.mlir:1317:19
	and r16, r23, r22
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.s r20, r21, r11
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	or r12, r12, r16
	.loc	1 1322 19                       # parallel-rne.mlir:1322:19
	or r16, r10, r12
	lui r12, 523264
	lui r10, 523264
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r16, zero, .LBB0_1039
# %bb.1038:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r10, 0(r20)
.LBB0_1039:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	loads.w r16, 4(r13)
	loads.w r22, 4(r19)
	and r16, r16, r26
	and r22, r22, r26
	seteq r23, r16, r3
	seteq r27, r22, zero
	seteq r2, r22, r3
	seteq r4, r16, zero
	max.u r5, r16, r22
	setlt.u r5, r3, r5
	and r16, r23, r27
	and r2, r4, r2
	lui r23, 523264
	or r2, r16, r2
	or r2, r5, r2
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r2, zero, .LBB0_1041
# %bb.1040:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r20)
.LBB0_1041:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	loads.w r2, 8(r13)
	loads.w r4, 8(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r27, r2, zero
	seteq r16, r4, zero
	seteq r22, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r16
	and r5, r27, r22
	lui r27, 523264
	or r4, r4, r5
	or r2, r2, r4
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r2, zero, .LBB0_1043
# %bb.1042:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r27, 8(r20)
.LBB0_1043:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	loads.w r2, 12(r13)
	loads.w r4, 12(r19)
	and r2, r2, r26
	and r4, r4, r26
	seteq r5, r2, r3
	seteq r19, r2, zero
	seteq r13, r4, zero
	seteq r16, r4, r3
	max.u r2, r2, r4
	setlt.u r2, r3, r2
	and r4, r5, r13
	and r5, r19, r16
	or r4, r4, r5
	or r2, r2, r4
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	bneq r2, zero, .LBB0_1036
# %bb.1044:                             # %vector.body
                                        #   in Loop: Header=BB0_1037 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r12, 12(r20)
	j .LBB0_1036
.LBB0_1045:                             #   in Loop: Header=BB0_7 Depth=1
	addli r12, zero, 128
	.loc	1 1294 7 is_stmt 1              # parallel-rne.mlir:1294:7
	mfence { sm }
.LBB0_1046:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	addli r2, zero, 255
	.loc	1 36 5                          # parallel-rne.mlir:36:5
	core_id r16
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	csr_set csr5, r2
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	addli r2, zero, 3
	.loc	1 1330 7                        # parallel-rne.mlir:1330:7
	sync_core
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	beq r16, r2, .LBB0_5
# %bb.1047:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -752(r30)              # 8-byte Folded Reload
	addli r22, zero, 64
	addli r23, zero, 8
	addli r24, zero, 4
	addli r21, zero, 1
	.loc	1 1342 7 is_stmt 1              # parallel-rne.mlir:1342:7
	bneq r16, zero, .LBB0_6
# %bb.1048:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -780(r30)                 # 4-byte Folded Reload
	.loc	1 1342 7                        # parallel-rne.mlir:1342:7
	load.d r[8:9], -776(r30)                # 8-byte Folded Reload
	load.d r[12:13], 24(r30)
	sext_int2long r[4:5], r2
	addli r2, zero, 448
	zext_int2long r[6:7], r2
	addli r2, zero, 17
	min.sl r[6:7], r[4:5], r[6:7]
	sll.d r[8:9], r[8:9], r2
	addli.d r[6:7], r[6:7], 64
	add.ul r[8:9], r[12:13], r[8:9]
	load.d r[13:14], -768(r30)              # 8-byte Folded Reload
	xwait r2, 0
	addli r12, zero, 128
	max.sl r[6:7], r[6:7], r[4:5]
	add.ul r[8:9], r[8:9], r[13:14]
	sub.sl r[4:5], r[6:7], r[4:5]
	zext_int2long r[6:7], r22
	.loc	1 1338 13 is_stmt 1             # parallel-rne.mlir:1338:13
	min.sl r[4:5], r[4:5], r[6:7]
	addli r6, zero, 5
	.loc	1 1342 7                        # parallel-rne.mlir:1342:7
	addli r7, zero, 2048
	lock zero, r6
	dma_cfg r21, zero, zero, 0
	dma_cfg zero, r21, zero, 1
	load.d r[13:14], -792(r30)              # 8-byte Folded Reload
	dma_cfg r9, zero, zero, 2
	slli r2, r13, 2
	dma_cfg r8, r25, r2, 3
	addli r2, zero, 512
	dma_cfg r7, r2, r4, 4
	addli r2, zero, 18
	dma_run zero
	unlock r6
	xsignal r2, 0
	j .LBB0_6
.LBB0_1049:                             # %._crit_edge
	.loc	1 1344 5                        # parallel-rne.mlir:1344:5
	xsignal zero, 0
	bneq r16, zero, .LBB0_1051
# %bb.1050:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1344 5                        # parallel-rne.mlir:1344:5
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
.LBB0_1051:
	.loc	1 1345 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1345:5
	addli sp, sp, 848
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
	.long	912                             # 0x390
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu3/cache/triton-p800-ops-5134b460d69771aa/division-0esx0txo" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
