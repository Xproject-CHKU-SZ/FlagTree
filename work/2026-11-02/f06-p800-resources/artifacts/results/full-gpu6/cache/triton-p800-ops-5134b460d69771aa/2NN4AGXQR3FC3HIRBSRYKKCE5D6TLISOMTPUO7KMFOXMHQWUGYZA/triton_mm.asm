	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-qrjbs0kg" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1016
	addli r1, zero, 1
.Ltmp0:
	.loc	1 33 5 prologue_end             # parallel-rne.mlir:33:5
	core_id r2
	core_id r26
	addli r30, sp, 952
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	uni_sram_cfg r1, r1
	lui r3, 1048575
	lock zero, r2
	ew_cfg r1, zero, zero, 16
	ori r1, r3, 4095
	unlock r2
	addli r2, zero, 11
	csr_set csr3, r1
	addli r1, zero, 13
	sync_group
	xsignal r1, 0
	xsignal r1, 0
	xsignal r2, 0
	xsignal r2, 0
	addli r1, zero, 5
	addli r2, zero, 3
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	addli r1, zero, 9
	addli r2, zero, 7
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 35 10 is_stmt 1               # parallel-rne.mlir:35:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -168(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -492(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -660(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -856(r30)
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r3, r1, r3
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r2, -1
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r4, -164(r30)
	storeli.w r4, -160(r30)
	storeli.w r4, -156(r30)
	storeli.w r4, -152(r30)
	storeli.w r4, -148(r30)
	storeli.w r4, -144(r30)
	storeli.w r4, -140(r30)
	storeli.w r4, -136(r30)
	storeli.w r4, -132(r30)
	storeli.w r4, -128(r30)
	storeli.w r4, -124(r30)
	storeli.w r4, -120(r30)
	storeli.w r4, -116(r30)
	storeli.w r4, -112(r30)
	storeli.w r4, -108(r30)
	storeli.w r4, -104(r30)
	storeli.w r4, -100(r30)
	storeli.w r4, -96(r30)
	storeli.w r4, -92(r30)
	storeli.w r4, -88(r30)
	storeli.w r4, -84(r30)
	storeli.w r4, -80(r30)
	storeli.w r4, -76(r30)
	storeli.w r4, -72(r30)
	storeli.w r4, -68(r30)
	storeli.w r4, -64(r30)
	storeli.w r4, -60(r30)
	storeli.w r4, -56(r30)
	storeli.w r4, -52(r30)
	storeli.w r4, -48(r30)
	storeli.w r4, -44(r30)
	storeli.w r4, -40(r30)
	storeli.w r4, -36(r30)
	storeli.w r4, -32(r30)
	storeli.w r4, -28(r30)
	storeli.w r4, -24(r30)
	storeli.w r4, -20(r30)
	storeli.w r4, -16(r30)
	storeli.w r4, -12(r30)
	storeli.w r4, -8(r30)
	storeli.w r4, -4(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r4, -488(r30)
	storeli.w r4, -484(r30)
	storeli.w r4, -480(r30)
	storeli.w r4, -476(r30)
	storeli.w r4, -472(r30)
	storeli.w r4, -468(r30)
	storeli.w r4, -464(r30)
	storeli.w r4, -460(r30)
	storeli.w r4, -456(r30)
	storeli.w r4, -452(r30)
	storeli.w r4, -448(r30)
	storeli.w r4, -444(r30)
	storeli.w r4, -440(r30)
	storeli.w r4, -436(r30)
	storeli.w r4, -432(r30)
	storeli.w r4, -428(r30)
	storeli.w r4, -424(r30)
	storeli.w r4, -420(r30)
	storeli.w r4, -416(r30)
	storeli.w r4, -412(r30)
	storeli.w r4, -408(r30)
	storeli.w r4, -404(r30)
	storeli.w r4, -400(r30)
	storeli.w r4, -396(r30)
	storeli.w r4, -392(r30)
	storeli.w r4, -388(r30)
	storeli.w r4, -384(r30)
	storeli.w r4, -380(r30)
	storeli.w r4, -376(r30)
	storeli.w r4, -372(r30)
	storeli.w r4, -368(r30)
	storeli.w r4, -364(r30)
	storeli.w r4, -360(r30)
	storeli.w r4, -356(r30)
	storeli.w r4, -352(r30)
	storeli.w r4, -348(r30)
	storeli.w r4, -344(r30)
	storeli.w r4, -340(r30)
	storeli.w r4, -336(r30)
	storeli.w r4, -332(r30)
	storeli.w r4, -328(r30)
	storeli.w r4, -324(r30)
	storeli.w r4, -320(r30)
	storeli.w r4, -316(r30)
	storeli.w r4, -312(r30)
	storeli.w r4, -308(r30)
	storeli.w r4, -304(r30)
	storeli.w r4, -300(r30)
	storeli.w r4, -296(r30)
	storeli.w r4, -292(r30)
	storeli.w r4, -288(r30)
	storeli.w r4, -284(r30)
	storeli.w r4, -280(r30)
	storeli.w r4, -276(r30)
	storeli.w r4, -272(r30)
	storeli.w r4, -268(r30)
	storeli.w r4, -264(r30)
	storeli.w r4, -260(r30)
	storeli.w r4, -256(r30)
	storeli.w r4, -252(r30)
	storeli.w r4, -248(r30)
	storeli.w r4, -244(r30)
	storeli.w r4, -240(r30)
	storeli.w r4, -236(r30)
	storeli.w r4, -232(r30)
	storeli.w r4, -228(r30)
	storeli.w r4, -224(r30)
	storeli.w r4, -220(r30)
	storeli.w r4, -216(r30)
	storeli.w r4, -212(r30)
	storeli.w r4, -208(r30)
	storeli.w r4, -204(r30)
	storeli.w r4, -200(r30)
	storeli.w r4, -196(r30)
	storeli.w r4, -192(r30)
	storeli.w r4, -188(r30)
	storeli.w r4, -184(r30)
	storeli.w r4, -180(r30)
	storeli.w r4, -176(r30)
	storeli.w r4, -172(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r4, -656(r30)
	storeli.w r4, -652(r30)
	storeli.w r4, -648(r30)
	storeli.w r4, -644(r30)
	storeli.w r4, -640(r30)
	storeli.w r4, -636(r30)
	storeli.w r4, -632(r30)
	storeli.w r4, -628(r30)
	storeli.w r4, -624(r30)
	storeli.w r4, -620(r30)
	storeli.w r4, -616(r30)
	storeli.w r4, -612(r30)
	storeli.w r4, -608(r30)
	storeli.w r4, -604(r30)
	storeli.w r4, -600(r30)
	storeli.w r4, -596(r30)
	storeli.w r4, -592(r30)
	storeli.w r4, -588(r30)
	storeli.w r4, -584(r30)
	storeli.w r4, -580(r30)
	storeli.w r4, -576(r30)
	storeli.w r4, -572(r30)
	storeli.w r4, -568(r30)
	storeli.w r4, -564(r30)
	storeli.w r4, -560(r30)
	storeli.w r4, -556(r30)
	storeli.w r4, -552(r30)
	storeli.w r4, -548(r30)
	storeli.w r4, -544(r30)
	storeli.w r4, -540(r30)
	storeli.w r4, -536(r30)
	storeli.w r4, -532(r30)
	storeli.w r4, -528(r30)
	storeli.w r4, -524(r30)
	storeli.w r4, -520(r30)
	storeli.w r4, -516(r30)
	storeli.w r4, -512(r30)
	storeli.w r4, -508(r30)
	storeli.w r4, -504(r30)
	storeli.w r4, -500(r30)
	storeli.w r4, -496(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r4, -852(r30)
	storeli.w r4, -848(r30)
	storeli.w r4, -844(r30)
	storeli.w r4, -840(r30)
	storeli.w r4, -836(r30)
	storeli.w r4, -832(r30)
	storeli.w r4, -828(r30)
	storeli.w r4, -824(r30)
	storeli.w r4, -820(r30)
	storeli.w r4, -816(r30)
	storeli.w r4, -812(r30)
	storeli.w r4, -808(r30)
	storeli.w r4, -804(r30)
	storeli.w r4, -800(r30)
	storeli.w r4, -796(r30)
	storeli.w r4, -792(r30)
	storeli.w r4, -788(r30)
	storeli.w r4, -784(r30)
	storeli.w r4, -780(r30)
	storeli.w r4, -776(r30)
	storeli.w r4, -772(r30)
	storeli.w r4, -768(r30)
	storeli.w r4, -764(r30)
	storeli.w r4, -760(r30)
	storeli.w r4, -756(r30)
	storeli.w r4, -752(r30)
	storeli.w r4, -748(r30)
	storeli.w r4, -744(r30)
	storeli.w r4, -740(r30)
	storeli.w r4, -736(r30)
	storeli.w r4, -732(r30)
	storeli.w r4, -728(r30)
	storeli.w r4, -724(r30)
	storeli.w r4, -720(r30)
	storeli.w r4, -716(r30)
	storeli.w r4, -712(r30)
	storeli.w r4, -708(r30)
	storeli.w r4, -704(r30)
	storeli.w r4, -700(r30)
	storeli.w r4, -696(r30)
	storeli.w r4, -692(r30)
	storeli.w r4, -688(r30)
	storeli.w r4, -684(r30)
	storeli.w r4, -680(r30)
	storeli.w r4, -676(r30)
	storeli.w r4, -672(r30)
	storeli.w r4, -668(r30)
	storeli.w r4, -664(r30)
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	mul.s r1, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	fmac.s r2, r2, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	min.s r3, r2, r3
	.loc	1 52 5                          # parallel-rne.mlir:52:5
	ble.s r3, r1, .LBB0_279
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 44 11 is_stmt 1               # parallel-rne.mlir:44:11
	sext_int2long r[6:7], r1
	lui r1, 15
	addli r18, zero, 64
	addli r19, zero, 4
	addli r23, zero, 2
	lui r16, 522240
	lui r17, 1048560
	addli r8, zero, 0
	store.d r[2:3], -944(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1048448
	store.d r[1:2], -952(r30)               # 8-byte Folded Spill
	lui r1, 127
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -884(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	lui r1, 7
	ori r4, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 364 7                         # parallel-rne.mlir:364:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -904(r30)                # 8-byte Folded Reload
	.loc	1 52 5 is_stmt 1                # parallel-rne.mlir:52:5
	load.d r[1:2], -944(r30)                # 8-byte Folded Reload
	loadli.w r8,  -908(r30)                 # 4-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_279
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_72 Depth 2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_101 Depth 2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_103 Depth 3
                                        #     Child Loop BB0_163 Depth 2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_165 Depth 3
                                        #     Child Loop BB0_192 Depth 2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
                                        #     Child Loop BB0_135 Depth 2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_137 Depth 3
                                        #     Child Loop BB0_249 Depth 2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
                                        #     Child Loop BB0_221 Depth 2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	bneq r26, r19, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	mod.s r3, r8, r23
	addli r8, r8, 1
	store.d r[6:7], -904(r30)               # 8-byte Folded Spill
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	loadli.w r15,  -856(r30)
	addli r14, zero, 0
	addli r20, zero, 2
	addli r9, zero, 4
	storeli.w r8, -908(r30)                 # 4-byte Folded Spill
	addli r8, zero, 8
	div.s r1, r6, r1
	div.s r1, r1, r2
	div.s r2, r1, r18
	slli r7, r2, 3
	slli r2, r2, 6
	sub.s r6, r19, r7
	sub.s r2, r1, r2
	min.s r6, r6, r8
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	loadli.w r8,  -660(r30)
	mod.s r10, r1, r6
	div.s r2, r2, r6
	slli r6, r3, 16
	lui r1, 32
	add.s r1, r6, r1
	add.s r3, r7, r10
	slli r7, r2, 7
	zext_int2long r[10:11], r2
	slli r2, r3, 7
	storeli.w r7, -936(r30)                 # 4-byte Folded Spill
	zext_int2long r[18:19], r3
	addli r7, zero, 17
	storeli.w r2, -932(r30)                 # 4-byte Folded Spill
	addli r2, zero, 7
	store.d r[18:19], -928(r30)             # 8-byte Folded Spill
	sll.d r[18:19], r[18:19], r7
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r7, zero, 1
	sll.d r[2:3], r[10:11], r2
	store.d r[18:19], -872(r30)             # 8-byte Folded Spill
	sll.d r[10:11], r[2:3], r7
	load.d r[2:3], -952(r30)                # 8-byte Folded Reload
	store.d r[10:11], -920(r30)             # 8-byte Folded Spill
	and.d r[2:3], r[18:19], r[2:3]
	store.d r[2:3], -880(r30)               # 8-byte Folded Spill
	load.d r[2:3], 8(r30)
	add.ul r[2:3], r[2:3], r[10:11]
	addli r10, zero, 0
	store.d r[2:3], -896(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 64
	addli r19, zero, 4
	addli r8, zero, 1
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r9, zero, 2048
	addli r23, zero, 2
	addli r20, zero, 128
	addli r18, zero, 64
	ori r3, r3, 64
	lock zero, r19
	dma_cfg r8, r8, zero, 0
	add.s r2, r2, r3
	addli r3, zero, 64
	dma_cfg zero, r27, zero, 2
	dma_cfg r2, r26, r3, 3
	addli r2, zero, 128
	dma_cfg r2, r3, r8, 4
	dma_cfg r2, r9, r7, 5
	addli r9, zero, 5
	addli r2, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 32
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 7
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r22, zero, r3, 3
	dma_cfg r20, zero, r8, 4
	dma_cfg r20, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r23, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r2,  -492(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	loadli.w r3,  -168(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r2, r2, 1
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r2, -492(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	storeli.w r3, -168(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r10, r10, 1
	beq r10, r12, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r20, zero, 2
	addli r9, zero, 4
	.loc	1 124 15 is_stmt 1              # parallel-rne.mlir:124:15
	addli r14, r14, 1
	addli r8, r28, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	zext_int2long r[11:12], r10
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	addli r2, zero, 5
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	load.d r[18:19], -872(r30)              # 8-byte Folded Reload
	load.d r[26:27], -880(r30)              # 8-byte Folded Reload
	addli r24, zero, 128
	addli r21, zero, 32
	addli r25, zero, 64
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	sll.d r[2:3], r[11:12], r2
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	add.ul r[18:19], r[2:3], r[18:19]
	loadli.w r2,  -884(r30)                 # 4-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	setlt.ul r2, r[2:3], r[18:19]
	.loc	1 89 15                         # parallel-rne.mlir:89:15
	bneq r2, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[26:27], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r2, zero, 48
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	addli r3, zero, 41
	addli r7, zero, 384
	addli r28, r8, 1
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r2, r15, r2
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	mod.s r3, r8, r3
	zext_int2long r[22:23], r7
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r15, r15, 1
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	storeli.w r28, -660(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	store.d r[22:23], -864(r30)             # 8-byte Folded Spill
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r23
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	storeli.w r15, -856(r30)
	slli r7, r2, 14
	.loc	1 99 15                         # parallel-rne.mlir:99:15
	slli r2, r3, 14
	lui r3, 64
	add.s r22, r2, r3
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	beq r23, r20, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 1
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	bneq r23, r3, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 1024
	sub.sl r[11:12], r[18:19], r[26:27]
	load.d r[23:24], -864(r30)              # 8-byte Folded Reload
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	sll.d r[18:19], r[18:19], r3
	zext_int2long r[26:27], r7
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[11:12], r[11:12], r[26:27]
	min.sl r[26:27], r[11:12], r[23:24]
	sub.sl r[11:12], r[26:27], r[11:12]
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	load.d r[26:27], 0(r30)
	addli r7, r11, 128
	addli r12, zero, 3
	addli r11, zero, 40
	add.ul r[26:27], r[26:27], r[18:19]
	xwait r12, 0
	blt.s r11, r8, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 5
	.loc	1 103 9                         # parallel-rne.mlir:103:9
	lock zero, r8
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 18
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 7
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 16
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 1
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 19
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 20
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 21
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 22
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 23
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 24
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 25
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 26
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 27
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 28
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 29
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 30
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 31
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 128
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r22, zero, r25, 3
	dma_cfg r9, zero, r3, 4
	dma_cfg r9, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r23, zero, 2
	.loc	1 104 9 is_stmt 1               # parallel-rne.mlir:104:9
	addli r2, zero, 5
	addli r3, zero, 128
	addli r20, zero, 128
	addli r12, zero, 32
	addli r19, zero, 4
	addli r18, zero, 64
	xwait r23, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r23, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r3, zero, 13
	shuffle_batch r7, r22, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r19, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r2,  -492(r30)
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	loadli.w r9,  -168(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r3, zero, 80
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	addli r8, zero, 41
	lui r18, 228
	mod.s r8, r9, r8
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r3, r2, r3
	addli r2, r2, 1
	storeli.w r2, -492(r30)
	slli r2, r3, 14
	.loc	1 116 15                        # parallel-rne.mlir:116:15
	slli r8, r8, 14
	addli r3, r9, 1
	storeli.w r3, -168(r30)
	add.s r22, r8, r18
	addli r3, zero, 7
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	beq r23, r3, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 6
	bneq r23, r3, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r18, zero, 16
	addli r7, zero, 7
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	sll.d r[2:3], r[11:12], r18
	load.d r[11:12], -896(r30)              # 8-byte Folded Reload
	xwait r7, 0
	add.ul r[26:27], r[11:12], r[2:3]
	addli r3, zero, 1
	addli r2, zero, 40
	addli r12, zero, 3
	blt.s r2, r9, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r2, zero, 4
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r11, zero, 18
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 9
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 11
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 12
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 13
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 14
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 15
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 17
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 1
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 19
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 20
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 21
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 22
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 23
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 24
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 25
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 26
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 27
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 28
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 29
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 30
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 31
	dma_cfg zero, zero, r11, 10
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r22, zero, r25, 3
	dma_cfg r24, zero, r2, 4
	addli r2, zero, 512
	dma_cfg r2, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r2, 228
	addli r19, zero, 4
	addli r11, zero, 512
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r9, zero, 2048
	addli r23, zero, 2
	addli r21, zero, 6
	addli r20, zero, 128
	ori r2, r2, 64
	lock zero, r19
	dma_cfg r3, r3, zero, 0
	addli r3, zero, 64
	add.s r2, r8, r2
	dma_cfg zero, r27, zero, 2
	addli r8, zero, 1
	dma_cfg r2, r26, r3, 3
	addli r2, zero, 128
	dma_cfg r2, r3, r19, 4
	addli r2, zero, 32
	dma_cfg r11, r9, r2, 5
	addli r9, zero, 5
	addli r2, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r12, 10
	addli r12, zero, 32
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 9
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 11
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 12
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 13
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 14
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 15
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 17
	dma_cfg zero, zero, r18, 10
	addli r18, zero, 64
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r22, zero, r3, 3
	dma_cfg r20, zero, r19, 4
	dma_cfg r11, zero, r12, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r21, 0
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r7, zero, 6
	addli r23, zero, 2
	addli r8, zero, 128
	addli r20, zero, 128
	addli r12, zero, 32
	addli r18, zero, 64
	addli r19, zero, 4
	xwait r7, 0
	addli r7, zero, 9
	xwait r7, 0
	lock zero, zero
	addli r7, zero, 32
	ds_cfg r23, zero, 0
	ds_cfg r8, zero, 1
	ds_cfg r7, zero, 14
	ds_cfg r8, zero, 13
	shuffle_coa r2, r22, r7, 2
	addli r2, zero, 8
	unlock zero
	xsignal r3, 0
	xsignal r2, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 4
	.loc	1 123 9 is_stmt 1               # parallel-rne.mlir:123:9
	bneq r23, r19, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r3, zero, 8
	xwait r19, 0
	addli r18, zero, 64
	addli r23, zero, 2
	addli r12, zero, 32
	addli r20, zero, 128
	addli r8, zero, 1
	addli r9, zero, 1
	xwait r3, 0
	addli r3, zero, 0
	beq r14, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r3, 13
	slli r3, r3, 8
	lock zero, r8
	mm_cfg r18, r12, r20, 0
	or r11, r11, r2
	or r3, r3, r1
	mm_cfg r23, r19, r8, 2
	mm_acc r3, r7, r11, 8
	andi r11, r9, 1
	addli r3, zero, 1
	addli r9, zero, 0
	unlock r8
	bneq r11, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r3, 13
	slli r3, r3, 8
	lock zero, r8
	mm_cfg r18, r12, r20, 0
	or r11, r11, r2
	or r3, r3, r1
	mm_cfg r23, r19, r8, 2
	mm r3, r7, r11, 8
	andi r11, r9, 1
	addli r3, zero, 1
	addli r9, zero, 0
	unlock r8
	bneq r11, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread46
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 5
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r10, r10, 1
	.loc	1 123 9                         # parallel-rne.mlir:123:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r10, r12, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r10, r10, 1
	addli r18, zero, 64
	addli r23, zero, 2
	addli r12, zero, 32
	addli r20, zero, 128
	bneq r10, r12, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	core_id r2
	bneq r2, r19, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -880(r30)               # 4-byte Folded Spill
	xsignal r2, 0
	j .LBB0_39
.LBB0_36:                               # %.thread45
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	core_id r2
	addli r3, zero, 3
	bneq r2, r3, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	storeli.w r2, -880(r30)                 # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -880(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	addli r2, zero, 255
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	xfence
	addli r3, zero, 7
	addli r7, zero, 16
	zext_int2long r[14:15], r20
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r8
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { lm, sm, gm }
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	csr_set csr5, r2
	addli r2, zero, 127
	sync_core
	zext_int2long r[24:25], r2
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	beq r8, zero, .LBB0_70
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	beq r8, r23, .LBB0_99
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r8, r2, .LBB0_128
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[7:8], r7
	mfence { lm, sm, gm }
	j .LBB0_44
.LBB0_43:                               # %middle.block102
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 173 9 is_stmt 1               # parallel-rne.mlir:173:9
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli r3, zero, 7
	beq r2, zero, .LBB0_127
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	beq r6, r1, .LBB0_46
	j .LBB0_51
.LBB0_45:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_46 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r2, r6, r2
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r9, 0(r2)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	beq r3, zero, .LBB0_43
.LBB0_46:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r3, r10, r13
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r9, r16, r3
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r9, zero, .LBB0_48
# %bb.47:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_45
.LBB0_50:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 174 11 is_stmt 1              # parallel-rne.mlir:174:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	add.s r3, r6, r10
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 189 13                        # parallel-rne.mlir:189:13
	stores.w r28, 12(r3)
	stores.w r11, 8(r3)
	stores.w r9, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 174 11                        # parallel-rne.mlir:174:11
	bneq r2, zero, .LBB0_43
.LBB0_51:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r2, 12(r27)
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	and r19, r2, r13
	.loc	1 179 19                        # parallel-rne.mlir:179:19
	setlt.u r3, r16, r19
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r3, zero, .LBB0_53
# %bb.52:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r2, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	lui r3, 1024
	or r28, r2, r3
.LBB0_54:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r26, 8(r27)
	and r12, r26, r13
	setlt.u r3, r16, r12
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r3, zero, .LBB0_56
# %bb.55:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r26, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	lui r3, 1024
	or r11, r26, r3
.LBB0_57:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r18, 4(r27)
	and r20, r18, r13
	setlt.u r3, r16, r20
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r3, zero, .LBB0_59
# %bb.58:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	lui r3, 1024
	or r9, r18, r3
.LBB0_60:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	bneq r27, zero, .LBB0_62
# %bb.61:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r3, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 186 19 is_stmt 1              # parallel-rne.mlir:186:19
	setlt.u r3, r5, r3
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_64
.LBB0_63:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_64:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r3, r5, r20
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r3, zero, .LBB0_67
# %bb.65:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	beq r3, zero, .LBB0_68
.LBB0_66:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	and r9, r3, r17
	setlt.u r3, r5, r12
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_66
.LBB0_68:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r4
	and r11, r3, r17
	setlt.u r3, r5, r19
	.loc	1 187 19                        # parallel-rne.mlir:187:19
	bneq r3, zero, .LBB0_50
.LBB0_69:                               # %vector.body98
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r28, r2, r17
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 138 7 is_stmt 1               # parallel-rne.mlir:138:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_72
.LBB0_71:                               # %middle.block120
                                        #   in Loop: Header=BB0_72 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 145 9 is_stmt 1               # parallel-rne.mlir:145:9
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli r3, zero, 7
	beq r2, zero, .LBB0_98
.LBB0_72:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_79 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	beq r6, r1, .LBB0_74
	j .LBB0_79
.LBB0_73:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_74 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r2, r6, r2
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r9, 0(r2)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	beq r3, zero, .LBB0_71
.LBB0_74:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r3, r10, r13
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r9, r16, r3
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r9, zero, .LBB0_76
# %bb.75:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_73
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_73
.LBB0_78:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r9, r6, r10
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	seteq.d r3, r[7:8], r[14:15]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r2, 12(r9)
	stores.w r26, 8(r9)
	stores.w r18, 4(r9)
	stores.w r27, 0(r9)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	bneq r3, zero, .LBB0_71
.LBB0_79:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r28, 12(r27)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r19, r28, r13
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r2, r16, r19
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_81
# %bb.80:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r28, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_79 Depth=3
	lui r2, 1024
	or r2, r28, r2
.LBB0_82:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r11, 8(r27)
	and r12, r11, r13
	setlt.u r3, r16, r12
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r3, zero, .LBB0_84
# %bb.83:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r11, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_79 Depth=3
	lui r3, 1024
	or r26, r11, r3
.LBB0_85:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r9, 4(r27)
	and r20, r9, r13
	setlt.u r3, r16, r20
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r3, zero, .LBB0_87
# %bb.86:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r9, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_79 Depth=3
	lui r3, 1024
	or r18, r9, r3
.LBB0_88:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r27, zero, .LBB0_90
# %bb.89:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r3, zero, .LBB0_91
	j .LBB0_92
.LBB0_90:                               #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_92
.LBB0_91:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_92:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	setlt.u r3, r5, r20
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r3, zero, .LBB0_95
# %bb.93:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r3, zero, .LBB0_96
.LBB0_94:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_78
	j .LBB0_97
.LBB0_95:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r9, 16
	andi r3, r3, 1
	add.s r3, r9, r3
	add.s r3, r3, r4
	and r18, r3, r17
	setlt.u r3, r5, r12
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_94
.LBB0_96:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r26, r3, r17
	setlt.u r3, r5, r19
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_78
.LBB0_97:                               # %vector.body116
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r28, 16
	andi r2, r2, 1
	add.s r2, r28, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_78
.LBB0_98:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r8
	addli r18, zero, 64
	addli r19, zero, 4
	addli r23, zero, 2
	addli r12, zero, 32
	addli r20, zero, 128
	addli r7, zero, 16
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	mfence { sm }
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	bneq r8, r23, .LBB0_41
.LBB0_99:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 194 7                         # parallel-rne.mlir:194:7
	xfence
	zext_int2long r[7:8], r12
	mfence { lm, sm, gm }
	j .LBB0_101
.LBB0_100:                              # %middle.block111
                                        #   in Loop: Header=BB0_101 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 201 9 is_stmt 1               # parallel-rne.mlir:201:9
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli r3, zero, 7
	beq r2, zero, .LBB0_127
.LBB0_101:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_108 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	beq r6, r1, .LBB0_103
	j .LBB0_108
.LBB0_102:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_103 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r2, r6, r2
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r9, 0(r2)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	beq r3, zero, .LBB0_100
.LBB0_103:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r3, r10, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r9, r16, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r9, zero, .LBB0_105
# %bb.104:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r3, r5, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_102
	j .LBB0_106
.LBB0_105:                              #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r3, r5, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_102
.LBB0_106:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_103 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_102
.LBB0_107:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 202 11 is_stmt 1              # parallel-rne.mlir:202:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	add.s r3, r6, r10
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 217 13                        # parallel-rne.mlir:217:13
	stores.w r28, 12(r3)
	stores.w r11, 8(r3)
	stores.w r9, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 202 11                        # parallel-rne.mlir:202:11
	bneq r2, zero, .LBB0_100
.LBB0_108:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_101 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r2, 12(r27)
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	and r19, r2, r13
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	setlt.u r3, r16, r19
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r3, zero, .LBB0_110
# %bb.109:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r2, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	lui r3, 1024
	or r28, r2, r3
.LBB0_111:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r26, 8(r27)
	and r12, r26, r13
	setlt.u r3, r16, r12
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r3, zero, .LBB0_113
# %bb.112:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r26, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_108 Depth=3
	lui r3, 1024
	or r11, r26, r3
.LBB0_114:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r18, 4(r27)
	and r20, r18, r13
	setlt.u r3, r16, r20
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r3, zero, .LBB0_116
# %bb.115:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_108 Depth=3
	lui r3, 1024
	or r9, r18, r3
.LBB0_117:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 208 19                        # parallel-rne.mlir:208:19
	bneq r27, zero, .LBB0_119
# %bb.118:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r3, r5, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r3, zero, .LBB0_120
	j .LBB0_121
.LBB0_119:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 214 19 is_stmt 1              # parallel-rne.mlir:214:19
	setlt.u r3, r5, r3
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_121
.LBB0_120:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_121:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	setlt.u r3, r5, r20
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r3, zero, .LBB0_124
# %bb.122:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	beq r3, zero, .LBB0_125
.LBB0_123:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_107
	j .LBB0_126
.LBB0_124:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	and r9, r3, r17
	setlt.u r3, r5, r12
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_123
.LBB0_125:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r4
	and r11, r3, r17
	setlt.u r3, r5, r19
	.loc	1 215 19                        # parallel-rne.mlir:215:19
	bneq r3, zero, .LBB0_107
.LBB0_126:                              # %vector.body107
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r28, r2, r17
	j .LBB0_107
.LBB0_127:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r18, zero, 64
	addli r19, zero, 4
	addli r23, zero, 2
	addli r20, zero, 128
	mfence { sm }
.LBB0_128:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	loadli.w r2,  -880(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_161
# %bb.129:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r7
	.loc	1 250 7                         # parallel-rne.mlir:250:7
	beq r7, r19, .LBB0_190
.LBB0_130:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 278 7                         # parallel-rne.mlir:278:7
	beq r7, r3, .LBB0_219
.LBB0_131:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r7, r2, .LBB0_247
# %bb.132:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r26
	.loc	1 278 7                         # parallel-rne.mlir:278:7
	bneq r7, r2, .LBB0_276
# %bb.133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 278 7                         # parallel-rne.mlir:278:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_135
.LBB0_134:                              # %middle.block
                                        #   in Loop: Header=BB0_135 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 95
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 285 9 is_stmt 1               # parallel-rne.mlir:285:9
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli r3, zero, 7
	beq r2, zero, .LBB0_275
.LBB0_135:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_142 Depth 3
                                        #       Child Loop BB0_137 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 286 11 is_stmt 1              # parallel-rne.mlir:286:11
	beq r6, r1, .LBB0_137
	j .LBB0_142
.LBB0_136:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	add.s r2, r6, r2
	.loc	1 286 11                        # parallel-rne.mlir:286:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	stores.w r9, 0(r2)
	.loc	1 286 11                        # parallel-rne.mlir:286:11
	beq r3, zero, .LBB0_134
.LBB0_137:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	and r3, r10, r13
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	setlt.u r9, r16, r3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	bneq r9, zero, .LBB0_139
# %bb.138:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 298 19 is_stmt 1              # parallel-rne.mlir:298:19
	setlt.u r3, r5, r3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r3, zero, .LBB0_136
	j .LBB0_140
.LBB0_139:                              #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 298 19 is_stmt 1              # parallel-rne.mlir:298:19
	setlt.u r3, r5, r3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r3, zero, .LBB0_136
.LBB0_140:                              # %scalar.ph
                                        #   in Loop: Header=BB0_137 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_136
.LBB0_141:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 286 11 is_stmt 1              # parallel-rne.mlir:286:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	add.s r3, r6, r10
	.loc	1 286 11                        # parallel-rne.mlir:286:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 301 13                        # parallel-rne.mlir:301:13
	stores.w r28, 12(r3)
	stores.w r11, 8(r3)
	stores.w r9, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 286 11                        # parallel-rne.mlir:286:11
	bneq r2, zero, .LBB0_134
.LBB0_142:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_135 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r2, 12(r27)
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	and r19, r2, r13
	.loc	1 291 19                        # parallel-rne.mlir:291:19
	setlt.u r3, r16, r19
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	bneq r3, zero, .LBB0_144
# %bb.143:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r2, 0
	j .LBB0_145
.LBB0_144:                              #   in Loop: Header=BB0_142 Depth=3
	lui r3, 1024
	or r28, r2, r3
.LBB0_145:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r26, 8(r27)
	and r12, r26, r13
	setlt.u r3, r16, r12
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	bneq r3, zero, .LBB0_147
# %bb.146:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r26, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_142 Depth=3
	lui r3, 1024
	or r11, r26, r3
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r18, 4(r27)
	and r20, r18, r13
	setlt.u r3, r16, r20
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	bneq r3, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_142 Depth=3
	lui r3, 1024
	or r9, r18, r3
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	bneq r27, zero, .LBB0_157
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 298 19 is_stmt 1              # parallel-rne.mlir:298:19
	setlt.u r3, r5, r3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r3, zero, .LBB0_154
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	setlt.u r3, r5, r20
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	beq r3, zero, .LBB0_158
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	beq r3, zero, .LBB0_159
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r3, zero, .LBB0_141
	j .LBB0_160
.LBB0_157:                              #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 298 19 is_stmt 1              # parallel-rne.mlir:298:19
	setlt.u r3, r5, r3
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	beq r3, zero, .LBB0_153
	j .LBB0_154
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	and r9, r3, r17
	setlt.u r3, r5, r12
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r3, zero, .LBB0_156
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r4
	and r11, r3, r17
	setlt.u r3, r5, r19
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r3, zero, .LBB0_141
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_142 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r28, r2, r17
	j .LBB0_141
.LBB0_161:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_163
.LBB0_162:                              # %middle.block93
                                        #   in Loop: Header=BB0_163 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 229 9 is_stmt 1               # parallel-rne.mlir:229:9
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli r3, zero, 7
	beq r2, zero, .LBB0_189
.LBB0_163:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_170 Depth 3
                                        #       Child Loop BB0_165 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 230 11 is_stmt 1              # parallel-rne.mlir:230:11
	beq r6, r1, .LBB0_165
	j .LBB0_170
.LBB0_164:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_165 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	add.s r2, r6, r2
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	stores.w r9, 0(r2)
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	beq r3, zero, .LBB0_162
.LBB0_165:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	and r3, r10, r13
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	setlt.u r9, r16, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r9, zero, .LBB0_167
# %bb.166:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 242 19 is_stmt 1              # parallel-rne.mlir:242:19
	setlt.u r3, r5, r3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r3, zero, .LBB0_164
	j .LBB0_168
.LBB0_167:                              #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 242 19 is_stmt 1              # parallel-rne.mlir:242:19
	setlt.u r3, r5, r3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r3, zero, .LBB0_164
.LBB0_168:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_165 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_164
.LBB0_169:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 230 11 is_stmt 1              # parallel-rne.mlir:230:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	add.s r3, r6, r10
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 245 13                        # parallel-rne.mlir:245:13
	stores.w r28, 12(r3)
	stores.w r11, 8(r3)
	stores.w r9, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 230 11                        # parallel-rne.mlir:230:11
	bneq r2, zero, .LBB0_162
.LBB0_170:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_163 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r2, 12(r27)
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	and r19, r2, r13
	.loc	1 235 19                        # parallel-rne.mlir:235:19
	setlt.u r3, r16, r19
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r3, zero, .LBB0_172
# %bb.171:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r2, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_170 Depth=3
	lui r3, 1024
	or r28, r2, r3
.LBB0_173:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r26, 8(r27)
	and r12, r26, r13
	setlt.u r3, r16, r12
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r3, zero, .LBB0_175
# %bb.174:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r26, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_170 Depth=3
	lui r3, 1024
	or r11, r26, r3
.LBB0_176:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r18, 4(r27)
	and r20, r18, r13
	setlt.u r3, r16, r20
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r3, zero, .LBB0_178
# %bb.177:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_170 Depth=3
	lui r3, 1024
	or r9, r18, r3
.LBB0_179:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	bneq r27, zero, .LBB0_185
# %bb.180:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 242 19 is_stmt 1              # parallel-rne.mlir:242:19
	setlt.u r3, r5, r3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r3, zero, .LBB0_182
.LBB0_181:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_182:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	setlt.u r3, r5, r20
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r3, zero, .LBB0_186
# %bb.183:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r3, zero, .LBB0_187
.LBB0_184:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r3, zero, .LBB0_169
	j .LBB0_188
.LBB0_185:                              #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 242 19 is_stmt 1              # parallel-rne.mlir:242:19
	setlt.u r3, r5, r3
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	beq r3, zero, .LBB0_181
	j .LBB0_182
.LBB0_186:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	and r9, r3, r17
	setlt.u r3, r5, r12
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r3, zero, .LBB0_184
.LBB0_187:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r4
	and r11, r3, r17
	setlt.u r3, r5, r19
	.loc	1 243 19                        # parallel-rne.mlir:243:19
	bneq r3, zero, .LBB0_169
.LBB0_188:                              # %vector.body89
                                        #   in Loop: Header=BB0_170 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r28, r2, r17
	j .LBB0_169
.LBB0_189:                              #   in Loop: Header=BB0_8 Depth=1
	addli r18, zero, 64
	addli r19, zero, 4
	addli r23, zero, 2
	addli r20, zero, 128
	.loc	1 222 7 is_stmt 1               # parallel-rne.mlir:222:7
	mfence { sm }
	.loc	1 33 5                          # parallel-rne.mlir:33:5
	core_id r7
	.loc	1 250 7                         # parallel-rne.mlir:250:7
	bneq r7, r19, .LBB0_130
.LBB0_190:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[7:8], r18
	mfence { lm, sm, gm }
	j .LBB0_192
.LBB0_191:                              # %middle.block84
                                        #   in Loop: Header=BB0_192 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 257 9 is_stmt 1               # parallel-rne.mlir:257:9
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli r3, zero, 7
	beq r2, zero, .LBB0_218
.LBB0_192:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_199 Depth 3
                                        #       Child Loop BB0_194 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 258 11 is_stmt 1              # parallel-rne.mlir:258:11
	beq r6, r1, .LBB0_194
	j .LBB0_199
.LBB0_193:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_194 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 273 13                        # parallel-rne.mlir:273:13
	add.s r2, r6, r2
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 273 13                        # parallel-rne.mlir:273:13
	stores.w r9, 0(r2)
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	beq r3, zero, .LBB0_191
.LBB0_194:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	and r3, r10, r13
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	setlt.u r9, r16, r3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	bneq r9, zero, .LBB0_196
# %bb.195:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 270 19 is_stmt 1              # parallel-rne.mlir:270:19
	setlt.u r3, r5, r3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r3, zero, .LBB0_193
	j .LBB0_197
.LBB0_196:                              #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 270 19 is_stmt 1              # parallel-rne.mlir:270:19
	setlt.u r3, r5, r3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r3, zero, .LBB0_193
.LBB0_197:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_194 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_193
.LBB0_198:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 258 11 is_stmt 1              # parallel-rne.mlir:258:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 273 13                        # parallel-rne.mlir:273:13
	add.s r3, r6, r10
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 273 13                        # parallel-rne.mlir:273:13
	stores.w r28, 12(r3)
	stores.w r11, 8(r3)
	stores.w r9, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 258 11                        # parallel-rne.mlir:258:11
	bneq r2, zero, .LBB0_191
.LBB0_199:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_192 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r2, 12(r27)
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	and r19, r2, r13
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	setlt.u r3, r16, r19
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	bneq r3, zero, .LBB0_201
# %bb.200:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r2, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_199 Depth=3
	lui r3, 1024
	or r28, r2, r3
.LBB0_202:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r26, 8(r27)
	and r12, r26, r13
	setlt.u r3, r16, r12
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	bneq r3, zero, .LBB0_204
# %bb.203:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r26, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_199 Depth=3
	lui r3, 1024
	or r11, r26, r3
.LBB0_205:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r18, 4(r27)
	and r20, r18, r13
	setlt.u r3, r16, r20
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	bneq r3, zero, .LBB0_207
# %bb.206:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_199 Depth=3
	lui r3, 1024
	or r9, r18, r3
.LBB0_208:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 264 19                        # parallel-rne.mlir:264:19
	bneq r27, zero, .LBB0_214
# %bb.209:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 270 19 is_stmt 1              # parallel-rne.mlir:270:19
	setlt.u r3, r5, r3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r3, zero, .LBB0_211
.LBB0_210:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_211:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	setlt.u r3, r5, r20
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	beq r3, zero, .LBB0_215
# %bb.212:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	beq r3, zero, .LBB0_216
.LBB0_213:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r3, zero, .LBB0_198
	j .LBB0_217
.LBB0_214:                              #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 270 19 is_stmt 1              # parallel-rne.mlir:270:19
	setlt.u r3, r5, r3
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	beq r3, zero, .LBB0_210
	j .LBB0_211
.LBB0_215:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	and r9, r3, r17
	setlt.u r3, r5, r12
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r3, zero, .LBB0_213
.LBB0_216:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r4
	and r11, r3, r17
	setlt.u r3, r5, r19
	.loc	1 271 19                        # parallel-rne.mlir:271:19
	bneq r3, zero, .LBB0_198
.LBB0_217:                              # %vector.body80
                                        #   in Loop: Header=BB0_199 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r28, r2, r17
	j .LBB0_198
.LBB0_218:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r7
	addli r18, zero, 64
	addli r19, zero, 4
	addli r23, zero, 2
	addli r20, zero, 128
	.loc	1 250 7                         # parallel-rne.mlir:250:7
	mfence { sm }
	.loc	1 278 7                         # parallel-rne.mlir:278:7
	bneq r7, r3, .LBB0_131
.LBB0_219:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 334 7 is_stmt 1               # parallel-rne.mlir:334:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_221
.LBB0_220:                              # %middle.block75
                                        #   in Loop: Header=BB0_221 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	addli r3, zero, 7
	.loc	1 341 9 is_stmt 1               # parallel-rne.mlir:341:9
	setlt.ul r2, r[7:8], r[24:25]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_275
.LBB0_221:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_228 Depth 3
                                        #       Child Loop BB0_223 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 342 11 is_stmt 1              # parallel-rne.mlir:342:11
	beq r6, r1, .LBB0_223
	j .LBB0_228
.LBB0_222:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_223 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	add.s r2, r6, r2
	.loc	1 342 11                        # parallel-rne.mlir:342:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	stores.w r9, 0(r2)
	.loc	1 342 11                        # parallel-rne.mlir:342:11
	beq r3, zero, .LBB0_220
.LBB0_223:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r3, r10, r13
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	setlt.u r9, r16, r3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r9, zero, .LBB0_225
# %bb.224:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 354 19 is_stmt 1              # parallel-rne.mlir:354:19
	setlt.u r3, r5, r3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_222
	j .LBB0_226
.LBB0_225:                              #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 354 19 is_stmt 1              # parallel-rne.mlir:354:19
	setlt.u r3, r5, r3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_222
.LBB0_226:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_223 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_222
.LBB0_227:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 342 11 is_stmt 1              # parallel-rne.mlir:342:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	add.s r3, r6, r10
	.loc	1 342 11                        # parallel-rne.mlir:342:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 357 13                        # parallel-rne.mlir:357:13
	stores.w r28, 12(r3)
	stores.w r11, 8(r3)
	stores.w r9, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 342 11                        # parallel-rne.mlir:342:11
	bneq r2, zero, .LBB0_220
.LBB0_228:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_221 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r2, 12(r27)
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	and r19, r2, r13
	.loc	1 347 19                        # parallel-rne.mlir:347:19
	setlt.u r3, r16, r19
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r3, zero, .LBB0_230
# %bb.229:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r2, 0
	j .LBB0_231
.LBB0_230:                              #   in Loop: Header=BB0_228 Depth=3
	lui r3, 1024
	or r28, r2, r3
.LBB0_231:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r26, 8(r27)
	and r12, r26, r13
	setlt.u r3, r16, r12
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r3, zero, .LBB0_233
# %bb.232:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r26, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_228 Depth=3
	lui r3, 1024
	or r11, r26, r3
.LBB0_234:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r18, 4(r27)
	and r20, r18, r13
	setlt.u r3, r16, r20
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r3, zero, .LBB0_236
# %bb.235:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_228 Depth=3
	lui r3, 1024
	or r9, r18, r3
.LBB0_237:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 348 19                        # parallel-rne.mlir:348:19
	bneq r27, zero, .LBB0_239
# %bb.238:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 354 19 is_stmt 1              # parallel-rne.mlir:354:19
	setlt.u r3, r5, r3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	beq r3, zero, .LBB0_240
	j .LBB0_241
.LBB0_239:                              #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 354 19 is_stmt 1              # parallel-rne.mlir:354:19
	setlt.u r3, r5, r3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_241
.LBB0_240:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_241:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	setlt.u r3, r5, r20
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	beq r3, zero, .LBB0_244
# %bb.242:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	beq r3, zero, .LBB0_245
.LBB0_243:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_227
	j .LBB0_246
.LBB0_244:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	and r9, r3, r17
	setlt.u r3, r5, r12
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_243
.LBB0_245:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r4
	and r11, r3, r17
	setlt.u r3, r5, r19
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_227
.LBB0_246:                              # %vector.body71
                                        #   in Loop: Header=BB0_228 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r28, r2, r17
	j .LBB0_227
.LBB0_247:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 96
	.loc	1 306 7 is_stmt 1               # parallel-rne.mlir:306:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_249
.LBB0_248:                              # %middle.block66
                                        #   in Loop: Header=BB0_249 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	load.d r[7:8], -872(r30)                # 8-byte Folded Reload
	zext_int2long r[2:3], r2
	.loc	1 313 9 is_stmt 1               # parallel-rne.mlir:313:9
	setlt.ul r2, r[7:8], r[2:3]
	addli.d r[7:8], r[7:8], 1
	addli r3, zero, 7
	beq r2, zero, .LBB0_275
.LBB0_249:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_256 Depth 3
                                        #       Child Loop BB0_251 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[7:8], -872(r30)               # 8-byte Folded Spill
	sll.d r[22:23], r[7:8], r3
	zext_int2long r[7:8], zero
	.loc	1 314 11 is_stmt 1              # parallel-rne.mlir:314:11
	beq r6, r1, .LBB0_251
	j .LBB0_256
.LBB0_250:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_251 Depth=3
	setlt.ul r3, r[7:8], r[24:25]
	.loc	1 329 13                        # parallel-rne.mlir:329:13
	add.s r2, r6, r2
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 329 13                        # parallel-rne.mlir:329:13
	stores.w r9, 0(r2)
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	beq r3, zero, .LBB0_248
.LBB0_251:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r2, r2, 2
	add.s r3, r1, r2
	loads.w r10, 0(r3)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r3, r10, r13
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	setlt.u r9, r16, r3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r9, zero, .LBB0_253
# %bb.252:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 326 19 is_stmt 1              # parallel-rne.mlir:326:19
	setlt.u r3, r5, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r3, zero, .LBB0_250
	j .LBB0_254
.LBB0_253:                              #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 326 19 is_stmt 1              # parallel-rne.mlir:326:19
	setlt.u r3, r5, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r3, zero, .LBB0_250
.LBB0_254:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_251 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r9, r3, r17
	j .LBB0_250
.LBB0_255:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 314 11 is_stmt 1              # parallel-rne.mlir:314:11
	addli.d r[7:8], r[7:8], 4
	.loc	1 329 13                        # parallel-rne.mlir:329:13
	add.s r3, r6, r10
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	seteq.d r2, r[7:8], r[14:15]
	.loc	1 329 13                        # parallel-rne.mlir:329:13
	stores.w r28, 12(r3)
	stores.w r11, 8(r3)
	stores.w r9, 4(r3)
	stores.w r27, 0(r3)
	.loc	1 314 11                        # parallel-rne.mlir:314:11
	bneq r2, zero, .LBB0_248
.LBB0_256:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_249 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	add.ul r[2:3], r[7:8], r[22:23]
	slli r10, r2, 2
	add.s r27, r1, r10
	loads.w r2, 12(r27)
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	and r19, r2, r13
	.loc	1 319 19                        # parallel-rne.mlir:319:19
	setlt.u r3, r16, r19
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r3, zero, .LBB0_258
# %bb.257:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r28, r2, 0
	j .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_256 Depth=3
	lui r3, 1024
	or r28, r2, r3
.LBB0_259:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r26, 8(r27)
	and r12, r26, r13
	setlt.u r3, r16, r12
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r3, zero, .LBB0_261
# %bb.260:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r26, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_256 Depth=3
	lui r3, 1024
	or r11, r26, r3
.LBB0_262:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r18, 4(r27)
	and r20, r18, r13
	setlt.u r3, r16, r20
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r3, zero, .LBB0_264
# %bb.263:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r18, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_256 Depth=3
	lui r3, 1024
	or r9, r18, r3
.LBB0_265:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	loads.w r21, 0(r27)
	and r3, r21, r13
	setlt.u r27, r16, r3
	.loc	1 320 19                        # parallel-rne.mlir:320:19
	bneq r27, zero, .LBB0_267
# %bb.266:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r21, 0
	.loc	1 326 19 is_stmt 1              # parallel-rne.mlir:326:19
	setlt.u r3, r5, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	beq r3, zero, .LBB0_268
	j .LBB0_269
.LBB0_267:                              #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r21, r27
	.loc	1 326 19 is_stmt 1              # parallel-rne.mlir:326:19
	setlt.u r3, r5, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r3, zero, .LBB0_269
.LBB0_268:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r21, 16
	andi r3, r3, 1
	add.s r3, r21, r3
	add.s r3, r3, r4
	and r27, r3, r17
.LBB0_269:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	setlt.u r3, r5, r20
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	beq r3, zero, .LBB0_272
# %bb.270:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	beq r3, zero, .LBB0_273
.LBB0_271:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r19
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r3, zero, .LBB0_255
	j .LBB0_274
.LBB0_272:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r18, 16
	andi r3, r3, 1
	add.s r3, r18, r3
	add.s r3, r3, r4
	and r9, r3, r17
	setlt.u r3, r5, r12
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r3, zero, .LBB0_271
.LBB0_273:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r26, 16
	andi r3, r3, 1
	add.s r3, r26, r3
	add.s r3, r3, r4
	and r11, r3, r17
	setlt.u r3, r5, r19
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	bneq r3, zero, .LBB0_255
.LBB0_274:                              # %vector.body62
                                        #   in Loop: Header=BB0_256 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r28, r2, r17
	j .LBB0_255
.LBB0_275:                              # %.sink.split53
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 33 5 is_stmt 1                # parallel-rne.mlir:33:5
	core_id r26
	addli r18, zero, 64
	addli r19, zero, 4
	addli r23, zero, 2
	addli r20, zero, 128
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_276:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 362 7 is_stmt 1               # parallel-rne.mlir:362:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 363 7                         # parallel-rne.mlir:363:7
	loadli.w r1,  -880(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.277:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 1
	.loc	1 380 7 is_stmt 1               # parallel-rne.mlir:380:7
	bneq r26, zero, .LBB0_7
# %bb.278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	loadli.w r1,  -936(r30)                 # 4-byte Folded Reload
	addli r7, zero, 896
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	loadli.w r9,  -932(r30)                 # 4-byte Folded Reload
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	load.d r[21:22], -928(r30)              # 8-byte Folded Reload
	addli r11, zero, 18
	zext_int2long r[7:8], r7
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	zext_int2long r[1:2], r1
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	sext_int2long r[9:10], r9
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	sll.d r[11:12], r[21:22], r11
	load.d r[21:22], 16(r30)
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.ul r[7:8], r[1:2], r[7:8]
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	add.ul r[11:12], r[21:22], r[11:12]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	addli.d r[7:8], r[7:8], 128
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	max.ul r[7:8], r[7:8], r[1:2]
	sub.sl r[1:2], r[7:8], r[1:2]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	load.d r[7:8], -864(r30)                # 8-byte Folded Reload
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	min.ul r[1:2], r[1:2], r[14:15]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.sl r[7:8], r[9:10], r[7:8]
	addli.d r[7:8], r[7:8], 128
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	max.sl r[7:8], r[7:8], r[9:10]
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	sub.sl r[7:8], r[7:8], r[9:10]
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	load.d r[9:10], -920(r30)               # 8-byte Folded Reload
	add.ul r[9:10], r[11:12], r[9:10]
	addli r11, zero, 12
	xwait r11, 0
	addli r11, zero, 5
	lock zero, r11
	dma_cfg r3, r3, zero, 0
	dma_cfg zero, r3, zero, 1
	ori r3, r6, 64
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	min.sl r[6:7], r[7:8], r[14:15]
	.loc	1 380 7                         # parallel-rne.mlir:380:7
	addli r8, zero, 2048
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r3, r18, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 1
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r18, r20, r3, 4
	addli r3, zero, 512
	dma_cfg r8, r3, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r2, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_6
.LBB0_279:                              # %._crit_edge
	.loc	1 382 5                         # parallel-rne.mlir:382:5
	xsignal zero, 0
	bneq r26, zero, .LBB0_281
# %bb.280:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 382 5                         # parallel-rne.mlir:382:5
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
.LBB0_281:
	.loc	1 383 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:383:5
	addli sp, sp, 952
	mfence { lm, sm, gm }
	exit
.Ltmp1:
.Lfunc_end0:
	.size	triton_mm, .Lfunc_end0-triton_mm
	.cfi_endproc
                                        # -- End function
	.type	XPU_KERNEL_PARAM_SIZE_triton_mm,@object # @XPU_KERNEL_PARAM_SIZE_triton_mm
	.section	.XPU.KERNEL_PARAM_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_PARAM_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_PARAM_SIZE_triton_mm:
	.long	36                              # 0x24
	.size	XPU_KERNEL_PARAM_SIZE_triton_mm, 4

	.type	XPU_KERNEL_STACK_SIZE_triton_mm,@object # @XPU_KERNEL_STACK_SIZE_triton_mm
	.section	.XPU.KERNEL_STACK_SIZE.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_STACK_SIZE_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_STACK_SIZE_triton_mm:
	.long	1016                            # 0x3f8
	.size	XPU_KERNEL_STACK_SIZE_triton_mm, 4

	.type	XPU_KERNEL_DYNAMIC_LM_triton_mm,@object # @XPU_KERNEL_DYNAMIC_LM_triton_mm
	.section	.XPU.KERNEL_DYNAMIC_LM.triton_mm,"a",@progbits
	.globl	XPU_KERNEL_DYNAMIC_LM_triton_mm
	.p2align	2, 0x0
XPU_KERNEL_DYNAMIC_LM_triton_mm:
	.long	0                               # 0x0
	.size	XPU_KERNEL_DYNAMIC_LM_triton_mm, 4

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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-qrjbs0kg" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
