	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_unk_fused_0,"ax",@progbits
	.globl	triton_unk_fused_0              # -- Begin function triton_unk_fused_0
	.type	triton_unk_fused_0,@function
triton_unk_fused_0:                     # @triton_unk_fused_0
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-5ol4ixz4" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -920
	addli r2, zero, 1
.Ltmp0:
	.loc	1 37 5 prologue_end             # parallel-rne.mlir:37:5
	core_id r9
	addli r30, sp, 856
	xsignal_mode_cfg r2
	beq r9, zero, .LBB0_2
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
	.loc	1 39 10 is_stmt 1               # parallel-rne.mlir:39:10
	load_param_i r3, 1
	loadli.w r4,  48(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -20(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w zero, -40(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w zero, -60(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w zero, -80(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w zero, -100(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w zero, -120(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w zero, -140(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w zero, -160(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w zero, -180(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w zero, -216(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
	storeli.w zero, -380(r30)
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w zero, -420(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
	storeli.w zero, -616(r30)
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w zero, -636(r30)
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
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 51 11                         # parallel-rne.mlir:51:11
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	.loc	1 52 11                         # parallel-rne.mlir:52:11
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	.loc	1 53 11                         # parallel-rne.mlir:53:11
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	.loc	1 54 11                         # parallel-rne.mlir:54:11
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	.loc	1 55 11                         # parallel-rne.mlir:55:11
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	.loc	1 56 11                         # parallel-rne.mlir:56:11
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	.loc	1 57 11                         # parallel-rne.mlir:57:11
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	storeli.w r3, -144(r30)
	.loc	1 58 11                         # parallel-rne.mlir:58:11
	storeli.w r3, -176(r30)
	storeli.w r3, -172(r30)
	storeli.w r3, -168(r30)
	storeli.w r3, -164(r30)
	.loc	1 59 11                         # parallel-rne.mlir:59:11
	storeli.w r3, -212(r30)
	storeli.w r3, -208(r30)
	storeli.w r3, -204(r30)
	storeli.w r3, -200(r30)
	storeli.w r3, -196(r30)
	storeli.w r3, -192(r30)
	storeli.w r3, -188(r30)
	storeli.w r3, -184(r30)
	.loc	1 60 11                         # parallel-rne.mlir:60:11
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
	.loc	1 61 11                         # parallel-rne.mlir:61:11
	storeli.w r3, -416(r30)
	storeli.w r3, -412(r30)
	storeli.w r3, -408(r30)
	storeli.w r3, -404(r30)
	storeli.w r3, -400(r30)
	storeli.w r3, -396(r30)
	storeli.w r3, -392(r30)
	storeli.w r3, -388(r30)
	storeli.w r3, -384(r30)
	.loc	1 62 11                         # parallel-rne.mlir:62:11
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
	.loc	1 63 11                         # parallel-rne.mlir:63:11
	storeli.w r3, -632(r30)
	storeli.w r3, -628(r30)
	storeli.w r3, -624(r30)
	storeli.w r3, -620(r30)
	.loc	1 45 10                         # parallel-rne.mlir:45:10
	mul.s r1, r2, r6
	.loc	1 46 10                         # parallel-rne.mlir:46:10
	fmac.s r2, r2, r6
	.loc	1 47 10                         # parallel-rne.mlir:47:10
	min.s r2, r2, r4
	.loc	1 64 5                          # parallel-rne.mlir:64:5
	ble.s r2, r1, .LBB0_1046
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 48 11 is_stmt 1               # parallel-rne.mlir:48:11
	sext_int2long r[10:11], r1
	lui r1, 15
	addli r24, zero, 128
	addli r27, zero, 4
	addli r28, zero, 1
	lui r16, 522240
	store.d r[2:3], -808(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -816(r30)               # 8-byte Folded Spill
	lui r1, 164
	lui r2, 228
	ori r1, r1, 2048
	storeli.w r1, -820(r30)                 # 4-byte Folded Spill
	lui r1, 196
	ori r1, r1, 2048
	storeli.w r1, -824(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 524287
	storeli.w r1, -828(r30)                 # 4-byte Folded Spill
	lui r1, 260
	ori r26, r2, 4095
	lui r2, 324
	ori r1, r1, 2048
	storeli.w r1, -832(r30)                 # 4-byte Folded Spill
	lui r1, 292
	ori r1, r1, 2048
	storeli.w r1, -836(r30)                 # 4-byte Folded Spill
	ori r1, r2, 2048
	lui r2, 356
	storeli.w r1, -840(r30)                 # 4-byte Folded Spill
	lui r1, 2047
	ori r13, r1, 4095
	ori r1, r2, 2048
	lui r2, 250738
	storeli.w r1, -844(r30)                 # 4-byte Folded Spill
	lui r1, 56
	ori r1, r1, 2115
	storeli.w r1, -848(r30)                 # 4-byte Folded Spill
	ori r1, r2, 1811
	lui r2, 1023
	storeli.w r1, -852(r30)                 # 4-byte Folded Spill
	lui r1, 259268
	ori r1, r1, 554
	storeli.w r1, -856(r30)                 # 4-byte Folded Spill
	ori r1, r2, 4095
	storeli.w r1, -740(r30)                 # 4-byte Folded Spill
	lui r1, 268288
	j .LBB0_7
.LBB0_5:                                # %.critedge32.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	addli r2, zero, 17
	addli r24, zero, 128
	addli r27, zero, 4
	addli r28, zero, 1
	xsignal r2, 0
	.loc	1 1333 7                        # parallel-rne.mlir:1333:7
	addli r2, zero, 26
	xsignal r2, 0
	.loc	1 1334 7                        # parallel-rne.mlir:1334:7
	addli r2, zero, 38
	xsignal r2, 0
	.loc	1 1335 7                        # parallel-rne.mlir:1335:7
	addli r2, zero, 40
	xsignal r2, 0
	load.d r[10:11], -760(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 64 5                          # parallel-rne.mlir:64:5
	load.d r[2:3], -808(r30)                # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 1
	setlt.sl r2, r[10:11], r[2:3]
	beq r2, zero, .LBB0_1046
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
                                        #     Child Loop BB0_33 Depth 2
                                        #     Child Loop BB0_40 Depth 2
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_43 Depth 3
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #     Child Loop BB0_98 Depth 2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_101 Depth 3
                                        #     Child Loop BB0_127 Depth 2
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_130 Depth 3
                                        #     Child Loop BB0_156 Depth 2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_158 Depth 3
                                        #     Child Loop BB0_183 Depth 2
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_186 Depth 3
                                        #     Child Loop BB0_212 Depth 2
                                        #       Child Loop BB0_229 Depth 3
                                        #       Child Loop BB0_215 Depth 3
                                        #     Child Loop BB0_241 Depth 2
                                        #       Child Loop BB0_258 Depth 3
                                        #       Child Loop BB0_244 Depth 3
                                        #     Child Loop BB0_275 Depth 2
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_276 Depth 3
                                        #     Child Loop BB0_281 Depth 2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
                                        #     Child Loop BB0_288 Depth 2
                                        #       Child Loop BB0_290 Depth 3
                                        #       Child Loop BB0_289 Depth 3
                                        #     Child Loop BB0_295 Depth 2
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_296 Depth 3
                                        #     Child Loop BB0_302 Depth 2
                                        #       Child Loop BB0_304 Depth 3
                                        #       Child Loop BB0_303 Depth 3
                                        #     Child Loop BB0_309 Depth 2
                                        #       Child Loop BB0_311 Depth 3
                                        #       Child Loop BB0_310 Depth 3
                                        #     Child Loop BB0_316 Depth 2
                                        #       Child Loop BB0_318 Depth 3
                                        #       Child Loop BB0_317 Depth 3
                                        #     Child Loop BB0_323 Depth 2
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_324 Depth 3
                                        #     Child Loop BB0_332 Depth 2
                                        #       Child Loop BB0_334 Depth 3
                                        #     Child Loop BB0_354 Depth 2
                                        #       Child Loop BB0_356 Depth 3
                                        #     Child Loop BB0_375 Depth 2
                                        #       Child Loop BB0_377 Depth 3
                                        #     Child Loop BB0_397 Depth 2
                                        #       Child Loop BB0_399 Depth 3
                                        #     Child Loop BB0_419 Depth 2
                                        #       Child Loop BB0_421 Depth 3
                                        #     Child Loop BB0_441 Depth 2
                                        #       Child Loop BB0_443 Depth 3
                                        #     Child Loop BB0_463 Depth 2
                                        #       Child Loop BB0_465 Depth 3
                                        #     Child Loop BB0_486 Depth 2
                                        #       Child Loop BB0_488 Depth 3
                                        #     Child Loop BB0_513 Depth 2
                                        #       Child Loop BB0_523 Depth 3
                                        #       Child Loop BB0_517 Depth 3
                                        #     Child Loop BB0_550 Depth 2
                                        #       Child Loop BB0_560 Depth 3
                                        #       Child Loop BB0_554 Depth 3
                                        #     Child Loop BB0_586 Depth 2
                                        #       Child Loop BB0_596 Depth 3
                                        #       Child Loop BB0_590 Depth 3
                                        #     Child Loop BB0_623 Depth 2
                                        #       Child Loop BB0_633 Depth 3
                                        #       Child Loop BB0_627 Depth 3
                                        #     Child Loop BB0_660 Depth 2
                                        #       Child Loop BB0_670 Depth 3
                                        #       Child Loop BB0_664 Depth 3
                                        #     Child Loop BB0_697 Depth 2
                                        #       Child Loop BB0_707 Depth 3
                                        #       Child Loop BB0_701 Depth 3
                                        #     Child Loop BB0_734 Depth 2
                                        #       Child Loop BB0_744 Depth 3
                                        #       Child Loop BB0_738 Depth 3
                                        #     Child Loop BB0_772 Depth 2
                                        #       Child Loop BB0_782 Depth 3
                                        #       Child Loop BB0_776 Depth 3
                                        #     Child Loop BB0_815 Depth 2
                                        #       Child Loop BB0_832 Depth 3
                                        #       Child Loop BB0_818 Depth 3
                                        #     Child Loop BB0_843 Depth 2
                                        #       Child Loop BB0_860 Depth 3
                                        #       Child Loop BB0_846 Depth 3
                                        #     Child Loop BB0_872 Depth 2
                                        #       Child Loop BB0_889 Depth 3
                                        #       Child Loop BB0_875 Depth 3
                                        #     Child Loop BB0_901 Depth 2
                                        #       Child Loop BB0_918 Depth 3
                                        #       Child Loop BB0_904 Depth 3
                                        #     Child Loop BB0_930 Depth 2
                                        #       Child Loop BB0_947 Depth 3
                                        #       Child Loop BB0_933 Depth 3
                                        #     Child Loop BB0_959 Depth 2
                                        #       Child Loop BB0_976 Depth 3
                                        #       Child Loop BB0_962 Depth 3
                                        #     Child Loop BB0_988 Depth 2
                                        #       Child Loop BB0_1005 Depth 3
                                        #       Child Loop BB0_991 Depth 3
                                        #     Child Loop BB0_1017 Depth 2
                                        #       Child Loop BB0_1034 Depth 3
                                        #       Child Loop BB0_1020 Depth 3
	.loc	1 88 13                         # parallel-rne.mlir:88:13
	loadli.w r2,  -636(r30)
	addli r17, zero, 64
	addli r3, r2, 1
	storeli.w r3, -636(r30)
	.loc	1 89 7                          # parallel-rne.mlir:89:7
	bneq r9, r27, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 18
	xwait r3, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	loadli.w r3,  48(r30)
	loadli.w r4,  44(r30)
	store.d r[10:11], -760(r30)             # 8-byte Folded Spill
	mod.s r8, r2, r27
	loadli.w r2,  -616(r30)
	loadli.w r7,  -216(r30)
	div.s r3, r10, r3
	slli r25, r8, 15
	div.s r3, r3, r4
	addli r4, zero, 32
	div.s r5, r3, r24
	slli r10, r5, 3
	slli r5, r5, 7
	sub.s r6, r4, r10
	addli r4, zero, 8
	sub.s r5, r3, r5
	min.s r6, r6, r4
	mod.s r3, r3, r6
	div.s r11, r5, r6
	loadli.w r5,  -420(r30)
	loadli.w r6,  -380(r30)
	add.s r8, r10, r3
	slli r3, r11, 7
	zext_int2long r[10:11], r11
	slli r4, r8, 6
	zext_int2long r[14:15], r8
	addli r8, zero, 0
	storeli.w r4, -788(r30)                 # 4-byte Folded Spill
	addli r4, zero, 7
	store.d r[14:15], -784(r30)             # 8-byte Folded Spill
	sll.d r[10:11], r[10:11], r4
	addli r4, zero, 17
	.loc	1 90 7 is_stmt 1                # parallel-rne.mlir:90:7
	sll.d r[18:19], r[10:11], r28
	load.d r[10:11], 8(r30)
	sll.d r[14:15], r[14:15], r4
	store.d r[18:19], -776(r30)             # 8-byte Folded Spill
	add.ul r[10:11], r[10:11], r[18:19]
	store.d r[10:11], -648(r30)             # 8-byte Folded Spill
	load.d r[10:11], -816(r30)              # 8-byte Folded Reload
	and.d r[19:20], r[14:15], r[10:11]
	j .LBB0_12
.LBB0_10:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 114 9                         # parallel-rne.mlir:114:9
	addli r4, zero, 2
	xwait r4, 0
	addli r4, zero, 5
	xwait r4, 0
	addli r4, zero, 3
	lock zero, zero
	ds_cfg r4, zero, 0
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r17, zero, 13
	shuffle_batch r10, r11, r24, 1
	unlock zero
	xsignal r4, 0
	xsignal r27, 0
.LBB0_11:                               # %.thread80
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	addli r2, r2, 1
	addli r5, r5, 1
	.loc	1 124 15 is_stmt 1              # parallel-rne.mlir:124:15
	addli r6, r6, 1
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r8, r8, 1
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r7, r7, 1
	.loc	1 90 7                          # parallel-rne.mlir:90:7
	addli r4, zero, 16
	beq r8, r4, .LBB0_27
.LBB0_12:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_23 Depth 3
                                        #       Child Loop BB0_24 Depth 3
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r4, zero, 9
	mod.s r10, r5, r4
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	addli r4, zero, 48
	mod.s r11, r2, r4
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	lui r4, 32
	slli r12, r10, 14
	.loc	1 107 15                        # parallel-rne.mlir:107:15
	slli r10, r11, 14
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	add.s r11, r12, r4
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r4, zero, 2
	beq r9, r4, .LBB0_10
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[21:22], r8
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	bneq r9, r28, .LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	addli r4, zero, 7
	sll.d r[21:22], r[21:22], r4
	loadli.w r4,  -740(r30)                 # 4-byte Folded Reload
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	add.ul r[21:22], r[21:22], r[14:15]
	zext_int2long r[23:24], r4
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	setlt.ul r10, r[23:24], r[21:22]
	addli.d r[23:24], r[19:20], 0
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	bneq r10, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[23:24], zero
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=2
	addli r4, zero, 2048
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	sub.sl r[23:24], r[21:22], r[23:24]
	addli r9, zero, 1
	zext_int2long r[27:28], r4
	addli r4, zero, 1984
	.loc	1 113 9 is_stmt 1               # parallel-rne.mlir:113:9
	sll.d r[21:22], r[21:22], r9
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	div.sl r[23:24], r[23:24], r[27:28]
	zext_int2long r[27:28], r4
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r4, zero, 3
	xwait r4, 0
	addli r4, zero, 4
	lock zero, r4
	addli r4, zero, 256
	dma_cfg r9, r9, zero, 0
	load.d r[9:10], 0(r30)
	add.ul r[21:22], r[9:10], r[21:22]
	addli r9, zero, 4096
	dma_cfg zero, r22, zero, 2
	dma_cfg r11, r21, r4, 3
	.loc	1 102 15                        # parallel-rne.mlir:102:15
	min.sl r[27:28], r[23:24], r[27:28]
	.loc	1 103 15                        # parallel-rne.mlir:103:15
	sub.sl r[23:24], r[27:28], r[23:24]
	addli r27, zero, 4
	addli r28, zero, 1
	.loc	1 113 9                         # parallel-rne.mlir:113:9
	addli r10, r23, 64
	addli r24, zero, 128
	dma_cfg r4, r9, r10, 4
	addli r4, zero, 2
	dma_run zero
	unlock r27
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r9
	j .LBB0_26
.LBB0_17:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	addli r4, zero, 8
	mod.s r11, r7, r4
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	addli r4, zero, 40
	mod.s r12, r6, r4
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	lui r4, 68
	slli r23, r11, 15
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	slli r11, r12, 15
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	add.s r12, r23, r4
	.loc	1 130 9                         # parallel-rne.mlir:130:9
	addli r4, zero, 7
	beq r9, r4, .LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r18, zero, 6
	.loc	1 130 9                         # parallel-rne.mlir:130:9
	bneq r9, r18, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_12 Depth=2
	addli r4, zero, 19
	sll.d r[10:11], r[21:22], r4
	addli r4, zero, 7
	xwait r4, 0
	load.d r[21:22], -648(r30)              # 8-byte Folded Reload
	lock zero, r27
	addli r4, zero, 256
	dma_cfg r28, r28, zero, 0
	add.ul r[10:11], r[21:22], r[10:11]
	dma_cfg zero, r11, zero, 2
	dma_cfg r12, r10, r4, 3
	addli r10, zero, 4096
	dma_cfg r4, r10, r24, 4
	dma_run zero
	unlock r27
	xsignal r18, 0
	.loc	1 131 9 is_stmt 1               # parallel-rne.mlir:131:9
	j .LBB0_11
.LBB0_20:                               #   in Loop: Header=BB0_12 Depth=2
	addli r4, zero, 6
	xwait r4, 0
	addli r4, zero, 9
	xwait r4, 0
	addli r4, zero, 3
	lock zero, zero
	ds_cfg r4, zero, 0
	addli r4, zero, 7
	ds_cfg r24, zero, 1
	ds_cfg r24, zero, 14
	ds_cfg r24, zero, 13
	shuffle_coa r11, r12, r24, 2
	unlock zero
	xsignal r4, 0
	addli r4, zero, 8
	j .LBB0_26
.LBB0_21:                               #   in Loop: Header=BB0_12 Depth=2
	.loc	1 133 9                         # parallel-rne.mlir:133:9
	bneq r9, r27, .LBB0_11
# %bb.22:                               #   in Loop: Header=BB0_12 Depth=2
	addli r4, zero, 8
	xwait r27, 0
	addli r12, zero, 1
	addli r21, zero, 1
	addli r22, zero, 0
	xwait r4, 0
	addli r4, zero, 64
	beq r8, zero, .LBB0_24
.LBB0_23:                               # %.preheader132
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r23, r22, 14
	slli r22, r22, 8
	lock zero, r12
	mm_cfg r4, r24, r4, 0
	or r23, r23, r11
	or r22, r22, r25
	mm_cfg r27, r27, r12, 2
	mm_acc r22, r10, r23, 5
	andi r23, r21, 1
	addli r22, zero, 1
	addli r21, zero, 0
	unlock r12
	bneq r23, zero, .LBB0_23
	j .LBB0_25
.LBB0_24:                               # %.preheader131
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r23, r22, 14
	slli r22, r22, 8
	lock zero, r12
	mm_cfg r4, r24, r4, 0
	or r23, r23, r11
	or r22, r22, r25
	mm_cfg r27, r27, r12, 2
	mm r22, r10, r23, 5
	andi r23, r21, 1
	addli r22, zero, 1
	addli r21, zero, 0
	unlock r12
	bneq r23, zero, .LBB0_24
.LBB0_25:                               # %.loopexit
                                        #   in Loop: Header=BB0_12 Depth=2
	addli r4, zero, 5
	addli r17, zero, 64
	xsignal r4, 0
	addli r4, zero, 9
.LBB0_26:                               # %.thread80
                                        #   in Loop: Header=BB0_12 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r4, 0
	j .LBB0_11
.LBB0_27:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 107 15 is_stmt 1              # parallel-rne.mlir:107:15
	storeli.w r2, -616(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r5, -420(r30)
	.loc	1 124 15                        # parallel-rne.mlir:124:15
	storeli.w r6, -380(r30)
	.loc	1 126 15                        # parallel-rne.mlir:126:15
	storeli.w r7, -216(r30)
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r9, r27, .LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xsignal r2, 0
.LBB0_29:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 1920
	.loc	1 144 13 is_stmt 1              # parallel-rne.mlir:144:13
	zext_int2long r[2:3], r3
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	loadli.w r7,  -180(r30)
	zext_int2long r[5:6], r4
	mod.s r8, r7, r27
	addli r7, r7, 1
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	min.ul r[5:6], r[2:3], r[5:6]
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	storeli.w r7, -180(r30)
	.loc	1 146 13                        # parallel-rne.mlir:146:13
	addli.d r[5:6], r[5:6], 128
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	max.ul r[5:6], r[5:6], r[2:3]
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	slli r8, r8, 9
	.loc	1 148 13                        # parallel-rne.mlir:148:13
	sub.sl r[2:3], r[5:6], r[2:3]
	zext_int2long r[5:6], r24
	.loc	1 149 13                        # parallel-rne.mlir:149:13
	min.ul r[10:11], r[2:3], r[5:6]
	lui r3, 132
	.loc	1 151 13                        # parallel-rne.mlir:151:13
	add.s r2, r8, r3
	ori r3, r3, 2048
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	store.d r[10:11], -800(r30)             # 8-byte Folded Spill
	bneq r9, r28, .LBB0_31
# %bb.30:                               # %.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli.d r[14:15], r[10:11], 0
	.loc	1 154 7                         # parallel-rne.mlir:154:7
	load.d r[7:8], 16(r30)
	load.d r[10:11], -776(r30)              # 8-byte Folded Reload
	addli r4, zero, 20
	xwait r4, 0
	lock zero, r27
	addli r4, zero, 512
	add.ul r[7:8], r[7:8], r[10:11]
	dma_cfg zero, r28, zero, 0
	slli r10, r14, 1
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r10, 3
	addli r2, zero, 256
	dma_cfg r4, r2, r28, 4
	addli r2, zero, 19
	dma_run zero
	unlock r27
	xsignal r2, 0
	.loc	1 156 13 is_stmt 1              # parallel-rne.mlir:156:13
	loadli.w r2,  -160(r30)
	mod.s r7, r2, r27
	addli r2, r2, 1
	storeli.w r2, -160(r30)
	slli r7, r7, 15
	add.s r24, r7, r3
	j .LBB0_35
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	loadli.w r7,  -160(r30)
	mod.s r8, r7, r27
	addli r7, r7, 1
	storeli.w r7, -160(r30)
	slli r8, r8, 15
	add.s r24, r8, r3
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r3, zero, 5
	bneq r9, r3, .LBB0_35
# %bb.32:                               #   in Loop: Header=BB0_7 Depth=1
	addli r4, zero, 10
	addli r3, zero, 0
	xwait r4, 0
	addli r4, zero, 19
	xwait r4, 0
	addli r4, zero, 23
	xwait r4, 0
	addli r4, zero, 2
	lock zero, r4
	lui r4, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r4, r4, zero, 0
	addli r4, zero, 127
	ew_cfg zero, r4, zero, 2
	lui r4, 8
	ew_cfg r28, zero, zero, 3
.LBB0_33:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.s r7, r24, r3
	add.s r8, r25, r3
	addli r3, r3, 512
	dsmadd r7, r8, r2, 0
	bneq r3, r4, .LBB0_33
# %bb.34:                               # %.thread198
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 2
	.loc	1 157 7                         # parallel-rne.mlir:157:7
	addli r2, zero, 11
	addli r8, zero, 2047
	lui r7, 260096
	unlock r4
	xsignal r2, 0
	addli r2, zero, 20
	xsignal r2, 0
	addli r2, zero, 24
	xsignal r2, 0
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	loadli.w r2,  -140(r30)
	mod.s r3, r2, r27
	addli r2, r2, 1
	storeli.w r2, -140(r30)
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	addli r2, zero, 26
	xwait r2, 0
	lock zero, r4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	slli r2, r3, 15
	loadli.w r3,  -820(r30)                 # 4-byte Folded Reload
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	ew_cfg zero, zero, zero, 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r3, r2, r3
	.loc	1 160 7                         # parallel-rne.mlir:160:7
	lui r2, 258048
	ewcoeff_cfg r2, zero, zero, 0
	addli r2, zero, 25
	ew_cfg zero, r8, zero, 2
	ew_cfg r27, zero, zero, 3
	ew_cfg r27, r27, zero, 19
	storeli.w r3, -648(r30)                 # 4-byte Folded Spill
	hp_ssmul r3, r24, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	loadli.w r2,  -120(r30)
	mod.s r3, r2, r27
	addli r2, r2, 1
	storeli.w r2, -120(r30)
	loadli.w r2,  -824(r30)                 # 4-byte Folded Reload
	slli r3, r3, 15
	add.s r12, r3, r2
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 28
	xwait r2, 0
	lock zero, r4
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r27, zero, zero, 3
	ew_cfg r27, r27, r27, 19
	dsmul r12, r24, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r2,  -100(r30)
	mod.s r3, r2, r27
	addli r2, r2, 1
	storeli.w r2, -100(r30)
	loadli.w r2,  -828(r30)                 # 4-byte Folded Reload
	slli r3, r3, 15
	add.s r10, r3, r2
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, zero, 30
	xwait r2, 0
	lock zero, r4
	addli r2, zero, 21
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r7, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r27, zero, zero, 3
	ew_cfg r27, r27, r27, 19
	dsmul r10, r12, r24, 0
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
	addli r2, zero, 27
	xsignal r2, 0
	addli r2, zero, 29
	xsignal r2, 0
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	loadli.w r2,  -80(r30)
	storeli.w r2, -764(r30)                 # 4-byte Folded Spill
	addli r2, r2, 1
	storeli.w r2, -80(r30)
	j .LBB0_37
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r2,  -140(r30)
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	loadli.w r3,  -120(r30)
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r10,  -100(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	loadli.w r4,  -820(r30)                 # 4-byte Folded Reload
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	loadli.w r11,  -80(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	mod.s r7, r2, r27
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	mod.s r8, r3, r27
	addli r3, r3, 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	addli r2, r2, 1
	storeli.w r11, -764(r30)                # 4-byte Folded Spill
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	storeli.w r3, -120(r30)
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	storeli.w r2, -140(r30)
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	mod.s r2, r10, r27
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	slli r3, r7, 15
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	slli r7, r8, 15
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r3, r3, r4
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	loadli.w r4,  -828(r30)                 # 4-byte Folded Reload
	slli r2, r2, 15
	.loc	1 162 13                        # parallel-rne.mlir:162:13
	storeli.w r3, -648(r30)                 # 4-byte Folded Spill
	loadli.w r3,  -824(r30)                 # 4-byte Folded Reload
	add.s r12, r7, r3
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	addli r3, r10, 1
	add.s r10, r2, r4
	.loc	1 170 7                         # parallel-rne.mlir:170:7
	addli r2, zero, 3
	.loc	1 165 13                        # parallel-rne.mlir:165:13
	storeli.w r3, -100(r30)
	.loc	1 168 13                        # parallel-rne.mlir:168:13
	addli r3, r11, 1
	storeli.w r3, -80(r30)
	bneq r9, r2, .LBB0_37
# %bb.36:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 170 7                         # parallel-rne.mlir:170:7
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
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	addli r2, zero, 255
	.loc	1 175 7                         # parallel-rne.mlir:175:7
	xfence
	.loc	1 176 7                         # parallel-rne.mlir:176:7
	mfence { lm, sm, gm }
	.loc	1 177 7                         # parallel-rne.mlir:177:7
	csr_set csr5, r2
	sub.s r2, r25, r12
	storeli.w r2, -736(r30)                 # 4-byte Folded Spill
	sub.s r2, r25, r24
	storeli.w r2, -744(r30)                 # 4-byte Folded Spill
	sub.s r2, r25, r10
	storeli.w r2, -748(r30)                 # 4-byte Folded Spill
	addli r2, zero, 7
	zext_int2long r[2:3], r2
	store.d r[2:3], -720(r30)               # 8-byte Folded Spill
	addli r2, zero, 127
	sync_core
	storeli.w r24, -656(r30)                # 4-byte Folded Spill
	zext_int2long r[27:28], r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	bneq r2, zero, .LBB0_66
# %bb.38:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], zero
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	storeli.w r2, -672(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_40
.LBB0_39:                               # %middle.block709
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 186 9 is_stmt 1               # parallel-rne.mlir:186:9
	load.d r[2:3], -720(r30)                # 8-byte Folded Reload
	load.d r[7:8], -664(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_65
.LBB0_40:                               # %.preheader130
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_57 Depth 3
                                        #       Child Loop BB0_43 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	store.d r[3:4], -664(r30)               # 8-byte Folded Spill
	sll.d r[14:15], r[3:4], r2
	loadli.w r2,  -672(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_55
# %bb.41:                               # %scalar.ph701.preheader
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_43
.LBB0_42:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	setlt.ul r2, r[17:18], r[27:28]
	.loc	1 209 13 is_stmt 1              # parallel-rne.mlir:209:13
	add.s r3, r25, r3
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 209 13                        # parallel-rne.mlir:209:13
	stores.w r11, 0(r3)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	beq r2, zero, .LBB0_39
.LBB0_43:                               # %scalar.ph701
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[2:3], r[17:18], r[14:15]
	lui r11, 523264
	lui r20, 523264
	slli r3, r2, 2
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r2, r24, r3
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r4, r10, r3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r2, 0(r2)
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	loads.w r21, 0(r4)
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	and r2, r2, r26
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	beq r2, r16, .LBB0_45
# %bb.44:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_45:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	add.s r4, r12, r3
	loads.w r4, 0(r4)
	and r19, r4, r26
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	beq r19, zero, .LBB0_53
# %bb.46:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_54
.LBB0_47:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	beq r19, r16, .LBB0_49
.LBB0_48:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_49:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r4, r16, r2
	lui r2, 523264
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r4, zero, .LBB0_51
# %bb.50:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r21, 0
.LBB0_51:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	setlt.u r4, r16, r19
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r4, zero, .LBB0_42
# %bb.52:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_42
.LBB0_53:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	lui r21, 523264
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	beq r2, zero, .LBB0_47
.LBB0_54:                               # %scalar.ph701
                                        #   in Loop: Header=BB0_43 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r19, r16, .LBB0_48
	j .LBB0_49
.LBB0_55:                               # %vector.body703.preheader
                                        #   in Loop: Header=BB0_40 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_57
.LBB0_56:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 187 11 is_stmt 1              # parallel-rne.mlir:187:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 209 13                        # parallel-rne.mlir:209:13
	add.s r3, r25, r3
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	seteq.d r4, r[18:19], r[5:6]
	.loc	1 209 13                        # parallel-rne.mlir:209:13
	stores.w r17, 12(r3)
	stores.w r2, 8(r3)
	stores.w r23, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 187 11                        # parallel-rne.mlir:187:11
	bneq r4, zero, .LBB0_39
.LBB0_57:                               # %vector.body703
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_40 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	add.ul r[2:3], r[18:19], r[14:15]
	slli r3, r2, 2
	add.s r20, r12, r3
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	add.s r21, r24, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	loads.w r2, 0(r20)
	.loc	1 189 19                        # parallel-rne.mlir:189:19
	loads.w r11, 0(r21)
	.loc	1 195 19                        # parallel-rne.mlir:195:19
	and r2, r2, r26
	.loc	1 193 19                        # parallel-rne.mlir:193:19
	and r11, r11, r26
	.loc	1 196 19                        # parallel-rne.mlir:196:19
	seteq r17, r2, r16
	.loc	1 197 19                        # parallel-rne.mlir:197:19
	seteq r22, r11, zero
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	seteq r7, r2, zero
	.loc	1 199 19                        # parallel-rne.mlir:199:19
	seteq r23, r11, r16
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	max.u r2, r2, r11
	lui r11, 523264
	setlt.u r2, r16, r2
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	and r8, r17, r22
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	and r7, r7, r23
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	add.s r22, r10, r3
	lui r17, 523264
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	or r7, r8, r7
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	or r2, r2, r7
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_59
# %bb.58:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_59:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	loads.w r2, 4(r20)
	loads.w r7, 4(r21)
	and r2, r2, r26
	and r7, r7, r26
	seteq r8, r2, r16
	seteq r24, r2, zero
	seteq r4, r7, r16
	seteq r23, r7, zero
	max.u r2, r2, r7
	setlt.u r2, r16, r2
	and r7, r8, r23
	and r4, r24, r4
	lui r23, 523264
	or r4, r7, r4
	or r2, r2, r4
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r2, zero, .LBB0_61
# %bb.60:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r22)
.LBB0_61:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	loads.w r2, 8(r20)
	loads.w r4, 8(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r9, r2, zero
	seteq r8, r4, zero
	seteq r24, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r9, r24
	or r4, r4, r7
	or r4, r2, r4
	lui r2, 523264
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r4, zero, .LBB0_63
# %bb.62:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r22)
.LBB0_63:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	loads.w r4, 12(r20)
	loads.w r7, 12(r21)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r7, r7, r26
	seteq r8, r4, r16
	seteq r21, r4, zero
	seteq r9, r7, zero
	seteq r20, r7, r16
	max.u r4, r4, r7
	setlt.u r4, r16, r4
	and r7, r8, r9
	and r8, r21, r20
	or r7, r7, r8
	or r4, r4, r7
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	bneq r4, zero, .LBB0_56
# %bb.64:                               # %vector.body703
                                        #   in Loop: Header=BB0_57 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r22)
	j .LBB0_56
.LBB0_65:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 178 7                         # parallel-rne.mlir:178:7
	mfence { sm }
.LBB0_66:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 15
	zext_int2long r[3:4], r3
	.loc	1 214 7 is_stmt 1               # parallel-rne.mlir:214:7
	store.d r[3:4], -664(r30)               # 8-byte Folded Spill
	addli r3, zero, 1
	bneq r2, r3, .LBB0_95
# %bb.67:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 214 7                         # parallel-rne.mlir:214:7
	storeli.w r2, -680(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_69
.LBB0_68:                               # %middle.block694
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 222 9 is_stmt 1               # parallel-rne.mlir:222:9
	load.d r[2:3], -664(r30)                # 8-byte Folded Reload
	load.d r[7:8], -672(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_94
.LBB0_69:                               # %.preheader129
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_86 Depth 3
                                        #       Child Loop BB0_72 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 223 11 is_stmt 1              # parallel-rne.mlir:223:11
	store.d r[3:4], -672(r30)               # 8-byte Folded Spill
	sll.d r[14:15], r[3:4], r2
	loadli.w r2,  -680(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_84
# %bb.70:                               # %scalar.ph686.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_72
.LBB0_71:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	setlt.ul r2, r[17:18], r[27:28]
	.loc	1 245 13 is_stmt 1              # parallel-rne.mlir:245:13
	add.s r3, r25, r3
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	stores.w r11, 0(r3)
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	beq r2, zero, .LBB0_68
.LBB0_72:                               # %scalar.ph686
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.ul r[2:3], r[17:18], r[14:15]
	lui r11, 523264
	lui r20, 523264
	slli r3, r2, 2
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.s r2, r24, r3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r4, r10, r3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	loads.w r2, 0(r2)
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	loads.w r21, 0(r4)
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r2, r2, r26
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r2, r16, .LBB0_74
# %bb.73:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_74:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	add.s r4, r12, r3
	loads.w r4, 0(r4)
	and r19, r4, r26
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r19, zero, .LBB0_82
# %bb.75:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r2, zero, .LBB0_83
.LBB0_76:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	beq r19, r16, .LBB0_78
.LBB0_77:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_78:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r4, r16, r2
	lui r2, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r4, zero, .LBB0_80
# %bb.79:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r21, 0
.LBB0_80:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	setlt.u r4, r16, r19
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r4, zero, .LBB0_71
# %bb.81:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_71
.LBB0_82:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	lui r21, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r2, zero, .LBB0_76
.LBB0_83:                               # %scalar.ph686
                                        #   in Loop: Header=BB0_72 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r19, r16, .LBB0_77
	j .LBB0_78
.LBB0_84:                               # %vector.body688.preheader
                                        #   in Loop: Header=BB0_69 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_86
.LBB0_85:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 223 11 is_stmt 1              # parallel-rne.mlir:223:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	add.s r3, r25, r3
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	seteq.d r4, r[18:19], r[5:6]
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	stores.w r17, 12(r3)
	stores.w r2, 8(r3)
	stores.w r23, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 223 11                        # parallel-rne.mlir:223:11
	bneq r4, zero, .LBB0_68
.LBB0_86:                               # %vector.body688
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	add.ul r[2:3], r[18:19], r[14:15]
	slli r3, r2, 2
	add.s r20, r12, r3
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	add.s r21, r24, r3
	.loc	1 224 19                        # parallel-rne.mlir:224:19
	loads.w r2, 0(r20)
	.loc	1 225 19                        # parallel-rne.mlir:225:19
	loads.w r4, 0(r21)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r2, r2, r26
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	and r4, r4, r26
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	seteq r9, r2, r16
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	seteq r22, r2, zero
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	seteq r11, r4, zero
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	seteq r17, r4, r16
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	and r4, r9, r11
	.loc	1 237 19                        # parallel-rne.mlir:237:19
	and r9, r22, r17
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.s r22, r10, r3
	lui r17, 523264
	lui r11, 523264
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	or r4, r4, r9
	.loc	1 242 19                        # parallel-rne.mlir:242:19
	or r2, r2, r4
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r2, zero, .LBB0_88
# %bb.87:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_88:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r2, 4(r20)
	loads.w r4, 4(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r9, r2, r16
	seteq r7, r2, zero
	seteq r24, r4, r16
	seteq r23, r4, zero
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r9, r23
	and r7, r7, r24
	lui r23, 523264
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r2, zero, .LBB0_90
# %bb.89:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r22)
.LBB0_90:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r2, 8(r20)
	loads.w r4, 8(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r24, r2, zero
	seteq r8, r4, zero
	seteq r9, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r24, r9
	or r4, r4, r7
	or r4, r2, r4
	lui r2, 523264
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r4, zero, .LBB0_92
# %bb.91:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r22)
.LBB0_92:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	loads.w r4, 12(r20)
	loads.w r7, 12(r21)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r7, r7, r26
	seteq r8, r4, r16
	seteq r21, r4, zero
	seteq r9, r7, zero
	seteq r20, r7, r16
	max.u r4, r4, r7
	setlt.u r4, r16, r4
	and r7, r8, r9
	and r8, r21, r20
	or r7, r7, r8
	or r4, r4, r7
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r4, zero, .LBB0_85
# %bb.93:                               # %vector.body688
                                        #   in Loop: Header=BB0_86 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r22)
	j .LBB0_85
.LBB0_94:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 214 7 is_stmt 1               # parallel-rne.mlir:214:7
	mfence { sm }
.LBB0_95:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	zext_int2long r[2:3], r2
	.loc	1 250 7 is_stmt 1               # parallel-rne.mlir:250:7
	store.d r[2:3], -672(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_124
# %bb.96:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	.loc	1 250 7                         # parallel-rne.mlir:250:7
	storeli.w r2, -688(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_98
.LBB0_97:                               # %middle.block679
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 258 9 is_stmt 1               # parallel-rne.mlir:258:9
	load.d r[2:3], -672(r30)                # 8-byte Folded Reload
	load.d r[7:8], -680(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_123
.LBB0_98:                               # %.preheader128
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_115 Depth 3
                                        #       Child Loop BB0_101 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 259 11 is_stmt 1              # parallel-rne.mlir:259:11
	store.d r[3:4], -680(r30)               # 8-byte Folded Spill
	sll.d r[14:15], r[3:4], r2
	loadli.w r2,  -688(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_113
# %bb.99:                               # %scalar.ph671.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_101
.LBB0_100:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	setlt.ul r2, r[17:18], r[27:28]
	.loc	1 281 13 is_stmt 1              # parallel-rne.mlir:281:13
	add.s r3, r25, r3
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 281 13                        # parallel-rne.mlir:281:13
	stores.w r11, 0(r3)
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	beq r2, zero, .LBB0_97
.LBB0_101:                              # %scalar.ph671
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.ul r[2:3], r[17:18], r[14:15]
	lui r11, 523264
	lui r20, 523264
	slli r3, r2, 2
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.s r2, r24, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.s r4, r10, r3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	loads.w r2, 0(r2)
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	loads.w r21, 0(r4)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r2, r2, r26
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	beq r2, r16, .LBB0_103
# %bb.102:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_103:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	add.s r4, r12, r3
	loads.w r4, 0(r4)
	and r19, r4, r26
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	beq r19, zero, .LBB0_111
# %bb.104:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r2, zero, .LBB0_112
.LBB0_105:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	beq r19, r16, .LBB0_107
.LBB0_106:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_107:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	setlt.u r4, r16, r2
	lui r2, 523264
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_109
# %bb.108:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r21, 0
.LBB0_109:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	setlt.u r4, r16, r19
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_100
# %bb.110:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_100
.LBB0_111:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	lui r21, 523264
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	beq r2, zero, .LBB0_105
.LBB0_112:                              # %scalar.ph671
                                        #   in Loop: Header=BB0_101 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r19, r16, .LBB0_106
	j .LBB0_107
.LBB0_113:                              # %vector.body673.preheader
                                        #   in Loop: Header=BB0_98 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_115
.LBB0_114:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 259 11 is_stmt 1              # parallel-rne.mlir:259:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 281 13                        # parallel-rne.mlir:281:13
	add.s r3, r25, r3
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	seteq.d r4, r[18:19], r[5:6]
	.loc	1 281 13                        # parallel-rne.mlir:281:13
	stores.w r17, 12(r3)
	stores.w r2, 8(r3)
	stores.w r23, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 259 11                        # parallel-rne.mlir:259:11
	bneq r4, zero, .LBB0_97
.LBB0_115:                              # %vector.body673
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_98 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	add.ul r[2:3], r[18:19], r[14:15]
	slli r3, r2, 2
	add.s r20, r12, r3
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	add.s r21, r24, r3
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	loads.w r2, 0(r20)
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	loads.w r4, 0(r21)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r2, r2, r26
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r4, r4, r26
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	seteq r9, r2, r16
	.loc	1 272 19                        # parallel-rne.mlir:272:19
	seteq r22, r2, zero
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	seteq r11, r4, zero
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	seteq r17, r4, r16
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	and r4, r9, r11
	.loc	1 273 19                        # parallel-rne.mlir:273:19
	and r9, r22, r17
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	add.s r22, r10, r3
	lui r17, 523264
	lui r11, 523264
	.loc	1 274 19                        # parallel-rne.mlir:274:19
	or r4, r4, r9
	.loc	1 278 19                        # parallel-rne.mlir:278:19
	or r2, r2, r4
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r2, zero, .LBB0_117
# %bb.116:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_117:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r2, 4(r20)
	loads.w r4, 4(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r9, r2, r16
	seteq r7, r2, zero
	seteq r24, r4, r16
	seteq r23, r4, zero
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r9, r23
	and r7, r7, r24
	lui r23, 523264
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r22)
.LBB0_119:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r2, 8(r20)
	loads.w r4, 8(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r24, r2, zero
	seteq r8, r4, zero
	seteq r9, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r24, r9
	or r4, r4, r7
	or r4, r2, r4
	lui r2, 523264
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_121
# %bb.120:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r22)
.LBB0_121:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	loads.w r4, 12(r20)
	loads.w r7, 12(r21)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r7, r7, r26
	seteq r8, r4, r16
	seteq r21, r4, zero
	seteq r9, r7, zero
	seteq r20, r7, r16
	max.u r4, r4, r7
	setlt.u r4, r16, r4
	and r7, r8, r9
	and r8, r21, r20
	or r7, r7, r8
	or r4, r4, r7
	.loc	1 279 19                        # parallel-rne.mlir:279:19
	bneq r4, zero, .LBB0_114
# %bb.122:                              # %vector.body673
                                        #   in Loop: Header=BB0_115 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r22)
	j .LBB0_114
.LBB0_123:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 250 7 is_stmt 1               # parallel-rne.mlir:250:7
	mfence { sm }
.LBB0_124:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	zext_int2long r[2:3], r2
	.loc	1 286 7 is_stmt 1               # parallel-rne.mlir:286:7
	store.d r[2:3], -680(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_153
# %bb.125:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 286 7                         # parallel-rne.mlir:286:7
	storeli.w r2, -696(r30)                 # 4-byte Folded Spill
	addli r2, zero, 24
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_127
.LBB0_126:                              # %middle.block664
                                        #   in Loop: Header=BB0_127 Depth=2
	.loc	1 294 9 is_stmt 1               # parallel-rne.mlir:294:9
	load.d r[2:3], -680(r30)                # 8-byte Folded Reload
	load.d r[7:8], -688(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_152
.LBB0_127:                              # %.preheader127
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_144 Depth 3
                                        #       Child Loop BB0_130 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 295 11 is_stmt 1              # parallel-rne.mlir:295:11
	store.d r[3:4], -688(r30)               # 8-byte Folded Spill
	sll.d r[14:15], r[3:4], r2
	loadli.w r2,  -696(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_142
# %bb.128:                              # %scalar.ph656.preheader
                                        #   in Loop: Header=BB0_127 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[17:18], zero
	j .LBB0_130
.LBB0_129:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 295 11                        # parallel-rne.mlir:295:11
	setlt.ul r2, r[17:18], r[27:28]
	.loc	1 317 13 is_stmt 1              # parallel-rne.mlir:317:13
	add.s r3, r25, r3
	.loc	1 295 11                        # parallel-rne.mlir:295:11
	addli.d r[17:18], r[17:18], 1
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r11, 0(r3)
	.loc	1 295 11                        # parallel-rne.mlir:295:11
	beq r2, zero, .LBB0_126
.LBB0_130:                              # %scalar.ph656
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	add.ul r[2:3], r[17:18], r[14:15]
	lui r11, 523264
	lui r20, 523264
	slli r3, r2, 2
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.s r2, r24, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.s r4, r10, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	loads.w r2, 0(r2)
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	loads.w r21, 0(r4)
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	and r2, r2, r26
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r2, r16, .LBB0_132
# %bb.131:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_132:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	add.s r4, r12, r3
	loads.w r4, 0(r4)
	and r19, r4, r26
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r19, zero, .LBB0_140
# %bb.133:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r2, zero, .LBB0_141
.LBB0_134:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	beq r19, r16, .LBB0_136
.LBB0_135:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_136:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	setlt.u r4, r16, r2
	lui r2, 523264
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_138
# %bb.137:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r21, 0
.LBB0_138:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	setlt.u r4, r16, r19
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_129
# %bb.139:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_129
.LBB0_140:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	lui r21, 523264
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	beq r2, zero, .LBB0_134
.LBB0_141:                              # %scalar.ph656
                                        #   in Loop: Header=BB0_130 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r19, r16, .LBB0_135
	j .LBB0_136
.LBB0_142:                              # %vector.body658.preheader
                                        #   in Loop: Header=BB0_127 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[18:19], zero
	j .LBB0_144
.LBB0_143:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 295 11 is_stmt 1              # parallel-rne.mlir:295:11
	addli.d r[18:19], r[18:19], 4
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	add.s r3, r25, r3
	.loc	1 295 11                        # parallel-rne.mlir:295:11
	seteq.d r4, r[18:19], r[5:6]
	.loc	1 317 13                        # parallel-rne.mlir:317:13
	stores.w r17, 12(r3)
	stores.w r2, 8(r3)
	stores.w r23, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 295 11                        # parallel-rne.mlir:295:11
	bneq r4, zero, .LBB0_126
.LBB0_144:                              # %vector.body658
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_127 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	add.ul r[2:3], r[18:19], r[14:15]
	slli r3, r2, 2
	add.s r20, r12, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	add.s r21, r24, r3
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	loads.w r2, 0(r20)
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	loads.w r4, 0(r21)
	.loc	1 303 19                        # parallel-rne.mlir:303:19
	and r2, r2, r26
	.loc	1 301 19                        # parallel-rne.mlir:301:19
	and r4, r4, r26
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	seteq r9, r2, r16
	.loc	1 308 19                        # parallel-rne.mlir:308:19
	seteq r22, r2, zero
	.loc	1 305 19                        # parallel-rne.mlir:305:19
	seteq r11, r4, zero
	.loc	1 307 19                        # parallel-rne.mlir:307:19
	seteq r17, r4, r16
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	and r4, r9, r11
	.loc	1 309 19                        # parallel-rne.mlir:309:19
	and r9, r22, r17
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	add.s r22, r10, r3
	lui r17, 523264
	lui r11, 523264
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	or r4, r4, r9
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	or r2, r2, r4
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r2, zero, .LBB0_146
# %bb.145:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_146:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r2, 4(r20)
	loads.w r4, 4(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r9, r2, r16
	seteq r7, r2, zero
	seteq r24, r4, r16
	seteq r23, r4, zero
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r9, r23
	and r7, r7, r24
	lui r23, 523264
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r2, zero, .LBB0_148
# %bb.147:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r22)
.LBB0_148:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r2, 8(r20)
	loads.w r4, 8(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r24, r2, zero
	seteq r8, r4, zero
	seteq r9, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r24, r9
	or r4, r4, r7
	or r4, r2, r4
	lui r2, 523264
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_150
# %bb.149:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r22)
.LBB0_150:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	loads.w r4, 12(r20)
	loads.w r7, 12(r21)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r7, r7, r26
	seteq r8, r4, r16
	seteq r21, r4, zero
	seteq r9, r7, zero
	seteq r20, r7, r16
	max.u r4, r4, r7
	setlt.u r4, r16, r4
	and r7, r8, r9
	and r8, r21, r20
	or r7, r7, r8
	or r4, r4, r7
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_143
# %bb.151:                              # %vector.body658
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r22)
	j .LBB0_143
.LBB0_152:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 286 7 is_stmt 1               # parallel-rne.mlir:286:7
	mfence { sm }
.LBB0_153:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 39
	zext_int2long r[2:3], r2
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	store.d r[2:3], -688(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_180
# %bb.154:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 322 7                         # parallel-rne.mlir:322:7
	storeli.w r2, -704(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_156
.LBB0_155:                              # %middle.block649
                                        #   in Loop: Header=BB0_156 Depth=2
	.loc	1 330 9 is_stmt 1               # parallel-rne.mlir:330:9
	load.d r[2:3], -688(r30)                # 8-byte Folded Reload
	load.d r[7:8], -696(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_179
.LBB0_156:                              # %.preheader126
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_171 Depth 3
                                        #       Child Loop BB0_158 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[7:8], zero
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	store.d r[3:4], -696(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[3:4], r2
	loadli.w r2,  -704(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_158
	j .LBB0_171
.LBB0_157:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.ul r2, r[7:8], r[27:28]
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	add.s r3, r25, r3
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	stores.w r11, 0(r3)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	beq r2, zero, .LBB0_155
.LBB0_158:                              # %scalar.ph641
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[2:3], r[7:8], r[18:19]
	lui r11, 523264
	lui r20, 523264
	slli r3, r2, 2
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.s r2, r24, r3
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.s r4, r10, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	loads.w r2, 0(r2)
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	loads.w r21, 0(r4)
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	and r2, r2, r26
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	beq r2, r16, .LBB0_160
# %bb.159:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r20, r21, 0
.LBB0_160:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	add.s r4, r12, r3
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	beq r17, zero, .LBB0_168
# %bb.161:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r21, 0
	lui r21, 523264
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_169
.LBB0_162:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	beq r17, r16, .LBB0_164
.LBB0_163:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
.LBB0_164:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r4, r16, r2
	lui r2, 523264
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r4, zero, .LBB0_166
# %bb.165:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r21, 0
.LBB0_166:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	setlt.u r4, r16, r17
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r4, zero, .LBB0_157
# %bb.167:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_157
.LBB0_168:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	lui r21, 523264
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	beq r2, zero, .LBB0_162
.LBB0_169:                              # %scalar.ph641
                                        #   in Loop: Header=BB0_158 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r20, 0
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r17, r16, .LBB0_163
	j .LBB0_164
.LBB0_170:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 331 11 is_stmt 1              # parallel-rne.mlir:331:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	add.s r3, r25, r3
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 353 13                        # parallel-rne.mlir:353:13
	stores.w r17, 12(r3)
	stores.w r2, 8(r3)
	stores.w r23, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 331 11                        # parallel-rne.mlir:331:11
	bneq r4, zero, .LBB0_155
.LBB0_171:                              # %vector.body643
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_156 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	add.ul r[2:3], r[7:8], r[18:19]
	slli r3, r2, 2
	add.s r20, r12, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	add.s r21, r24, r3
	.loc	1 332 19                        # parallel-rne.mlir:332:19
	loads.w r2, 0(r20)
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	loads.w r4, 0(r21)
	.loc	1 339 19                        # parallel-rne.mlir:339:19
	and r2, r2, r26
	.loc	1 337 19                        # parallel-rne.mlir:337:19
	and r4, r4, r26
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	seteq r9, r2, r16
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	seteq r22, r2, zero
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	seteq r11, r4, zero
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	seteq r17, r4, r16
	.loc	1 349 19                        # parallel-rne.mlir:349:19
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r4, r9, r11
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r9, r22, r17
	.loc	1 334 19                        # parallel-rne.mlir:334:19
	add.s r22, r10, r3
	lui r17, 523264
	lui r11, 523264
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	or r4, r4, r9
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	or r2, r2, r4
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_173
# %bb.172:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_173:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r2, 4(r20)
	loads.w r4, 4(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r9, r2, r16
	seteq r14, r2, zero
	seteq r23, r4, zero
	seteq r24, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r9, r23
	and r9, r14, r24
	lui r23, 523264
	or r4, r4, r9
	or r2, r2, r4
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r2, zero, .LBB0_175
# %bb.174:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r22)
.LBB0_175:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r2, 8(r20)
	loads.w r4, 8(r21)
	and r2, r2, r26
	and r4, r4, r26
	seteq r9, r2, r16
	seteq r24, r2, zero
	seteq r14, r4, zero
	seteq r15, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r9, r14
	and r9, r24, r15
	or r4, r4, r9
	or r4, r2, r4
	lui r2, 523264
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r4, zero, .LBB0_177
# %bb.176:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r2, 8(r22)
.LBB0_177:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	loads.w r4, 12(r20)
	loads.w r9, 12(r21)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r9, r9, r26
	seteq r14, r4, r16
	seteq r21, r4, zero
	seteq r15, r9, zero
	seteq r20, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r14, r15
	and r14, r21, r20
	or r9, r9, r14
	or r4, r4, r9
	.loc	1 351 19                        # parallel-rne.mlir:351:19
	bneq r4, zero, .LBB0_170
# %bb.178:                              # %vector.body643
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 12(r22)
	j .LBB0_170
.LBB0_179:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 322 7 is_stmt 1               # parallel-rne.mlir:322:7
	mfence { sm }
.LBB0_180:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	zext_int2long r[2:3], r2
	.loc	1 358 7 is_stmt 1               # parallel-rne.mlir:358:7
	store.d r[2:3], -696(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 5
	bneq r2, r3, .LBB0_209
# %bb.181:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 358 7                         # parallel-rne.mlir:358:7
	storeli.w r2, -712(r30)                 # 4-byte Folded Spill
	addli r2, zero, 40
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_183
.LBB0_182:                              # %middle.block634
                                        #   in Loop: Header=BB0_183 Depth=2
	.loc	1 366 9 is_stmt 1               # parallel-rne.mlir:366:9
	load.d r[2:3], -696(r30)                # 8-byte Folded Reload
	load.d r[7:8], -704(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_208
.LBB0_183:                              # %.preheader125
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_200 Depth 3
                                        #       Child Loop BB0_186 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -704(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	.loc	1 367 11 is_stmt 1              # parallel-rne.mlir:367:11
	loadli.w r2,  -712(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_198
# %bb.184:                              # %scalar.ph626.preheader
                                        #   in Loop: Header=BB0_183 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_186
.LBB0_185:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	.loc	1 367 11                        # parallel-rne.mlir:367:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 389 13 is_stmt 1              # parallel-rne.mlir:389:13
	add.s r7, r25, r7
	.loc	1 367 11                        # parallel-rne.mlir:367:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 389 13                        # parallel-rne.mlir:389:13
	stores.w r8, 0(r7)
	.loc	1 367 11                        # parallel-rne.mlir:367:11
	beq r4, zero, .LBB0_182
.LBB0_186:                              # %scalar.ph626
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	add.ul r[7:8], r[2:3], r[20:21]
	lui r15, 523264
	slli r7, r7, 2
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.s r4, r24, r7
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.s r8, r10, r7
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	loads.w r4, 0(r4)
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	loads.w r17, 0(r8)
	lui r8, 523264
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	and r11, r4, r26
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	beq r11, r16, .LBB0_188
# %bb.187:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r17, 0
.LBB0_188:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	add.s r4, r12, r7
	loads.w r4, 0(r4)
	and r14, r4, r26
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	beq r14, zero, .LBB0_196
# %bb.189:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	lui r17, 523264
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r11, zero, .LBB0_197
.LBB0_190:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	beq r14, r16, .LBB0_192
.LBB0_191:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r15, 0
.LBB0_192:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	setlt.u r4, r16, r11
	lui r11, 523264
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r4, zero, .LBB0_194
# %bb.193:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
.LBB0_194:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	setlt.u r4, r16, r14
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r4, zero, .LBB0_185
# %bb.195:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r11, 0
	j .LBB0_185
.LBB0_196:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	lui r17, 523264
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	beq r11, zero, .LBB0_190
.LBB0_197:                              # %scalar.ph626
                                        #   in Loop: Header=BB0_186 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r15, 0
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r14, r16, .LBB0_191
	j .LBB0_192
.LBB0_198:                              # %vector.body628.preheader
                                        #   in Loop: Header=BB0_183 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_200
.LBB0_199:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 367 11 is_stmt 1              # parallel-rne.mlir:367:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 389 13                        # parallel-rne.mlir:389:13
	add.s r7, r25, r7
	.loc	1 367 11                        # parallel-rne.mlir:367:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 389 13                        # parallel-rne.mlir:389:13
	stores.w r11, 12(r7)
	stores.w r14, 8(r7)
	stores.w r23, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 367 11                        # parallel-rne.mlir:367:11
	bneq r4, zero, .LBB0_182
.LBB0_200:                              # %vector.body628
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_183 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	add.ul r[7:8], r[2:3], r[20:21]
	slli r7, r7, 2
	add.s r15, r12, r7
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	add.s r17, r24, r7
	.loc	1 368 19                        # parallel-rne.mlir:368:19
	loads.w r4, 0(r15)
	.loc	1 369 19                        # parallel-rne.mlir:369:19
	loads.w r8, 0(r17)
	.loc	1 375 19                        # parallel-rne.mlir:375:19
	and r4, r4, r26
	.loc	1 373 19                        # parallel-rne.mlir:373:19
	and r8, r8, r26
	.loc	1 376 19                        # parallel-rne.mlir:376:19
	seteq r9, r4, r16
	.loc	1 380 19                        # parallel-rne.mlir:380:19
	seteq r22, r4, zero
	.loc	1 377 19                        # parallel-rne.mlir:377:19
	seteq r11, r8, zero
	.loc	1 379 19                        # parallel-rne.mlir:379:19
	seteq r14, r8, r16
	.loc	1 385 19                        # parallel-rne.mlir:385:19
	max.u r4, r4, r8
	setlt.u r4, r16, r4
	.loc	1 378 19                        # parallel-rne.mlir:378:19
	and r8, r9, r11
	.loc	1 381 19                        # parallel-rne.mlir:381:19
	and r9, r22, r14
	.loc	1 370 19                        # parallel-rne.mlir:370:19
	add.s r22, r10, r7
	lui r11, 523264
	.loc	1 382 19                        # parallel-rne.mlir:382:19
	or r8, r8, r9
	.loc	1 386 19                        # parallel-rne.mlir:386:19
	or r4, r4, r8
	lui r8, 523264
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r4, zero, .LBB0_202
# %bb.201:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r22)
.LBB0_202:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r4, 4(r15)
	loads.w r9, 4(r17)
	and r4, r4, r26
	and r9, r9, r26
	seteq r14, r4, r16
	seteq r18, r4, zero
	seteq r23, r9, zero
	seteq r24, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r14, r23
	and r14, r18, r24
	lui r23, 523264
	or r9, r9, r14
	or r4, r4, r9
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r4, zero, .LBB0_204
# %bb.203:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r22)
.LBB0_204:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r4, 8(r15)
	loads.w r9, 8(r17)
	and r4, r4, r26
	and r9, r9, r26
	seteq r14, r4, r16
	seteq r24, r4, zero
	seteq r18, r9, zero
	seteq r19, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r14, r18
	and r14, r24, r19
	or r9, r9, r14
	lui r14, 523264
	or r4, r4, r9
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r4, zero, .LBB0_206
# %bb.205:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r22)
.LBB0_206:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	loads.w r4, 12(r15)
	loads.w r9, 12(r17)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r9, r9, r26
	seteq r15, r4, r16
	seteq r19, r4, zero
	seteq r17, r9, zero
	seteq r18, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r15, r17
	and r15, r19, r18
	or r9, r9, r15
	or r4, r4, r9
	.loc	1 387 19                        # parallel-rne.mlir:387:19
	bneq r4, zero, .LBB0_199
# %bb.207:                              # %vector.body628
                                        #   in Loop: Header=BB0_200 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r22)
	j .LBB0_199
.LBB0_208:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 358 7 is_stmt 1               # parallel-rne.mlir:358:7
	mfence { sm }
.LBB0_209:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	zext_int2long r[2:3], r2
	.loc	1 394 7 is_stmt 1               # parallel-rne.mlir:394:7
	store.d r[2:3], -704(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 6
	bneq r2, r3, .LBB0_238
# %bb.210:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 394 7                         # parallel-rne.mlir:394:7
	storeli.w r2, -728(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_212
.LBB0_211:                              # %middle.block619
                                        #   in Loop: Header=BB0_212 Depth=2
	.loc	1 402 9 is_stmt 1               # parallel-rne.mlir:402:9
	load.d r[2:3], -704(r30)                # 8-byte Folded Reload
	load.d r[7:8], -712(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_237
.LBB0_212:                              # %.preheader124
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_229 Depth 3
                                        #       Child Loop BB0_215 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -712(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 403 11 is_stmt 1              # parallel-rne.mlir:403:11
	loadli.w r2,  -728(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_227
# %bb.213:                              # %scalar.ph611.preheader
                                        #   in Loop: Header=BB0_212 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_215
.LBB0_214:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 403 11                        # parallel-rne.mlir:403:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 425 13 is_stmt 1              # parallel-rne.mlir:425:13
	add.s r7, r25, r7
	.loc	1 403 11                        # parallel-rne.mlir:403:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	stores.w r8, 0(r7)
	.loc	1 403 11                        # parallel-rne.mlir:403:11
	beq r4, zero, .LBB0_211
.LBB0_215:                              # %scalar.ph611
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_212 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	add.ul r[7:8], r[2:3], r[22:23]
	lui r15, 523264
	slli r7, r7, 2
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.s r4, r24, r7
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.s r8, r10, r7
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	loads.w r4, 0(r4)
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	loads.w r17, 0(r8)
	lui r8, 523264
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	and r11, r4, r26
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r11, r16, .LBB0_217
# %bb.216:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r17, 0
.LBB0_217:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	add.s r4, r12, r7
	loads.w r4, 0(r4)
	and r14, r4, r26
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r14, zero, .LBB0_225
# %bb.218:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r17, 0
	lui r17, 523264
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r11, zero, .LBB0_226
.LBB0_219:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	beq r14, r16, .LBB0_221
.LBB0_220:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r15, 0
.LBB0_221:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	setlt.u r4, r16, r11
	lui r11, 523264
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r4, zero, .LBB0_223
# %bb.222:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
.LBB0_223:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	setlt.u r4, r16, r14
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r4, zero, .LBB0_214
# %bb.224:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r11, 0
	j .LBB0_214
.LBB0_225:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	lui r17, 523264
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	beq r11, zero, .LBB0_219
.LBB0_226:                              # %scalar.ph611
                                        #   in Loop: Header=BB0_215 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r15, 0
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r14, r16, .LBB0_220
	j .LBB0_221
.LBB0_227:                              # %vector.body613.preheader
                                        #   in Loop: Header=BB0_212 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_229
.LBB0_228:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 403 11 is_stmt 1              # parallel-rne.mlir:403:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	add.s r7, r25, r7
	.loc	1 403 11                        # parallel-rne.mlir:403:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 425 13                        # parallel-rne.mlir:425:13
	stores.w r11, 12(r7)
	stores.w r14, 8(r7)
	stores.w r19, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 403 11                        # parallel-rne.mlir:403:11
	bneq r4, zero, .LBB0_211
.LBB0_229:                              # %vector.body613
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_212 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r15, r12, r7
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	add.s r17, r24, r7
	.loc	1 404 19                        # parallel-rne.mlir:404:19
	loads.w r4, 0(r15)
	.loc	1 405 19                        # parallel-rne.mlir:405:19
	loads.w r8, 0(r17)
	.loc	1 411 19                        # parallel-rne.mlir:411:19
	and r4, r4, r26
	.loc	1 409 19                        # parallel-rne.mlir:409:19
	and r8, r8, r26
	.loc	1 412 19                        # parallel-rne.mlir:412:19
	seteq r9, r4, r16
	.loc	1 416 19                        # parallel-rne.mlir:416:19
	seteq r18, r4, zero
	.loc	1 413 19                        # parallel-rne.mlir:413:19
	seteq r11, r8, zero
	.loc	1 415 19                        # parallel-rne.mlir:415:19
	seteq r14, r8, r16
	.loc	1 421 19                        # parallel-rne.mlir:421:19
	max.u r4, r4, r8
	setlt.u r4, r16, r4
	.loc	1 414 19                        # parallel-rne.mlir:414:19
	and r8, r9, r11
	.loc	1 417 19                        # parallel-rne.mlir:417:19
	and r9, r18, r14
	.loc	1 406 19                        # parallel-rne.mlir:406:19
	add.s r18, r10, r7
	lui r11, 523264
	.loc	1 418 19                        # parallel-rne.mlir:418:19
	or r8, r8, r9
	.loc	1 422 19                        # parallel-rne.mlir:422:19
	or r4, r4, r8
	lui r8, 523264
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r4, zero, .LBB0_231
# %bb.230:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r8, 0(r18)
.LBB0_231:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	loads.w r4, 4(r15)
	loads.w r9, 4(r17)
	and r4, r4, r26
	and r9, r9, r26
	seteq r14, r4, r16
	seteq r20, r4, zero
	seteq r19, r9, zero
	seteq r24, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r14, r19
	and r14, r20, r24
	lui r19, 523264
	or r9, r9, r14
	or r4, r4, r9
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r4, zero, .LBB0_233
# %bb.232:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
.LBB0_233:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	loads.w r4, 8(r15)
	loads.w r9, 8(r17)
	and r4, r4, r26
	and r9, r9, r26
	seteq r14, r4, r16
	seteq r24, r4, zero
	seteq r20, r9, zero
	seteq r21, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r14, r20
	and r14, r24, r21
	or r9, r9, r14
	lui r14, 523264
	or r4, r4, r9
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r4, zero, .LBB0_235
# %bb.234:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 8(r18)
.LBB0_235:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	loads.w r4, 12(r15)
	loads.w r9, 12(r17)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r9, r9, r26
	seteq r15, r4, r16
	seteq r21, r4, zero
	seteq r17, r9, zero
	seteq r20, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r15, r17
	and r15, r21, r20
	or r9, r9, r15
	or r4, r4, r9
	.loc	1 423 19                        # parallel-rne.mlir:423:19
	bneq r4, zero, .LBB0_228
# %bb.236:                              # %vector.body613
                                        #   in Loop: Header=BB0_229 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 12(r18)
	j .LBB0_228
.LBB0_237:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 394 7 is_stmt 1               # parallel-rne.mlir:394:7
	mfence { sm }
.LBB0_238:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	zext_int2long r[2:3], r2
	.loc	1 430 7 is_stmt 1               # parallel-rne.mlir:430:7
	store.d r[2:3], -712(r30)               # 8-byte Folded Spill
	core_id r2
	addli r3, zero, 7
	bneq r2, r3, .LBB0_267
# %bb.239:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	loadli.w r3,  -748(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	.loc	1 430 7                         # parallel-rne.mlir:430:7
	storeli.w r2, -736(r30)                 # 4-byte Folded Spill
	addli r2, zero, 56
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_241
.LBB0_240:                              # %middle.block604
                                        #   in Loop: Header=BB0_241 Depth=2
	.loc	1 438 9 is_stmt 1               # parallel-rne.mlir:438:9
	load.d r[2:3], -712(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_266
.LBB0_241:                              # %.preheader123
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_258 Depth 3
                                        #       Child Loop BB0_244 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r2
	.loc	1 439 11 is_stmt 1              # parallel-rne.mlir:439:11
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_256
# %bb.242:                              # %scalar.ph596.preheader
                                        #   in Loop: Header=BB0_241 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_244
.LBB0_243:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 439 11                        # parallel-rne.mlir:439:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 461 13 is_stmt 1              # parallel-rne.mlir:461:13
	add.s r9, r25, r11
	.loc	1 439 11                        # parallel-rne.mlir:439:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 461 13                        # parallel-rne.mlir:461:13
	stores.w r14, 0(r9)
	.loc	1 439 11                        # parallel-rne.mlir:439:11
	beq r4, zero, .LBB0_240
.LBB0_244:                              # %scalar.ph596
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	add.ul r[14:15], r[2:3], r[7:8]
	lui r18, 523264
	slli r11, r14, 2
	lui r14, 523264
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.s r4, r24, r11
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.s r9, r10, r11
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	loads.w r4, 0(r4)
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	loads.w r19, 0(r9)
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	and r15, r4, r26
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	beq r15, r16, .LBB0_246
# %bb.245:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_246:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	add.s r4, r12, r11
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	beq r17, zero, .LBB0_254
# %bb.247:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r15, zero, .LBB0_255
.LBB0_248:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	beq r17, r16, .LBB0_250
.LBB0_249:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_250:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	setlt.u r4, r16, r15
	lui r15, 523264
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r4, zero, .LBB0_252
# %bb.251:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_252:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	setlt.u r4, r16, r17
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r4, zero, .LBB0_243
# %bb.253:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_243
.LBB0_254:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	lui r19, 523264
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	beq r15, zero, .LBB0_248
.LBB0_255:                              # %scalar.ph596
                                        #   in Loop: Header=BB0_244 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r17, r16, .LBB0_249
	j .LBB0_250
.LBB0_256:                              # %vector.body598.preheader
                                        #   in Loop: Header=BB0_241 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_258
.LBB0_257:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 439 11 is_stmt 1              # parallel-rne.mlir:439:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 461 13                        # parallel-rne.mlir:461:13
	add.s r9, r25, r14
	.loc	1 439 11                        # parallel-rne.mlir:439:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 461 13                        # parallel-rne.mlir:461:13
	stores.w r15, 12(r9)
	stores.w r20, 8(r9)
	stores.w r23, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 439 11                        # parallel-rne.mlir:439:11
	bneq r4, zero, .LBB0_240
.LBB0_258:                              # %vector.body598
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_241 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	add.ul r[14:15], r[2:3], r[7:8]
	slli r14, r14, 2
	add.s r17, r12, r14
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	add.s r18, r24, r14
	.loc	1 440 19                        # parallel-rne.mlir:440:19
	loads.w r4, 0(r17)
	.loc	1 441 19                        # parallel-rne.mlir:441:19
	loads.w r9, 0(r18)
	.loc	1 447 19                        # parallel-rne.mlir:447:19
	and r4, r4, r26
	.loc	1 445 19                        # parallel-rne.mlir:445:19
	and r9, r9, r26
	.loc	1 448 19                        # parallel-rne.mlir:448:19
	seteq r11, r4, r16
	.loc	1 452 19                        # parallel-rne.mlir:452:19
	seteq r20, r4, zero
	.loc	1 449 19                        # parallel-rne.mlir:449:19
	seteq r15, r9, zero
	.loc	1 451 19                        # parallel-rne.mlir:451:19
	seteq r19, r9, r16
	.loc	1 457 19                        # parallel-rne.mlir:457:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 450 19                        # parallel-rne.mlir:450:19
	and r9, r11, r15
	.loc	1 453 19                        # parallel-rne.mlir:453:19
	and r11, r20, r19
	.loc	1 442 19                        # parallel-rne.mlir:442:19
	add.s r19, r10, r14
	lui r15, 523264
	.loc	1 454 19                        # parallel-rne.mlir:454:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 458 19                        # parallel-rne.mlir:458:19
	or r4, r4, r9
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r4, zero, .LBB0_260
# %bb.259:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_260:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	loads.w r4, 4(r17)
	loads.w r9, 4(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r20, r4, r16
	seteq r21, r4, zero
	seteq r23, r9, zero
	seteq r24, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r20, r23
	and r20, r21, r24
	lui r23, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r4, zero, .LBB0_262
# %bb.261:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r19)
.LBB0_262:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r20, r4, r16
	seteq r24, r4, zero
	seteq r21, r9, zero
	seteq r22, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r20, r21
	and r20, r24, r22
	or r9, r9, r20
	lui r20, 523264
	or r4, r4, r9
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r4, zero, .LBB0_264
# %bb.263:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 8(r19)
.LBB0_264:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	loads.w r4, 12(r17)
	loads.w r9, 12(r18)
	loadli.w r24,  -656(r30)                # 4-byte Folded Reload
	and r4, r4, r26
	and r9, r9, r26
	seteq r17, r4, r16
	seteq r22, r4, zero
	seteq r18, r9, zero
	seteq r21, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r17, r18
	and r17, r22, r21
	or r9, r9, r17
	or r4, r4, r9
	.loc	1 459 19                        # parallel-rne.mlir:459:19
	bneq r4, zero, .LBB0_257
# %bb.265:                              # %vector.body598
                                        #   in Loop: Header=BB0_258 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_257
.LBB0_266:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 430 7 is_stmt 1               # parallel-rne.mlir:430:7
	mfence { sm }
.LBB0_267:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	addli r2, zero, 255
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r4
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	csr_set csr5, r2
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	addli r2, zero, 3
	.loc	1 466 7                         # parallel-rne.mlir:466:7
	sync_core
	.loc	1 467 7                         # parallel-rne.mlir:467:7
	bneq r4, r2, .LBB0_269
# %bb.268:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	addli r7, zero, 4
	xsignal r2, 0
	.loc	1 468 7                         # parallel-rne.mlir:468:7
	addli r2, zero, 22
	xsignal r2, 0
	.loc	1 469 7                         # parallel-rne.mlir:469:7
	addli r2, zero, 28
	xsignal r2, 0
	.loc	1 470 7                         # parallel-rne.mlir:470:7
	addli r2, zero, 30
	xsignal r2, 0
	.loc	1 472 13                        # parallel-rne.mlir:472:13
	loadli.w r2,  -60(r30)
	mod.s r3, r2, r7
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	loadli.w r2,  -836(r30)                 # 4-byte Folded Reload
	slli r3, r3, 15
	add.s r12, r3, r2
	.loc	1 476 7                         # parallel-rne.mlir:476:7
	addli r2, zero, 31
	xwait r2, 0
	.loc	1 477 7                         # parallel-rne.mlir:477:7
	addli r2, zero, 35
	xwait r2, 0
	j .LBB0_271
.LBB0_269:                              # %.critedge8
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 472 13                        # parallel-rne.mlir:472:13
	loadli.w r2,  -60(r30)
	addli r7, zero, 4
	loadli.w r8,  -836(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r7
	addli r2, r2, 1
	storeli.w r2, -60(r30)
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	addli r2, zero, 5
	.loc	1 472 13                        # parallel-rne.mlir:472:13
	slli r3, r3, 15
	add.s r12, r3, r8
	.loc	1 473 7                         # parallel-rne.mlir:473:7
	bneq r4, r2, .LBB0_271
# %bb.270:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 12
	lui r4, 260096
	xwait r2, 0
	addli r2, zero, 22
	xwait r2, 0
	addli r2, zero, 32
	xwait r2, 0
	addli r2, zero, 2
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r3,  -852(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r4, r3, zero, 0
	addli r4, zero, 2047
	addli r3, zero, 13
	ew_cfg zero, r4, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, r7, 19
	dsmadd r12, r24, r25, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	xsignal r3, 0
	.loc	1 474 7                         # parallel-rne.mlir:474:7
	lock zero, r2
	ew_cfg zero, zero, zero, 1
	loadli.w r3,  -856(r30)                 # 4-byte Folded Reload
	ewcoeff_cfg r3, zero, zero, 0
	ew_cfg zero, r4, zero, 2
	ew_cfg r7, zero, zero, 3
	ew_cfg r7, r7, zero, 19
	hp_ssmul r12, r12, r12, 0
	ew_cfg zero, zero, zero, 19
	unlock r2
	addli r2, zero, 31
	xsignal r2, 0
.LBB0_271:                              # %.critedge12
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -764(r30)                 # 4-byte Folded Reload
	.loc	1 479 7 is_stmt 1               # parallel-rne.mlir:479:7
	xfence
	loadli.w r3,  -832(r30)                 # 4-byte Folded Reload
	.loc	1 480 7                         # parallel-rne.mlir:480:7
	mfence { lm, sm, gm }
	mod.s r2, r2, r7
	slli r2, r2, 15
	add.s r10, r2, r3
	.loc	1 481 7                         # parallel-rne.mlir:481:7
	addli r2, zero, 255
	csr_set csr5, r2
	sub.s r2, r10, r12
	storeli.w r2, -728(r30)                 # 4-byte Folded Spill
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 481 7                         # parallel-rne.mlir:481:7
	sync_core
	.loc	1 482 7                         # parallel-rne.mlir:482:7
	beq r2, zero, .LBB0_273
# %bb.272:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 499 7                         # parallel-rne.mlir:499:7
	addli r3, zero, 1
	beq r2, r3, .LBB0_279
	j .LBB0_285
.LBB0_273:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 482 7 is_stmt 1               # parallel-rne.mlir:482:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	j .LBB0_275
.LBB0_274:                              # %middle.block589
                                        #   in Loop: Header=BB0_275 Depth=2
	.loc	1 490 9                         # parallel-rne.mlir:490:9
	load.d r[3:4], -720(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_278
.LBB0_275:                              # %.preheader122
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_277 Depth 3
                                        #       Child Loop BB0_276 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 491 11 is_stmt 1              # parallel-rne.mlir:491:11
	beq r2, zero, .LBB0_277
.LBB0_276:                              # %scalar.ph582
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 491 11                        # parallel-rne.mlir:491:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 494 13                        # parallel-rne.mlir:494:13
	add.s r3, r10, r3
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	loads.w r4, 0(r4)
	.loc	1 494 13                        # parallel-rne.mlir:494:13
	stores.w r4, 0(r3)
	.loc	1 491 11                        # parallel-rne.mlir:491:11
	bneq r9, zero, .LBB0_276
	j .LBB0_274
.LBB0_277:                              # %vector.body584
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_275 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 491 11                        # parallel-rne.mlir:491:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	slli r3, r3, 2
	.loc	1 491 11                        # parallel-rne.mlir:491:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	add.s r9, r12, r3
	.loc	1 494 13                        # parallel-rne.mlir:494:13
	add.s r3, r10, r3
	.loc	1 492 19                        # parallel-rne.mlir:492:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 494 13                        # parallel-rne.mlir:494:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 491 11                        # parallel-rne.mlir:491:11
	beq r4, zero, .LBB0_277
	j .LBB0_274
.LBB0_278:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 482 7                         # parallel-rne.mlir:482:7
	mfence { sm }
	.loc	1 499 7                         # parallel-rne.mlir:499:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_285
.LBB0_279:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 499 7                         # parallel-rne.mlir:499:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 8
	zext_int2long r[7:8], r3
	j .LBB0_281
.LBB0_280:                              # %middle.block579
                                        #   in Loop: Header=BB0_281 Depth=2
	.loc	1 507 9 is_stmt 1               # parallel-rne.mlir:507:9
	load.d r[3:4], -664(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_284
.LBB0_281:                              # %.preheader121
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_283 Depth 3
                                        #       Child Loop BB0_282 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 508 11 is_stmt 1              # parallel-rne.mlir:508:11
	beq r2, zero, .LBB0_283
.LBB0_282:                              # %scalar.ph572
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 511 13                        # parallel-rne.mlir:511:13
	add.s r3, r10, r3
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	loads.w r4, 0(r4)
	.loc	1 511 13                        # parallel-rne.mlir:511:13
	stores.w r4, 0(r3)
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	bneq r9, zero, .LBB0_282
	j .LBB0_280
.LBB0_283:                              # %vector.body574
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	slli r3, r3, 2
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	add.s r9, r12, r3
	.loc	1 511 13                        # parallel-rne.mlir:511:13
	add.s r3, r10, r3
	.loc	1 509 19                        # parallel-rne.mlir:509:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 511 13                        # parallel-rne.mlir:511:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 508 11                        # parallel-rne.mlir:508:11
	beq r4, zero, .LBB0_283
	j .LBB0_280
.LBB0_284:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 499 7                         # parallel-rne.mlir:499:7
	mfence { sm }
.LBB0_285:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 516 7                         # parallel-rne.mlir:516:7
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_292
# %bb.286:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 516 7                         # parallel-rne.mlir:516:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 16
	zext_int2long r[7:8], r3
	j .LBB0_288
.LBB0_287:                              # %middle.block569
                                        #   in Loop: Header=BB0_288 Depth=2
	.loc	1 524 9 is_stmt 1               # parallel-rne.mlir:524:9
	load.d r[3:4], -672(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_291
.LBB0_288:                              # %.preheader120
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_290 Depth 3
                                        #       Child Loop BB0_289 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 525 11 is_stmt 1              # parallel-rne.mlir:525:11
	beq r2, zero, .LBB0_290
.LBB0_289:                              # %scalar.ph562
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 525 11                        # parallel-rne.mlir:525:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	add.s r3, r10, r3
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	loads.w r4, 0(r4)
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	stores.w r4, 0(r3)
	.loc	1 525 11                        # parallel-rne.mlir:525:11
	bneq r9, zero, .LBB0_289
	j .LBB0_287
.LBB0_290:                              # %vector.body564
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_288 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 525 11                        # parallel-rne.mlir:525:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	slli r3, r3, 2
	.loc	1 525 11                        # parallel-rne.mlir:525:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	add.s r9, r12, r3
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	add.s r3, r10, r3
	.loc	1 526 19                        # parallel-rne.mlir:526:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 528 13                        # parallel-rne.mlir:528:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 525 11                        # parallel-rne.mlir:525:11
	beq r4, zero, .LBB0_290
	j .LBB0_287
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 516 7                         # parallel-rne.mlir:516:7
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_299
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 24
	zext_int2long r[7:8], r3
	j .LBB0_295
.LBB0_294:                              # %middle.block559
                                        #   in Loop: Header=BB0_295 Depth=2
	.loc	1 541 9 is_stmt 1               # parallel-rne.mlir:541:9
	load.d r[3:4], -680(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_298
.LBB0_295:                              # %.preheader119
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_297 Depth 3
                                        #       Child Loop BB0_296 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 542 11 is_stmt 1              # parallel-rne.mlir:542:11
	beq r2, zero, .LBB0_297
.LBB0_296:                              # %scalar.ph552
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 545 13                        # parallel-rne.mlir:545:13
	add.s r3, r10, r3
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	loads.w r4, 0(r4)
	.loc	1 545 13                        # parallel-rne.mlir:545:13
	stores.w r4, 0(r3)
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	bneq r9, zero, .LBB0_296
	j .LBB0_294
.LBB0_297:                              # %vector.body554
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_295 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	slli r3, r3, 2
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	add.s r9, r12, r3
	.loc	1 545 13                        # parallel-rne.mlir:545:13
	add.s r3, r10, r3
	.loc	1 543 19                        # parallel-rne.mlir:543:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 545 13                        # parallel-rne.mlir:545:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 542 11                        # parallel-rne.mlir:542:11
	beq r4, zero, .LBB0_297
	j .LBB0_294
.LBB0_298:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 533 7                         # parallel-rne.mlir:533:7
	mfence { sm }
.LBB0_299:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 550 7                         # parallel-rne.mlir:550:7
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_306
# %bb.300:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -728(r30)                 # 4-byte Folded Reload
	addli r3, zero, 32
	.loc	1 550 7                         # parallel-rne.mlir:550:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r3
	setlt.u r2, r2, r3
	j .LBB0_302
.LBB0_301:                              # %middle.block549
                                        #   in Loop: Header=BB0_302 Depth=2
	.loc	1 558 9 is_stmt 1               # parallel-rne.mlir:558:9
	load.d r[3:4], -688(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_305
.LBB0_302:                              # %.preheader118
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_304 Depth 3
                                        #       Child Loop BB0_303 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 559 11 is_stmt 1              # parallel-rne.mlir:559:11
	beq r2, zero, .LBB0_304
.LBB0_303:                              # %scalar.ph542
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_302 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 559 11                        # parallel-rne.mlir:559:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 562 13                        # parallel-rne.mlir:562:13
	add.s r3, r10, r3
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	loads.w r4, 0(r4)
	.loc	1 562 13                        # parallel-rne.mlir:562:13
	stores.w r4, 0(r3)
	.loc	1 559 11                        # parallel-rne.mlir:559:11
	bneq r9, zero, .LBB0_303
	j .LBB0_301
.LBB0_304:                              # %vector.body544
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_302 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 559 11                        # parallel-rne.mlir:559:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	slli r3, r3, 2
	.loc	1 559 11                        # parallel-rne.mlir:559:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	add.s r9, r12, r3
	.loc	1 562 13                        # parallel-rne.mlir:562:13
	add.s r3, r10, r3
	.loc	1 560 19                        # parallel-rne.mlir:560:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 562 13                        # parallel-rne.mlir:562:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 559 11                        # parallel-rne.mlir:559:11
	beq r4, zero, .LBB0_304
	j .LBB0_301
.LBB0_305:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 550 7                         # parallel-rne.mlir:550:7
	mfence { sm }
.LBB0_306:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 567 7                         # parallel-rne.mlir:567:7
	core_id r2
	addli r3, zero, 5
	bneq r2, r3, .LBB0_313
# %bb.307:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 567 7                         # parallel-rne.mlir:567:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 40
	zext_int2long r[7:8], r3
	j .LBB0_309
.LBB0_308:                              # %middle.block539
                                        #   in Loop: Header=BB0_309 Depth=2
	.loc	1 575 9 is_stmt 1               # parallel-rne.mlir:575:9
	load.d r[3:4], -696(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_312
.LBB0_309:                              # %.preheader117
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_311 Depth 3
                                        #       Child Loop BB0_310 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 576 11 is_stmt 1              # parallel-rne.mlir:576:11
	beq r2, zero, .LBB0_311
.LBB0_310:                              # %scalar.ph532
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 576 11                        # parallel-rne.mlir:576:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	add.s r3, r10, r3
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	loads.w r4, 0(r4)
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	stores.w r4, 0(r3)
	.loc	1 576 11                        # parallel-rne.mlir:576:11
	bneq r9, zero, .LBB0_310
	j .LBB0_308
.LBB0_311:                              # %vector.body534
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_309 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 576 11                        # parallel-rne.mlir:576:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	slli r3, r3, 2
	.loc	1 576 11                        # parallel-rne.mlir:576:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	add.s r9, r12, r3
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	add.s r3, r10, r3
	.loc	1 577 19                        # parallel-rne.mlir:577:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 579 13                        # parallel-rne.mlir:579:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 576 11                        # parallel-rne.mlir:576:11
	beq r4, zero, .LBB0_311
	j .LBB0_308
.LBB0_312:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 567 7                         # parallel-rne.mlir:567:7
	mfence { sm }
.LBB0_313:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	core_id r2
	addli r3, zero, 6
	bneq r2, r3, .LBB0_320
# %bb.314:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 48
	zext_int2long r[7:8], r3
	j .LBB0_316
.LBB0_315:                              # %middle.block529
                                        #   in Loop: Header=BB0_316 Depth=2
	.loc	1 592 9 is_stmt 1               # parallel-rne.mlir:592:9
	load.d r[3:4], -704(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_319
.LBB0_316:                              # %.preheader116
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_318 Depth 3
                                        #       Child Loop BB0_317 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 593 11 is_stmt 1              # parallel-rne.mlir:593:11
	beq r2, zero, .LBB0_318
.LBB0_317:                              # %scalar.ph522
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 593 11                        # parallel-rne.mlir:593:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 596 13                        # parallel-rne.mlir:596:13
	add.s r3, r10, r3
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	loads.w r4, 0(r4)
	.loc	1 596 13                        # parallel-rne.mlir:596:13
	stores.w r4, 0(r3)
	.loc	1 593 11                        # parallel-rne.mlir:593:11
	bneq r9, zero, .LBB0_317
	j .LBB0_315
.LBB0_318:                              # %vector.body524
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_316 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 593 11                        # parallel-rne.mlir:593:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	slli r3, r3, 2
	.loc	1 593 11                        # parallel-rne.mlir:593:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	add.s r9, r12, r3
	.loc	1 596 13                        # parallel-rne.mlir:596:13
	add.s r3, r10, r3
	.loc	1 594 19                        # parallel-rne.mlir:594:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 596 13                        # parallel-rne.mlir:596:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 593 11                        # parallel-rne.mlir:593:11
	beq r4, zero, .LBB0_318
	j .LBB0_315
.LBB0_319:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 584 7                         # parallel-rne.mlir:584:7
	mfence { sm }
.LBB0_320:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 601 7                         # parallel-rne.mlir:601:7
	core_id r2
	addli r3, zero, 7
	bneq r2, r3, .LBB0_327
# %bb.321:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r3,  -728(r30)                 # 4-byte Folded Reload
	addli r2, zero, 32
	.loc	1 601 7                         # parallel-rne.mlir:601:7
	xfence
	mfence { lm, sm, gm }
	setlt.u r2, r3, r2
	addli r3, zero, 56
	zext_int2long r[7:8], r3
	j .LBB0_323
.LBB0_322:                              # %middle.block519
                                        #   in Loop: Header=BB0_323 Depth=2
	.loc	1 609 9 is_stmt 1               # parallel-rne.mlir:609:9
	load.d r[3:4], -712(r30)                # 8-byte Folded Reload
	setlt.ul r3, r[7:8], r[3:4]
	addli.d r[7:8], r[7:8], 1
	beq r3, zero, .LBB0_326
.LBB0_323:                              # %.preheader115
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_325 Depth 3
                                        #       Child Loop BB0_324 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 7
	zext_int2long r[17:18], zero
	sll.d r[14:15], r[7:8], r3
	.loc	1 610 11 is_stmt 1              # parallel-rne.mlir:610:11
	beq r2, zero, .LBB0_325
.LBB0_324:                              # %scalar.ph512
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_323 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 610 11                        # parallel-rne.mlir:610:11
	setlt.ul r9, r[17:18], r[27:28]
	addli.d r[17:18], r[17:18], 1
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	slli r3, r3, 2
	add.s r4, r12, r3
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	add.s r3, r10, r3
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	loads.w r4, 0(r4)
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	stores.w r4, 0(r3)
	.loc	1 610 11                        # parallel-rne.mlir:610:11
	bneq r9, zero, .LBB0_324
	j .LBB0_322
.LBB0_325:                              # %vector.body514
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_323 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	add.ul r[3:4], r[17:18], r[14:15]
	.loc	1 610 11                        # parallel-rne.mlir:610:11
	addli.d r[17:18], r[17:18], 8
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	slli r3, r3, 2
	.loc	1 610 11                        # parallel-rne.mlir:610:11
	seteq.d r4, r[17:18], r[5:6]
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	add.s r9, r12, r3
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	add.s r3, r10, r3
	.loc	1 611 19                        # parallel-rne.mlir:611:19
	loads.w r11, 12(r9)
	loads.w r19, 8(r9)
	loads.w r20, 4(r9)
	loads.w r21, 0(r9)
	loads.w r22, 28(r9)
	loads.w r23, 24(r9)
	loads.w r24, 20(r9)
	loads.w r9, 16(r9)
	.loc	1 613 13                        # parallel-rne.mlir:613:13
	stores.w r11, 12(r3)
	stores.w r19, 8(r3)
	stores.w r20, 4(r3)
	stores.w r21, 0(r3)
	stores.w r22, 28(r3)
	stores.w r23, 24(r3)
	stores.w r24, 20(r3)
	stores.w r9, 16(r3)
	.loc	1 610 11                        # parallel-rne.mlir:610:11
	beq r4, zero, .LBB0_325
	j .LBB0_322
.LBB0_326:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 601 7                         # parallel-rne.mlir:601:7
	mfence { sm }
.LBB0_327:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	addli r2, zero, 255
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	addli r3, zero, 3
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	csr_set csr5, r2
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	core_id r2
	.loc	1 618 7                         # parallel-rne.mlir:618:7
	sync_core
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	bneq r2, r3, .LBB0_329
# %bb.328:                              # %.critedge14
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 32
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	addli r3, zero, 13
	.loc	1 619 7                         # parallel-rne.mlir:619:7
	xsignal r2, 0
	addli r2, zero, 33
	.loc	1 620 7                         # parallel-rne.mlir:620:7
	xsignal r2, 0
	.loc	1 622 7                         # parallel-rne.mlir:622:7
	xwait r3, 0
	.loc	1 623 7                         # parallel-rne.mlir:623:7
	xwait r2, 0
.LBB0_329:                              # %.critedge16
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	addli r2, zero, 255
	.loc	1 625 7                         # parallel-rne.mlir:625:7
	xfence
	.loc	1 626 7                         # parallel-rne.mlir:626:7
	mfence { lm, sm, gm }
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 627 7                         # parallel-rne.mlir:627:7
	sync_core
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	bneq r2, zero, .LBB0_351
# %bb.330:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[2:3], zero
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	xfence
	mfence { lm, sm, gm }
	store.d r[2:3], -736(r30)               # 8-byte Folded Spill
	addli.d r[3:4], r[2:3], 0
	j .LBB0_332
.LBB0_331:                              # %middle.block509
                                        #   in Loop: Header=BB0_332 Depth=2
	.loc	1 636 9 is_stmt 1               # parallel-rne.mlir:636:9
	load.d r[2:3], -720(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_350
.LBB0_332:                              # %.preheader114
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_334 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	load.d r[22:23], -736(r30)              # 8-byte Folded Reload
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[2:3], r[3:4], r2
	j .LBB0_334
.LBB0_333:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	.loc	1 645 13 is_stmt 1              # parallel-rne.mlir:645:13
	add.s r4, r25, r20
	.loc	1 637 11                        # parallel-rne.mlir:637:11
	addli.d r[22:23], r[22:23], 8
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	stores.w r8, 12(r4)
	.loc	1 637 11                        # parallel-rne.mlir:637:11
	setneq.d r8, r[22:23], r[5:6]
	.loc	1 645 13                        # parallel-rne.mlir:645:13
	stores.w r7, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 637 11                        # parallel-rne.mlir:637:11
	beq r8, zero, .LBB0_331
.LBB0_334:                              # %vector.body504
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_332 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 638 19                        # parallel-rne.mlir:638:19
	add.ul r[7:8], r[22:23], r[2:3]
	slli r20, r7, 2
	add.s r4, r10, r20
	loads.w r12, 0(r4)
	loads.w r8, 12(r4)
	loads.w r7, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 641 19                        # parallel-rne.mlir:641:19
	and r4, r12, r26
	.loc	1 642 19                        # parallel-rne.mlir:642:19
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_336
# %bb.335:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_336:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_338
# %bb.337:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_338:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	and r4, r7, r26
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_340
# %bb.339:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r7, r4
	or r7, r4, r1
.LBB0_340:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	and r4, r8, r26
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_342
# %bb.341:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r8, r4
	or r8, r4, r1
.LBB0_342:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_344
# %bb.343:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_344:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_346
# %bb.345:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_346:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_348
# %bb.347:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_348:                              # %vector.body504
                                        #   in Loop: Header=BB0_334 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 643 19                        # parallel-rne.mlir:643:19
	beq r4, zero, .LBB0_333
# %bb.349:                              #   in Loop: Header=BB0_334 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_333
.LBB0_350:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 628 7                         # parallel-rne.mlir:628:7
	mfence { sm }
.LBB0_351:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r24
	.loc	1 650 7                         # parallel-rne.mlir:650:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_372
# %bb.352:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 650 7                         # parallel-rne.mlir:650:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_354
.LBB0_353:                              # %middle.block499
                                        #   in Loop: Header=BB0_354 Depth=2
	.loc	1 658 9 is_stmt 1               # parallel-rne.mlir:658:9
	load.d r[2:3], -664(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_393
.LBB0_354:                              # %.preheader113
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_356 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[2:3], r[7:8], r2
	j .LBB0_356
.LBB0_355:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	.loc	1 659 11 is_stmt 1              # parallel-rne.mlir:659:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 667 13                        # parallel-rne.mlir:667:13
	add.s r4, r25, r17
	.loc	1 659 11                        # parallel-rne.mlir:659:11
	setneq.d r9, r[20:21], r[5:6]
	.loc	1 667 13                        # parallel-rne.mlir:667:13
	stores.w r23, 12(r4)
	stores.w r22, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 659 11                        # parallel-rne.mlir:659:11
	beq r9, zero, .LBB0_353
.LBB0_356:                              # %vector.body494
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_354 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 660 19                        # parallel-rne.mlir:660:19
	add.ul r[11:12], r[20:21], r[2:3]
	slli r17, r11, 2
	add.s r4, r10, r17
	loads.w r12, 0(r4)
	loads.w r23, 12(r4)
	loads.w r22, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 663 19                        # parallel-rne.mlir:663:19
	and r4, r12, r26
	.loc	1 664 19                        # parallel-rne.mlir:664:19
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_358
# %bb.357:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_358:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_360
# %bb.359:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_360:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	and r4, r22, r26
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_362
# %bb.361:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r22, r4
	or r22, r4, r1
.LBB0_362:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	and r4, r23, r26
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_364
# %bb.363:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r23, r4
	or r23, r4, r1
.LBB0_364:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_366
# %bb.365:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_366:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_368
# %bb.367:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_368:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_370:                              # %vector.body494
                                        #   in Loop: Header=BB0_356 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 665 19                        # parallel-rne.mlir:665:19
	beq r4, zero, .LBB0_355
# %bb.371:                              #   in Loop: Header=BB0_356 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_355
.LBB0_372:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 672 7 is_stmt 1               # parallel-rne.mlir:672:7
	addli r2, zero, 2
	bneq r24, r2, .LBB0_394
.LBB0_373:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 672 7                         # parallel-rne.mlir:672:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_375
.LBB0_374:                              # %middle.block489
                                        #   in Loop: Header=BB0_375 Depth=2
	.loc	1 680 9 is_stmt 1               # parallel-rne.mlir:680:9
	load.d r[2:3], -672(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_415
.LBB0_375:                              # %.preheader112
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_377 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[2:3], r[7:8], r2
	j .LBB0_377
.LBB0_376:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	.loc	1 681 11 is_stmt 1              # parallel-rne.mlir:681:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 689 13                        # parallel-rne.mlir:689:13
	add.s r4, r25, r17
	.loc	1 681 11                        # parallel-rne.mlir:681:11
	setneq.d r9, r[20:21], r[5:6]
	.loc	1 689 13                        # parallel-rne.mlir:689:13
	stores.w r23, 12(r4)
	stores.w r22, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 681 11                        # parallel-rne.mlir:681:11
	beq r9, zero, .LBB0_374
.LBB0_377:                              # %vector.body484
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_375 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 682 19                        # parallel-rne.mlir:682:19
	add.ul r[11:12], r[20:21], r[2:3]
	slli r17, r11, 2
	add.s r4, r10, r17
	loads.w r12, 0(r4)
	loads.w r23, 12(r4)
	loads.w r22, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 685 19                        # parallel-rne.mlir:685:19
	and r4, r12, r26
	.loc	1 686 19                        # parallel-rne.mlir:686:19
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_379
# %bb.378:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_379:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_381
# %bb.380:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_381:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	and r4, r22, r26
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_383
# %bb.382:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r22, r4
	or r22, r4, r1
.LBB0_383:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	and r4, r23, r26
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_385
# %bb.384:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r23, r4
	or r23, r4, r1
.LBB0_385:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_387
# %bb.386:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_387:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_389
# %bb.388:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_389:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_391
# %bb.390:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_391:                              # %vector.body484
                                        #   in Loop: Header=BB0_377 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 687 19                        # parallel-rne.mlir:687:19
	beq r4, zero, .LBB0_376
# %bb.392:                              #   in Loop: Header=BB0_377 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_376
.LBB0_393:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 650 7 is_stmt 1               # parallel-rne.mlir:650:7
	mfence { sm }
	.loc	1 672 7                         # parallel-rne.mlir:672:7
	addli r2, zero, 2
	beq r24, r2, .LBB0_373
.LBB0_394:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 694 7                         # parallel-rne.mlir:694:7
	addli r2, zero, 3
	bneq r24, r2, .LBB0_416
.LBB0_395:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 694 7                         # parallel-rne.mlir:694:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_397
.LBB0_396:                              # %middle.block479
                                        #   in Loop: Header=BB0_397 Depth=2
	.loc	1 702 9 is_stmt 1               # parallel-rne.mlir:702:9
	load.d r[2:3], -680(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_437
.LBB0_397:                              # %.preheader111
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_399 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[2:3], r[7:8], r2
	j .LBB0_399
.LBB0_398:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	.loc	1 703 11 is_stmt 1              # parallel-rne.mlir:703:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 711 13                        # parallel-rne.mlir:711:13
	add.s r4, r25, r17
	.loc	1 703 11                        # parallel-rne.mlir:703:11
	setneq.d r9, r[20:21], r[5:6]
	.loc	1 711 13                        # parallel-rne.mlir:711:13
	stores.w r23, 12(r4)
	stores.w r22, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 703 11                        # parallel-rne.mlir:703:11
	beq r9, zero, .LBB0_396
.LBB0_399:                              # %vector.body474
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_397 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 704 19                        # parallel-rne.mlir:704:19
	add.ul r[11:12], r[20:21], r[2:3]
	slli r17, r11, 2
	add.s r4, r10, r17
	loads.w r12, 0(r4)
	loads.w r23, 12(r4)
	loads.w r22, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 707 19                        # parallel-rne.mlir:707:19
	and r4, r12, r26
	.loc	1 708 19                        # parallel-rne.mlir:708:19
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_401
# %bb.400:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_401:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_403
# %bb.402:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_403:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	and r4, r22, r26
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_405
# %bb.404:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r22, r4
	or r22, r4, r1
.LBB0_405:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	and r4, r23, r26
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_407
# %bb.406:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r23, r4
	or r23, r4, r1
.LBB0_407:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_409
# %bb.408:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_409:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_411:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_413:                              # %vector.body474
                                        #   in Loop: Header=BB0_399 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 709 19                        # parallel-rne.mlir:709:19
	beq r4, zero, .LBB0_398
# %bb.414:                              #   in Loop: Header=BB0_399 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_398
.LBB0_415:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 672 7 is_stmt 1               # parallel-rne.mlir:672:7
	mfence { sm }
	.loc	1 694 7                         # parallel-rne.mlir:694:7
	addli r2, zero, 3
	beq r24, r2, .LBB0_395
.LBB0_416:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 716 7                         # parallel-rne.mlir:716:7
	addli r2, zero, 4
	bneq r24, r2, .LBB0_438
.LBB0_417:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 716 7                         # parallel-rne.mlir:716:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_419
.LBB0_418:                              # %middle.block469
                                        #   in Loop: Header=BB0_419 Depth=2
	.loc	1 724 9 is_stmt 1               # parallel-rne.mlir:724:9
	load.d r[2:3], -688(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_459
.LBB0_419:                              # %.preheader110
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_421 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[2:3], r[7:8], r2
	j .LBB0_421
.LBB0_420:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	.loc	1 725 11 is_stmt 1              # parallel-rne.mlir:725:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 733 13                        # parallel-rne.mlir:733:13
	add.s r4, r25, r17
	.loc	1 725 11                        # parallel-rne.mlir:725:11
	setneq.d r9, r[20:21], r[5:6]
	.loc	1 733 13                        # parallel-rne.mlir:733:13
	stores.w r23, 12(r4)
	stores.w r22, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 725 11                        # parallel-rne.mlir:725:11
	beq r9, zero, .LBB0_418
.LBB0_421:                              # %vector.body464
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_419 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 726 19                        # parallel-rne.mlir:726:19
	add.ul r[11:12], r[20:21], r[2:3]
	slli r17, r11, 2
	add.s r4, r10, r17
	loads.w r12, 0(r4)
	loads.w r23, 12(r4)
	loads.w r22, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 729 19                        # parallel-rne.mlir:729:19
	and r4, r12, r26
	.loc	1 730 19                        # parallel-rne.mlir:730:19
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_423
# %bb.422:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_423:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_425
# %bb.424:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_425:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	and r4, r22, r26
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_427
# %bb.426:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r22, r4
	or r22, r4, r1
.LBB0_427:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	and r4, r23, r26
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_429
# %bb.428:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r23, r4
	or r23, r4, r1
.LBB0_429:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_431
# %bb.430:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_431:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_433
# %bb.432:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_433:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_435
# %bb.434:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_435:                              # %vector.body464
                                        #   in Loop: Header=BB0_421 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 731 19                        # parallel-rne.mlir:731:19
	beq r4, zero, .LBB0_420
# %bb.436:                              #   in Loop: Header=BB0_421 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_420
.LBB0_437:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 694 7 is_stmt 1               # parallel-rne.mlir:694:7
	mfence { sm }
	.loc	1 716 7                         # parallel-rne.mlir:716:7
	addli r2, zero, 4
	beq r24, r2, .LBB0_417
.LBB0_438:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	addli r2, zero, 5
	bneq r24, r2, .LBB0_460
.LBB0_439:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_441
.LBB0_440:                              # %middle.block459
                                        #   in Loop: Header=BB0_441 Depth=2
	.loc	1 746 9 is_stmt 1               # parallel-rne.mlir:746:9
	load.d r[2:3], -696(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_481
.LBB0_441:                              # %.preheader109
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_443 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[2:3], r[7:8], r2
	j .LBB0_443
.LBB0_442:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	.loc	1 747 11 is_stmt 1              # parallel-rne.mlir:747:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 755 13                        # parallel-rne.mlir:755:13
	add.s r4, r25, r17
	.loc	1 747 11                        # parallel-rne.mlir:747:11
	setneq.d r9, r[20:21], r[5:6]
	.loc	1 755 13                        # parallel-rne.mlir:755:13
	stores.w r23, 12(r4)
	stores.w r22, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 747 11                        # parallel-rne.mlir:747:11
	beq r9, zero, .LBB0_440
.LBB0_443:                              # %vector.body454
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_441 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 748 19                        # parallel-rne.mlir:748:19
	add.ul r[11:12], r[20:21], r[2:3]
	slli r17, r11, 2
	add.s r4, r10, r17
	loads.w r12, 0(r4)
	loads.w r23, 12(r4)
	loads.w r22, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 751 19                        # parallel-rne.mlir:751:19
	and r4, r12, r26
	.loc	1 752 19                        # parallel-rne.mlir:752:19
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_445
# %bb.444:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_445:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_447
# %bb.446:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_447:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	and r4, r22, r26
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_449
# %bb.448:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r22, r4
	or r22, r4, r1
.LBB0_449:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	and r4, r23, r26
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_451
# %bb.450:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r23, r4
	or r23, r4, r1
.LBB0_451:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_453
# %bb.452:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_453:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_455
# %bb.454:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_455:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_457
# %bb.456:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_457:                              # %vector.body454
                                        #   in Loop: Header=BB0_443 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 753 19                        # parallel-rne.mlir:753:19
	beq r4, zero, .LBB0_442
# %bb.458:                              #   in Loop: Header=BB0_443 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_442
.LBB0_459:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 716 7 is_stmt 1               # parallel-rne.mlir:716:7
	mfence { sm }
	.loc	1 738 7                         # parallel-rne.mlir:738:7
	addli r2, zero, 5
	beq r24, r2, .LBB0_439
.LBB0_460:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 760 7                         # parallel-rne.mlir:760:7
	addli r2, zero, 6
	bneq r24, r2, .LBB0_482
.LBB0_461:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 760 7                         # parallel-rne.mlir:760:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_463
.LBB0_462:                              # %middle.block449
                                        #   in Loop: Header=BB0_463 Depth=2
	.loc	1 768 9 is_stmt 1               # parallel-rne.mlir:768:9
	load.d r[2:3], -704(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_483
.LBB0_463:                              # %.preheader108
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_465 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[2:3], r[7:8], r2
	j .LBB0_465
.LBB0_464:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	.loc	1 769 11 is_stmt 1              # parallel-rne.mlir:769:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 777 13                        # parallel-rne.mlir:777:13
	add.s r4, r25, r17
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	setneq.d r9, r[20:21], r[5:6]
	.loc	1 777 13                        # parallel-rne.mlir:777:13
	stores.w r23, 12(r4)
	stores.w r22, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 769 11                        # parallel-rne.mlir:769:11
	beq r9, zero, .LBB0_462
.LBB0_465:                              # %vector.body444
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_463 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 770 19                        # parallel-rne.mlir:770:19
	add.ul r[11:12], r[20:21], r[2:3]
	slli r17, r11, 2
	add.s r4, r10, r17
	loads.w r12, 0(r4)
	loads.w r23, 12(r4)
	loads.w r22, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 773 19                        # parallel-rne.mlir:773:19
	and r4, r12, r26
	.loc	1 774 19                        # parallel-rne.mlir:774:19
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_467
# %bb.466:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_467:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_469
# %bb.468:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_469:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	and r4, r22, r26
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_471
# %bb.470:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r22, r4
	or r22, r4, r1
.LBB0_471:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	and r4, r23, r26
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_473
# %bb.472:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r23, r4
	or r23, r4, r1
.LBB0_473:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_475
# %bb.474:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_475:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_477
# %bb.476:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_477:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_479
# %bb.478:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_479:                              # %vector.body444
                                        #   in Loop: Header=BB0_465 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 775 19                        # parallel-rne.mlir:775:19
	beq r4, zero, .LBB0_464
# %bb.480:                              #   in Loop: Header=BB0_465 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_464
.LBB0_481:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 738 7 is_stmt 1               # parallel-rne.mlir:738:7
	mfence { sm }
	.loc	1 760 7                         # parallel-rne.mlir:760:7
	addli r2, zero, 6
	beq r24, r2, .LBB0_461
.LBB0_482:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 782 7                         # parallel-rne.mlir:782:7
	addli r2, zero, 7
	beq r24, r2, .LBB0_484
	j .LBB0_505
.LBB0_483:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 760 7                         # parallel-rne.mlir:760:7
	mfence { sm }
	.loc	1 782 7                         # parallel-rne.mlir:782:7
	addli r2, zero, 7
	bneq r24, r2, .LBB0_505
.LBB0_484:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 782 7                         # parallel-rne.mlir:782:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_486
.LBB0_485:                              # %middle.block439
                                        #   in Loop: Header=BB0_486 Depth=2
	.loc	1 790 9 is_stmt 1               # parallel-rne.mlir:790:9
	load.d r[2:3], -712(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_504
.LBB0_486:                              # %.preheader107
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_488 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	zext_int2long r[20:21], zero
	sll.d r[2:3], r[7:8], r2
	j .LBB0_488
.LBB0_487:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	.loc	1 791 11 is_stmt 1              # parallel-rne.mlir:791:11
	addli.d r[20:21], r[20:21], 8
	.loc	1 799 13                        # parallel-rne.mlir:799:13
	add.s r4, r25, r17
	.loc	1 791 11                        # parallel-rne.mlir:791:11
	setneq.d r9, r[20:21], r[5:6]
	.loc	1 799 13                        # parallel-rne.mlir:799:13
	stores.w r23, 12(r4)
	stores.w r22, 8(r4)
	stores.w r11, 4(r4)
	stores.w r12, 0(r4)
	stores.w r19, 28(r4)
	stores.w r18, 24(r4)
	stores.w r15, 20(r4)
	stores.w r14, 16(r4)
	.loc	1 791 11                        # parallel-rne.mlir:791:11
	beq r9, zero, .LBB0_485
.LBB0_488:                              # %vector.body434
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_486 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 792 19                        # parallel-rne.mlir:792:19
	add.ul r[11:12], r[20:21], r[2:3]
	slli r17, r11, 2
	add.s r4, r10, r17
	loads.w r12, 0(r4)
	loads.w r23, 12(r4)
	loads.w r22, 8(r4)
	loads.w r11, 4(r4)
	loads.w r19, 28(r4)
	loads.w r18, 24(r4)
	loads.w r15, 20(r4)
	loads.w r14, 16(r4)
	.loc	1 795 19                        # parallel-rne.mlir:795:19
	and r4, r12, r26
	.loc	1 796 19                        # parallel-rne.mlir:796:19
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r12, r4
	or r12, r4, r1
.LBB0_490:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	and r4, r11, r26
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_492
# %bb.491:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r11, r4
	or r11, r4, r1
.LBB0_492:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	and r4, r22, r26
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_494
# %bb.493:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r22, r4
	or r22, r4, r1
.LBB0_494:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	and r4, r23, r26
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_496
# %bb.495:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r23, r4
	or r23, r4, r1
.LBB0_496:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	and r4, r14, r26
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_498
# %bb.497:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r14, r4
	or r14, r4, r1
.LBB0_498:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	and r4, r15, r26
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_500
# %bb.499:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r15, r4
	or r15, r4, r1
.LBB0_500:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	and r4, r18, r26
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_502
# %bb.501:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r18, r4
	or r18, r4, r1
.LBB0_502:                              # %vector.body434
                                        #   in Loop: Header=BB0_488 Depth=3
	and r4, r19, r26
	setlt.u r4, r1, r4
	.loc	1 797 19                        # parallel-rne.mlir:797:19
	beq r4, zero, .LBB0_487
# %bb.503:                              #   in Loop: Header=BB0_488 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 524288
	and r4, r19, r4
	or r19, r4, r1
	j .LBB0_487
.LBB0_504:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 782 7 is_stmt 1               # parallel-rne.mlir:782:7
	mfence { sm }
.LBB0_505:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	addli r2, zero, 255
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	addli r3, zero, 3
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 804 7                         # parallel-rne.mlir:804:7
	sync_core
	.loc	1 805 7                         # parallel-rne.mlir:805:7
	bneq r2, r3, .LBB0_507
# %bb.506:                              # %.critedge20
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r4, zero, 34
	xsignal r2, 0
	.loc	1 806 7                         # parallel-rne.mlir:806:7
	xsignal r4, 0
	.loc	1 809 13                        # parallel-rne.mlir:809:13
	loadli.w r2,  -40(r30)
	addli r3, r2, 1
	storeli.w r3, -40(r30)
	.loc	1 811 7                         # parallel-rne.mlir:811:7
	addli r3, zero, 15
	xwait r3, 0
	.loc	1 813 7                         # parallel-rne.mlir:813:7
	addli r3, zero, 38
	.loc	1 812 7                         # parallel-rne.mlir:812:7
	xwait r4, 0
	.loc	1 813 7                         # parallel-rne.mlir:813:7
	xwait r3, 0
	j .LBB0_510
.LBB0_507:                              # %.critedge18
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 807 7                         # parallel-rne.mlir:807:7
	addli r3, zero, 5
	bneq r2, r3, .LBB0_509
# %bb.508:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 14
	addli r4, zero, 2
	addli r3, zero, 3
	xwait r2, 0
	lock zero, r4
	addli r2, zero, 2047
	ew_cfg zero, zero, zero, 1
	ew_cfg zero, r2, zero, 2
	addli r2, zero, 4
	ew_cfg r2, zero, zero, 3
	ew_cfg r2, r2, zero, 19
	ew_cfg r3, zero, zero, 10
	addli r3, zero, 1
	loadli.w r7,  -848(r30)                 # 4-byte Folded Reload
	ew_cfg r4, r3, r7, 11
	lui r3, 268284
	ew_cfg zero, zero, zero, 13
	ew_cfg zero, r2, r3, 14
	addli r2, zero, 15
	ew_cfg zero, zero, zero, 15
	sslut r25, r25, 0
	ew_cfg zero, zero, zero, 10
	ew_cfg zero, zero, zero, 19
	unlock r4
	xsignal r2, 0
.LBB0_509:                              # %.thread86
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 809 13                        # parallel-rne.mlir:809:13
	loadli.w r2,  -40(r30)
	addli r3, r2, 1
	storeli.w r3, -40(r30)
.LBB0_510:                              # %.critedge21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r3, zero, 4
	.loc	1 815 7                         # parallel-rne.mlir:815:7
	xfence
	.loc	1 816 7                         # parallel-rne.mlir:816:7
	mfence { lm, sm, gm }
	.loc	1 809 13                        # parallel-rne.mlir:809:13
	mod.s r2, r2, r3
	loadli.w r3,  -840(r30)                 # 4-byte Folded Reload
	slli r2, r2, 15
	add.s r12, r2, r3
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	addli r2, zero, 255
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 817 7                         # parallel-rne.mlir:817:7
	sync_core
	.loc	1 818 7                         # parallel-rne.mlir:818:7
	bneq r2, zero, .LBB0_547
# %bb.511:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[3:4], zero
	mfence { lm, sm, gm }
	j .LBB0_513
.LBB0_512:                              # %middle.block429
                                        #   in Loop: Header=BB0_513 Depth=2
	.loc	1 826 9                         # parallel-rne.mlir:826:9
	load.d r[2:3], -720(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_546
.LBB0_513:                              # %.preheader106
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_523 Depth 3
                                        #       Child Loop BB0_517 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 827 11 is_stmt 1              # parallel-rne.mlir:827:11
	bneq r12, r10, .LBB0_520
# %bb.514:                              # %scalar.ph420.preheader
                                        #   in Loop: Header=BB0_513 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_517
.LBB0_515:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_517 Depth=3
	addli r8, r11, 0
.LBB0_516:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 839 13 is_stmt 1              # parallel-rne.mlir:839:13
	add.s r7, r12, r7
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r8, 0(r7)
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	beq r4, zero, .LBB0_512
.LBB0_517:                              # %scalar.ph420
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_513 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r4, r14, r13
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_519
# %bb.518:                              # %scalar.ph420
                                        #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r4, r16, .LBB0_516
	j .LBB0_515
.LBB0_519:                              #   in Loop: Header=BB0_517 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r4, r16, .LBB0_516
	j .LBB0_515
.LBB0_520:                              # %vector.body422.preheader
                                        #   in Loop: Header=BB0_513 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_523
.LBB0_521:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r18, 28(r19)
.LBB0_522:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 827 11 is_stmt 1              # parallel-rne.mlir:827:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	add.s r2, r12, r2
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 839 13                        # parallel-rne.mlir:839:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 827 11                        # parallel-rne.mlir:827:11
	bneq r4, zero, .LBB0_512
.LBB0_523:                              # %vector.body422
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_513 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 829 19                        # parallel-rne.mlir:829:19
	add.s r19, r25, r2
	.loc	1 828 19                        # parallel-rne.mlir:828:19
	loads.w r3, 0(r18)
	.loc	1 832 19                        # parallel-rne.mlir:832:19
	and r4, r3, r16
	.loc	1 834 19                        # parallel-rne.mlir:834:19
	and r9, r3, r13
	.loc	1 833 19                        # parallel-rne.mlir:833:19
	seteq r4, r4, r16
	.loc	1 835 19                        # parallel-rne.mlir:835:19
	setneq r9, r9, zero
	.loc	1 836 19                        # parallel-rne.mlir:836:19
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_525
# %bb.524:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_526
.LBB0_525:                              #   in Loop: Header=BB0_523 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_526:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_528
# %bb.527:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_529
.LBB0_528:                              #   in Loop: Header=BB0_523 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_529:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_531
# %bb.530:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_532
.LBB0_531:                              #   in Loop: Header=BB0_523 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_532:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_534
# %bb.533:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_523 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_535:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_537
# %bb.536:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_538
.LBB0_537:                              #   in Loop: Header=BB0_523 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_538:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_540
# %bb.539:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_541
.LBB0_540:                              #   in Loop: Header=BB0_523 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_541:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	bneq r4, zero, .LBB0_543
# %bb.542:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_544
.LBB0_543:                              #   in Loop: Header=BB0_523 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_544:                              # %vector.body422
                                        #   in Loop: Header=BB0_523 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	beq r4, zero, .LBB0_521
# %bb.545:                              #   in Loop: Header=BB0_523 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 837 19                        # parallel-rne.mlir:837:19
	j .LBB0_522
.LBB0_546:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 818 7                         # parallel-rne.mlir:818:7
	mfence { sm }
.LBB0_547:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r24
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_583
# %bb.548:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 844 7                         # parallel-rne.mlir:844:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_550
.LBB0_549:                              # %middle.block415
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 852 9 is_stmt 1               # parallel-rne.mlir:852:9
	load.d r[2:3], -664(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_619
.LBB0_550:                              # %.preheader105
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_560 Depth 3
                                        #       Child Loop BB0_554 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 853 11 is_stmt 1              # parallel-rne.mlir:853:11
	bneq r12, r10, .LBB0_557
# %bb.551:                              # %scalar.ph406.preheader
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_554
.LBB0_552:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_554 Depth=3
	addli r8, r11, 0
.LBB0_553:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 865 13 is_stmt 1              # parallel-rne.mlir:865:13
	add.s r7, r12, r7
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 865 13                        # parallel-rne.mlir:865:13
	stores.w r8, 0(r7)
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	beq r4, zero, .LBB0_549
.LBB0_554:                              # %scalar.ph406
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_550 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	and r4, r14, r13
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_556
# %bb.555:                              # %scalar.ph406
                                        #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	beq r4, r16, .LBB0_553
	j .LBB0_552
.LBB0_556:                              #   in Loop: Header=BB0_554 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	beq r4, r16, .LBB0_553
	j .LBB0_552
.LBB0_557:                              # %vector.body408.preheader
                                        #   in Loop: Header=BB0_550 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_560
.LBB0_558:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r18, 28(r19)
.LBB0_559:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 853 11 is_stmt 1              # parallel-rne.mlir:853:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 865 13                        # parallel-rne.mlir:865:13
	add.s r2, r12, r2
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 865 13                        # parallel-rne.mlir:865:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 853 11                        # parallel-rne.mlir:853:11
	bneq r4, zero, .LBB0_549
.LBB0_560:                              # %vector.body408
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_550 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 855 19                        # parallel-rne.mlir:855:19
	add.s r19, r25, r2
	.loc	1 854 19                        # parallel-rne.mlir:854:19
	loads.w r3, 0(r18)
	.loc	1 858 19                        # parallel-rne.mlir:858:19
	and r4, r3, r16
	.loc	1 860 19                        # parallel-rne.mlir:860:19
	and r9, r3, r13
	.loc	1 859 19                        # parallel-rne.mlir:859:19
	seteq r4, r4, r16
	.loc	1 861 19                        # parallel-rne.mlir:861:19
	setneq r9, r9, zero
	.loc	1 862 19                        # parallel-rne.mlir:862:19
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_562
# %bb.561:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_563
.LBB0_562:                              #   in Loop: Header=BB0_560 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_563:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_565
# %bb.564:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_566
.LBB0_565:                              #   in Loop: Header=BB0_560 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_566:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_568
# %bb.567:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_560 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_569:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_571
# %bb.570:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_572
.LBB0_571:                              #   in Loop: Header=BB0_560 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_572:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_574
# %bb.573:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_575
.LBB0_574:                              #   in Loop: Header=BB0_560 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_575:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_577
# %bb.576:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_578
.LBB0_577:                              #   in Loop: Header=BB0_560 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_578:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	bneq r4, zero, .LBB0_580
# %bb.579:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_581
.LBB0_580:                              #   in Loop: Header=BB0_560 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_581:                              # %vector.body408
                                        #   in Loop: Header=BB0_560 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	beq r4, zero, .LBB0_558
# %bb.582:                              #   in Loop: Header=BB0_560 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 863 19                        # parallel-rne.mlir:863:19
	j .LBB0_559
.LBB0_583:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 7 is_stmt 1               # parallel-rne.mlir:870:7
	addli r2, zero, 2
	bneq r24, r2, .LBB0_620
.LBB0_584:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 870 7                         # parallel-rne.mlir:870:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_586
.LBB0_585:                              # %middle.block401
                                        #   in Loop: Header=BB0_586 Depth=2
	.loc	1 878 9 is_stmt 1               # parallel-rne.mlir:878:9
	load.d r[2:3], -672(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_656
.LBB0_586:                              # %.preheader104
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_596 Depth 3
                                        #       Child Loop BB0_590 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 879 11 is_stmt 1              # parallel-rne.mlir:879:11
	bneq r12, r10, .LBB0_593
# %bb.587:                              # %scalar.ph392.preheader
                                        #   in Loop: Header=BB0_586 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_590
.LBB0_588:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_590 Depth=3
	addli r8, r11, 0
.LBB0_589:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 891 13 is_stmt 1              # parallel-rne.mlir:891:13
	add.s r7, r12, r7
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 891 13                        # parallel-rne.mlir:891:13
	stores.w r8, 0(r7)
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	beq r4, zero, .LBB0_585
.LBB0_590:                              # %scalar.ph392
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_586 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r4, r14, r13
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_592
# %bb.591:                              # %scalar.ph392
                                        #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	beq r4, r16, .LBB0_589
	j .LBB0_588
.LBB0_592:                              #   in Loop: Header=BB0_590 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	beq r4, r16, .LBB0_589
	j .LBB0_588
.LBB0_593:                              # %vector.body394.preheader
                                        #   in Loop: Header=BB0_586 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_596
.LBB0_594:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r18, 28(r19)
.LBB0_595:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 879 11 is_stmt 1              # parallel-rne.mlir:879:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 891 13                        # parallel-rne.mlir:891:13
	add.s r2, r12, r2
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 891 13                        # parallel-rne.mlir:891:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 879 11                        # parallel-rne.mlir:879:11
	bneq r4, zero, .LBB0_585
.LBB0_596:                              # %vector.body394
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_586 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 881 19                        # parallel-rne.mlir:881:19
	add.s r19, r25, r2
	.loc	1 880 19                        # parallel-rne.mlir:880:19
	loads.w r3, 0(r18)
	.loc	1 884 19                        # parallel-rne.mlir:884:19
	and r4, r3, r16
	.loc	1 886 19                        # parallel-rne.mlir:886:19
	and r9, r3, r13
	.loc	1 885 19                        # parallel-rne.mlir:885:19
	seteq r4, r4, r16
	.loc	1 887 19                        # parallel-rne.mlir:887:19
	setneq r9, r9, zero
	.loc	1 888 19                        # parallel-rne.mlir:888:19
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_598
# %bb.597:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_599
.LBB0_598:                              #   in Loop: Header=BB0_596 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_599:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_601
# %bb.600:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_596 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_602:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_604
# %bb.603:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_605
.LBB0_604:                              #   in Loop: Header=BB0_596 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_605:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_607
# %bb.606:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_608
.LBB0_607:                              #   in Loop: Header=BB0_596 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_608:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_610
# %bb.609:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_611
.LBB0_610:                              #   in Loop: Header=BB0_596 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_611:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_613
# %bb.612:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_596 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_614:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	bneq r4, zero, .LBB0_616
# %bb.615:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_617
.LBB0_616:                              #   in Loop: Header=BB0_596 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_617:                              # %vector.body394
                                        #   in Loop: Header=BB0_596 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	beq r4, zero, .LBB0_594
# %bb.618:                              #   in Loop: Header=BB0_596 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 889 19                        # parallel-rne.mlir:889:19
	j .LBB0_595
.LBB0_619:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 844 7 is_stmt 1               # parallel-rne.mlir:844:7
	mfence { sm }
	.loc	1 870 7                         # parallel-rne.mlir:870:7
	addli r2, zero, 2
	beq r24, r2, .LBB0_584
.LBB0_620:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	addli r2, zero, 3
	bneq r24, r2, .LBB0_657
.LBB0_621:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 24
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_623
.LBB0_622:                              # %middle.block387
                                        #   in Loop: Header=BB0_623 Depth=2
	.loc	1 904 9 is_stmt 1               # parallel-rne.mlir:904:9
	load.d r[2:3], -680(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_693
.LBB0_623:                              # %.preheader103
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_633 Depth 3
                                        #       Child Loop BB0_627 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 905 11 is_stmt 1              # parallel-rne.mlir:905:11
	bneq r12, r10, .LBB0_630
# %bb.624:                              # %scalar.ph378.preheader
                                        #   in Loop: Header=BB0_623 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_627
.LBB0_625:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_627 Depth=3
	addli r8, r11, 0
.LBB0_626:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 905 11                        # parallel-rne.mlir:905:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 917 13 is_stmt 1              # parallel-rne.mlir:917:13
	add.s r7, r12, r7
	.loc	1 905 11                        # parallel-rne.mlir:905:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 917 13                        # parallel-rne.mlir:917:13
	stores.w r8, 0(r7)
	.loc	1 905 11                        # parallel-rne.mlir:905:11
	beq r4, zero, .LBB0_622
.LBB0_627:                              # %scalar.ph378
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_623 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	and r4, r14, r13
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_629
# %bb.628:                              # %scalar.ph378
                                        #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	beq r4, r16, .LBB0_626
	j .LBB0_625
.LBB0_629:                              #   in Loop: Header=BB0_627 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	beq r4, r16, .LBB0_626
	j .LBB0_625
.LBB0_630:                              # %vector.body380.preheader
                                        #   in Loop: Header=BB0_623 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_633
.LBB0_631:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r18, 28(r19)
.LBB0_632:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 905 11 is_stmt 1              # parallel-rne.mlir:905:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 917 13                        # parallel-rne.mlir:917:13
	add.s r2, r12, r2
	.loc	1 905 11                        # parallel-rne.mlir:905:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 917 13                        # parallel-rne.mlir:917:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 905 11                        # parallel-rne.mlir:905:11
	bneq r4, zero, .LBB0_622
.LBB0_633:                              # %vector.body380
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_623 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 907 19                        # parallel-rne.mlir:907:19
	add.s r19, r25, r2
	.loc	1 906 19                        # parallel-rne.mlir:906:19
	loads.w r3, 0(r18)
	.loc	1 910 19                        # parallel-rne.mlir:910:19
	and r4, r3, r16
	.loc	1 912 19                        # parallel-rne.mlir:912:19
	and r9, r3, r13
	.loc	1 911 19                        # parallel-rne.mlir:911:19
	seteq r4, r4, r16
	.loc	1 913 19                        # parallel-rne.mlir:913:19
	setneq r9, r9, zero
	.loc	1 914 19                        # parallel-rne.mlir:914:19
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_635
# %bb.634:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_636
.LBB0_635:                              #   in Loop: Header=BB0_633 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_636:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_638
# %bb.637:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_639
.LBB0_638:                              #   in Loop: Header=BB0_633 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_639:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_641
# %bb.640:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_642
.LBB0_641:                              #   in Loop: Header=BB0_633 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_642:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_644
# %bb.643:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_645
.LBB0_644:                              #   in Loop: Header=BB0_633 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_645:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_647
# %bb.646:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_633 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_648:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_650
# %bb.649:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_651
.LBB0_650:                              #   in Loop: Header=BB0_633 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_651:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	bneq r4, zero, .LBB0_653
# %bb.652:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_654
.LBB0_653:                              #   in Loop: Header=BB0_633 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_654:                              # %vector.body380
                                        #   in Loop: Header=BB0_633 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	beq r4, zero, .LBB0_631
# %bb.655:                              #   in Loop: Header=BB0_633 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 915 19                        # parallel-rne.mlir:915:19
	j .LBB0_632
.LBB0_656:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 870 7 is_stmt 1               # parallel-rne.mlir:870:7
	mfence { sm }
	.loc	1 896 7                         # parallel-rne.mlir:896:7
	addli r2, zero, 3
	beq r24, r2, .LBB0_621
.LBB0_657:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	addli r2, zero, 4
	bneq r24, r2, .LBB0_694
.LBB0_658:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_660
.LBB0_659:                              # %middle.block373
                                        #   in Loop: Header=BB0_660 Depth=2
	.loc	1 930 9 is_stmt 1               # parallel-rne.mlir:930:9
	load.d r[2:3], -688(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_730
.LBB0_660:                              # %.preheader102
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_670 Depth 3
                                        #       Child Loop BB0_664 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 931 11 is_stmt 1              # parallel-rne.mlir:931:11
	bneq r12, r10, .LBB0_667
# %bb.661:                              # %scalar.ph364.preheader
                                        #   in Loop: Header=BB0_660 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_664
.LBB0_662:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_664 Depth=3
	addli r8, r11, 0
.LBB0_663:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 931 11                        # parallel-rne.mlir:931:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 943 13 is_stmt 1              # parallel-rne.mlir:943:13
	add.s r7, r12, r7
	.loc	1 931 11                        # parallel-rne.mlir:931:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 943 13                        # parallel-rne.mlir:943:13
	stores.w r8, 0(r7)
	.loc	1 931 11                        # parallel-rne.mlir:931:11
	beq r4, zero, .LBB0_659
.LBB0_664:                              # %scalar.ph364
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_660 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	and r4, r14, r13
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_666
# %bb.665:                              # %scalar.ph364
                                        #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	beq r4, r16, .LBB0_663
	j .LBB0_662
.LBB0_666:                              #   in Loop: Header=BB0_664 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	beq r4, r16, .LBB0_663
	j .LBB0_662
.LBB0_667:                              # %vector.body366.preheader
                                        #   in Loop: Header=BB0_660 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_670
.LBB0_668:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r18, 28(r19)
.LBB0_669:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 931 11 is_stmt 1              # parallel-rne.mlir:931:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 943 13                        # parallel-rne.mlir:943:13
	add.s r2, r12, r2
	.loc	1 931 11                        # parallel-rne.mlir:931:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 943 13                        # parallel-rne.mlir:943:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 931 11                        # parallel-rne.mlir:931:11
	bneq r4, zero, .LBB0_659
.LBB0_670:                              # %vector.body366
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_660 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 933 19                        # parallel-rne.mlir:933:19
	add.s r19, r25, r2
	.loc	1 932 19                        # parallel-rne.mlir:932:19
	loads.w r3, 0(r18)
	.loc	1 936 19                        # parallel-rne.mlir:936:19
	and r4, r3, r16
	.loc	1 938 19                        # parallel-rne.mlir:938:19
	and r9, r3, r13
	.loc	1 937 19                        # parallel-rne.mlir:937:19
	seteq r4, r4, r16
	.loc	1 939 19                        # parallel-rne.mlir:939:19
	setneq r9, r9, zero
	.loc	1 940 19                        # parallel-rne.mlir:940:19
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_672
# %bb.671:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_673
.LBB0_672:                              #   in Loop: Header=BB0_670 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_673:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_675
# %bb.674:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_676
.LBB0_675:                              #   in Loop: Header=BB0_670 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_676:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_678
# %bb.677:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_679
.LBB0_678:                              #   in Loop: Header=BB0_670 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_679:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_681
# %bb.680:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_682
.LBB0_681:                              #   in Loop: Header=BB0_670 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_682:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_684
# %bb.683:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_685
.LBB0_684:                              #   in Loop: Header=BB0_670 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_685:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_687
# %bb.686:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_688
.LBB0_687:                              #   in Loop: Header=BB0_670 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_688:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	bneq r4, zero, .LBB0_690
# %bb.689:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_691
.LBB0_690:                              #   in Loop: Header=BB0_670 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_691:                              # %vector.body366
                                        #   in Loop: Header=BB0_670 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	beq r4, zero, .LBB0_668
# %bb.692:                              #   in Loop: Header=BB0_670 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 941 19                        # parallel-rne.mlir:941:19
	j .LBB0_669
.LBB0_693:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 896 7 is_stmt 1               # parallel-rne.mlir:896:7
	mfence { sm }
	.loc	1 922 7                         # parallel-rne.mlir:922:7
	addli r2, zero, 4
	beq r24, r2, .LBB0_658
.LBB0_694:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	addli r2, zero, 5
	bneq r24, r2, .LBB0_731
.LBB0_695:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_697
.LBB0_696:                              # %middle.block359
                                        #   in Loop: Header=BB0_697 Depth=2
	.loc	1 956 9 is_stmt 1               # parallel-rne.mlir:956:9
	load.d r[2:3], -696(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_767
.LBB0_697:                              # %.preheader101
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_707 Depth 3
                                        #       Child Loop BB0_701 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 957 11 is_stmt 1              # parallel-rne.mlir:957:11
	bneq r12, r10, .LBB0_704
# %bb.698:                              # %scalar.ph350.preheader
                                        #   in Loop: Header=BB0_697 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_701
.LBB0_699:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_701 Depth=3
	addli r8, r11, 0
.LBB0_700:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 957 11                        # parallel-rne.mlir:957:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 969 13 is_stmt 1              # parallel-rne.mlir:969:13
	add.s r7, r12, r7
	.loc	1 957 11                        # parallel-rne.mlir:957:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 969 13                        # parallel-rne.mlir:969:13
	stores.w r8, 0(r7)
	.loc	1 957 11                        # parallel-rne.mlir:957:11
	beq r4, zero, .LBB0_696
.LBB0_701:                              # %scalar.ph350
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_697 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	and r4, r14, r13
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_703
# %bb.702:                              # %scalar.ph350
                                        #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	beq r4, r16, .LBB0_700
	j .LBB0_699
.LBB0_703:                              #   in Loop: Header=BB0_701 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	beq r4, r16, .LBB0_700
	j .LBB0_699
.LBB0_704:                              # %vector.body352.preheader
                                        #   in Loop: Header=BB0_697 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_707
.LBB0_705:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r18, 28(r19)
.LBB0_706:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 957 11 is_stmt 1              # parallel-rne.mlir:957:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 969 13                        # parallel-rne.mlir:969:13
	add.s r2, r12, r2
	.loc	1 957 11                        # parallel-rne.mlir:957:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 969 13                        # parallel-rne.mlir:969:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 957 11                        # parallel-rne.mlir:957:11
	bneq r4, zero, .LBB0_696
.LBB0_707:                              # %vector.body352
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_697 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 959 19                        # parallel-rne.mlir:959:19
	add.s r19, r25, r2
	.loc	1 958 19                        # parallel-rne.mlir:958:19
	loads.w r3, 0(r18)
	.loc	1 962 19                        # parallel-rne.mlir:962:19
	and r4, r3, r16
	.loc	1 964 19                        # parallel-rne.mlir:964:19
	and r9, r3, r13
	.loc	1 963 19                        # parallel-rne.mlir:963:19
	seteq r4, r4, r16
	.loc	1 965 19                        # parallel-rne.mlir:965:19
	setneq r9, r9, zero
	.loc	1 966 19                        # parallel-rne.mlir:966:19
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_709
# %bb.708:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_710
.LBB0_709:                              #   in Loop: Header=BB0_707 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_710:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_712
# %bb.711:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_713
.LBB0_712:                              #   in Loop: Header=BB0_707 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_713:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_715
# %bb.714:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_716
.LBB0_715:                              #   in Loop: Header=BB0_707 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_716:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_718
# %bb.717:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_707 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_719:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_721
# %bb.720:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_722
.LBB0_721:                              #   in Loop: Header=BB0_707 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_722:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_724
# %bb.723:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_725
.LBB0_724:                              #   in Loop: Header=BB0_707 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_725:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	bneq r4, zero, .LBB0_727
# %bb.726:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_728
.LBB0_727:                              #   in Loop: Header=BB0_707 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_728:                              # %vector.body352
                                        #   in Loop: Header=BB0_707 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	beq r4, zero, .LBB0_705
# %bb.729:                              #   in Loop: Header=BB0_707 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 967 19                        # parallel-rne.mlir:967:19
	j .LBB0_706
.LBB0_730:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 922 7 is_stmt 1               # parallel-rne.mlir:922:7
	mfence { sm }
	.loc	1 948 7                         # parallel-rne.mlir:948:7
	addli r2, zero, 5
	beq r24, r2, .LBB0_695
.LBB0_731:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 974 7                         # parallel-rne.mlir:974:7
	addli r2, zero, 6
	bneq r24, r2, .LBB0_768
.LBB0_732:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 974 7                         # parallel-rne.mlir:974:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_734
.LBB0_733:                              # %middle.block345
                                        #   in Loop: Header=BB0_734 Depth=2
	.loc	1 982 9 is_stmt 1               # parallel-rne.mlir:982:9
	load.d r[2:3], -704(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_769
.LBB0_734:                              # %.preheader100
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_744 Depth 3
                                        #       Child Loop BB0_738 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 983 11 is_stmt 1              # parallel-rne.mlir:983:11
	bneq r12, r10, .LBB0_741
# %bb.735:                              # %scalar.ph336.preheader
                                        #   in Loop: Header=BB0_734 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_738
.LBB0_736:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_738 Depth=3
	addli r8, r11, 0
.LBB0_737:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 983 11                        # parallel-rne.mlir:983:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 995 13 is_stmt 1              # parallel-rne.mlir:995:13
	add.s r7, r12, r7
	.loc	1 983 11                        # parallel-rne.mlir:983:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 995 13                        # parallel-rne.mlir:995:13
	stores.w r8, 0(r7)
	.loc	1 983 11                        # parallel-rne.mlir:983:11
	beq r4, zero, .LBB0_733
.LBB0_738:                              # %scalar.ph336
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_734 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	and r4, r14, r13
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_740
# %bb.739:                              # %scalar.ph336
                                        #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	beq r4, r16, .LBB0_737
	j .LBB0_736
.LBB0_740:                              #   in Loop: Header=BB0_738 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	beq r4, r16, .LBB0_737
	j .LBB0_736
.LBB0_741:                              # %vector.body338.preheader
                                        #   in Loop: Header=BB0_734 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_744
.LBB0_742:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r18, 28(r19)
.LBB0_743:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 983 11 is_stmt 1              # parallel-rne.mlir:983:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 995 13                        # parallel-rne.mlir:995:13
	add.s r2, r12, r2
	.loc	1 983 11                        # parallel-rne.mlir:983:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 995 13                        # parallel-rne.mlir:995:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 983 11                        # parallel-rne.mlir:983:11
	bneq r4, zero, .LBB0_733
.LBB0_744:                              # %vector.body338
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_734 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 985 19                        # parallel-rne.mlir:985:19
	add.s r19, r25, r2
	.loc	1 984 19                        # parallel-rne.mlir:984:19
	loads.w r3, 0(r18)
	.loc	1 988 19                        # parallel-rne.mlir:988:19
	and r4, r3, r16
	.loc	1 990 19                        # parallel-rne.mlir:990:19
	and r9, r3, r13
	.loc	1 989 19                        # parallel-rne.mlir:989:19
	seteq r4, r4, r16
	.loc	1 991 19                        # parallel-rne.mlir:991:19
	setneq r9, r9, zero
	.loc	1 992 19                        # parallel-rne.mlir:992:19
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_746
# %bb.745:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_747
.LBB0_746:                              #   in Loop: Header=BB0_744 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_747:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_749
# %bb.748:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_750
.LBB0_749:                              #   in Loop: Header=BB0_744 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_750:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_752
# %bb.751:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_753
.LBB0_752:                              #   in Loop: Header=BB0_744 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_753:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_755
# %bb.754:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_756
.LBB0_755:                              #   in Loop: Header=BB0_744 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_756:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_758
# %bb.757:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_759
.LBB0_758:                              #   in Loop: Header=BB0_744 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_759:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_761
# %bb.760:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_762
.LBB0_761:                              #   in Loop: Header=BB0_744 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_762:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	bneq r4, zero, .LBB0_764
# %bb.763:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_765
.LBB0_764:                              #   in Loop: Header=BB0_744 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_765:                              # %vector.body338
                                        #   in Loop: Header=BB0_744 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	beq r4, zero, .LBB0_742
# %bb.766:                              #   in Loop: Header=BB0_744 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 993 19                        # parallel-rne.mlir:993:19
	j .LBB0_743
.LBB0_767:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 948 7 is_stmt 1               # parallel-rne.mlir:948:7
	mfence { sm }
	.loc	1 974 7                         # parallel-rne.mlir:974:7
	addli r2, zero, 6
	beq r24, r2, .LBB0_732
.LBB0_768:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	addli r2, zero, 7
	beq r24, r2, .LBB0_770
	j .LBB0_806
.LBB0_769:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 974 7                         # parallel-rne.mlir:974:7
	mfence { sm }
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	addli r2, zero, 7
	bneq r24, r2, .LBB0_806
.LBB0_770:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 1000 7                        # parallel-rne.mlir:1000:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[3:4], r2
	j .LBB0_772
.LBB0_771:                              # %middle.block331
                                        #   in Loop: Header=BB0_772 Depth=2
	.loc	1 1008 9 is_stmt 1              # parallel-rne.mlir:1008:9
	load.d r[2:3], -712(r30)                # 8-byte Folded Reload
	load.d r[7:8], -728(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_805
.LBB0_772:                              # %.preheader99
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_782 Depth 3
                                        #       Child Loop BB0_776 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -728(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 1009 11 is_stmt 1             # parallel-rne.mlir:1009:11
	bneq r12, r10, .LBB0_779
# %bb.773:                              # %scalar.ph322.preheader
                                        #   in Loop: Header=BB0_772 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_776
.LBB0_774:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_776 Depth=3
	addli r8, r11, 0
.LBB0_775:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 1009 11                       # parallel-rne.mlir:1009:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 1021 13 is_stmt 1             # parallel-rne.mlir:1021:13
	add.s r7, r12, r7
	.loc	1 1009 11                       # parallel-rne.mlir:1009:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	stores.w r8, 0(r7)
	.loc	1 1009 11                       # parallel-rne.mlir:1009:11
	beq r4, zero, .LBB0_771
.LBB0_776:                              # %scalar.ph322
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_772 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1010 19                       # parallel-rne.mlir:1010:19
	add.ul r[7:8], r[2:3], r[22:23]
	slli r7, r7, 2
	add.s r4, r10, r7
	loads.w r14, 0(r4)
	.loc	1 1011 19                       # parallel-rne.mlir:1011:19
	add.s r4, r25, r7
	loads.w r11, 0(r4)
	.loc	1 1016 19                       # parallel-rne.mlir:1016:19
	and r4, r14, r13
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_778
# %bb.777:                              # %scalar.ph322
                                        #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r11, 0
	and r4, r14, r16
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	beq r4, r16, .LBB0_775
	j .LBB0_774
.LBB0_778:                              #   in Loop: Header=BB0_776 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r8, r14, r4
	and r4, r14, r16
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	beq r4, r16, .LBB0_775
	j .LBB0_774
.LBB0_779:                              # %vector.body324.preheader
                                        #   in Loop: Header=BB0_772 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[7:8], zero
	j .LBB0_782
.LBB0_780:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r18, 28(r19)
.LBB0_781:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 1009 11 is_stmt 1             # parallel-rne.mlir:1009:11
	addli.d r[7:8], r[7:8], 8
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	add.s r2, r12, r2
	.loc	1 1009 11                       # parallel-rne.mlir:1009:11
	seteq.d r4, r[7:8], r[5:6]
	.loc	1 1021 13                       # parallel-rne.mlir:1021:13
	stores.w r15, 12(r2)
	stores.w r11, 8(r2)
	stores.w r14, 4(r2)
	stores.w r3, 0(r2)
	stores.w r18, 28(r2)
	stores.w r21, 24(r2)
	stores.w r20, 20(r2)
	stores.w r17, 16(r2)
	.loc	1 1009 11                       # parallel-rne.mlir:1009:11
	bneq r4, zero, .LBB0_771
.LBB0_782:                              # %vector.body324
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_772 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1010 19                       # parallel-rne.mlir:1010:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r18, r10, r2
	.loc	1 1011 19                       # parallel-rne.mlir:1011:19
	add.s r19, r25, r2
	.loc	1 1010 19                       # parallel-rne.mlir:1010:19
	loads.w r3, 0(r18)
	.loc	1 1014 19                       # parallel-rne.mlir:1014:19
	and r4, r3, r16
	.loc	1 1016 19                       # parallel-rne.mlir:1016:19
	and r9, r3, r13
	.loc	1 1015 19                       # parallel-rne.mlir:1015:19
	seteq r4, r4, r16
	.loc	1 1017 19                       # parallel-rne.mlir:1017:19
	setneq r9, r9, zero
	.loc	1 1018 19                       # parallel-rne.mlir:1018:19
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_784
# %bb.783:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r3, 0(r19)
	j .LBB0_785
.LBB0_784:                              #   in Loop: Header=BB0_782 Depth=3
	lui r4, 1024
	or r3, r3, r4
.LBB0_785:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r11, 4(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_787
# %bb.786:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 4(r19)
	j .LBB0_788
.LBB0_787:                              #   in Loop: Header=BB0_782 Depth=3
	lui r4, 1024
	or r14, r11, r4
.LBB0_788:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r11, 8(r18)
	and r4, r11, r16
	and r9, r11, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_790
# %bb.789:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r11, 8(r19)
	j .LBB0_791
.LBB0_790:                              #   in Loop: Header=BB0_782 Depth=3
	lui r4, 1024
	or r11, r11, r4
.LBB0_791:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r15, 12(r18)
	and r4, r15, r16
	and r9, r15, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_793
# %bb.792:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_794
.LBB0_793:                              #   in Loop: Header=BB0_782 Depth=3
	lui r4, 1024
	or r15, r15, r4
.LBB0_794:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r17, 16(r18)
	and r4, r17, r16
	and r9, r17, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_796
# %bb.795:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r17, 16(r19)
	j .LBB0_797
.LBB0_796:                              #   in Loop: Header=BB0_782 Depth=3
	lui r4, 1024
	or r17, r17, r4
.LBB0_797:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r20, 20(r18)
	and r4, r20, r16
	and r9, r20, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_799
# %bb.798:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r20, 20(r19)
	j .LBB0_800
.LBB0_799:                              #   in Loop: Header=BB0_782 Depth=3
	lui r4, 1024
	or r20, r20, r4
.LBB0_800:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r21, 24(r18)
	and r4, r21, r16
	and r9, r21, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	bneq r4, zero, .LBB0_802
# %bb.801:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r21, 24(r19)
	j .LBB0_803
.LBB0_802:                              #   in Loop: Header=BB0_782 Depth=3
	lui r4, 1024
	or r21, r21, r4
.LBB0_803:                              # %vector.body324
                                        #   in Loop: Header=BB0_782 Depth=3
	loads.w r18, 28(r18)
	and r4, r18, r16
	and r9, r18, r13
	seteq r4, r4, r16
	setneq r9, r9, zero
	and r4, r4, r9
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	beq r4, zero, .LBB0_780
# %bb.804:                              #   in Loop: Header=BB0_782 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r4, 1024
	or r18, r18, r4
	.loc	1 1019 19                       # parallel-rne.mlir:1019:19
	j .LBB0_781
.LBB0_805:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1000 7 is_stmt 1              # parallel-rne.mlir:1000:7
	mfence { sm }
.LBB0_806:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	addli r2, zero, 255
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	addli r3, zero, 3
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	csr_set csr5, r2
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1026 7                        # parallel-rne.mlir:1026:7
	sync_core
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	bneq r2, r3, .LBB0_808
# %bb.807:                              # %.critedge26
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r4, zero, 16
	.loc	1 1028 7 is_stmt 1              # parallel-rne.mlir:1028:7
	addli r2, zero, 35
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	addli r3, zero, 4
	.loc	1 1027 7                        # parallel-rne.mlir:1027:7
	xsignal r4, 0
	.loc	1 1028 7                        # parallel-rne.mlir:1028:7
	xsignal r2, 0
	.loc	1 1029 7                        # parallel-rne.mlir:1029:7
	addli r2, zero, 36
	xsignal r2, 0
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	loadli.w r2,  -20(r30)
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -20(r30)
	.loc	1 1035 7                        # parallel-rne.mlir:1035:7
	xwait r4, 0
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	slli r2, r3, 15
	.loc	1 1036 7                        # parallel-rne.mlir:1036:7
	addli r3, zero, 25
	xwait r3, 0
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	loadli.w r3,  -844(r30)                 # 4-byte Folded Reload
	add.s r10, r2, r3
	.loc	1 1037 7                        # parallel-rne.mlir:1037:7
	addli r2, zero, 37
	xwait r2, 0
	.loc	1 1038 7                        # parallel-rne.mlir:1038:7
	addli r2, zero, 39
	xwait r2, 0
	j .LBB0_811
.LBB0_808:                              # %.critedge24
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1030 7                        # parallel-rne.mlir:1030:7
	addli r3, zero, 5
	bneq r2, r3, .LBB0_810
# %bb.809:                              # %.thread90
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 36
	addli r7, zero, 2
	addli r8, zero, 2047
	addli r4, zero, 4
	xwait r2, 0
	lock zero, r7
	lui r2, 260096
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg r2, zero, r2, 0
	ew_cfg zero, r8, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, zero, 19
	dsmadd r12, r12, r12, 0
	ew_cfg zero, zero, zero, 19
	unlock r7
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	loadli.w r2,  -20(r30)
	addli r3, r2, 1
	mod.s r2, r2, r4
	storeli.w r3, -20(r30)
	.loc	1 1033 7                        # parallel-rne.mlir:1033:7
	addli r3, zero, 24
	xwait r3, 0
	addli r3, zero, 40
	xwait r3, 0
	lock zero, r7
	lui r3, 258048
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	slli r2, r2, 15
	.loc	1 1033 7                        # parallel-rne.mlir:1033:7
	ew_cfg zero, zero, zero, 1
	ewcoeff_cfg zero, zero, r3, 0
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	loadli.w r3,  -844(r30)                 # 4-byte Folded Reload
	.loc	1 1033 7                        # parallel-rne.mlir:1033:7
	ew_cfg zero, r8, zero, 2
	ew_cfg r4, zero, zero, 3
	ew_cfg r4, r4, r4, 19
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	add.s r10, r2, r3
	.loc	1 1033 7                        # parallel-rne.mlir:1033:7
	loadli.w r2,  -656(r30)                 # 4-byte Folded Reload
	dsmul r10, r2, r12, 0
	addli r2, zero, 23
	ew_cfg zero, zero, zero, 19
	unlock r7
	xsignal r2, 0
	addli r2, zero, 37
	xsignal r2, 0
	addli r2, zero, 39
	xsignal r2, 0
	.loc	1 1035 7                        # parallel-rne.mlir:1035:7
	j .LBB0_811
.LBB0_810:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1032 13                       # parallel-rne.mlir:1032:13
	loadli.w r2,  -20(r30)
	addli r3, zero, 4
	loadli.w r4,  -844(r30)                 # 4-byte Folded Reload
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -20(r30)
	slli r3, r3, 15
	add.s r10, r3, r4
.LBB0_811:                              # %.critedge28
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	addli r2, zero, 255
	.loc	1 1040 7                        # parallel-rne.mlir:1040:7
	xfence
	.loc	1 1041 7                        # parallel-rne.mlir:1041:7
	mfence { lm, sm, gm }
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	csr_set csr5, r2
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	sub.s r2, r25, r2
	storeli.w r2, -736(r30)                 # 4-byte Folded Spill
	sub.s r2, r25, r10
	storeli.w r2, -744(r30)                 # 4-byte Folded Spill
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1042 7                        # parallel-rne.mlir:1042:7
	sync_core
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	beq r2, zero, .LBB0_813
# %bb.812:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1079 7                        # parallel-rne.mlir:1079:7
	addli r3, zero, 1
	beq r2, r3, .LBB0_841
	j .LBB0_869
.LBB0_813:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], zero
	.loc	1 1043 7 is_stmt 1              # parallel-rne.mlir:1043:7
	storeli.w r2, -728(r30)                 # 4-byte Folded Spill
	xfence
	mfence { lm, sm, gm }
	j .LBB0_815
.LBB0_814:                              # %middle.block317
                                        #   in Loop: Header=BB0_815 Depth=2
	.loc	1 1051 9                        # parallel-rne.mlir:1051:9
	load.d r[2:3], -720(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_840
.LBB0_815:                              # %.preheader98
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_832 Depth 3
                                        #       Child Loop BB0_818 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r2
	.loc	1 1052 11 is_stmt 1             # parallel-rne.mlir:1052:11
	loadli.w r2,  -728(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_830
# %bb.816:                              # %scalar.ph309.preheader
                                        #   in Loop: Header=BB0_815 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_818
.LBB0_817:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 1074 13 is_stmt 1             # parallel-rne.mlir:1074:13
	add.s r9, r25, r11
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1074 13                       # parallel-rne.mlir:1074:13
	stores.w r14, 0(r9)
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	beq r4, zero, .LBB0_814
.LBB0_818:                              # %scalar.ph309
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_815 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.ul r[14:15], r[2:3], r[7:8]
	lui r18, 523264
	slli r11, r14, 2
	lui r14, 523264
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.s r4, r12, r11
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r9, r10, r11
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	loads.w r4, 0(r4)
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	loads.w r19, 0(r9)
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	and r15, r4, r26
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	beq r15, r16, .LBB0_820
# %bb.819:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_820:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r11
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	beq r17, zero, .LBB0_828
# %bb.821:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r15, zero, .LBB0_829
.LBB0_822:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	beq r17, r16, .LBB0_824
.LBB0_823:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_824:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	setlt.u r4, r16, r15
	lui r15, 523264
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r4, zero, .LBB0_826
# %bb.825:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_826:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	setlt.u r4, r16, r17
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r4, zero, .LBB0_817
# %bb.827:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_817
.LBB0_828:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	lui r19, 523264
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	beq r15, zero, .LBB0_822
.LBB0_829:                              # %scalar.ph309
                                        #   in Loop: Header=BB0_818 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r17, r16, .LBB0_823
	j .LBB0_824
.LBB0_830:                              # %vector.body311.preheader
                                        #   in Loop: Header=BB0_815 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_832
.LBB0_831:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	.loc	1 1052 11 is_stmt 1             # parallel-rne.mlir:1052:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1074 13                       # parallel-rne.mlir:1074:13
	add.s r9, r25, r14
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 1074 13                       # parallel-rne.mlir:1074:13
	stores.w r15, 12(r9)
	stores.w r24, 8(r9)
	stores.w r23, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 1052 11                       # parallel-rne.mlir:1052:11
	bneq r4, zero, .LBB0_814
.LBB0_832:                              # %vector.body311
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_815 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	add.ul r[14:15], r[2:3], r[7:8]
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	slli r14, r14, 2
	add.s r17, r4, r14
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	add.s r18, r12, r14
	.loc	1 1053 19                       # parallel-rne.mlir:1053:19
	loads.w r4, 0(r17)
	.loc	1 1054 19                       # parallel-rne.mlir:1054:19
	loads.w r9, 0(r18)
	.loc	1 1060 19                       # parallel-rne.mlir:1060:19
	and r4, r4, r26
	.loc	1 1058 19                       # parallel-rne.mlir:1058:19
	and r9, r9, r26
	.loc	1 1061 19                       # parallel-rne.mlir:1061:19
	seteq r11, r4, r16
	.loc	1 1065 19                       # parallel-rne.mlir:1065:19
	seteq r23, r4, zero
	.loc	1 1062 19                       # parallel-rne.mlir:1062:19
	seteq r15, r9, zero
	.loc	1 1064 19                       # parallel-rne.mlir:1064:19
	seteq r19, r9, r16
	.loc	1 1070 19                       # parallel-rne.mlir:1070:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1063 19                       # parallel-rne.mlir:1063:19
	and r9, r11, r15
	.loc	1 1066 19                       # parallel-rne.mlir:1066:19
	and r11, r23, r19
	.loc	1 1055 19                       # parallel-rne.mlir:1055:19
	add.s r19, r10, r14
	lui r15, 523264
	.loc	1 1067 19                       # parallel-rne.mlir:1067:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1071 19                       # parallel-rne.mlir:1071:19
	or r4, r4, r9
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r4, zero, .LBB0_834
# %bb.833:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_834:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	loads.w r4, 4(r17)
	loads.w r9, 4(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r23, r4, r16
	seteq r21, r4, zero
	seteq r20, r9, r16
	seteq r24, r9, zero
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r23, r24
	and r20, r21, r20
	lui r23, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r4, zero, .LBB0_836
# %bb.835:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r19)
.LBB0_836:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r20, r4, r16
	seteq r24, r4, zero
	seteq r21, r9, zero
	seteq r22, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r20, r21
	and r20, r24, r22
	lui r24, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r4, zero, .LBB0_838
# %bb.837:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r19)
.LBB0_838:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	loads.w r4, 12(r17)
	loads.w r9, 12(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r17, r4, r16
	seteq r21, r4, zero
	seteq r18, r9, zero
	seteq r20, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r17, r18
	and r17, r21, r20
	or r9, r9, r17
	or r4, r4, r9
	.loc	1 1072 19                       # parallel-rne.mlir:1072:19
	bneq r4, zero, .LBB0_831
# %bb.839:                              # %vector.body311
                                        #   in Loop: Header=BB0_832 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_831
.LBB0_840:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 37 5 is_stmt 1                # parallel-rne.mlir:37:5
	core_id r2
	.loc	1 1043 7                        # parallel-rne.mlir:1043:7
	mfence { sm }
	.loc	1 1079 7                        # parallel-rne.mlir:1079:7
	addli r3, zero, 1
	bneq r2, r3, .LBB0_869
.LBB0_841:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -720(r30)                 # 4-byte Folded Spill
	addli r2, zero, 8
	.loc	1 1079 7                        # parallel-rne.mlir:1079:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_843
.LBB0_842:                              # %middle.block302
                                        #   in Loop: Header=BB0_843 Depth=2
	.loc	1 1087 9 is_stmt 1              # parallel-rne.mlir:1087:9
	load.d r[2:3], -664(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_868
.LBB0_843:                              # %.preheader97
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_860 Depth 3
                                        #       Child Loop BB0_846 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r2
	.loc	1 1088 11 is_stmt 1             # parallel-rne.mlir:1088:11
	loadli.w r2,  -720(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_858
# %bb.844:                              # %scalar.ph294.preheader
                                        #   in Loop: Header=BB0_843 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_846
.LBB0_845:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 1088 11                       # parallel-rne.mlir:1088:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 1110 13 is_stmt 1             # parallel-rne.mlir:1110:13
	add.s r9, r25, r11
	.loc	1 1088 11                       # parallel-rne.mlir:1088:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1110 13                       # parallel-rne.mlir:1110:13
	stores.w r14, 0(r9)
	.loc	1 1088 11                       # parallel-rne.mlir:1088:11
	beq r4, zero, .LBB0_842
.LBB0_846:                              # %scalar.ph294
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_843 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	add.ul r[14:15], r[2:3], r[7:8]
	lui r18, 523264
	slli r11, r14, 2
	lui r14, 523264
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.s r4, r12, r11
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r9, r10, r11
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	loads.w r4, 0(r4)
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	loads.w r19, 0(r9)
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	and r15, r4, r26
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r15, r16, .LBB0_848
# %bb.847:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_848:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r11
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r17, zero, .LBB0_856
# %bb.849:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r15, zero, .LBB0_857
.LBB0_850:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	beq r17, r16, .LBB0_852
.LBB0_851:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_852:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	setlt.u r4, r16, r15
	lui r15, 523264
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r4, zero, .LBB0_854
# %bb.853:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_854:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	setlt.u r4, r16, r17
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r4, zero, .LBB0_845
# %bb.855:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_845
.LBB0_856:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	lui r19, 523264
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	beq r15, zero, .LBB0_850
.LBB0_857:                              # %scalar.ph294
                                        #   in Loop: Header=BB0_846 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r17, r16, .LBB0_851
	j .LBB0_852
.LBB0_858:                              # %vector.body296.preheader
                                        #   in Loop: Header=BB0_843 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_860
.LBB0_859:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 1088 11 is_stmt 1             # parallel-rne.mlir:1088:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1110 13                       # parallel-rne.mlir:1110:13
	add.s r9, r25, r14
	.loc	1 1088 11                       # parallel-rne.mlir:1088:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 1110 13                       # parallel-rne.mlir:1110:13
	stores.w r15, 12(r9)
	stores.w r24, 8(r9)
	stores.w r23, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 1088 11                       # parallel-rne.mlir:1088:11
	bneq r4, zero, .LBB0_842
.LBB0_860:                              # %vector.body296
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_843 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	add.ul r[14:15], r[2:3], r[7:8]
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	slli r14, r14, 2
	add.s r17, r4, r14
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	add.s r18, r12, r14
	.loc	1 1089 19                       # parallel-rne.mlir:1089:19
	loads.w r4, 0(r17)
	.loc	1 1090 19                       # parallel-rne.mlir:1090:19
	loads.w r9, 0(r18)
	.loc	1 1096 19                       # parallel-rne.mlir:1096:19
	and r4, r4, r26
	.loc	1 1094 19                       # parallel-rne.mlir:1094:19
	and r9, r9, r26
	.loc	1 1097 19                       # parallel-rne.mlir:1097:19
	seteq r11, r4, r16
	.loc	1 1101 19                       # parallel-rne.mlir:1101:19
	seteq r23, r4, zero
	.loc	1 1098 19                       # parallel-rne.mlir:1098:19
	seteq r15, r9, zero
	.loc	1 1100 19                       # parallel-rne.mlir:1100:19
	seteq r19, r9, r16
	.loc	1 1106 19                       # parallel-rne.mlir:1106:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1099 19                       # parallel-rne.mlir:1099:19
	and r9, r11, r15
	.loc	1 1102 19                       # parallel-rne.mlir:1102:19
	and r11, r23, r19
	.loc	1 1091 19                       # parallel-rne.mlir:1091:19
	add.s r19, r10, r14
	lui r15, 523264
	.loc	1 1103 19                       # parallel-rne.mlir:1103:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1107 19                       # parallel-rne.mlir:1107:19
	or r4, r4, r9
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r4, zero, .LBB0_862
# %bb.861:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_862:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	loads.w r4, 4(r17)
	loads.w r9, 4(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r23, r4, r16
	seteq r21, r4, zero
	seteq r20, r9, r16
	seteq r24, r9, zero
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r23, r24
	and r20, r21, r20
	lui r23, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r4, zero, .LBB0_864
# %bb.863:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r19)
.LBB0_864:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r20, r4, r16
	seteq r24, r4, zero
	seteq r21, r9, zero
	seteq r22, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r20, r21
	and r20, r24, r22
	lui r24, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r4, zero, .LBB0_866
# %bb.865:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r19)
.LBB0_866:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	loads.w r4, 12(r17)
	loads.w r9, 12(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r17, r4, r16
	seteq r21, r4, zero
	seteq r18, r9, zero
	seteq r20, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r17, r18
	and r17, r21, r20
	or r9, r9, r17
	or r4, r4, r9
	.loc	1 1108 19                       # parallel-rne.mlir:1108:19
	bneq r4, zero, .LBB0_859
# %bb.867:                              # %vector.body296
                                        #   in Loop: Header=BB0_860 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_859
.LBB0_868:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1079 7 is_stmt 1              # parallel-rne.mlir:1079:7
	mfence { sm }
.LBB0_869:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	core_id r2
	addli r3, zero, 2
	bneq r2, r3, .LBB0_898
# %bb.870:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	zext_int2long r[3:4], r3
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	.loc	1 1115 7                        # parallel-rne.mlir:1115:7
	xfence
	mfence { lm, sm, gm }
	j .LBB0_872
.LBB0_871:                              # %middle.block287
                                        #   in Loop: Header=BB0_872 Depth=2
	.loc	1 1123 9 is_stmt 1              # parallel-rne.mlir:1123:9
	load.d r[2:3], -672(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_897
.LBB0_872:                              # %.preheader96
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_889 Depth 3
                                        #       Child Loop BB0_875 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r2
	.loc	1 1124 11 is_stmt 1             # parallel-rne.mlir:1124:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_887
# %bb.873:                              # %scalar.ph279.preheader
                                        #   in Loop: Header=BB0_872 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_875
.LBB0_874:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 1146 13 is_stmt 1             # parallel-rne.mlir:1146:13
	add.s r9, r25, r11
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r14, 0(r9)
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	beq r4, zero, .LBB0_871
.LBB0_875:                              # %scalar.ph279
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_872 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.ul r[14:15], r[2:3], r[7:8]
	lui r18, 523264
	slli r11, r14, 2
	lui r14, 523264
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r4, r12, r11
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r9, r10, r11
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r4, 0(r4)
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	loads.w r19, 0(r9)
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	and r15, r4, r26
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r15, r16, .LBB0_877
# %bb.876:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_877:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r11
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r17, zero, .LBB0_885
# %bb.878:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r15, zero, .LBB0_886
.LBB0_879:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	beq r17, r16, .LBB0_881
.LBB0_880:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_881:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	setlt.u r4, r16, r15
	lui r15, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r4, zero, .LBB0_883
# %bb.882:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_883:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	setlt.u r4, r16, r17
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r4, zero, .LBB0_874
# %bb.884:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_874
.LBB0_885:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	lui r19, 523264
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	beq r15, zero, .LBB0_879
.LBB0_886:                              # %scalar.ph279
                                        #   in Loop: Header=BB0_875 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r17, r16, .LBB0_880
	j .LBB0_881
.LBB0_887:                              # %vector.body281.preheader
                                        #   in Loop: Header=BB0_872 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_889
.LBB0_888:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 1124 11 is_stmt 1             # parallel-rne.mlir:1124:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	add.s r9, r25, r14
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 1146 13                       # parallel-rne.mlir:1146:13
	stores.w r15, 12(r9)
	stores.w r24, 8(r9)
	stores.w r23, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 1124 11                       # parallel-rne.mlir:1124:11
	bneq r4, zero, .LBB0_871
.LBB0_889:                              # %vector.body281
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_872 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	add.ul r[14:15], r[2:3], r[7:8]
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	slli r14, r14, 2
	add.s r17, r4, r14
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	add.s r18, r12, r14
	.loc	1 1125 19                       # parallel-rne.mlir:1125:19
	loads.w r4, 0(r17)
	.loc	1 1126 19                       # parallel-rne.mlir:1126:19
	loads.w r9, 0(r18)
	.loc	1 1132 19                       # parallel-rne.mlir:1132:19
	and r4, r4, r26
	.loc	1 1130 19                       # parallel-rne.mlir:1130:19
	and r9, r9, r26
	.loc	1 1133 19                       # parallel-rne.mlir:1133:19
	seteq r11, r4, r16
	.loc	1 1137 19                       # parallel-rne.mlir:1137:19
	seteq r23, r4, zero
	.loc	1 1134 19                       # parallel-rne.mlir:1134:19
	seteq r15, r9, zero
	.loc	1 1136 19                       # parallel-rne.mlir:1136:19
	seteq r19, r9, r16
	.loc	1 1142 19                       # parallel-rne.mlir:1142:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1135 19                       # parallel-rne.mlir:1135:19
	and r9, r11, r15
	.loc	1 1138 19                       # parallel-rne.mlir:1138:19
	and r11, r23, r19
	.loc	1 1127 19                       # parallel-rne.mlir:1127:19
	add.s r19, r10, r14
	lui r15, 523264
	.loc	1 1139 19                       # parallel-rne.mlir:1139:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1143 19                       # parallel-rne.mlir:1143:19
	or r4, r4, r9
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r4, zero, .LBB0_891
# %bb.890:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_891:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r4, 4(r17)
	loads.w r9, 4(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r23, r4, r16
	seteq r21, r4, zero
	seteq r20, r9, r16
	seteq r24, r9, zero
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r23, r24
	and r20, r21, r20
	lui r23, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r4, zero, .LBB0_893
# %bb.892:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r19)
.LBB0_893:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r20, r4, r16
	seteq r24, r4, zero
	seteq r21, r9, zero
	seteq r22, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r20, r21
	and r20, r24, r22
	lui r24, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r4, zero, .LBB0_895
# %bb.894:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r19)
.LBB0_895:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	loads.w r4, 12(r17)
	loads.w r9, 12(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r17, r4, r16
	seteq r21, r4, zero
	seteq r18, r9, zero
	seteq r20, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r17, r18
	and r17, r21, r20
	or r9, r9, r17
	or r4, r4, r9
	.loc	1 1144 19                       # parallel-rne.mlir:1144:19
	bneq r4, zero, .LBB0_888
# %bb.896:                              # %vector.body281
                                        #   in Loop: Header=BB0_889 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_888
.LBB0_897:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1115 7 is_stmt 1              # parallel-rne.mlir:1115:7
	mfence { sm }
.LBB0_898:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_927
# %bb.899:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 24
	.loc	1 1151 7                        # parallel-rne.mlir:1151:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_901
.LBB0_900:                              # %middle.block272
                                        #   in Loop: Header=BB0_901 Depth=2
	.loc	1 1159 9 is_stmt 1              # parallel-rne.mlir:1159:9
	load.d r[2:3], -680(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_926
.LBB0_901:                              # %.preheader95
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_918 Depth 3
                                        #       Child Loop BB0_904 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r2
	.loc	1 1160 11 is_stmt 1             # parallel-rne.mlir:1160:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_916
# %bb.902:                              # %scalar.ph264.preheader
                                        #   in Loop: Header=BB0_901 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_904
.LBB0_903:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 1160 11                       # parallel-rne.mlir:1160:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 1182 13 is_stmt 1             # parallel-rne.mlir:1182:13
	add.s r9, r25, r11
	.loc	1 1160 11                       # parallel-rne.mlir:1160:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1182 13                       # parallel-rne.mlir:1182:13
	stores.w r14, 0(r9)
	.loc	1 1160 11                       # parallel-rne.mlir:1160:11
	beq r4, zero, .LBB0_900
.LBB0_904:                              # %scalar.ph264
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_901 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.ul r[14:15], r[2:3], r[7:8]
	lui r18, 523264
	slli r11, r14, 2
	lui r14, 523264
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r4, r12, r11
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r9, r10, r11
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r4, 0(r4)
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	loads.w r19, 0(r9)
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	and r15, r4, r26
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r15, r16, .LBB0_906
# %bb.905:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_906:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r11
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r17, zero, .LBB0_914
# %bb.907:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r15, zero, .LBB0_915
.LBB0_908:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	beq r17, r16, .LBB0_910
.LBB0_909:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_910:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	setlt.u r4, r16, r15
	lui r15, 523264
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r4, zero, .LBB0_912
# %bb.911:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_912:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	setlt.u r4, r16, r17
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r4, zero, .LBB0_903
# %bb.913:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_903
.LBB0_914:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	lui r19, 523264
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	beq r15, zero, .LBB0_908
.LBB0_915:                              # %scalar.ph264
                                        #   in Loop: Header=BB0_904 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r17, r16, .LBB0_909
	j .LBB0_910
.LBB0_916:                              # %vector.body266.preheader
                                        #   in Loop: Header=BB0_901 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_918
.LBB0_917:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 1160 11 is_stmt 1             # parallel-rne.mlir:1160:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1182 13                       # parallel-rne.mlir:1182:13
	add.s r9, r25, r14
	.loc	1 1160 11                       # parallel-rne.mlir:1160:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 1182 13                       # parallel-rne.mlir:1182:13
	stores.w r15, 12(r9)
	stores.w r24, 8(r9)
	stores.w r23, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 1160 11                       # parallel-rne.mlir:1160:11
	bneq r4, zero, .LBB0_900
.LBB0_918:                              # %vector.body266
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_901 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	add.ul r[14:15], r[2:3], r[7:8]
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	slli r14, r14, 2
	add.s r17, r4, r14
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	add.s r18, r12, r14
	.loc	1 1161 19                       # parallel-rne.mlir:1161:19
	loads.w r4, 0(r17)
	.loc	1 1162 19                       # parallel-rne.mlir:1162:19
	loads.w r9, 0(r18)
	.loc	1 1168 19                       # parallel-rne.mlir:1168:19
	and r4, r4, r26
	.loc	1 1166 19                       # parallel-rne.mlir:1166:19
	and r9, r9, r26
	.loc	1 1169 19                       # parallel-rne.mlir:1169:19
	seteq r11, r4, r16
	.loc	1 1173 19                       # parallel-rne.mlir:1173:19
	seteq r23, r4, zero
	.loc	1 1170 19                       # parallel-rne.mlir:1170:19
	seteq r15, r9, zero
	.loc	1 1172 19                       # parallel-rne.mlir:1172:19
	seteq r19, r9, r16
	.loc	1 1178 19                       # parallel-rne.mlir:1178:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1171 19                       # parallel-rne.mlir:1171:19
	and r9, r11, r15
	.loc	1 1174 19                       # parallel-rne.mlir:1174:19
	and r11, r23, r19
	.loc	1 1163 19                       # parallel-rne.mlir:1163:19
	add.s r19, r10, r14
	lui r15, 523264
	.loc	1 1175 19                       # parallel-rne.mlir:1175:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1179 19                       # parallel-rne.mlir:1179:19
	or r4, r4, r9
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r4, zero, .LBB0_920
# %bb.919:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_920:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	loads.w r4, 4(r17)
	loads.w r9, 4(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r23, r4, r16
	seteq r21, r4, zero
	seteq r20, r9, r16
	seteq r24, r9, zero
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r23, r24
	and r20, r21, r20
	lui r23, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r4, zero, .LBB0_922
# %bb.921:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r19)
.LBB0_922:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r20, r4, r16
	seteq r24, r4, zero
	seteq r21, r9, zero
	seteq r22, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r20, r21
	and r20, r24, r22
	lui r24, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r4, zero, .LBB0_924
# %bb.923:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r19)
.LBB0_924:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	loads.w r4, 12(r17)
	loads.w r9, 12(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r17, r4, r16
	seteq r21, r4, zero
	seteq r18, r9, zero
	seteq r20, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r17, r18
	and r17, r21, r20
	or r9, r9, r17
	or r4, r4, r9
	.loc	1 1180 19                       # parallel-rne.mlir:1180:19
	bneq r4, zero, .LBB0_917
# %bb.925:                              # %vector.body266
                                        #   in Loop: Header=BB0_918 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_917
.LBB0_926:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1151 7 is_stmt 1              # parallel-rne.mlir:1151:7
	mfence { sm }
.LBB0_927:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1187 7                        # parallel-rne.mlir:1187:7
	core_id r2
	addli r3, zero, 4
	bneq r2, r3, .LBB0_956
# %bb.928:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 32
	.loc	1 1187 7                        # parallel-rne.mlir:1187:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_930
.LBB0_929:                              # %middle.block257
                                        #   in Loop: Header=BB0_930 Depth=2
	.loc	1 1195 9 is_stmt 1              # parallel-rne.mlir:1195:9
	load.d r[2:3], -688(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_955
.LBB0_930:                              # %.preheader94
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_947 Depth 3
                                        #       Child Loop BB0_933 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[7:8], r[3:4], r2
	.loc	1 1196 11 is_stmt 1             # parallel-rne.mlir:1196:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_945
# %bb.931:                              # %scalar.ph249.preheader
                                        #   in Loop: Header=BB0_930 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_933
.LBB0_932:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 1218 13 is_stmt 1             # parallel-rne.mlir:1218:13
	add.s r9, r25, r11
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1218 13                       # parallel-rne.mlir:1218:13
	stores.w r14, 0(r9)
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	beq r4, zero, .LBB0_929
.LBB0_933:                              # %scalar.ph249
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_930 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.ul r[14:15], r[2:3], r[7:8]
	lui r18, 523264
	slli r11, r14, 2
	lui r14, 523264
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.s r4, r12, r11
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r9, r10, r11
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	loads.w r4, 0(r4)
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	loads.w r19, 0(r9)
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	and r15, r4, r26
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	beq r15, r16, .LBB0_935
# %bb.934:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r19, 0
.LBB0_935:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r11
	loads.w r4, 0(r4)
	and r17, r4, r26
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	beq r17, zero, .LBB0_943
# %bb.936:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r19, 0
	lui r19, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r15, zero, .LBB0_944
.LBB0_937:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	beq r17, r16, .LBB0_939
.LBB0_938:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
.LBB0_939:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	setlt.u r4, r16, r15
	lui r15, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r4, zero, .LBB0_941
# %bb.940:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r15, r19, 0
.LBB0_941:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	setlt.u r4, r16, r17
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r4, zero, .LBB0_932
# %bb.942:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r15, 0
	j .LBB0_932
.LBB0_943:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	lui r19, 523264
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	beq r15, zero, .LBB0_937
.LBB0_944:                              # %scalar.ph249
                                        #   in Loop: Header=BB0_933 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r18, 0
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r17, r16, .LBB0_938
	j .LBB0_939
.LBB0_945:                              # %vector.body251.preheader
                                        #   in Loop: Header=BB0_930 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_947
.LBB0_946:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 1196 11 is_stmt 1             # parallel-rne.mlir:1196:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1218 13                       # parallel-rne.mlir:1218:13
	add.s r9, r25, r14
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 1218 13                       # parallel-rne.mlir:1218:13
	stores.w r15, 12(r9)
	stores.w r24, 8(r9)
	stores.w r23, 4(r9)
	stores.w r11, 0(r9)
	.loc	1 1196 11                       # parallel-rne.mlir:1196:11
	bneq r4, zero, .LBB0_929
.LBB0_947:                              # %vector.body251
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_930 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	add.ul r[14:15], r[2:3], r[7:8]
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	slli r14, r14, 2
	add.s r17, r4, r14
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	add.s r18, r12, r14
	.loc	1 1197 19                       # parallel-rne.mlir:1197:19
	loads.w r4, 0(r17)
	.loc	1 1198 19                       # parallel-rne.mlir:1198:19
	loads.w r9, 0(r18)
	.loc	1 1204 19                       # parallel-rne.mlir:1204:19
	and r4, r4, r26
	.loc	1 1202 19                       # parallel-rne.mlir:1202:19
	and r9, r9, r26
	.loc	1 1205 19                       # parallel-rne.mlir:1205:19
	seteq r11, r4, r16
	.loc	1 1209 19                       # parallel-rne.mlir:1209:19
	seteq r23, r4, zero
	.loc	1 1206 19                       # parallel-rne.mlir:1206:19
	seteq r15, r9, zero
	.loc	1 1208 19                       # parallel-rne.mlir:1208:19
	seteq r19, r9, r16
	.loc	1 1214 19                       # parallel-rne.mlir:1214:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1207 19                       # parallel-rne.mlir:1207:19
	and r9, r11, r15
	.loc	1 1210 19                       # parallel-rne.mlir:1210:19
	and r11, r23, r19
	.loc	1 1199 19                       # parallel-rne.mlir:1199:19
	add.s r19, r10, r14
	lui r15, 523264
	.loc	1 1211 19                       # parallel-rne.mlir:1211:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1215 19                       # parallel-rne.mlir:1215:19
	or r4, r4, r9
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r4, zero, .LBB0_949
# %bb.948:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r19)
.LBB0_949:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	loads.w r4, 4(r17)
	loads.w r9, 4(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r23, r4, r16
	seteq r21, r4, zero
	seteq r20, r9, r16
	seteq r24, r9, zero
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r23, r24
	and r20, r21, r20
	lui r23, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r4, zero, .LBB0_951
# %bb.950:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r19)
.LBB0_951:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	loads.w r4, 8(r17)
	loads.w r9, 8(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r20, r4, r16
	seteq r24, r4, zero
	seteq r21, r9, zero
	seteq r22, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r20, r21
	and r20, r24, r22
	lui r24, 523264
	or r9, r9, r20
	or r4, r4, r9
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r4, zero, .LBB0_953
# %bb.952:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r19)
.LBB0_953:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	loads.w r4, 12(r17)
	loads.w r9, 12(r18)
	and r4, r4, r26
	and r9, r9, r26
	seteq r17, r4, r16
	seteq r21, r4, zero
	seteq r18, r9, zero
	seteq r20, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r17, r18
	and r17, r21, r20
	or r9, r9, r17
	or r4, r4, r9
	.loc	1 1216 19                       # parallel-rne.mlir:1216:19
	bneq r4, zero, .LBB0_946
# %bb.954:                              # %vector.body251
                                        #   in Loop: Header=BB0_947 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r15, 12(r19)
	j .LBB0_946
.LBB0_955:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1187 7 is_stmt 1              # parallel-rne.mlir:1187:7
	mfence { sm }
.LBB0_956:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1223 7                        # parallel-rne.mlir:1223:7
	core_id r2
	addli r3, zero, 5
	bneq r2, r3, .LBB0_985
# %bb.957:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 40
	.loc	1 1223 7                        # parallel-rne.mlir:1223:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_959
.LBB0_958:                              # %middle.block242
                                        #   in Loop: Header=BB0_959 Depth=2
	.loc	1 1231 9 is_stmt 1              # parallel-rne.mlir:1231:9
	load.d r[2:3], -696(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_984
.LBB0_959:                              # %.preheader93
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_976 Depth 3
                                        #       Child Loop BB0_962 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[3:4], r2
	.loc	1 1232 11 is_stmt 1             # parallel-rne.mlir:1232:11
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_974
# %bb.960:                              # %scalar.ph234.preheader
                                        #   in Loop: Header=BB0_959 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[2:3], zero
	j .LBB0_962
.LBB0_961:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	.loc	1 1232 11                       # parallel-rne.mlir:1232:11
	setlt.ul r4, r[2:3], r[27:28]
	.loc	1 1254 13 is_stmt 1             # parallel-rne.mlir:1254:13
	add.s r7, r25, r8
	.loc	1 1232 11                       # parallel-rne.mlir:1232:11
	addli.d r[2:3], r[2:3], 1
	.loc	1 1254 13                       # parallel-rne.mlir:1254:13
	stores.w r11, 0(r7)
	.loc	1 1232 11                       # parallel-rne.mlir:1232:11
	beq r4, zero, .LBB0_958
.LBB0_962:                              # %scalar.ph234
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_959 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	add.ul r[7:8], r[2:3], r[22:23]
	lui r11, 523264
	lui r17, 523264
	slli r8, r7, 2
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.s r4, r12, r8
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.s r7, r10, r8
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	loads.w r4, 0(r4)
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	loads.w r18, 0(r7)
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	and r14, r4, r26
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r14, r16, .LBB0_964
# %bb.963:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r17, r18, 0
.LBB0_964:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	add.s r4, r4, r8
	loads.w r4, 0(r4)
	and r15, r4, r26
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r15, zero, .LBB0_972
# %bb.965:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r18, 0
	lui r18, 523264
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r14, zero, .LBB0_973
.LBB0_966:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	beq r15, r16, .LBB0_968
.LBB0_967:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
.LBB0_968:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	setlt.u r4, r16, r14
	lui r14, 523264
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r4, zero, .LBB0_970
# %bb.969:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
.LBB0_970:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	setlt.u r4, r16, r15
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r4, zero, .LBB0_961
# %bb.971:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r14, 0
	j .LBB0_961
.LBB0_972:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	lui r18, 523264
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	beq r14, zero, .LBB0_966
.LBB0_973:                              # %scalar.ph234
                                        #   in Loop: Header=BB0_962 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r17, 0
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r15, r16, .LBB0_967
	j .LBB0_968
.LBB0_974:                              # %vector.body236.preheader
                                        #   in Loop: Header=BB0_959 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[2:3], zero
	j .LBB0_976
.LBB0_975:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 1232 11 is_stmt 1             # parallel-rne.mlir:1232:11
	addli.d r[2:3], r[2:3], 4
	.loc	1 1254 13                       # parallel-rne.mlir:1254:13
	add.s r7, r25, r8
	.loc	1 1232 11                       # parallel-rne.mlir:1232:11
	seteq.d r4, r[2:3], r[5:6]
	.loc	1 1254 13                       # parallel-rne.mlir:1254:13
	stores.w r14, 12(r7)
	stores.w r24, 8(r7)
	stores.w r19, 4(r7)
	stores.w r11, 0(r7)
	.loc	1 1232 11                       # parallel-rne.mlir:1232:11
	bneq r4, zero, .LBB0_958
.LBB0_976:                              # %vector.body236
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_959 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	add.ul r[8:9], r[2:3], r[22:23]
	loadli.w r4,  -648(r30)                 # 4-byte Folded Reload
	slli r8, r8, 2
	add.s r15, r4, r8
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	add.s r17, r12, r8
	.loc	1 1233 19                       # parallel-rne.mlir:1233:19
	loads.w r4, 0(r15)
	.loc	1 1234 19                       # parallel-rne.mlir:1234:19
	loads.w r9, 0(r17)
	.loc	1 1240 19                       # parallel-rne.mlir:1240:19
	and r4, r4, r26
	.loc	1 1238 19                       # parallel-rne.mlir:1238:19
	and r9, r9, r26
	.loc	1 1241 19                       # parallel-rne.mlir:1241:19
	seteq r11, r4, r16
	.loc	1 1245 19                       # parallel-rne.mlir:1245:19
	seteq r19, r4, zero
	.loc	1 1242 19                       # parallel-rne.mlir:1242:19
	seteq r14, r9, zero
	.loc	1 1244 19                       # parallel-rne.mlir:1244:19
	seteq r18, r9, r16
	.loc	1 1250 19                       # parallel-rne.mlir:1250:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1243 19                       # parallel-rne.mlir:1243:19
	and r9, r11, r14
	.loc	1 1246 19                       # parallel-rne.mlir:1246:19
	and r11, r19, r18
	.loc	1 1235 19                       # parallel-rne.mlir:1235:19
	add.s r18, r10, r8
	lui r14, 523264
	.loc	1 1247 19                       # parallel-rne.mlir:1247:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1251 19                       # parallel-rne.mlir:1251:19
	or r4, r4, r9
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r4, zero, .LBB0_978
# %bb.977:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r18)
.LBB0_978:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 4(r15)
	loads.w r9, 4(r17)
	and r4, r4, r26
	and r9, r9, r26
	seteq r19, r4, r16
	seteq r20, r4, zero
	seteq r7, r9, r16
	seteq r24, r9, zero
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r9, r19, r24
	and r7, r20, r7
	lui r19, 523264
	or r7, r9, r7
	or r4, r4, r7
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r4, zero, .LBB0_980
# %bb.979:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
.LBB0_980:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 8(r15)
	loads.w r7, 8(r17)
	and r4, r4, r26
	and r7, r7, r26
	seteq r9, r4, r16
	seteq r24, r4, zero
	seteq r20, r7, zero
	seteq r21, r7, r16
	max.u r4, r4, r7
	setlt.u r4, r16, r4
	and r7, r9, r20
	and r9, r24, r21
	lui r24, 523264
	or r7, r7, r9
	or r4, r4, r7
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r4, zero, .LBB0_982
# %bb.981:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r18)
.LBB0_982:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	loads.w r4, 12(r15)
	loads.w r7, 12(r17)
	and r4, r4, r26
	and r7, r7, r26
	seteq r9, r4, r16
	seteq r20, r4, zero
	seteq r15, r7, zero
	seteq r17, r7, r16
	max.u r4, r4, r7
	setlt.u r4, r16, r4
	and r7, r9, r15
	and r9, r20, r17
	or r7, r7, r9
	or r4, r4, r7
	.loc	1 1252 19                       # parallel-rne.mlir:1252:19
	bneq r4, zero, .LBB0_975
# %bb.983:                              # %vector.body236
                                        #   in Loop: Header=BB0_976 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_975
.LBB0_984:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1223 7 is_stmt 1              # parallel-rne.mlir:1223:7
	mfence { sm }
.LBB0_985:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	core_id r2
	addli r3, zero, 6
	bneq r2, r3, .LBB0_1014
# %bb.986:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 48
	.loc	1 1259 7                        # parallel-rne.mlir:1259:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_988
.LBB0_987:                              # %middle.block227
                                        #   in Loop: Header=BB0_988 Depth=2
	.loc	1 1267 9 is_stmt 1              # parallel-rne.mlir:1267:9
	load.d r[2:3], -704(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_1013
.LBB0_988:                              # %.preheader92
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1005 Depth 3
                                        #       Child Loop BB0_991 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1268 11 is_stmt 1             # parallel-rne.mlir:1268:11
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[3:4], r2
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1003
# %bb.989:                              # %scalar.ph219.preheader
                                        #   in Loop: Header=BB0_988 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_991
.LBB0_990:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	setlt.ul r2, r[14:15], r[27:28]
	.loc	1 1290 13 is_stmt 1             # parallel-rne.mlir:1290:13
	add.s r3, r25, r3
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	addli.d r[14:15], r[14:15], 1
	.loc	1 1290 13                       # parallel-rne.mlir:1290:13
	stores.w r11, 0(r3)
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	beq r2, zero, .LBB0_987
.LBB0_991:                              # %scalar.ph219
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_988 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	add.ul r[2:3], r[14:15], r[20:21]
	lui r11, 523264
	lui r19, 523264
	slli r3, r2, 2
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.s r2, r12, r3
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.s r4, r10, r3
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	loads.w r2, 0(r2)
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	loads.w r22, 0(r4)
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	and r17, r2, r26
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	beq r17, r16, .LBB0_993
# %bb.992:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r22, 0
.LBB0_993:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r3
	loads.w r2, 0(r2)
	and r18, r2, r26
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	beq r18, zero, .LBB0_1001
# %bb.994:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r22, 0
	lui r22, 523264
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r17, zero, .LBB0_1002
.LBB0_995:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	beq r18, r16, .LBB0_997
.LBB0_996:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
.LBB0_997:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	setlt.u r2, r16, r17
	lui r17, 523264
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r2, zero, .LBB0_999
# %bb.998:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_999:                              # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	setlt.u r2, r16, r18
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r2, zero, .LBB0_990
# %bb.1000:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_990
.LBB0_1001:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	lui r22, 523264
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	beq r17, zero, .LBB0_995
.LBB0_1002:                             # %scalar.ph219
                                        #   in Loop: Header=BB0_991 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r19, 0
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r18, r16, .LBB0_996
	j .LBB0_997
.LBB0_1003:                             # %vector.body221.preheader
                                        #   in Loop: Header=BB0_988 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[22:23], zero
	j .LBB0_1005
.LBB0_1004:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 1268 11 is_stmt 1             # parallel-rne.mlir:1268:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 1290 13                       # parallel-rne.mlir:1290:13
	add.s r3, r25, r3
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	seteq.d r2, r[22:23], r[5:6]
	.loc	1 1290 13                       # parallel-rne.mlir:1290:13
	stores.w r14, 12(r3)
	stores.w r24, 8(r3)
	stores.w r19, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 1268 11                       # parallel-rne.mlir:1268:11
	bneq r2, zero, .LBB0_987
.LBB0_1005:                             # %vector.body221
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_988 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	add.ul r[3:4], r[22:23], r[20:21]
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	slli r3, r3, 2
	add.s r15, r2, r3
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	add.s r17, r12, r3
	.loc	1 1269 19                       # parallel-rne.mlir:1269:19
	loads.w r4, 0(r15)
	.loc	1 1270 19                       # parallel-rne.mlir:1270:19
	loads.w r9, 0(r17)
	.loc	1 1276 19                       # parallel-rne.mlir:1276:19
	and r4, r4, r26
	.loc	1 1274 19                       # parallel-rne.mlir:1274:19
	and r9, r9, r26
	.loc	1 1277 19                       # parallel-rne.mlir:1277:19
	seteq r11, r4, r16
	.loc	1 1281 19                       # parallel-rne.mlir:1281:19
	seteq r19, r4, zero
	.loc	1 1278 19                       # parallel-rne.mlir:1278:19
	seteq r14, r9, zero
	.loc	1 1280 19                       # parallel-rne.mlir:1280:19
	seteq r18, r9, r16
	.loc	1 1286 19                       # parallel-rne.mlir:1286:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1279 19                       # parallel-rne.mlir:1279:19
	and r9, r11, r14
	.loc	1 1282 19                       # parallel-rne.mlir:1282:19
	and r11, r19, r18
	.loc	1 1271 19                       # parallel-rne.mlir:1271:19
	add.s r18, r10, r3
	lui r14, 523264
	.loc	1 1283 19                       # parallel-rne.mlir:1283:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1287 19                       # parallel-rne.mlir:1287:19
	or r4, r4, r9
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r4, zero, .LBB0_1007
# %bb.1006:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r18)
.LBB0_1007:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r4, 4(r15)
	loads.w r9, 4(r17)
	and r4, r4, r26
	and r9, r9, r26
	seteq r19, r4, r16
	seteq r24, r9, zero
	seteq r7, r4, zero
	seteq r2, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r8, r19, r24
	and r2, r7, r2
	lui r19, 523264
	or r2, r8, r2
	or r2, r4, r2
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r2, zero, .LBB0_1009
# %bb.1008:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r19, 4(r18)
.LBB0_1009:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r2, 8(r15)
	loads.w r4, 8(r17)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r24, r2, zero
	seteq r8, r4, zero
	seteq r9, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r24, r9
	lui r24, 523264
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r2, zero, .LBB0_1011
# %bb.1010:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r18)
.LBB0_1011:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	loads.w r2, 12(r15)
	loads.w r4, 12(r17)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r15, r2, zero
	seteq r8, r4, zero
	seteq r9, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r15, r9
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 1288 19                       # parallel-rne.mlir:1288:19
	bneq r2, zero, .LBB0_1004
# %bb.1012:                             # %vector.body221
                                        #   in Loop: Header=BB0_1005 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r18)
	j .LBB0_1004
.LBB0_1013:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1259 7 is_stmt 1              # parallel-rne.mlir:1259:7
	mfence { sm }
.LBB0_1014:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	core_id r2
	addli r3, zero, 7
	bneq r2, r3, .LBB0_1043
# %bb.1015:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -736(r30)                 # 4-byte Folded Reload
	loadli.w r3,  -744(r30)                 # 4-byte Folded Reload
	min.u r2, r2, r3
	addli r3, zero, 16
	setlt.u r2, r2, r3
	storeli.w r2, -664(r30)                 # 4-byte Folded Spill
	addli r2, zero, 56
	.loc	1 1295 7                        # parallel-rne.mlir:1295:7
	xfence
	zext_int2long r[3:4], r2
	mfence { lm, sm, gm }
	j .LBB0_1017
.LBB0_1016:                             # %middle.block
                                        #   in Loop: Header=BB0_1017 Depth=2
	.loc	1 1303 9 is_stmt 1              # parallel-rne.mlir:1303:9
	load.d r[2:3], -712(r30)                # 8-byte Folded Reload
	load.d r[7:8], -656(r30)                # 8-byte Folded Reload
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[3:4], r[7:8], 1
	beq r2, zero, .LBB0_1042
.LBB0_1017:                             # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_1034 Depth 3
                                        #       Child Loop BB0_1020 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 1304 11 is_stmt 1             # parallel-rne.mlir:1304:11
	store.d r[3:4], -656(r30)               # 8-byte Folded Spill
	sll.d r[18:19], r[3:4], r2
	loadli.w r2,  -664(r30)                 # 4-byte Folded Reload
	beq r2, zero, .LBB0_1032
# %bb.1018:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_1017 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[14:15], zero
	j .LBB0_1020
.LBB0_1019:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	setlt.ul r2, r[14:15], r[27:28]
	.loc	1 1326 13 is_stmt 1             # parallel-rne.mlir:1326:13
	add.s r3, r25, r3
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	addli.d r[14:15], r[14:15], 1
	.loc	1 1326 13                       # parallel-rne.mlir:1326:13
	stores.w r11, 0(r3)
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	beq r2, zero, .LBB0_1016
.LBB0_1020:                             # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1017 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.ul r[2:3], r[14:15], r[18:19]
	lui r11, 523264
	lui r21, 523264
	slli r3, r2, 2
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.s r2, r12, r3
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r4, r10, r3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	loads.w r2, 0(r2)
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	loads.w r22, 0(r4)
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	and r17, r2, r26
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	beq r17, r16, .LBB0_1022
# %bb.1021:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r22, 0
.LBB0_1022:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	add.s r2, r2, r3
	loads.w r2, 0(r2)
	and r20, r2, r26
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	beq r20, zero, .LBB0_1030
# %bb.1023:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r22, 0
	lui r22, 523264
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r17, zero, .LBB0_1031
.LBB0_1024:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	beq r20, r16, .LBB0_1026
.LBB0_1025:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
.LBB0_1026:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	setlt.u r2, r16, r17
	lui r17, 523264
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r2, zero, .LBB0_1028
# %bb.1027:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r17, r22, 0
.LBB0_1028:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	setlt.u r2, r16, r20
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r2, zero, .LBB0_1019
# %bb.1029:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r17, 0
	j .LBB0_1019
.LBB0_1030:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	lui r22, 523264
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	beq r17, zero, .LBB0_1024
.LBB0_1031:                             # %scalar.ph
                                        #   in Loop: Header=BB0_1020 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r21, 0
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r20, r16, .LBB0_1025
	j .LBB0_1026
.LBB0_1032:                             # %vector.body.preheader
                                        #   in Loop: Header=BB0_1017 Depth=2
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	zext_int2long r[20:21], zero
	j .LBB0_1034
.LBB0_1033:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 1304 11 is_stmt 1             # parallel-rne.mlir:1304:11
	addli.d r[20:21], r[20:21], 4
	.loc	1 1326 13                       # parallel-rne.mlir:1326:13
	add.s r3, r25, r3
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	seteq.d r2, r[20:21], r[5:6]
	.loc	1 1326 13                       # parallel-rne.mlir:1326:13
	stores.w r14, 12(r3)
	stores.w r24, 8(r3)
	stores.w r23, 4(r3)
	stores.w r11, 0(r3)
	.loc	1 1304 11                       # parallel-rne.mlir:1304:11
	bneq r2, zero, .LBB0_1016
.LBB0_1034:                             # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_1017 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	add.ul r[3:4], r[20:21], r[18:19]
	loadli.w r2,  -648(r30)                 # 4-byte Folded Reload
	slli r3, r3, 2
	add.s r15, r2, r3
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	add.s r17, r12, r3
	.loc	1 1305 19                       # parallel-rne.mlir:1305:19
	loads.w r4, 0(r15)
	.loc	1 1306 19                       # parallel-rne.mlir:1306:19
	loads.w r9, 0(r17)
	.loc	1 1312 19                       # parallel-rne.mlir:1312:19
	and r4, r4, r26
	.loc	1 1310 19                       # parallel-rne.mlir:1310:19
	and r9, r9, r26
	.loc	1 1313 19                       # parallel-rne.mlir:1313:19
	seteq r11, r4, r16
	.loc	1 1317 19                       # parallel-rne.mlir:1317:19
	seteq r23, r4, zero
	.loc	1 1314 19                       # parallel-rne.mlir:1314:19
	seteq r14, r9, zero
	.loc	1 1316 19                       # parallel-rne.mlir:1316:19
	seteq r22, r9, r16
	.loc	1 1322 19                       # parallel-rne.mlir:1322:19
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	.loc	1 1315 19                       # parallel-rne.mlir:1315:19
	and r9, r11, r14
	.loc	1 1318 19                       # parallel-rne.mlir:1318:19
	and r11, r23, r22
	.loc	1 1307 19                       # parallel-rne.mlir:1307:19
	add.s r22, r10, r3
	lui r14, 523264
	.loc	1 1319 19                       # parallel-rne.mlir:1319:19
	or r9, r9, r11
	lui r11, 523264
	.loc	1 1323 19                       # parallel-rne.mlir:1323:19
	or r4, r4, r9
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r4, zero, .LBB0_1036
# %bb.1035:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	loads.w r11, 0(r22)
.LBB0_1036:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	loads.w r4, 4(r15)
	loads.w r9, 4(r17)
	and r4, r4, r26
	and r9, r9, r26
	seteq r23, r4, r16
	seteq r24, r9, zero
	seteq r7, r4, zero
	seteq r2, r9, r16
	max.u r4, r4, r9
	setlt.u r4, r16, r4
	and r8, r23, r24
	and r2, r7, r2
	lui r23, 523264
	or r2, r8, r2
	or r2, r4, r2
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r2, zero, .LBB0_1038
# %bb.1037:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r23, 4(r22)
.LBB0_1038:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	loads.w r2, 8(r15)
	loads.w r4, 8(r17)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r24, r2, zero
	seteq r8, r4, zero
	seteq r9, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r24, r9
	lui r24, 523264
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r2, zero, .LBB0_1040
# %bb.1039:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r24, 8(r22)
.LBB0_1040:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	loads.w r2, 12(r15)
	loads.w r4, 12(r17)
	and r2, r2, r26
	and r4, r4, r26
	seteq r7, r2, r16
	seteq r15, r2, zero
	seteq r8, r4, zero
	seteq r9, r4, r16
	max.u r2, r2, r4
	setlt.u r2, r16, r2
	and r4, r7, r8
	and r7, r15, r9
	or r4, r4, r7
	or r2, r2, r4
	.loc	1 1324 19                       # parallel-rne.mlir:1324:19
	bneq r2, zero, .LBB0_1033
# %bb.1041:                             # %vector.body
                                        #   in Loop: Header=BB0_1034 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	loads.w r14, 12(r22)
	j .LBB0_1033
.LBB0_1042:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1295 7 is_stmt 1              # parallel-rne.mlir:1295:7
	mfence { sm }
.LBB0_1043:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	addli r2, zero, 255
	.loc	1 37 5                          # parallel-rne.mlir:37:5
	core_id r9
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	csr_set csr5, r2
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	addli r2, zero, 3
	.loc	1 1331 7                        # parallel-rne.mlir:1331:7
	sync_core
	.loc	1 1332 7                        # parallel-rne.mlir:1332:7
	beq r9, r2, .LBB0_5
# %bb.1044:                             # %.critedge32
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[10:11], -760(r30)              # 8-byte Folded Reload
	addli r24, zero, 128
	addli r27, zero, 4
	addli r28, zero, 1
	.loc	1 1343 7 is_stmt 1              # parallel-rne.mlir:1343:7
	bneq r9, zero, .LBB0_6
# %bb.1045:                             #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  -788(r30)                 # 4-byte Folded Reload
	addli r4, zero, 1984
	addli r12, zero, 64
	.loc	1 1343 7                        # parallel-rne.mlir:1343:7
	load.d r[6:7], -784(r30)                # 8-byte Folded Reload
	addli r8, zero, 18
	load.d r[14:15], 24(r30)
	zext_int2long r[4:5], r4
	sext_int2long r[2:3], r2
	sll.d r[6:7], r[6:7], r8
	min.sl r[4:5], r[2:3], r[4:5]
	add.ul r[6:7], r[14:15], r[6:7]
	load.d r[14:15], -776(r30)              # 8-byte Folded Reload
	addli.d r[4:5], r[4:5], 64
	add.ul r[6:7], r[6:7], r[14:15]
	max.sl r[4:5], r[4:5], r[2:3]
	sub.sl r[2:3], r[4:5], r[2:3]
	zext_int2long r[4:5], r12
	.loc	1 1339 13 is_stmt 1             # parallel-rne.mlir:1339:13
	min.sl r[2:3], r[2:3], r[4:5]
	.loc	1 1343 7                        # parallel-rne.mlir:1343:7
	addli r4, zero, 17
	addli r5, zero, 5
	xwait r4, 0
	lock zero, r5
	dma_cfg r28, zero, zero, 0
	dma_cfg zero, r28, zero, 1
	load.d r[14:15], -800(r30)              # 8-byte Folded Reload
	dma_cfg r7, zero, zero, 2
	slli r4, r14, 2
	dma_cfg r6, r25, r4, 3
	addli r4, zero, 512
	addli r6, zero, 4096
	dma_cfg r6, r4, r2, 4
	dma_run zero
	unlock r5
	xsignal r8, 0
	j .LBB0_6
.LBB0_1046:                             # %._crit_edge
	.loc	1 1345 5                        # parallel-rne.mlir:1345:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_1048
# %bb.1047:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 1345 5                        # parallel-rne.mlir:1345:5
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
.LBB0_1048:
	.loc	1 1346 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:1346:5
	addli sp, sp, 856
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
	.long	920                             # 0x398
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/split-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-5ol4ixz4" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
