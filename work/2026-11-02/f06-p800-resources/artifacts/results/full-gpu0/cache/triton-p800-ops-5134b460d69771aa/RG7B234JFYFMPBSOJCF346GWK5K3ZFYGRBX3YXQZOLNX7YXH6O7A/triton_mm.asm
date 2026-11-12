	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-o20s2tnm" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1016
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r12
	addli r30, sp, 952
	xsignal_mode_cfg r1
	beq r12, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -168(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -492(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -660(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -856(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r4, r1, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r3, -164(r30)
	storeli.w r3, -160(r30)
	storeli.w r3, -156(r30)
	storeli.w r3, -152(r30)
	storeli.w r3, -148(r30)
	storeli.w r3, -144(r30)
	storeli.w r3, -140(r30)
	storeli.w r3, -136(r30)
	storeli.w r3, -132(r30)
	storeli.w r3, -128(r30)
	storeli.w r3, -124(r30)
	storeli.w r3, -120(r30)
	storeli.w r3, -116(r30)
	storeli.w r3, -112(r30)
	storeli.w r3, -108(r30)
	storeli.w r3, -104(r30)
	storeli.w r3, -100(r30)
	storeli.w r3, -96(r30)
	storeli.w r3, -92(r30)
	storeli.w r3, -88(r30)
	storeli.w r3, -84(r30)
	storeli.w r3, -80(r30)
	storeli.w r3, -76(r30)
	storeli.w r3, -72(r30)
	storeli.w r3, -68(r30)
	storeli.w r3, -64(r30)
	storeli.w r3, -60(r30)
	storeli.w r3, -56(r30)
	storeli.w r3, -52(r30)
	storeli.w r3, -48(r30)
	storeli.w r3, -44(r30)
	storeli.w r3, -40(r30)
	storeli.w r3, -36(r30)
	storeli.w r3, -32(r30)
	storeli.w r3, -28(r30)
	storeli.w r3, -24(r30)
	storeli.w r3, -20(r30)
	storeli.w r3, -16(r30)
	storeli.w r3, -12(r30)
	storeli.w r3, -8(r30)
	storeli.w r3, -4(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	storeli.w r3, -420(r30)
	storeli.w r3, -416(r30)
	storeli.w r3, -412(r30)
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w r3, -656(r30)
	storeli.w r3, -652(r30)
	storeli.w r3, -648(r30)
	storeli.w r3, -644(r30)
	storeli.w r3, -640(r30)
	storeli.w r3, -636(r30)
	storeli.w r3, -632(r30)
	storeli.w r3, -628(r30)
	storeli.w r3, -624(r30)
	storeli.w r3, -620(r30)
	storeli.w r3, -616(r30)
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w r3, -852(r30)
	storeli.w r3, -848(r30)
	storeli.w r3, -844(r30)
	storeli.w r3, -840(r30)
	storeli.w r3, -836(r30)
	storeli.w r3, -832(r30)
	storeli.w r3, -828(r30)
	storeli.w r3, -824(r30)
	storeli.w r3, -820(r30)
	storeli.w r3, -816(r30)
	storeli.w r3, -812(r30)
	storeli.w r3, -808(r30)
	storeli.w r3, -804(r30)
	storeli.w r3, -800(r30)
	storeli.w r3, -796(r30)
	storeli.w r3, -792(r30)
	storeli.w r3, -788(r30)
	storeli.w r3, -784(r30)
	storeli.w r3, -780(r30)
	storeli.w r3, -776(r30)
	storeli.w r3, -772(r30)
	storeli.w r3, -768(r30)
	storeli.w r3, -764(r30)
	storeli.w r3, -760(r30)
	storeli.w r3, -756(r30)
	storeli.w r3, -752(r30)
	storeli.w r3, -748(r30)
	storeli.w r3, -744(r30)
	storeli.w r3, -740(r30)
	storeli.w r3, -736(r30)
	storeli.w r3, -732(r30)
	storeli.w r3, -728(r30)
	storeli.w r3, -724(r30)
	storeli.w r3, -720(r30)
	storeli.w r3, -716(r30)
	storeli.w r3, -712(r30)
	storeli.w r3, -708(r30)
	storeli.w r3, -704(r30)
	storeli.w r3, -700(r30)
	storeli.w r3, -696(r30)
	storeli.w r3, -692(r30)
	storeli.w r3, -688(r30)
	storeli.w r3, -684(r30)
	storeli.w r3, -680(r30)
	storeli.w r3, -676(r30)
	storeli.w r3, -672(r30)
	storeli.w r3, -668(r30)
	storeli.w r3, -664(r30)
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r2, r2, r4
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r2, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[6:7], r1
	lui r1, 31
	addli r14, zero, 128
	addli r27, zero, 8
	addli r8, zero, 7
	addli r21, zero, 2
	addli r23, zero, 4
	addli r24, zero, 1
	lui r18, 522240
	lui r22, 1048560
	addli r9, zero, 0
	store.d r[2:3], -944(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -952(r30)               # 8-byte Folded Spill
	lui r1, 1023
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
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r1, zero, 11
	addli r21, zero, 2
	addli r23, zero, 4
	addli r24, zero, 1
	xsignal r1, 0
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -904(r30)                # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[1:2], -944(r30)                # 8-byte Folded Reload
	loadli.w r9,  -908(r30)                 # 4-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_78 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_109 Depth 3
                                        #     Child Loop BB0_137 Depth 2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_206 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_267 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r17, zero, 32
	.loc	1 76 7 is_stmt 1                # parallel-rne.mlir:76:7
	bneq r12, r23, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	store.d r[6:7], -904(r30)               # 8-byte Folded Spill
	mod.s r3, r9, r21
	addli r9, r9, 1
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	loadli.w r16,  -856(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r11,  -660(r30)
	addli r15, zero, 0
	addli r19, zero, 2
	storeli.w r9, -908(r30)                 # 4-byte Folded Spill
	div.s r1, r6, r1
	addli r7, zero, 16
	slli r9, r3, 16
	lui r3, 32
	div.s r1, r1, r2
	div.s r2, r1, r14
	slli r6, r2, 3
	slli r2, r2, 7
	sub.s r7, r7, r6
	sub.s r2, r1, r2
	min.s r7, r7, r27
	div.s r2, r2, r7
	mod.s r1, r1, r7
	add.s r7, r9, r3
	slli r3, r2, 7
	add.s r1, r6, r1
	storeli.w r3, -936(r30)                 # 4-byte Folded Spill
	zext_int2long r[2:3], r2
	slli r6, r1, 7
	zext_int2long r[20:21], r1
	sll.d r[1:2], r[2:3], r8
	addli r3, zero, 18
	store.d r[20:21], -928(r30)             # 8-byte Folded Spill
	storeli.w r6, -932(r30)                 # 4-byte Folded Spill
	addli r6, zero, 0
	sll.d r[25:26], r[20:21], r3
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	sll.d r[20:21], r[1:2], r24
	load.d r[1:2], -952(r30)                # 8-byte Folded Reload
	store.d r[25:26], -872(r30)             # 8-byte Folded Spill
	store.d r[20:21], -920(r30)             # 8-byte Folded Spill
	and.d r[1:2], r[25:26], r[1:2]
	store.d r[1:2], -880(r30)               # 8-byte Folded Spill
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[20:21]
	store.d r[1:2], -896(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 64
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r25
	addli r11, zero, 64
	dma_cfg r8, r8, zero, 0
	ori r1, r1, 64
	dma_cfg zero, r21, zero, 2
	add.s r1, r10, r1
	addli r10, zero, 5
	dma_cfg r1, r20, r11, 3
	addli r1, zero, 4096
	addli r20, zero, 64
	dma_cfg r14, r11, r8, 4
	dma_cfg r14, r1, r24, 5
	addli r1, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r25
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r27, 10
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
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r11, 3
	dma_cfg r14, zero, r8, 4
	dma_cfg r14, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r3, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r1,  -492(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -168(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r1, r1, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r1, -492(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r2, -168(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r6, r6, 1
	beq r6, r20, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r19, zero, 2
	.loc	1 121 15 is_stmt 1              # parallel-rne.mlir:121:15
	addli r15, r15, 1
	addli r11, r28, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	zext_int2long r[20:21], r6
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	addli r1, zero, 5
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	load.d r[23:24], -872(r30)              # 8-byte Folded Reload
	loadli.w r3,  -884(r30)                 # 4-byte Folded Reload
	load.d r[25:26], -880(r30)              # 8-byte Folded Reload
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	sll.d r[1:2], r[20:21], r1
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	add.ul r[1:2], r[1:2], r[23:24]
	zext_int2long r[23:24], r3
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	setlt.ul r3, r[23:24], r[1:2]
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[25:26], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	addli r3, zero, 48
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r8, zero, 41
	addli r10, zero, 1920
	addli r28, r11, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r3, r16, r3
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r8, r11, r8
	zext_int2long r[23:24], r10
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r16, r16, 1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r28, -660(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	store.d r[23:24], -864(r30)             # 8-byte Folded Spill
	storeli.w r16, -856(r30)
	slli r24, r3, 14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r10, r8, 14
	lui r3, 64
	add.s r23, r10, r3
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	beq r12, r19, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r12, r3, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r8, zero, 2048
	sub.sl r[19:20], r[1:2], r[25:26]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[1:2], r[1:2], r3
	addli r26, zero, 3
	addli r3, zero, 2
	zext_int2long r[24:25], r8
	addli r8, zero, 1
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[19:20], r[19:20], r[24:25]
	load.d r[24:25], -864(r30)              # 8-byte Folded Reload
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	xwait r26, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[24:25], r[19:20], r[24:25]
	sub.sl r[24:25], r[24:25], r[19:20]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[19:20], 0(r30)
	addli r24, r24, 128
	addli r25, zero, 4
	add.ul r[20:21], r[19:20], r[1:2]
	addli r2, zero, 7
	addli r1, zero, 40
	blt.s r1, r11, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r1, zero, 6
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r27, 10
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
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r1, 3
	dma_cfg r14, zero, r8, 4
	dma_cfg r14, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r2, zero, 5
	addli r17, zero, 32
	addli r26, zero, 3
	addli r25, zero, 4
	addli r20, zero, 64
	xwait r1, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 32
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r14, zero, 13
	shuffle_batch r24, r23, r1, 1
	unlock zero
	xsignal r26, 0
	xsignal r25, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -492(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r1,  -168(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r3, zero, 80
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r8, zero, 41
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r3, r2, r3
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r8, r1, r8
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, r2, 1
	storeli.w r2, -492(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r1, 1
	storeli.w r2, -168(r30)
	addli r2, zero, 7
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r10, r3, 14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r11, r8, 14
	lui r3, 228
	add.s r23, r11, r3
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	beq r12, r2, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 2
	addli r25, zero, 4
	addli r8, zero, 1
	addli r26, zero, 3
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r2, zero, 6
	bneq r12, r2, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r24, zero, 17
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	sll.d r[2:3], r[20:21], r24
	load.d r[20:21], -896(r30)              # 8-byte Folded Reload
	add.ul r[20:21], r[20:21], r[2:3]
	addli r2, zero, 7
	addli r3, zero, 40
	xwait r2, 0
	blt.s r3, r1, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 5
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r1, zero, 6
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 9
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r27, 10
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
	addli r1, zero, 18
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r1, 3
	addli r1, zero, 512
	dma_cfg r14, zero, r25, 4
	dma_cfg r1, zero, r17, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r1, 228
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r25
	addli r10, zero, 32
	addli r3, zero, 5
	addli r17, zero, 32
	dma_cfg r8, r8, zero, 0
	ori r1, r1, 64
	dma_cfg zero, r21, zero, 2
	add.s r1, r11, r1
	addli r11, zero, 64
	dma_cfg r1, r20, r11, 3
	addli r21, zero, 512
	addli r1, zero, 4096
	addli r20, zero, 64
	dma_cfg r14, r11, r25, 4
	dma_cfg r21, r1, r10, 5
	addli r1, zero, 9
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r25
	lock zero, r3
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 6
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r27, 10
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
	addli r1, zero, 18
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 19
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 20
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 21
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 22
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 23
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 24
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
	dma_cfg r8, r8, zero, 0
	dma_cfg r8, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r11, 3
	dma_cfg r14, zero, r25, 4
	dma_cfg r21, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	unlock r3
	xsignal r19, 0
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 6
	addli r17, zero, 32
	addli r25, zero, 4
	addli r26, zero, 3
	addli r20, zero, 64
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 32
	ds_cfg r14, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r14, zero, 13
	shuffle_coa r10, r23, r1, 2
	unlock zero
	xsignal r2, 0
	xsignal r27, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	bneq r12, r25, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r11, zero, 32
	addli r20, zero, 64
	addli r1, zero, 1
	addli r2, zero, 1
	addli r3, zero, 0
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xwait r25, 0
	xwait r27, 0
	beq r15, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r8, r3, 13
	slli r3, r3, 8
	lock zero, r1
	mm_cfg r20, r11, r14, 0
	or r8, r8, r10
	or r3, r3, r7
	mm_cfg r19, r25, r1, 2
	mm_acc r3, r24, r8, 8
	andi r8, r2, 1
	addli r3, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r8, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r8, r3, 13
	slli r3, r3, 8
	lock zero, r1
	mm_cfg r20, r11, r14, 0
	or r8, r8, r10
	or r3, r3, r7
	mm_cfg r19, r25, r1, 2
	mm r3, r24, r8, 8
	andi r8, r2, 1
	addli r3, zero, 1
	addli r2, zero, 0
	unlock r1
	bneq r8, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread46
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 5
	addli r17, zero, 32
	.loc	1 77 7 is_stmt 1                # parallel-rne.mlir:77:7
	addli r6, r6, 1
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	bneq r6, r20, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	addli r6, r6, 1
	addli r20, zero, 64
	bneq r6, r20, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7                         # parallel-rne.mlir:124:7
	bneq r12, r25, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -880(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	j .LBB0_39
.LBB0_36:                               # %.thread45
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	bneq r12, r26, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r1, -880(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -880(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r1, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	addli r2, zero, 7
	zext_int2long r[15:16], r14
	addli r3, zero, 32
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r1
	addli r1, zero, 127
	sync_core
	zext_int2long r[25:26], r1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r12, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r1, zero, 2
	beq r12, r1, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r12, r1, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_44
.LBB0_43:                               # %middle.block102
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[10:11], -872(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 170 9 is_stmt 1               # parallel-rne.mlir:170:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	bneq r9, r7, .LBB0_51
# %bb.45:                               # %scalar.ph96.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_48
.LBB0_46:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_48 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_47:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 186 13 is_stmt 1              # parallel-rne.mlir:186:13
	add.s r1, r9, r1
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r2, 0(r1)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	beq r3, zero, .LBB0_43
.LBB0_48:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r6, r3, r13
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r2, r18, r6
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r2, zero, .LBB0_50
# %bb.49:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r6, r5, r6
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r6, zero, .LBB0_47
	j .LBB0_46
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r6, r5, r6
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r6, zero, .LBB0_47
	j .LBB0_46
.LBB0_51:                               # %vector.body98.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	add.s r3, r9, r6
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r14, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	bneq r2, zero, .LBB0_43
.LBB0_53:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r21, 12(r1)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r20, r21, r13
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r2, r18, r20
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r2, zero, .LBB0_55
# %bb.54:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r2, 1024
	or r10, r21, r2
.LBB0_56:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r8, 8(r1)
	and r12, r8, r13
	setlt.u r2, r18, r12
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r2, zero, .LBB0_58
# %bb.57:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r2, 1024
	or r11, r8, r2
.LBB0_59:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r19, 4(r1)
	and r2, r19, r13
	setlt.u r3, r18, r2
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r3, zero, .LBB0_61
# %bb.60:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_62:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r1, zero, .LBB0_64
# %bb.63:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r17, r5, r17
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r17, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r3, r1
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r17, r5, r17
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r17, zero, .LBB0_66
.LBB0_65:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_66:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r2, r5, r2
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r2, zero, .LBB0_69
# %bb.67:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r4
	and r14, r2, r22
	setlt.u r2, r5, r12
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r2, zero, .LBB0_70
.LBB0_68:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r2, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r2, zero, .LBB0_68
.LBB0_70:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r11, r2, r22
	setlt.u r2, r5, r20
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r2, zero, .LBB0_52
.LBB0_71:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r4
	and r10, r2, r22
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[10:11], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block120
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[10:11], -872(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 142 9 is_stmt 1               # parallel-rne.mlir:142:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_78 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	bneq r9, r7, .LBB0_81
# %bb.75:                               # %scalar.ph114.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_78
.LBB0_76:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_78 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_77:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 158 13 is_stmt 1              # parallel-rne.mlir:158:13
	add.s r1, r9, r1
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r2, 0(r1)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	beq r3, zero, .LBB0_73
.LBB0_78:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r6, r3, r13
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r2, r18, r6
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r2, zero, .LBB0_80
# %bb.79:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r6, r5, r6
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r6, zero, .LBB0_77
	j .LBB0_76
.LBB0_80:                               #   in Loop: Header=BB0_78 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r6, r5, r6
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r6, zero, .LBB0_77
	j .LBB0_76
.LBB0_81:                               # %vector.body116.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r3, r9, r6
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r21, 12(r3)
	stores.w r8, 8(r3)
	stores.w r19, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	bneq r2, zero, .LBB0_73
.LBB0_83:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r10, 12(r1)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r20, r10, r13
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r2, r18, r20
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r2, zero, .LBB0_85
# %bb.84:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r21, r10, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r2, 1024
	or r21, r10, r2
.LBB0_86:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r11, 8(r1)
	and r12, r11, r13
	setlt.u r2, r18, r12
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r2, zero, .LBB0_88
# %bb.87:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r11, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r2, 1024
	or r8, r11, r2
.LBB0_89:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r14, 4(r1)
	and r2, r14, r13
	setlt.u r3, r18, r2
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r3, zero, .LBB0_91
# %bb.90:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	lui r3, 1024
	or r19, r14, r3
.LBB0_92:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r1, zero, .LBB0_94
# %bb.93:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r17, r5, r17
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r17, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r3, r1
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r17, r5, r17
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r17, zero, .LBB0_96
.LBB0_95:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_96:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r2, r5, r2
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r2, zero, .LBB0_99
# %bb.97:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r14, 16
	andi r2, r2, 1
	add.s r2, r14, r2
	add.s r2, r2, r4
	and r19, r2, r22
	setlt.u r2, r5, r12
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r2, zero, .LBB0_100
.LBB0_98:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r2, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r2, zero, .LBB0_98
.LBB0_100:                              # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r4
	and r8, r2, r22
	setlt.u r2, r5, r20
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r2, zero, .LBB0_82
.LBB0_101:                              # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r10, 16
	andi r2, r2, 1
	add.s r2, r10, r2
	add.s r2, r2, r4
	and r21, r2, r22
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r12
	addli r14, zero, 128
	addli r27, zero, 8
	addli r3, zero, 32
	addli r20, zero, 64
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r1, zero, 2
	bneq r12, r1, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 191 7                         # parallel-rne.mlir:191:7
	xfence
	zext_int2long r[10:11], r3
	mfence { lm, sm, gm }
	j .LBB0_105
.LBB0_104:                              # %middle.block111
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[10:11], -872(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 198 9 is_stmt 1               # parallel-rne.mlir:198:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	bneq r9, r7, .LBB0_112
# %bb.106:                              # %scalar.ph105.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_109
.LBB0_107:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_109 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_108:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 214 13 is_stmt 1              # parallel-rne.mlir:214:13
	add.s r1, r9, r1
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r2, 0(r1)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	beq r3, zero, .LBB0_104
.LBB0_109:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r6, r3, r13
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r2, r18, r6
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r2, zero, .LBB0_111
# %bb.110:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r6, r5, r6
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r6, zero, .LBB0_108
	j .LBB0_107
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r6, r5, r6
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r6, zero, .LBB0_108
	j .LBB0_107
.LBB0_112:                              # %vector.body107.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r3, r9, r6
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r14, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	bneq r2, zero, .LBB0_104
.LBB0_114:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r21, 12(r1)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r20, r21, r13
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r2, r18, r20
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r2, 1024
	or r10, r21, r2
.LBB0_117:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r8, 8(r1)
	and r12, r8, r13
	setlt.u r2, r18, r12
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r2, 1024
	or r11, r8, r2
.LBB0_120:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r19, 4(r1)
	and r2, r19, r13
	setlt.u r3, r18, r2
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r3, zero, .LBB0_122
# %bb.121:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_123:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r1, zero, .LBB0_125
# %bb.124:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r17, r5, r17
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r17, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r3, r1
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r17, r5, r17
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r17, zero, .LBB0_127
.LBB0_126:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_127:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r2, r5, r2
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_130
# %bb.128:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r4
	and r14, r2, r22
	setlt.u r2, r5, r12
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r2, zero, .LBB0_131
.LBB0_129:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_129
.LBB0_131:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r11, r2, r22
	setlt.u r2, r5, r20
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_113
.LBB0_132:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r4
	and r10, r2, r22
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r12
	addli r14, zero, 128
	addli r27, zero, 8
	addli r20, zero, 64
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	loadli.w r1,  -880(r30)                 # 4-byte Folded Reload
	beq r1, zero, .LBB0_165
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 48
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_137
.LBB0_136:                              # %middle.block93
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 63
	load.d r[10:11], -872(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 226 9 is_stmt 1               # parallel-rne.mlir:226:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_196
.LBB0_137:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	bneq r9, r7, .LBB0_144
# %bb.138:                              # %scalar.ph87.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_141
.LBB0_139:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_141 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_140:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 242 13 is_stmt 1              # parallel-rne.mlir:242:13
	add.s r1, r9, r1
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r2, 0(r1)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	beq r3, zero, .LBB0_136
.LBB0_141:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r6, r3, r13
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r2, r18, r6
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r2, zero, .LBB0_143
# %bb.142:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r6, r5, r6
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r6, zero, .LBB0_140
	j .LBB0_139
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r6, r5, r6
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r6, zero, .LBB0_140
	j .LBB0_139
.LBB0_144:                              # %vector.body89.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_146
.LBB0_145:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	add.s r3, r9, r6
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r14, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	bneq r2, zero, .LBB0_136
.LBB0_146:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r21, 12(r1)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r20, r21, r13
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r2, r18, r20
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r2, zero, .LBB0_148
# %bb.147:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_146 Depth=3
	lui r2, 1024
	or r10, r21, r2
.LBB0_149:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r8, 8(r1)
	and r12, r8, r13
	setlt.u r2, r18, r12
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r2, zero, .LBB0_151
# %bb.150:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_146 Depth=3
	lui r2, 1024
	or r11, r8, r2
.LBB0_152:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r19, 4(r1)
	and r2, r19, r13
	setlt.u r3, r18, r2
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r3, zero, .LBB0_154
# %bb.153:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_146 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_155:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r1, zero, .LBB0_164
# %bb.156:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r17, r5, r17
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r17, zero, .LBB0_158
.LBB0_157:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_158:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	setlt.u r2, r5, r2
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r2, zero, .LBB0_161
# %bb.159:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r4
	and r14, r2, r22
	setlt.u r2, r5, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r2, zero, .LBB0_162
.LBB0_160:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r2, zero, .LBB0_145
	j .LBB0_163
.LBB0_161:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r2, zero, .LBB0_160
.LBB0_162:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r11, r2, r22
	setlt.u r2, r5, r20
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r2, zero, .LBB0_145
.LBB0_163:                              # %vector.body89
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r4
	and r10, r2, r22
	j .LBB0_145
.LBB0_164:                              #   in Loop: Header=BB0_146 Depth=3
	lui r1, 1024
	or r1, r3, r1
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r17, r5, r17
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r17, zero, .LBB0_157
	j .LBB0_158
.LBB0_165:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	addli r1, zero, 4
	bneq r12, r1, .LBB0_197
.LBB0_166:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[10:11], r20
	mfence { lm, sm, gm }
	j .LBB0_168
.LBB0_167:                              # %middle.block84
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 79
	load.d r[10:11], -872(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 254 9 is_stmt 1               # parallel-rne.mlir:254:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_230
.LBB0_168:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	bneq r9, r7, .LBB0_175
# %bb.169:                              # %scalar.ph78.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_172
.LBB0_170:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_172 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_171:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 270 13 is_stmt 1              # parallel-rne.mlir:270:13
	add.s r1, r9, r1
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r2, 0(r1)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	beq r3, zero, .LBB0_167
.LBB0_172:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r6, r3, r13
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r2, r18, r6
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r2, zero, .LBB0_174
# %bb.173:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r6, r5, r6
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r6, zero, .LBB0_171
	j .LBB0_170
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r6, r5, r6
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r6, zero, .LBB0_171
	j .LBB0_170
.LBB0_175:                              # %vector.body80.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	add.s r3, r9, r6
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r14, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	bneq r2, zero, .LBB0_167
.LBB0_177:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r21, 12(r1)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r20, r21, r13
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r2, r18, r20
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r10, r21, r2
.LBB0_180:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r8, 8(r1)
	and r12, r8, r13
	setlt.u r2, r18, r12
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r2, zero, .LBB0_182
# %bb.181:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r11, r8, r2
.LBB0_183:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r19, 4(r1)
	and r2, r19, r13
	setlt.u r3, r18, r2
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r3, zero, .LBB0_185
# %bb.184:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_186:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r1, zero, .LBB0_195
# %bb.187:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r17, r5, r17
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r17, zero, .LBB0_189
.LBB0_188:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_189:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r2, r5, r2
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_192
# %bb.190:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r4
	and r14, r2, r22
	setlt.u r2, r5, r12
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r2, zero, .LBB0_193
.LBB0_191:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_176
	j .LBB0_194
.LBB0_192:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_191
.LBB0_193:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r11, r2, r22
	setlt.u r2, r5, r20
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_176
.LBB0_194:                              # %vector.body80
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r4
	and r10, r2, r22
	j .LBB0_176
.LBB0_195:                              #   in Loop: Header=BB0_177 Depth=3
	lui r1, 1024
	or r1, r3, r1
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r17, r5, r17
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r17, zero, .LBB0_188
	j .LBB0_189
.LBB0_196:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r14, zero, 128
	addli r27, zero, 8
	addli r20, zero, 64
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	mfence { sm }
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	addli r1, zero, 4
	beq r12, r1, .LBB0_166
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	beq r12, r2, .LBB0_231
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r12, r1, .LBB0_261
# %bb.199:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r12, r1, .LBB0_292
# %bb.200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 80
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_202
.LBB0_201:                              # %middle.block
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 95
	load.d r[10:11], -872(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 282 9 is_stmt 1               # parallel-rne.mlir:282:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_291
.LBB0_202:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	bneq r9, r7, .LBB0_209
# %bb.203:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_206
.LBB0_204:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_205:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 298 13 is_stmt 1              # parallel-rne.mlir:298:13
	add.s r1, r9, r1
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r2, 0(r1)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	beq r3, zero, .LBB0_201
.LBB0_206:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r6, r3, r13
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r2, r18, r6
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r2, zero, .LBB0_208
# %bb.207:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r6, r5, r6
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r6, zero, .LBB0_205
	j .LBB0_204
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r6, r5, r6
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r6, zero, .LBB0_205
	j .LBB0_204
.LBB0_209:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	add.s r3, r9, r6
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r14, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	bneq r2, zero, .LBB0_201
.LBB0_211:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r21, 12(r1)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r20, r21, r13
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r2, r18, r20
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r2, zero, .LBB0_213
# %bb.212:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r2, 1024
	or r10, r21, r2
.LBB0_214:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r8, 8(r1)
	and r12, r8, r13
	setlt.u r2, r18, r12
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r2, zero, .LBB0_216
# %bb.215:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r2, 1024
	or r11, r8, r2
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r19, 4(r1)
	and r2, r19, r13
	setlt.u r3, r18, r2
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r3, zero, .LBB0_219
# %bb.218:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r1, zero, .LBB0_229
# %bb.221:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r17, r5, r17
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r17, zero, .LBB0_223
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r2, r5, r2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_226
# %bb.224:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r4
	and r14, r2, r22
	setlt.u r2, r5, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r2, zero, .LBB0_227
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_210
	j .LBB0_228
.LBB0_226:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_225
.LBB0_227:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r11, r2, r22
	setlt.u r2, r5, r20
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_210
.LBB0_228:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r4
	and r10, r2, r22
	j .LBB0_210
.LBB0_229:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r1, r3, r1
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r17, r5, r17
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r17, zero, .LBB0_222
	j .LBB0_223
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r12
	addli r14, zero, 128
	addli r27, zero, 8
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	mfence { sm }
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	bneq r12, r2, .LBB0_198
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 112
	.loc	1 331 7 is_stmt 1               # parallel-rne.mlir:331:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_233
.LBB0_232:                              # %middle.block75
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -872(r30)                # 8-byte Folded Reload
	.loc	1 338 9 is_stmt 1               # parallel-rne.mlir:338:9
	setlt.ul r1, r[2:3], r[25:26]
	addli.d r[2:3], r[2:3], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	bneq r9, r7, .LBB0_240
# %bb.234:                              # %scalar.ph69.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_237
.LBB0_235:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_237 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_236:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 354 13 is_stmt 1              # parallel-rne.mlir:354:13
	add.s r1, r9, r1
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r2, 0(r1)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	beq r3, zero, .LBB0_232
.LBB0_237:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r6, r3, r13
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r2, r18, r6
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r2, zero, .LBB0_239
# %bb.238:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r6, r5, r6
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r6, zero, .LBB0_236
	j .LBB0_235
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r6, r5, r6
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r6, zero, .LBB0_236
	j .LBB0_235
.LBB0_240:                              # %vector.body71.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r3, r9, r6
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r14, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	bneq r2, zero, .LBB0_232
.LBB0_242:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r21, 12(r1)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r20, r21, r13
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r2, r18, r20
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r2, zero, .LBB0_244
# %bb.243:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r2, 1024
	or r10, r21, r2
.LBB0_245:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r8, 8(r1)
	and r12, r8, r13
	setlt.u r2, r18, r12
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r2, zero, .LBB0_247
# %bb.246:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r2, 1024
	or r11, r8, r2
.LBB0_248:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r19, 4(r1)
	and r2, r19, r13
	setlt.u r3, r18, r2
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r3, zero, .LBB0_250
# %bb.249:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_251:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r1, zero, .LBB0_253
# %bb.252:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r17, r5, r17
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r17, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r3, r1
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r17, r5, r17
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r17, zero, .LBB0_255
.LBB0_254:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_255:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r2, r5, r2
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r2, zero, .LBB0_258
# %bb.256:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r4
	and r14, r2, r22
	setlt.u r2, r5, r12
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r2, zero, .LBB0_259
.LBB0_257:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r2, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r2, zero, .LBB0_257
.LBB0_259:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r11, r2, r22
	setlt.u r2, r5, r20
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r2, zero, .LBB0_241
.LBB0_260:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r4
	and r10, r2, r22
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 96
	.loc	1 303 7 is_stmt 1               # parallel-rne.mlir:303:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[10:11], r1
	j .LBB0_263
.LBB0_262:                              # %middle.block66
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 111
	load.d r[10:11], -872(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 310 9 is_stmt 1               # parallel-rne.mlir:310:9
	setlt.ul r1, r[10:11], r[1:2]
	addli.d r[2:3], r[10:11], 1
	addli.d r[10:11], r[2:3], 0
	addli r2, zero, 7
	beq r1, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[23:24], r[10:11], r2
	store.d r[10:11], -872(r30)             # 8-byte Folded Spill
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	bneq r9, r7, .LBB0_270
# %bb.264:                              # %scalar.ph60.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_267
.LBB0_265:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_267 Depth=3
	srli r2, r3, 16
	andi r2, r2, 1
	add.s r2, r3, r2
	add.s r2, r2, r4
	and r2, r2, r22
.LBB0_266:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	setlt.ul r3, r[10:11], r[25:26]
	.loc	1 326 13 is_stmt 1              # parallel-rne.mlir:326:13
	add.s r1, r9, r1
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r2, 0(r1)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	beq r3, zero, .LBB0_262
.LBB0_267:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[1:2], r[10:11], r[23:24]
	slli r1, r1, 2
	add.s r2, r7, r1
	loads.w r3, 0(r2)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r6, r3, r13
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r2, r18, r6
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r2, zero, .LBB0_269
# %bb.268:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r3, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r6, r5, r6
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r6, zero, .LBB0_266
	j .LBB0_265
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r3, r2
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r6, r5, r6
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r6, zero, .LBB0_266
	j .LBB0_265
.LBB0_270:                              # %vector.body62.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[27:28], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	addli.d r[27:28], r[27:28], 4
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	add.s r3, r9, r6
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	seteq.d r2, r[27:28], r[15:16]
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r10, 12(r3)
	stores.w r11, 8(r3)
	stores.w r14, 4(r3)
	stores.w r1, 0(r3)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	bneq r2, zero, .LBB0_262
.LBB0_272:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[1:2], r[27:28], r[23:24]
	slli r6, r1, 2
	add.s r1, r7, r6
	loads.w r21, 12(r1)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r20, r21, r13
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r2, r18, r20
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r2, zero, .LBB0_274
# %bb.273:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r21, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r2, 1024
	or r10, r21, r2
.LBB0_275:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r8, 8(r1)
	and r12, r8, r13
	setlt.u r2, r18, r12
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r2, zero, .LBB0_277
# %bb.276:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r2, 1024
	or r11, r8, r2
.LBB0_278:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r19, 4(r1)
	and r2, r19, r13
	setlt.u r3, r18, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r3, zero, .LBB0_280
# %bb.279:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_281:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r3, 0(r1)
	and r17, r3, r13
	setlt.u r1, r18, r17
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r1, zero, .LBB0_283
# %bb.282:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r1, r3, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r17, r5, r17
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r17, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r1, 1024
	or r1, r3, r1
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r17, r5, r17
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r17, zero, .LBB0_285
.LBB0_284:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r3, 16
	andi r1, r1, 1
	add.s r1, r3, r1
	add.s r1, r1, r4
	and r1, r1, r22
.LBB0_285:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r2, r5, r2
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_288
# %bb.286:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r4
	and r14, r2, r22
	setlt.u r2, r5, r12
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r2, zero, .LBB0_289
.LBB0_287:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r20
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r12
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_287
.LBB0_289:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r8, 16
	andi r2, r2, 1
	add.s r2, r8, r2
	add.s r2, r2, r4
	and r11, r2, r22
	setlt.u r2, r5, r20
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_271
.LBB0_290:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r21, 16
	andi r2, r2, 1
	add.s r2, r21, r2
	add.s r2, r2, r4
	and r10, r2, r22
	j .LBB0_271
.LBB0_291:                              # %.sink.split53
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r12
	addli r14, zero, 128
	addli r27, zero, 8
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 359 7 is_stmt 1               # parallel-rne.mlir:359:7
	addli r1, zero, 255
	addli r8, zero, 7
	csr_set csr5, r1
	sync_core
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	loadli.w r1,  -880(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r21, zero, 2
	addli r23, zero, 4
	addli r24, zero, 1
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	bneq r12, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	loadli.w r1,  -936(r30)                 # 4-byte Folded Reload
	load.d r[19:20], -864(r30)              # 8-byte Folded Reload
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	loadli.w r3,  -932(r30)                 # 4-byte Folded Reload
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[25:26], 16(r30)
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	zext_int2long r[1:2], r1
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	sext_int2long r[10:11], r3
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	addli r3, zero, 19
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	min.ul r[6:7], r[1:2], r[19:20]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[19:20], r[10:11], r[19:20]
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	addli.d r[6:7], r[6:7], 128
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	max.ul r[6:7], r[6:7], r[1:2]
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	addli.d r[6:7], r[19:20], 128
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[19:20], -928(r30)              # 8-byte Folded Reload
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.sl r[6:7], r[6:7], r[10:11]
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[1:2], r[1:2], r[15:16]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	sll.d r[19:20], r[19:20], r3
	addli r3, zero, 12
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	sub.sl r[6:7], r[6:7], r[10:11]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[10:11], -920(r30)              # 8-byte Folded Reload
	add.ul r[19:20], r[25:26], r[19:20]
	xwait r3, 0
	ori r3, r9, 64
	addli r9, zero, 64
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[6:7], r[6:7], r[15:16]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	add.ul r[10:11], r[19:20], r[10:11]
	addli r19, zero, 5
	lock zero, r19
	dma_cfg r24, r24, zero, 0
	dma_cfg zero, r24, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r3, r9, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 512
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r9, r14, r3, 4
	addli r3, zero, 4096
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r24, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r19
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 379 5                         # parallel-rne.mlir:379:5
	xsignal zero, 0
	bneq r12, zero, .LBB0_297
# %bb.296:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 379 5                         # parallel-rne.mlir:379:5
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
.LBB0_297:
	.loc	1 380 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:380:5
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-o20s2tnm" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
