	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-x41d5482" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1040
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r2
	addli r30, sp, 976
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 28 5                          # parallel-rne.mlir:28:5
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
	xsignal r1, 0
	xsignal r2, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 30 10 is_stmt 1               # parallel-rne.mlir:30:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	lui r5, 1048575
	.loc	1 29 10                         # parallel-rne.mlir:29:10
	load_param_i r6, 0
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	storeli.w zero, -188(r30)
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	storeli.w zero, -512(r30)
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -700(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -896(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	mul.s r1, r2, r1
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	mul.s r3, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	addli r2, r2, -1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 41 11                         # parallel-rne.mlir:41:11
	storeli.w r4, -184(r30)
	storeli.w r4, -180(r30)
	storeli.w r4, -176(r30)
	storeli.w r4, -172(r30)
	storeli.w r4, -168(r30)
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
	.loc	1 42 11                         # parallel-rne.mlir:42:11
	storeli.w r4, -508(r30)
	storeli.w r4, -504(r30)
	storeli.w r4, -500(r30)
	storeli.w r4, -496(r30)
	storeli.w r4, -492(r30)
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
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r4, -696(r30)
	storeli.w r4, -692(r30)
	storeli.w r4, -688(r30)
	storeli.w r4, -684(r30)
	storeli.w r4, -680(r30)
	storeli.w r4, -676(r30)
	storeli.w r4, -672(r30)
	storeli.w r4, -668(r30)
	storeli.w r4, -664(r30)
	storeli.w r4, -660(r30)
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r4, -892(r30)
	storeli.w r4, -888(r30)
	storeli.w r4, -884(r30)
	storeli.w r4, -880(r30)
	storeli.w r4, -876(r30)
	storeli.w r4, -872(r30)
	storeli.w r4, -868(r30)
	storeli.w r4, -864(r30)
	storeli.w r4, -860(r30)
	storeli.w r4, -856(r30)
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
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r6
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	fmac.s r2, r2, r6
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	min.s r3, r2, r3
	.loc	1 47 5                          # parallel-rne.mlir:47:5
	ble.s r3, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	sext_int2long r[8:9], r1
	lui r1, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	addli r27, zero, 3
	addli r10, zero, 1
	addli r20, zero, 0
	ori r17, r1, 4095
	lui r1, 127
	.loc	1 39 11                         # parallel-rne.mlir:39:11
	store.d r[2:3], -976(r30)               # 8-byte Folded Spill
	lui r2, 522239
	lui r16, 1048448
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -916(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r3, r1, 4095
	lui r1, 522240
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 358 7 is_stmt 1               # parallel-rne.mlir:358:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	addli r2, zero, 12
	xsignal r2, 0
	loadli.w r20,  -940(r30)                # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[8:9], -936(r30)                # 8-byte Folded Reload
	.loc	1 47 5 is_stmt 1                # parallel-rne.mlir:47:5
	load.d r[6:7], -976(r30)                # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r2, r[8:9], r[6:7]
	beq r2, zero, .LBB0_294
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_73 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
                                        #     Child Loop BB0_170 Depth 2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
                                        #     Child Loop BB0_201 Depth 2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
                                        #     Child Loop BB0_140 Depth 2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
                                        #     Child Loop BB0_262 Depth 2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
                                        #     Child Loop BB0_232 Depth 2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 74 7                          # parallel-rne.mlir:74:7
	addli r2, zero, 4
	bneq r4, r2, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[8:9], -936(r30)               # 8-byte Folded Spill
	mod.s r6, r20, r27
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	loadli.w r15,  -896(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	loadli.w r22,  -700(r30)
	addli r20, r20, 1
	addli r14, zero, 0
	storeli.w r20, -940(r30)                # 4-byte Folded Spill
	div.s r2, r8, r2
	addli r9, zero, 8
	div.s r2, r2, r4
	addli r4, zero, 128
	div.s r4, r2, r4
	slli r7, r4, 3
	slli r4, r4, 7
	sub.s r8, r9, r7
	sub.s r4, r2, r4
	min.s r8, r8, r9
	slli r9, r6, 14
	lui r6, 12
	mod.s r2, r2, r8
	div.s r4, r4, r8
	add.s r21, r9, r6
	add.s r2, r7, r2
	slli r6, r4, 6
	storeli.w r6, -968(r30)                 # 4-byte Folded Spill
	zext_int2long r[6:7], r4
	slli r4, r2, 6
	zext_int2long r[11:12], r2
	addli r2, zero, 6
	sll.d r[6:7], r[6:7], r2
	addli r2, zero, 16
	store.d r[11:12], -960(r30)             # 8-byte Folded Spill
	storeli.w r4, -964(r30)                 # 4-byte Folded Spill
	sll.d r[23:24], r[11:12], r2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	sll.d r[10:11], r[6:7], r10
	and.d r[6:7], r[23:24], r[16:17]
	store.d r[10:11], -952(r30)             # 8-byte Folded Spill
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	load.d r[6:7], 8(r30)
	add.ul r[6:7], r[6:7], r[10:11]
	addli r11, zero, 0
	store.d r[6:7], -928(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 24
	.loc	1 98 9 is_stmt 1                # parallel-rne.mlir:98:9
	lock zero, r8
	addli r18, zero, 64
	addli r12, zero, 2
	addli r13, zero, 5
	dma_cfg r10, r10, zero, 0
	ori r4, r4, 64
	dma_cfg zero, r26, zero, 2
	add.s r2, r2, r4
	addli r4, zero, 2048
	dma_cfg r2, r25, r18, 3
	addli r2, zero, 128
	addli r25, zero, 256
	dma_cfg r2, r18, r12, 4
	dma_cfg r25, r4, r7, 5
	addli r4, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r2, zero, r12, 4
	dma_cfg r25, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r12, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r2,  -512(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r4,  -188(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r2, r2, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r4, r4, 1
	storeli.w r4, -188(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r2, -512(r30)
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r4
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r11, r11, 1
	addli r2, zero, 16
	beq r11, r2, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 119 15                        # parallel-rne.mlir:119:15
	addli r14, r14, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 76 15                         # parallel-rne.mlir:76:15
	zext_int2long r[7:8], r11
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	addli r2, zero, 6
	load.d r[27:28], -912(r30)              # 8-byte Folded Reload
	sll.d r[12:13], r[7:8], r2
	loadli.w r2,  -916(r30)                 # 4-byte Folded Reload
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.ul r[25:26], r[12:13], r[23:24]
	zext_int2long r[12:13], r2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	setlt.ul r2, r[12:13], r[25:26]
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	add.s r2, r15, r14
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	addli r4, zero, 48
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r13, r22, r14
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	addli r6, zero, 46
	addli r10, zero, 448
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r12, zero, 2
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	mod.s r4, r2, r4
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r6, r13, r6
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	addli r2, r2, 1
	zext_int2long r[18:19], r10
	storeli.w r2, -896(r30)
	store.d r[18:19], -904(r30)             # 8-byte Folded Spill
	slli r10, r4, 14
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r2, r6, 14
	lui r6, 24
	addli r4, r13, 1
	storeli.w r4, -700(r30)
	add.s r6, r2, r6
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r4
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	beq r4, r12, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 1
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	bneq r4, r12, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r4, zero, 1024
	sub.sl r[7:8], r[25:26], r[27:28]
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	sll.d r[25:26], r[25:26], r12
	addli r10, zero, 1
	zext_int2long r[27:28], r4
	addli r4, zero, 45
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[7:8], r[7:8], r[27:28]
	min.sl r[27:28], r[7:8], r[18:19]
	sub.sl r[7:8], r[27:28], r[7:8]
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	load.d r[27:28], 0(r30)
	addli r7, r7, 64
	addli r8, zero, 4
	add.ul r[25:26], r[27:28], r[25:26]
	addli r27, zero, 3
	xwait r27, 0
	blt.s r4, r13, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r13, zero, 5
	addli r12, zero, 2
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r4, zero, 6
	addli r18, zero, 64
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 7
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r4, zero, r12, 4
	addli r4, zero, 256
	dma_cfg r4, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 2
	.loc	1 99 9 is_stmt 1                # parallel-rne.mlir:99:9
	addli r4, zero, 5
	addli r27, zero, 3
	addli r8, zero, 4
	xwait r2, 0
	xwait r4, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r10, r6, r2, 1
	addli r10, zero, 1
	unlock zero
	xsignal r27, 0
	xsignal r8, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r2,  -512(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r18,  -188(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r4, zero, 80
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r6, zero, 46
	addli r12, zero, 7
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r4, r2, r4
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r6, r18, r6
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r2, r2, 1
	storeli.w r2, -512(r30)
	slli r13, r4, 14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r2, r6, 14
	lui r6, 208
	addli r4, r18, 1
	storeli.w r4, -188(r30)
	add.s r6, r2, r6
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r4
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	beq r4, r12, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r12, zero, 6
	addli r27, zero, 3
	bneq r4, r12, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r26, zero, 17
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	load.d r[12:13], -928(r30)              # 8-byte Folded Reload
	addli r25, zero, 7
	addli r10, zero, 1
	addli r4, zero, 45
	sll.d r[7:8], r[7:8], r26
	xwait r25, 0
	add.ul r[7:8], r[12:13], r[7:8]
	blt.s r4, r18, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r13, zero, 5
	addli r12, zero, 2
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r4, zero, 4
	addli r18, zero, 64
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r25, 10
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
	dma_cfg zero, zero, r26, 10
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
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r4, zero, r12, 4
	addli r4, zero, 256
	dma_cfg r4, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 208
	addli r18, zero, 64
	addli r12, zero, 2
	addli r28, zero, 256
	addli r13, zero, 5
	ori r4, r4, 64
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	add.s r2, r2, r4
	addli r4, zero, 4
	lock zero, r4
	addli r4, zero, 2048
	dma_cfg r10, r10, zero, 0
	dma_cfg zero, r8, zero, 2
	dma_cfg r2, r7, r18, 3
	addli r2, zero, 128
	addli r8, zero, 4
	addli r7, zero, 6
	dma_cfg r2, r18, r12, 4
	dma_cfg r28, r4, r18, 5
	addli r4, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r13
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r25, 10
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
	dma_cfg zero, zero, r26, 10
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
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r4
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	dma_cfg r10, r10, zero, 0
	dma_cfg r10, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r6, zero, r18, 3
	dma_cfg r2, zero, r12, 4
	dma_cfg r28, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	unlock r13
	xsignal r7, 0
	.loc	1 116 9                         # parallel-rne.mlir:116:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 6
	addli r27, zero, 3
	addli r8, zero, 4
	addli r10, zero, 1
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r13, r6, r2, 2
	addli r2, zero, 8
	unlock zero
	xsignal r12, 0
	xsignal r2, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r8, zero, 4
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	bneq r4, r8, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 8
	xwait r8, 0
	addli r6, zero, 64
	xwait r2, 0
	addli r2, zero, 1
	lock zero, r2
	mm_cfg r6, r6, r6, 0
	addli r6, zero, 2
	mm_cfg r8, r6, r2, 2
	beq r14, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r21, r10, r13, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r11, r11, 1
	addli r2, zero, 16
	addli r10, zero, 1
	bneq r11, r2, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	mm r21, r10, r13, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r2, zero, 5
	.loc	1 75 7 is_stmt 1                # parallel-rne.mlir:75:7
	addli r11, r11, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	unlock r10
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r2, zero, 16
	bneq r11, r2, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	bneq r4, r8, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -928(r30)               # 4-byte Folded Spill
	xsignal r2, 0
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	bneq r4, r27, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	storeli.w r2, -928(r30)                 # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -928(r30)               # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	addli r2, zero, 255
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	xfence
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	mfence { lm, sm, gm }
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	csr_set csr5, r2
	addli r2, zero, 64
	sync_core
	zext_int2long r[22:23], r2
	addli r2, zero, 63
	zext_int2long r[14:15], r2
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	beq r4, zero, .LBB0_71
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r2, zero, 2
	beq r4, r2, .LBB0_102
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r4, r10, .LBB0_133
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_43
.LBB0_42:                               # %middle.block99
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[6:7], r[10:11], 1
	beq r2, zero, .LBB0_132
.LBB0_43:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	bneq r9, r21, .LBB0_50
# %bb.44:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_46
.LBB0_45:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 184 13 is_stmt 1              # parallel-rne.mlir:184:13
	add.s r2, r9, r2
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	stores.w r8, 0(r2)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	beq r4, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	and r4, r12, r3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	setlt.u r8, r1, r4
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r8, zero, .LBB0_48
# %bb.47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r4, r5, r4
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r4, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r4, r5, r4
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r4, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_45
.LBB0_50:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_52
.LBB0_51:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	add.s r4, r9, r11
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	stores.w r24, 12(r4)
	stores.w r8, 8(r4)
	stores.w r19, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	bneq r2, zero, .LBB0_42
.LBB0_52:                               # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r2, 12(r18)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	and r13, r2, r3
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	setlt.u r4, r1, r13
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r4, zero, .LBB0_54
# %bb.53:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r2, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=3
	lui r4, 1024
	or r24, r2, r4
.LBB0_55:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r25, 8(r18)
	and r10, r25, r3
	setlt.u r4, r1, r10
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r4, zero, .LBB0_57
# %bb.56:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_52 Depth=3
	lui r4, 1024
	or r8, r25, r4
.LBB0_58:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r4, zero, .LBB0_60
# %bb.59:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_61:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r18, zero, .LBB0_63
# %bb.62:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r4, r5, r4
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r4, zero, .LBB0_64
	j .LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r4, r5, r4
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r4, zero, .LBB0_65
.LBB0_64:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r4, r5, r20
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r4, zero, .LBB0_68
# %bb.66:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r4, zero, .LBB0_69
.LBB0_67:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r4, zero, .LBB0_51
	j .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r12
	setlt.u r4, r5, r10
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r4, zero, .LBB0_67
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r17
	and r8, r4, r8
	setlt.u r4, r5, r13
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r4, zero, .LBB0_51
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r24, r2, r4
	j .LBB0_51
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_73
.LBB0_72:                               # %middle.block117
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 140 9 is_stmt 1               # parallel-rne.mlir:140:9
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[6:7], r[10:11], 1
	beq r2, zero, .LBB0_101
.LBB0_73:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 141 11 is_stmt 1              # parallel-rne.mlir:141:11
	bneq r9, r21, .LBB0_80
# %bb.74:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_76
.LBB0_75:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 156 13 is_stmt 1              # parallel-rne.mlir:156:13
	add.s r2, r9, r2
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	stores.w r8, 0(r2)
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	beq r4, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	and r4, r12, r3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	setlt.u r8, r1, r4
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r8, zero, .LBB0_78
# %bb.77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r4, r5, r4
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r4, zero, .LBB0_75
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r4, r5, r4
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r4, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_75
.LBB0_80:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 141 11 is_stmt 1              # parallel-rne.mlir:141:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	add.s r8, r9, r11
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	seteq.d r4, r[26:27], r[22:23]
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	stores.w r2, 12(r8)
	stores.w r25, 8(r8)
	stores.w r19, 4(r8)
	stores.w r12, 0(r8)
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	bneq r4, zero, .LBB0_72
.LBB0_82:                               # %vector.body113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r24, 12(r18)
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	and r13, r24, r3
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	setlt.u r2, r1, r13
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r2, zero, .LBB0_84
# %bb.83:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r24, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	lui r2, 1024
	or r2, r24, r2
.LBB0_85:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r8, 8(r18)
	and r10, r8, r3
	setlt.u r4, r1, r10
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r4, zero, .LBB0_87
# %bb.86:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r8, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	lui r4, 1024
	or r25, r8, r4
.LBB0_88:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r4, zero, .LBB0_90
# %bb.89:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_91:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r18, 0(r18)
	and r4, r18, r3
	setlt.u r12, r1, r4
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r12, zero, .LBB0_93
# %bb.92:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r18, 0
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r4, r5, r4
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r4, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r12, 1024
	or r12, r18, r12
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r4, r5, r4
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r4, zero, .LBB0_95
.LBB0_94:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r18, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r18, r4
	add.s r4, r4, r17
	and r12, r4, r12
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r4, r5, r20
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r4, zero, .LBB0_98
# %bb.96:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r4, zero, .LBB0_99
.LBB0_97:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r4, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r18, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r18
	setlt.u r4, r5, r10
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r4, zero, .LBB0_97
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r8, 16
	andi r4, r4, 1
	add.s r4, r8, r4
	lui r8, 1048560
	add.s r4, r4, r17
	and r25, r4, r8
	setlt.u r4, r5, r13
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r4, zero, .LBB0_81
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r24, 16
	lui r4, 1048560
	andi r2, r2, 1
	add.s r2, r24, r2
	add.s r2, r2, r17
	and r2, r2, r4
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r4
	addli r27, zero, 3
	addli r8, zero, 4
	addli r10, zero, 1
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { sm }
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r2, zero, 2
	bneq r4, r2, .LBB0_40
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 189 7 is_stmt 1               # parallel-rne.mlir:189:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block108
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 196 9 is_stmt 1               # parallel-rne.mlir:196:9
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[6:7], r[10:11], 1
	beq r2, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 197 11 is_stmt 1              # parallel-rne.mlir:197:11
	bneq r9, r21, .LBB0_111
# %bb.105:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 212 13 is_stmt 1              # parallel-rne.mlir:212:13
	add.s r2, r9, r2
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	stores.w r8, 0(r2)
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	beq r4, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r4, r12, r3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	setlt.u r8, r1, r4
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r8, zero, .LBB0_109
# %bb.108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r4, r5, r4
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r4, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r4, r5, r4
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r4, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_106
.LBB0_111:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 197 11 is_stmt 1              # parallel-rne.mlir:197:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	add.s r4, r9, r11
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	stores.w r24, 12(r4)
	stores.w r8, 8(r4)
	stores.w r19, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	bneq r2, zero, .LBB0_103
.LBB0_113:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r2, 12(r18)
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r13, r2, r3
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	setlt.u r4, r1, r13
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r4, zero, .LBB0_115
# %bb.114:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r2, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	lui r4, 1024
	or r24, r2, r4
.LBB0_116:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r25, 8(r18)
	and r10, r25, r3
	setlt.u r4, r1, r10
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r4, zero, .LBB0_118
# %bb.117:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	lui r4, 1024
	or r8, r25, r4
.LBB0_119:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r4, zero, .LBB0_121
# %bb.120:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_122:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r18, zero, .LBB0_124
# %bb.123:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r4, r5, r4
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r4, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r4, r5, r4
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r4, zero, .LBB0_126
.LBB0_125:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r4, r5, r20
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r4, zero, .LBB0_129
# %bb.127:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r4, zero, .LBB0_130
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r4, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r12
	setlt.u r4, r5, r10
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r4, zero, .LBB0_128
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r17
	and r8, r4, r8
	setlt.u r4, r5, r13
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r4, zero, .LBB0_112
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r24, r2, r4
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r4
	addli r27, zero, 3
	addli r8, zero, 4
	addli r10, zero, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 217 7 is_stmt 1               # parallel-rne.mlir:217:7
	loadli.w r2,  -928(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	beq r4, r8, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r2, zero, 7
	beq r4, r2, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 6
	beq r4, r2, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	bneq r4, r2, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 280 9 is_stmt 1               # parallel-rne.mlir:280:9
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[6:7], r[10:11], 1
	beq r2, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 281 11 is_stmt 1              # parallel-rne.mlir:281:11
	bneq r9, r21, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 296 13 is_stmt 1              # parallel-rne.mlir:296:13
	add.s r2, r9, r2
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r8, 0(r2)
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	beq r4, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r4, r12, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	setlt.u r8, r1, r4
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r8, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r4, r5, r4
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r4, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r4, r5, r4
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r4, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 281 11 is_stmt 1              # parallel-rne.mlir:281:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	add.s r4, r9, r11
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r24, 12(r4)
	stores.w r8, 8(r4)
	stores.w r19, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	bneq r2, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r2, 12(r18)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r13, r2, r3
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	setlt.u r4, r1, r13
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r4, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r2, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	lui r4, 1024
	or r24, r2, r4
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r25, 8(r18)
	and r10, r25, r3
	setlt.u r4, r1, r10
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r4, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	lui r4, 1024
	or r8, r25, r4
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r4, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r18, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r4, r5, r4
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r4, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r4, r5, r20
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r4, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r4, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r4, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r4, r5, r4
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r4, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r12
	setlt.u r4, r5, r10
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r4, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r17
	and r8, r4, r8
	setlt.u r4, r5, r13
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r4, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r24, r2, r4
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 24
	.loc	1 217 7 is_stmt 1               # parallel-rne.mlir:217:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_170
.LBB0_169:                              # %middle.block90
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 224 9 is_stmt 1               # parallel-rne.mlir:224:9
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[6:7], r[10:11], 1
	beq r2, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 225 11 is_stmt 1              # parallel-rne.mlir:225:11
	bneq r9, r21, .LBB0_177
# %bb.171:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 240 13 is_stmt 1              # parallel-rne.mlir:240:13
	add.s r2, r9, r2
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 240 13                        # parallel-rne.mlir:240:13
	stores.w r8, 0(r2)
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	beq r4, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	and r4, r12, r3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	setlt.u r8, r1, r4
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r8, zero, .LBB0_175
# %bb.174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r4, r5, r4
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r4, r5, r4
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_172
.LBB0_177:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 225 11 is_stmt 1              # parallel-rne.mlir:225:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 240 13                        # parallel-rne.mlir:240:13
	add.s r4, r9, r11
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 240 13                        # parallel-rne.mlir:240:13
	stores.w r24, 12(r4)
	stores.w r8, 8(r4)
	stores.w r19, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	bneq r2, zero, .LBB0_169
.LBB0_179:                              # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r2, 12(r18)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	and r13, r2, r3
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	setlt.u r4, r1, r13
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r4, zero, .LBB0_181
# %bb.180:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r2, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	lui r4, 1024
	or r24, r2, r4
.LBB0_182:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r25, 8(r18)
	and r10, r25, r3
	setlt.u r4, r1, r10
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r4, zero, .LBB0_184
# %bb.183:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	lui r4, 1024
	or r8, r25, r4
.LBB0_185:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r4, zero, .LBB0_187
# %bb.186:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_188:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r18, zero, .LBB0_194
# %bb.189:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r4, r5, r4
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_191
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r4, r5, r20
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r4, zero, .LBB0_195
# %bb.192:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r4, zero, .LBB0_196
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r4, r5, r4
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r4, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r12
	setlt.u r4, r5, r10
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_193
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r17
	and r8, r4, r8
	setlt.u r4, r5, r13
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r4, zero, .LBB0_178
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r24, r2, r4
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r4
	addli r27, zero, 3
	addli r8, zero, 4
	addli r10, zero, 1
	.loc	1 217 7                         # parallel-rne.mlir:217:7
	mfence { sm }
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	bneq r4, r8, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_201
.LBB0_200:                              # %middle.block81
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 252 9 is_stmt 1               # parallel-rne.mlir:252:9
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[6:7], r[10:11], 1
	beq r2, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 253 11 is_stmt 1              # parallel-rne.mlir:253:11
	bneq r9, r21, .LBB0_208
# %bb.202:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 268 13 is_stmt 1              # parallel-rne.mlir:268:13
	add.s r2, r9, r2
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	stores.w r8, 0(r2)
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	beq r4, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	and r4, r12, r3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	setlt.u r8, r1, r4
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r8, zero, .LBB0_206
# %bb.205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r4, r5, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r4, r5, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_203
.LBB0_208:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 253 11 is_stmt 1              # parallel-rne.mlir:253:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	add.s r4, r9, r11
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	stores.w r24, 12(r4)
	stores.w r8, 8(r4)
	stores.w r19, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	bneq r2, zero, .LBB0_200
.LBB0_210:                              # %vector.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r2, 12(r18)
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	and r13, r2, r3
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	setlt.u r4, r1, r13
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r4, zero, .LBB0_212
# %bb.211:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r2, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	lui r4, 1024
	or r24, r2, r4
.LBB0_213:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r25, 8(r18)
	and r10, r25, r3
	setlt.u r4, r1, r10
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r4, zero, .LBB0_215
# %bb.214:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	lui r4, 1024
	or r8, r25, r4
.LBB0_216:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r4, zero, .LBB0_218
# %bb.217:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_219:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r18, zero, .LBB0_225
# %bb.220:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r4, r5, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_222
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r4, r5, r20
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r4, zero, .LBB0_226
# %bb.223:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r4, zero, .LBB0_227
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r4, r5, r4
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r4, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r12
	setlt.u r4, r5, r10
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_224
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r17
	and r8, r4, r8
	setlt.u r4, r5, r13
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r4, zero, .LBB0_209
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r24, r2, r4
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r4
	addli r27, zero, 3
	addli r10, zero, 1
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	mfence { sm }
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r2, zero, 7
	bneq r4, r2, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 329 7 is_stmt 1               # parallel-rne.mlir:329:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_232
.LBB0_231:                              # %middle.block72
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[6:7], -912(r30)                # 8-byte Folded Reload
	.loc	1 336 9 is_stmt 1               # parallel-rne.mlir:336:9
	setlt.ul r2, r[6:7], r[14:15]
	addli.d r[6:7], r[6:7], 1
	beq r2, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	bneq r9, r21, .LBB0_239
# %bb.233:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 352 13 is_stmt 1              # parallel-rne.mlir:352:13
	add.s r2, r9, r2
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	stores.w r8, 0(r2)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	beq r4, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r4, r12, r3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	setlt.u r8, r1, r4
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r8, zero, .LBB0_237
# %bb.236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r4, r5, r4
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r4, r5, r4
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_234
.LBB0_239:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	add.s r4, r9, r11
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	stores.w r24, 12(r4)
	stores.w r8, 8(r4)
	stores.w r19, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	bneq r2, zero, .LBB0_231
.LBB0_241:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r2, 12(r18)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r13, r2, r3
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	setlt.u r4, r1, r13
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_243
# %bb.242:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r2, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	lui r4, 1024
	or r24, r2, r4
.LBB0_244:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r25, 8(r18)
	and r10, r25, r3
	setlt.u r4, r1, r10
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_246
# %bb.245:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	lui r4, 1024
	or r8, r25, r4
.LBB0_247:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r4, zero, .LBB0_249
# %bb.248:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_250:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r18, zero, .LBB0_252
# %bb.251:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r4, r5, r4
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r4, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r4, r5, r4
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_254
.LBB0_253:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r4, r5, r20
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r4, zero, .LBB0_257
# %bb.255:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r4, zero, .LBB0_258
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r12
	setlt.u r4, r5, r10
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_256
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r17
	and r8, r4, r8
	setlt.u r4, r5, r13
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r4, zero, .LBB0_240
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r24, r2, r4
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 48
	.loc	1 301 7 is_stmt 1               # parallel-rne.mlir:301:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_262
.LBB0_261:                              # %middle.block63
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[6:7], r2
	.loc	1 308 9 is_stmt 1               # parallel-rne.mlir:308:9
	setlt.ul r2, r[10:11], r[6:7]
	addli.d r[6:7], r[10:11], 1
	beq r2, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[6:7], -912(r30)               # 8-byte Folded Spill
	sll.d r[6:7], r[6:7], r2
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	bneq r9, r21, .LBB0_269
# %bb.263:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[10:11], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	setlt.ul r4, r[10:11], r[14:15]
	.loc	1 324 13 is_stmt 1              # parallel-rne.mlir:324:13
	add.s r2, r9, r2
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	addli.d r[10:11], r[10:11], 1
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	stores.w r8, 0(r2)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	beq r4, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[12:13], r[10:11], r[6:7]
	slli r2, r12, 2
	add.s r4, r21, r2
	loads.w r12, 0(r4)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r4, r12, r3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	setlt.u r8, r1, r4
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r8, zero, .LBB0_267
# %bb.266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r8, r12, 0
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r4, r5, r4
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r4, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r12, r8
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r4, r5, r4
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r4, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r17
	and r8, r4, r8
	j .LBB0_264
.LBB0_269:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	add.s r4, r9, r11
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	seteq.d r2, r[26:27], r[22:23]
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	stores.w r24, 12(r4)
	stores.w r8, 8(r4)
	stores.w r19, 4(r4)
	stores.w r18, 0(r4)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	bneq r2, zero, .LBB0_261
.LBB0_271:                              # %vector.body59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[10:11], r[26:27], r[6:7]
	slli r11, r10, 2
	add.s r18, r21, r11
	loads.w r2, 12(r18)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r13, r2, r3
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	setlt.u r4, r1, r13
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_273
# %bb.272:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r24, r2, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	lui r4, 1024
	or r24, r2, r4
.LBB0_274:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r25, 8(r18)
	and r10, r25, r3
	setlt.u r4, r1, r10
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_276
# %bb.275:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	lui r4, 1024
	or r8, r25, r4
.LBB0_277:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r28, 4(r18)
	and r20, r28, r3
	setlt.u r4, r1, r20
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r4, zero, .LBB0_279
# %bb.278:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r28, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	lui r4, 1024
	or r19, r28, r4
.LBB0_280:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r12, 0(r18)
	and r4, r12, r3
	setlt.u r18, r1, r4
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r18, zero, .LBB0_282
# %bb.281:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r12, 0
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r4, r5, r4
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r4, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r18, 1024
	or r18, r12, r18
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r4, r5, r4
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r4, zero, .LBB0_284
.LBB0_283:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	lui r12, 1048560
	add.s r4, r4, r17
	and r18, r4, r12
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r4, r5, r20
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r4, zero, .LBB0_287
# %bb.285:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r10
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r4, zero, .LBB0_288
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r5, r13
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r4, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r28, 16
	lui r12, 1048560
	andi r4, r4, 1
	add.s r4, r28, r4
	add.s r4, r4, r17
	and r19, r4, r12
	setlt.u r4, r5, r10
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r4, zero, .LBB0_286
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r25, 16
	lui r8, 1048560
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r17
	and r8, r4, r8
	setlt.u r4, r5, r13
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r4, zero, .LBB0_270
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r2, 16
	andi r4, r4, 1
	add.s r2, r2, r4
	lui r4, 1048560
	add.s r2, r2, r17
	and r24, r2, r4
	j .LBB0_270
.LBB0_290:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r4
	addli r27, zero, 3
	addli r10, zero, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 357 7 is_stmt 1               # parallel-rne.mlir:357:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 358 7                         # parallel-rne.mlir:358:7
	loadli.w r2,  -928(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r20,  -940(r30)                # 4-byte Folded Reload
	addli r8, zero, 17
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	bneq r4, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	loadli.w r2,  -968(r30)                 # 4-byte Folded Reload
	addli r4, zero, 960
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	load.d r[14:15], -960(r30)              # 8-byte Folded Reload
	load.d r[18:19], 16(r30)
	zext_int2long r[10:11], r4
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	loadli.w r4,  -964(r30)                 # 4-byte Folded Reload
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	zext_int2long r[6:7], r2
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	sll.d r[14:15], r[14:15], r8
	addli r2, zero, 1
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[10:11], r[6:7], r[10:11]
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sext_int2long r[12:13], r4
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	add.ul r[14:15], r[18:19], r[14:15]
	addli r4, zero, 12
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	addli.d r[10:11], r[10:11], 64
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	max.ul r[10:11], r[10:11], r[6:7]
	sub.sl r[6:7], r[10:11], r[6:7]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	load.d r[10:11], -904(r30)              # 8-byte Folded Reload
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.ul r[6:7], r[6:7], r[22:23]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	min.sl r[10:11], r[12:13], r[10:11]
	addli.d r[10:11], r[10:11], 64
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	max.sl r[10:11], r[10:11], r[12:13]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sub.sl r[10:11], r[10:11], r[12:13]
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	load.d r[12:13], -952(r30)              # 8-byte Folded Reload
	xwait r4, 0
	slli r4, r6, 1
	addli r7, zero, 2048
	add.ul r[12:13], r[14:15], r[12:13]
	addli r14, zero, 5
	addli r15, zero, 64
	lock zero, r14
	dma_cfg r2, r2, zero, 0
	dma_cfg zero, r2, zero, 1
	ori r2, r9, 64
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.sl r[8:9], r[10:11], r[22:23]
	addli r10, zero, 1
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	dma_cfg r13, zero, zero, 2
	dma_cfg r12, r2, r15, 3
	addli r2, r6, 31
	addli r6, zero, 128
	srli r2, r2, 5
	dma_cfg r15, r6, r2, 4
	addli r6, zero, 256
	andi r2, r4, 62
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r4
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	dma_cfg r7, r6, r8, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r10, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	xsignal r2, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 377 5                         # parallel-rne.mlir:377:5
	xsignal zero, 0
	bneq r4, zero, .LBB0_296
# %bb.295:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 377 5                         # parallel-rne.mlir:377:5
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
.LBB0_296:
	.loc	1 378 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:378:5
	addli sp, sp, 976
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
	.long	1040                            # 0x410
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-x41d5482" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
