	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-r7mevdc0" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1056
	addli r1, zero, 1
.Ltmp0:
	.loc	1 28 5 prologue_end             # parallel-rne.mlir:28:5
	core_id r14
	addli r30, sp, 992
	xsignal_mode_cfg r1
	beq r14, zero, .LBB0_2
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
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 29 10                         # parallel-rne.mlir:29:10
	load_param_i r6, 0
	lui r5, 1048575
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
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	mul.s r4, r1, r4
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	addli r2, r2, -1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 41 11                         # parallel-rne.mlir:41:11
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
	.loc	1 42 11                         # parallel-rne.mlir:42:11
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
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w r3, -696(r30)
	storeli.w r3, -692(r30)
	storeli.w r3, -688(r30)
	storeli.w r3, -684(r30)
	storeli.w r3, -680(r30)
	storeli.w r3, -676(r30)
	storeli.w r3, -672(r30)
	storeli.w r3, -668(r30)
	storeli.w r3, -664(r30)
	storeli.w r3, -660(r30)
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w r3, -892(r30)
	storeli.w r3, -888(r30)
	storeli.w r3, -884(r30)
	storeli.w r3, -880(r30)
	storeli.w r3, -876(r30)
	storeli.w r3, -872(r30)
	storeli.w r3, -868(r30)
	storeli.w r3, -864(r30)
	storeli.w r3, -860(r30)
	storeli.w r3, -856(r30)
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
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r1, r2, r6
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	fmac.s r2, r2, r6
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	min.s r2, r2, r4
	.loc	1 47 5                          # parallel-rne.mlir:47:5
	ble.s r2, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 39 11 is_stmt 1               # parallel-rne.mlir:39:11
	sext_int2long r[8:9], r1
	lui r1, 15
	addli r16, zero, 4
	lui r17, 522240
	lui r18, 1048560
	addli r10, zero, 0
	store.d r[2:3], -984(r30)               # 8-byte Folded Spill
	ori r2, r1, 4095
	lui r1, 1047552
	store.d r[1:2], -992(r30)               # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -916(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	lui r1, 7
	ori r4, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 358 7                         # parallel-rne.mlir:358:7
	addli r1, zero, 11
	xsignal r1, 0
	.loc	1 359 7                         # parallel-rne.mlir:359:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -944(r30)                # 8-byte Folded Reload
	.loc	1 47 5 is_stmt 1                # parallel-rne.mlir:47:5
	load.d r[1:2], -984(r30)                # 8-byte Folded Reload
	loadli.w r10,  -948(r30)                # 4-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r1, r[8:9], r[1:2]
	beq r1, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
                                        #     Child Loop BB0_105 Depth 2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
                                        #     Child Loop BB0_171 Depth 2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_202 Depth 2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
                                        #     Child Loop BB0_141 Depth 2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
                                        #     Child Loop BB0_263 Depth 2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
                                        #     Child Loop BB0_233 Depth 2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 74 7                          # parallel-rne.mlir:74:7
	bneq r14, r16, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	store.d r[8:9], -944(r30)               # 8-byte Folded Spill
	addli r3, zero, 3
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	loadli.w r28,  -896(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	loadli.w r24,  -700(r30)
	addli r16, zero, 4
	addli r7, zero, 0
	addli r25, zero, 0
	mod.s r3, r10, r3
	addli r10, r10, 1
	div.s r1, r8, r1
	addli r8, zero, 32
	addli r9, zero, 8
	storeli.w r10, -948(r30)                # 4-byte Folded Spill
	slli r15, r3, 14
	lui r3, 12
	div.s r1, r1, r2
	addli r2, zero, 256
	add.s r10, r15, r3
	div.s r2, r1, r2
	slli r6, r2, 3
	slli r2, r2, 8
	sub.s r8, r8, r6
	sub.s r2, r1, r2
	min.s r8, r8, r9
	mod.s r1, r1, r8
	div.s r2, r2, r8
	add.s r1, r6, r1
	slli r3, r2, 6
	storeli.w r3, -976(r30)                 # 4-byte Folded Spill
	slli r6, r1, 6
	zext_int2long r[11:12], r1
	zext_int2long r[2:3], r2
	addli r1, zero, 6
	sll.d r[1:2], r[2:3], r1
	addli r3, zero, 17
	store.d r[11:12], -968(r30)             # 8-byte Folded Spill
	storeli.w r6, -972(r30)                 # 4-byte Folded Spill
	sll.d r[20:21], r[11:12], r3
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r3, zero, 1
	sll.d r[11:12], r[1:2], r3
	load.d r[1:2], -992(r30)                # 8-byte Folded Reload
	store.d r[20:21], -928(r30)             # 8-byte Folded Spill
	store.d r[11:12], -960(r30)             # 8-byte Folded Spill
	and.d r[1:2], r[20:21], r[1:2]
	store.d r[1:2], -912(r30)               # 8-byte Folded Spill
	load.d r[1:2], 8(r30)
	add.ul r[1:2], r[1:2], r[11:12]
	store.d r[1:2], -936(r30)               # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r1, 24
	.loc	1 98 9 is_stmt 1                # parallel-rne.mlir:98:9
	lock zero, r16
	addli r11, zero, 64
	addli r19, zero, 128
	addli r9, zero, 4096
	dma_cfg r3, r3, zero, 0
	ori r1, r1, 64
	dma_cfg zero, r28, zero, 2
	add.s r1, r6, r1
	addli r6, zero, 2
	dma_cfg r1, r27, r11, 3
	addli r1, zero, 256
	addli r28, r24, 0
	addli r24, r20, 0
	dma_cfg r19, r11, r6, 4
	dma_cfg r1, r9, r22, 5
	addli r9, zero, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r16, 10
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
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r11, 3
	dma_cfg r19, zero, r6, 4
	dma_cfg r1, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r6, 0
	load.d r[20:21], -928(r30)              # 8-byte Folded Reload
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r1,  -512(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -188(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r1, r1, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, r2, 1
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	storeli.w r1, -512(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r2, -188(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r25, r25, 1
	addli r1, zero, 32
	beq r25, r1, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r16, zero, 4
	.loc	1 119 15 is_stmt 1              # parallel-rne.mlir:119:15
	addli r7, r7, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 76 15                         # parallel-rne.mlir:76:15
	zext_int2long r[22:23], r25
	.loc	1 77 15                         # parallel-rne.mlir:77:15
	addli r1, zero, 6
	sll.d r[1:2], r[22:23], r1
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	add.ul r[26:27], r[1:2], r[20:21]
	loadli.w r1,  -916(r30)                 # 4-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	setlt.ul r3, r[1:2], r[26:27]
	load.d r[1:2], -912(r30)                # 8-byte Folded Reload
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	bneq r3, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[1:2], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r3, r28, r7
	.loc	1 92 15 is_stmt 1               # parallel-rne.mlir:92:15
	addli r6, zero, 48
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r11, r24, r7
	.loc	1 94 15 is_stmt 1               # parallel-rne.mlir:94:15
	addli r9, zero, 46
	.loc	1 28 5                          # parallel-rne.mlir:28:5
	core_id r14
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	mod.s r6, r3, r6
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r12, r11, r9
	addli r9, zero, 1984
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	addli r3, r3, 1
	zext_int2long r[8:9], r9
	storeli.w r3, -896(r30)
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r3, r11, 1
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	store.d r[8:9], -904(r30)               # 8-byte Folded Spill
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	storeli.w r3, -700(r30)
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r3, zero, 2
	.loc	1 92 15                         # parallel-rne.mlir:92:15
	slli r9, r6, 14
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r6, r12, 14
	lui r12, 24
	add.s r12, r6, r12
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	beq r14, r3, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 1
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	bneq r14, r3, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 2048
	sub.sl r[1:2], r[26:27], r[1:2]
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	sll.d r[26:27], r[26:27], r3
	addli r20, r24, 0
	addli r24, r28, 0
	addli r16, zero, 4
	zext_int2long r[22:23], r9
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	load.d r[8:9], -904(r30)                # 8-byte Folded Reload
	div.sl r[1:2], r[1:2], r[22:23]
	min.sl r[22:23], r[1:2], r[8:9]
	sub.sl r[1:2], r[22:23], r[1:2]
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	load.d r[22:23], 0(r30)
	add.ul r[27:28], r[22:23], r[26:27]
	addli r22, r1, 64
	addli r2, zero, 3
	addli r1, zero, 45
	xwait r2, 0
	blt.s r1, r11, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r9, zero, 2
	.loc	1 98 9                          # parallel-rne.mlir:98:9
	addli r1, zero, 6
	addli r19, zero, 64
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r11, 10
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
	addli r1, zero, 128
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r19, 3
	dma_cfg r1, zero, r9, 4
	addli r1, zero, 256
	dma_cfg r1, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r1, zero, 2
	.loc	1 99 9 is_stmt 1                # parallel-rne.mlir:99:9
	addli r2, zero, 5
	addli r16, zero, 4
	xwait r1, 0
	xwait r2, 0
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 64
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r1, zero, 13
	shuffle_batch r9, r12, r1, 1
	addli r1, zero, 3
	unlock zero
	xsignal r1, 0
	xsignal r16, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	loadli.w r2,  -512(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r1,  -188(r30)
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r3, zero, 80
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r6, zero, 46
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	mod.s r3, r2, r3
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r6, r1, r6
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	addli r2, r2, 1
	storeli.w r2, -512(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, r1, 1
	storeli.w r2, -188(r30)
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r2, zero, 7
	.loc	1 109 15                        # parallel-rne.mlir:109:15
	slli r11, r3, 14
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r6, r6, 14
	lui r3, 208
	add.s r12, r6, r3
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	beq r14, r2, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 6
	bneq r14, r2, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r27, zero, 18
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	load.d r[8:9], -936(r30)                # 8-byte Folded Reload
	addli r26, zero, 7
	sll.d r[2:3], r[22:23], r27
	xwait r26, 0
	add.ul r[22:23], r[8:9], r[2:3]
	addli r2, zero, 3
	addli r3, zero, 45
	blt.s r3, r1, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r3, zero, 1
	addli r9, zero, 2
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	addli r1, zero, 6
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 64
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r1, 10
	addli r1, zero, 8
	dma_cfg zero, zero, r26, 10
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
	addli r1, zero, 19
	dma_cfg zero, zero, r27, 10
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
	addli r1, zero, 128
	dma_cfg r3, r3, zero, 0
	dma_cfg r3, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r16, 3
	dma_cfg r1, zero, r9, 4
	addli r1, zero, 256
	dma_cfg r1, zero, r16, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r1, 208
	addli r3, zero, 4
	addli r19, zero, 64
	addli r9, zero, 2
	addli r16, zero, 4
	addli r11, zero, 5
	ori r1, r1, 64
	.loc	1 115 9                         # parallel-rne.mlir:115:9
	lock zero, r3
	addli r3, zero, 4096
	add.s r1, r6, r1
	addli r6, zero, 1
	dma_cfg r6, r6, zero, 0
	dma_cfg zero, r23, zero, 2
	dma_cfg r1, r22, r19, 3
	addli r22, zero, 128
	addli r1, zero, 256
	dma_cfg r22, r19, r9, 4
	dma_cfg r1, r3, r19, 5
	addli r3, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	dma_cfg zero, zero, r26, 10
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
	addli r2, zero, 19
	dma_cfg zero, zero, r27, 10
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
	dma_cfg r6, r6, zero, 0
	dma_cfg r6, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r19, 3
	dma_cfg r22, zero, r9, 4
	dma_cfg r1, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r3, 0
	.loc	1 116 9 is_stmt 1               # parallel-rne.mlir:116:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 6
	addli r16, zero, 4
	xwait r1, 0
	addli r1, zero, 9
	xwait r1, 0
	addli r1, zero, 2
	lock zero, zero
	ds_cfg r1, zero, 0
	addli r1, zero, 64
	ds_cfg r1, zero, 1
	ds_cfg r1, zero, 14
	ds_cfg r1, zero, 13
	shuffle_coa r11, r12, r1, 2
	addli r1, zero, 7
	unlock zero
	xsignal r1, 0
	addli r1, zero, 8
	xsignal r1, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r16, zero, 4
	.loc	1 118 9 is_stmt 1               # parallel-rne.mlir:118:9
	bneq r14, r16, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r1, zero, 8
	xwait r16, 0
	addli r2, zero, 64
	xwait r1, 0
	addli r1, zero, 1
	lock zero, r1
	mm_cfg r2, r2, r2, 0
	addli r2, zero, 2
	mm_cfg r16, r2, r1, 2
	beq r7, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r10, r9, r11, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r25, r25, 1
	addli r1, zero, 32
	bneq r25, r1, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	mm r10, r9, r11, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	unlock r1
	addli r1, zero, 5
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r25, r25, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	xsignal r1, 0
	addli r1, zero, 9
	xsignal r1, 0
	.loc	1 75 7                          # parallel-rne.mlir:75:7
	addli r1, zero, 32
	bneq r25, r1, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 122 7                         # parallel-rne.mlir:122:7
	bneq r14, r16, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -928(r30)               # 4-byte Folded Spill
	xsignal r1, 0
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	.loc	1 127 7                         # parallel-rne.mlir:127:7
	bneq r14, r1, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 128 7 is_stmt 1               # parallel-rne.mlir:128:7
	storeli.w r1, -928(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -928(r30)               # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 132 7 is_stmt 1               # parallel-rne.mlir:132:7
	addli r1, zero, 255
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	xfence
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	mfence { lm, sm, gm }
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	csr_set csr5, r1
	addli r1, zero, 64
	sync_core
	zext_int2long r[7:8], r1
	addli r1, zero, 63
	zext_int2long r[24:25], r1
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	beq r14, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r1, zero, 2
	beq r14, r1, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 1
	bneq r14, r1, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_44
.LBB0_43:                               # %middle.block99
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[11:12], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 168 9 is_stmt 1               # parallel-rne.mlir:168:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	bneq r15, r10, .LBB0_51
# %bb.45:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 184 13 is_stmt 1              # parallel-rne.mlir:184:13
	add.s r1, r15, r1
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	stores.w r2, 0(r1)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	beq r3, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	and r3, r6, r13
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	setlt.u r2, r17, r3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r2, zero, .LBB0_49
# %bb.48:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r3, r5, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r3, zero, .LBB0_46
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r3, r5, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r3, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_46
.LBB0_51:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 169 11 is_stmt 1              # parallel-rne.mlir:169:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	add.s r2, r15, r12
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 184 13                        # parallel-rne.mlir:184:13
	stores.w r6, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 169 11                        # parallel-rne.mlir:169:11
	bneq r1, zero, .LBB0_43
.LBB0_53:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 170 19                        # parallel-rne.mlir:170:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r16, 12(r26)
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	and r9, r16, r13
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	setlt.u r1, r17, r9
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r1, zero, .LBB0_55
# %bb.54:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r16, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r6, r16, r1
.LBB0_56:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r28, 8(r26)
	and r19, r28, r13
	setlt.u r1, r17, r19
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r1, zero, .LBB0_58
# %bb.57:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r28, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	lui r1, 1024
	or r14, r28, r1
.LBB0_59:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r11, 4(r26)
	and r1, r11, r13
	setlt.u r2, r17, r1
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r2, zero, .LBB0_61
# %bb.60:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r11, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	lui r2, 1024
	or r27, r11, r2
.LBB0_62:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	bneq r26, zero, .LBB0_64
# %bb.63:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r3, r5, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r3, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 181 19 is_stmt 1              # parallel-rne.mlir:181:19
	setlt.u r3, r5, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r3, zero, .LBB0_66
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_66:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r1, r5, r1
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r1, zero, .LBB0_69
# %bb.67:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	beq r1, zero, .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r1, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r19
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r1, zero, .LBB0_68
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r14, r1, r18
	setlt.u r1, r5, r9
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	bneq r1, zero, .LBB0_52
.LBB0_71:                               # %vector.body95
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 133 7 is_stmt 1               # parallel-rne.mlir:133:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block117
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 7
	load.d r[11:12], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 140 9 is_stmt 1               # parallel-rne.mlir:140:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 141 11 is_stmt 1              # parallel-rne.mlir:141:11
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	bneq r15, r10, .LBB0_81
# %bb.75:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 156 13 is_stmt 1              # parallel-rne.mlir:156:13
	add.s r1, r15, r1
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	stores.w r2, 0(r1)
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	beq r3, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	and r3, r6, r13
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	setlt.u r2, r17, r3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r2, zero, .LBB0_79
# %bb.78:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r3, r5, r3
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r3, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r3, r5, r3
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r3, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_76
.LBB0_81:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 141 11 is_stmt 1              # parallel-rne.mlir:141:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	add.s r2, r15, r12
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 156 13                        # parallel-rne.mlir:156:13
	stores.w r16, 12(r2)
	stores.w r28, 8(r2)
	stores.w r11, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 141 11                        # parallel-rne.mlir:141:11
	bneq r1, zero, .LBB0_73
.LBB0_83:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 142 19                        # parallel-rne.mlir:142:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r6, 12(r26)
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	and r9, r6, r13
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	setlt.u r1, r17, r9
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r1, zero, .LBB0_85
# %bb.84:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r6, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r16, r6, r1
.LBB0_86:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r14, 8(r26)
	and r19, r14, r13
	setlt.u r1, r17, r19
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r1, zero, .LBB0_88
# %bb.87:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r28, r14, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	lui r1, 1024
	or r28, r14, r1
.LBB0_89:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r27, 4(r26)
	and r1, r27, r13
	setlt.u r2, r17, r1
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r2, zero, .LBB0_91
# %bb.90:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r27, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	lui r2, 1024
	or r11, r27, r2
.LBB0_92:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	bneq r26, zero, .LBB0_94
# %bb.93:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r3, r5, r3
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r3, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 153 19 is_stmt 1              # parallel-rne.mlir:153:19
	setlt.u r3, r5, r3
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r3, zero, .LBB0_96
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_96:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r1, r5, r1
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r1, zero, .LBB0_99
# %bb.97:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	beq r1, zero, .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r1, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r27, 16
	andi r1, r1, 1
	add.s r1, r27, r1
	add.s r1, r1, r4
	and r11, r1, r18
	setlt.u r1, r5, r19
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r1, zero, .LBB0_98
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r14, 16
	andi r1, r1, 1
	add.s r1, r14, r1
	add.s r1, r1, r4
	and r28, r1, r18
	setlt.u r1, r5, r9
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r1, zero, .LBB0_82
.LBB0_101:                              # %vector.body113
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r6, 16
	andi r1, r1, 1
	add.s r1, r6, r1
	add.s r1, r1, r4
	and r16, r1, r18
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r16, zero, 4
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { sm }
	.loc	1 161 7                         # parallel-rne.mlir:161:7
	addli r1, zero, 2
	bneq r14, r1, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 189 7 is_stmt 1               # parallel-rne.mlir:189:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_105
.LBB0_104:                              # %middle.block108
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[11:12], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 196 9 is_stmt 1               # parallel-rne.mlir:196:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 197 11 is_stmt 1              # parallel-rne.mlir:197:11
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	bneq r15, r10, .LBB0_112
# %bb.106:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 212 13 is_stmt 1              # parallel-rne.mlir:212:13
	add.s r1, r15, r1
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	stores.w r2, 0(r1)
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	beq r3, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r3, r6, r13
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	setlt.u r2, r17, r3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r2, zero, .LBB0_110
# %bb.109:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r3, r5, r3
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r3, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r3, r5, r3
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r3, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_107
.LBB0_112:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 197 11 is_stmt 1              # parallel-rne.mlir:197:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	add.s r2, r15, r12
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 212 13                        # parallel-rne.mlir:212:13
	stores.w r6, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 197 11                        # parallel-rne.mlir:197:11
	bneq r1, zero, .LBB0_104
.LBB0_114:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 198 19                        # parallel-rne.mlir:198:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r16, 12(r26)
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	and r9, r16, r13
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	setlt.u r1, r17, r9
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r1, zero, .LBB0_116
# %bb.115:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r16, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r6, r16, r1
.LBB0_117:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r28, 8(r26)
	and r19, r28, r13
	setlt.u r1, r17, r19
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r1, zero, .LBB0_119
# %bb.118:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r28, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	lui r1, 1024
	or r14, r28, r1
.LBB0_120:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r11, 4(r26)
	and r1, r11, r13
	setlt.u r2, r17, r1
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r2, zero, .LBB0_122
# %bb.121:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r11, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	lui r2, 1024
	or r27, r11, r2
.LBB0_123:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	bneq r26, zero, .LBB0_125
# %bb.124:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r3, r5, r3
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r3, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 209 19 is_stmt 1              # parallel-rne.mlir:209:19
	setlt.u r3, r5, r3
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r3, zero, .LBB0_127
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r1, r5, r1
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r1, zero, .LBB0_130
# %bb.128:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	beq r1, zero, .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r1, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r19
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r1, zero, .LBB0_129
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r14, r1, r18
	setlt.u r1, r5, r9
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r1, zero, .LBB0_113
.LBB0_132:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r16, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 217 7 is_stmt 1               # parallel-rne.mlir:217:7
	loadli.w r1,  -928(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	beq r14, r16, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r1, zero, 7
	beq r14, r1, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 6
	beq r14, r1, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 5
	bneq r14, r1, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 40
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 47
	load.d r[11:12], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 280 9 is_stmt 1               # parallel-rne.mlir:280:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 281 11 is_stmt 1              # parallel-rne.mlir:281:11
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	bneq r15, r10, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 296 13 is_stmt 1              # parallel-rne.mlir:296:13
	add.s r1, r15, r1
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r2, 0(r1)
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	beq r3, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r3, r6, r13
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	setlt.u r2, r17, r3
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r2, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r3, r5, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r3, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r3, r5, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r3, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 281 11 is_stmt 1              # parallel-rne.mlir:281:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	add.s r2, r15, r12
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 296 13                        # parallel-rne.mlir:296:13
	stores.w r6, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 281 11                        # parallel-rne.mlir:281:11
	bneq r1, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 282 19                        # parallel-rne.mlir:282:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r16, 12(r26)
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	and r9, r16, r13
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	setlt.u r1, r17, r9
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r16, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r6, r16, r1
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r28, 8(r26)
	and r19, r28, r13
	setlt.u r1, r17, r19
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r1, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r28, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	lui r1, 1024
	or r14, r28, r1
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r11, 4(r26)
	and r1, r11, r13
	setlt.u r2, r17, r1
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r2, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r11, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	lui r2, 1024
	or r27, r11, r2
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	bneq r26, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r3, r5, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r3, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r1, r5, r1
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r1, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r1, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r1, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 293 19 is_stmt 1              # parallel-rne.mlir:293:19
	setlt.u r3, r5, r3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	beq r3, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r19
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r1, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r14, r1, r18
	setlt.u r1, r5, r9
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	bneq r1, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 24
	.loc	1 217 7 is_stmt 1               # parallel-rne.mlir:217:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_171
.LBB0_170:                              # %middle.block90
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 31
	load.d r[11:12], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 224 9 is_stmt 1               # parallel-rne.mlir:224:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 225 11 is_stmt 1              # parallel-rne.mlir:225:11
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	bneq r15, r10, .LBB0_178
# %bb.172:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 240 13 is_stmt 1              # parallel-rne.mlir:240:13
	add.s r1, r15, r1
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 240 13                        # parallel-rne.mlir:240:13
	stores.w r2, 0(r1)
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	beq r3, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	and r3, r6, r13
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	setlt.u r2, r17, r3
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r2, zero, .LBB0_176
# %bb.175:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r3, r5, r3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r3, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r3, r5, r3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r3, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_173
.LBB0_178:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 225 11 is_stmt 1              # parallel-rne.mlir:225:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 240 13                        # parallel-rne.mlir:240:13
	add.s r2, r15, r12
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 240 13                        # parallel-rne.mlir:240:13
	stores.w r6, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 225 11                        # parallel-rne.mlir:225:11
	bneq r1, zero, .LBB0_170
.LBB0_180:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 226 19                        # parallel-rne.mlir:226:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r16, 12(r26)
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	and r9, r16, r13
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	setlt.u r1, r17, r9
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r1, zero, .LBB0_182
# %bb.181:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r16, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r6, r16, r1
.LBB0_183:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r28, 8(r26)
	and r19, r28, r13
	setlt.u r1, r17, r19
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r1, zero, .LBB0_185
# %bb.184:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r28, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	lui r1, 1024
	or r14, r28, r1
.LBB0_186:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r11, 4(r26)
	and r1, r11, r13
	setlt.u r2, r17, r1
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r2, zero, .LBB0_188
# %bb.187:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r11, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	lui r2, 1024
	or r27, r11, r2
.LBB0_189:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	bneq r26, zero, .LBB0_195
# %bb.190:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r3, r5, r3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r3, zero, .LBB0_192
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_192:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r1, r5, r1
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r1, zero, .LBB0_196
# %bb.193:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r1, zero, .LBB0_197
.LBB0_194:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 237 19 is_stmt 1              # parallel-rne.mlir:237:19
	setlt.u r3, r5, r3
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	beq r3, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r19
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_194
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r14, r1, r18
	setlt.u r1, r5, r9
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	bneq r1, zero, .LBB0_179
.LBB0_198:                              # %vector.body86
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r16, zero, 4
	.loc	1 217 7                         # parallel-rne.mlir:217:7
	mfence { sm }
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	bneq r14, r16, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 32
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_202
.LBB0_201:                              # %middle.block81
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 39
	load.d r[11:12], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 252 9 is_stmt 1               # parallel-rne.mlir:252:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 253 11 is_stmt 1              # parallel-rne.mlir:253:11
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	bneq r15, r10, .LBB0_209
# %bb.203:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 268 13 is_stmt 1              # parallel-rne.mlir:268:13
	add.s r1, r15, r1
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	stores.w r2, 0(r1)
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	beq r3, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	and r3, r6, r13
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	setlt.u r2, r17, r3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r2, zero, .LBB0_207
# %bb.206:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r3, r5, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r3, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r3, r5, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r3, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_204
.LBB0_209:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 253 11 is_stmt 1              # parallel-rne.mlir:253:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	add.s r2, r15, r12
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 268 13                        # parallel-rne.mlir:268:13
	stores.w r6, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 253 11                        # parallel-rne.mlir:253:11
	bneq r1, zero, .LBB0_201
.LBB0_211:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 254 19                        # parallel-rne.mlir:254:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r16, 12(r26)
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	and r9, r16, r13
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	setlt.u r1, r17, r9
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_213
# %bb.212:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r16, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r6, r16, r1
.LBB0_214:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r28, 8(r26)
	and r19, r28, r13
	setlt.u r1, r17, r19
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r1, zero, .LBB0_216
# %bb.215:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r28, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	lui r1, 1024
	or r14, r28, r1
.LBB0_217:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r11, 4(r26)
	and r1, r11, r13
	setlt.u r2, r17, r1
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r2, zero, .LBB0_219
# %bb.218:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r11, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	lui r2, 1024
	or r27, r11, r2
.LBB0_220:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	bneq r26, zero, .LBB0_226
# %bb.221:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r3, r5, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r3, zero, .LBB0_223
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_223:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r1, r5, r1
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r1, zero, .LBB0_227
# %bb.224:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r1, zero, .LBB0_228
.LBB0_225:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 265 19 is_stmt 1              # parallel-rne.mlir:265:19
	setlt.u r3, r5, r3
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	beq r3, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r19
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_225
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r14, r1, r18
	setlt.u r1, r5, r9
	.loc	1 266 19                        # parallel-rne.mlir:266:19
	bneq r1, zero, .LBB0_210
.LBB0_229:                              # %vector.body77
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r16, zero, 4
	.loc	1 245 7                         # parallel-rne.mlir:245:7
	mfence { sm }
	.loc	1 273 7                         # parallel-rne.mlir:273:7
	addli r1, zero, 7
	bneq r14, r1, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 56
	.loc	1 329 7 is_stmt 1               # parallel-rne.mlir:329:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_233
.LBB0_232:                              # %middle.block72
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -912(r30)                # 8-byte Folded Reload
	.loc	1 336 9 is_stmt 1               # parallel-rne.mlir:336:9
	setlt.ul r1, r[2:3], r[24:25]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	bneq r15, r10, .LBB0_240
# %bb.234:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 352 13 is_stmt 1              # parallel-rne.mlir:352:13
	add.s r1, r15, r1
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	stores.w r2, 0(r1)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	beq r3, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r3, r6, r13
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	setlt.u r2, r17, r3
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r2, zero, .LBB0_238
# %bb.237:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r3, r5, r3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r3, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r3, r5, r3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r3, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_235
.LBB0_240:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 337 11 is_stmt 1              # parallel-rne.mlir:337:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	add.s r2, r15, r12
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 352 13                        # parallel-rne.mlir:352:13
	stores.w r6, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 337 11                        # parallel-rne.mlir:337:11
	bneq r1, zero, .LBB0_232
.LBB0_242:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 338 19                        # parallel-rne.mlir:338:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r16, 12(r26)
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	and r9, r16, r13
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	setlt.u r1, r17, r9
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r1, zero, .LBB0_244
# %bb.243:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r16, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r6, r16, r1
.LBB0_245:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r28, 8(r26)
	and r19, r28, r13
	setlt.u r1, r17, r19
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r1, zero, .LBB0_247
# %bb.246:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r28, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	lui r1, 1024
	or r14, r28, r1
.LBB0_248:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r11, 4(r26)
	and r1, r11, r13
	setlt.u r2, r17, r1
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r2, zero, .LBB0_250
# %bb.249:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r11, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	lui r2, 1024
	or r27, r11, r2
.LBB0_251:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	bneq r26, zero, .LBB0_253
# %bb.252:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r3, r5, r3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r3, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 349 19 is_stmt 1              # parallel-rne.mlir:349:19
	setlt.u r3, r5, r3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r3, zero, .LBB0_255
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r1, r5, r1
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r1, zero, .LBB0_258
# %bb.256:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	beq r1, zero, .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r1, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r19
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r1, zero, .LBB0_257
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r14, r1, r18
	setlt.u r1, r5, r9
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	bneq r1, zero, .LBB0_241
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 48
	.loc	1 301 7 is_stmt 1               # parallel-rne.mlir:301:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_263
.LBB0_262:                              # %middle.block63
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 55
	load.d r[11:12], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 308 9 is_stmt 1               # parallel-rne.mlir:308:9
	setlt.ul r1, r[11:12], r[1:2]
	addli.d r[2:3], r[11:12], 1
	beq r1, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 6
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	store.d r[2:3], -912(r30)               # 8-byte Folded Spill
	sll.d r[20:21], r[2:3], r1
	bneq r15, r10, .LBB0_270
# %bb.264:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 324 13 is_stmt 1              # parallel-rne.mlir:324:13
	add.s r1, r15, r1
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	stores.w r2, 0(r1)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	beq r3, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[1:2], r[11:12], r[20:21]
	slli r1, r1, 2
	add.s r2, r10, r1
	loads.w r6, 0(r2)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r3, r6, r13
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	setlt.u r2, r17, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r2, zero, .LBB0_268
# %bb.267:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r6, 0
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r3, r5, r3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r3, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r6, r2
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r3, r5, r3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r3, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r6, 16
	andi r2, r2, 1
	add.s r2, r6, r2
	add.s r2, r2, r4
	and r2, r2, r18
	j .LBB0_265
.LBB0_270:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 309 11 is_stmt 1              # parallel-rne.mlir:309:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	add.s r2, r15, r12
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	seteq.d r1, r[22:23], r[7:8]
	.loc	1 324 13                        # parallel-rne.mlir:324:13
	stores.w r6, 12(r2)
	stores.w r14, 8(r2)
	stores.w r27, 4(r2)
	stores.w r26, 0(r2)
	.loc	1 309 11                        # parallel-rne.mlir:309:11
	bneq r1, zero, .LBB0_262
.LBB0_272:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 310 19                        # parallel-rne.mlir:310:19
	add.ul r[1:2], r[22:23], r[20:21]
	slli r12, r1, 2
	add.s r26, r10, r12
	loads.w r16, 12(r26)
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	and r9, r16, r13
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	setlt.u r1, r17, r9
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r1, zero, .LBB0_274
# %bb.273:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r16, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r6, r16, r1
.LBB0_275:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r28, 8(r26)
	and r19, r28, r13
	setlt.u r1, r17, r19
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r1, zero, .LBB0_277
# %bb.276:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r28, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	lui r1, 1024
	or r14, r28, r1
.LBB0_278:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r11, 4(r26)
	and r1, r11, r13
	setlt.u r2, r17, r1
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r2, zero, .LBB0_280
# %bb.279:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r11, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	lui r2, 1024
	or r27, r11, r2
.LBB0_281:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r2, 0(r26)
	and r3, r2, r13
	setlt.u r26, r17, r3
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	bneq r26, zero, .LBB0_283
# %bb.282:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r26, r2, 0
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r3, r5, r3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r3, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r26, 1024
	or r26, r2, r26
	.loc	1 321 19 is_stmt 1              # parallel-rne.mlir:321:19
	setlt.u r3, r5, r3
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r3, zero, .LBB0_285
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r26, r2, r18
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r1, r5, r1
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r1, zero, .LBB0_288
# %bb.286:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r19
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	beq r1, zero, .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r9
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r27, r1, r18
	setlt.u r1, r5, r19
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_287
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r28, 16
	andi r1, r1, 1
	add.s r1, r28, r1
	add.s r1, r1, r4
	and r14, r1, r18
	setlt.u r1, r5, r9
	.loc	1 322 19                        # parallel-rne.mlir:322:19
	bneq r1, zero, .LBB0_271
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r16, 16
	andi r1, r1, 1
	add.s r1, r16, r1
	add.s r1, r1, r4
	and r6, r1, r18
	j .LBB0_271
.LBB0_291:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 28 5 is_stmt 1                # parallel-rne.mlir:28:5
	core_id r14
	addli r16, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 357 7 is_stmt 1               # parallel-rne.mlir:357:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 358 7                         # parallel-rne.mlir:358:7
	loadli.w r1,  -928(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 18
	.loc	1 375 7 is_stmt 1               # parallel-rne.mlir:375:7
	bneq r14, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	loadli.w r1,  -976(r30)                 # 4-byte Folded Reload
	load.d r[19:20], -904(r30)              # 8-byte Folded Reload
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	loadli.w r6,  -972(r30)                 # 4-byte Folded Reload
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	load.d r[21:22], 16(r30)
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	zext_int2long r[1:2], r1
	.loc	1 360 13                        # parallel-rne.mlir:360:13
	sext_int2long r[11:12], r6
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	min.ul r[9:10], r[1:2], r[19:20]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	min.sl r[19:20], r[11:12], r[19:20]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	addli.d r[9:10], r[9:10], 64
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	max.ul r[9:10], r[9:10], r[1:2]
	sub.sl r[1:2], r[9:10], r[1:2]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	addli.d r[9:10], r[19:20], 64
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	load.d r[19:20], -968(r30)              # 8-byte Folded Reload
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	max.sl r[9:10], r[9:10], r[11:12]
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	min.ul r[1:2], r[1:2], r[7:8]
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	sll.d r[19:20], r[19:20], r3
	addli r3, zero, 12
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	sub.sl r[9:10], r[9:10], r[11:12]
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	load.d r[11:12], -960(r30)              # 8-byte Folded Reload
	add.ul r[19:20], r[21:22], r[19:20]
	xwait r3, 0
	ori r3, r15, 64
	addli r15, zero, 64
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.sl r[6:7], r[9:10], r[7:8]
	.loc	1 375 7                         # parallel-rne.mlir:375:7
	add.ul r[11:12], r[19:20], r[11:12]
	addli r20, zero, 5
	addli r19, zero, 1
	lock zero, r20
	dma_cfg r19, r19, zero, 0
	dma_cfg zero, r19, zero, 1
	dma_cfg r12, zero, zero, 2
	dma_cfg r11, r3, r15, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r15, r2, r3, 4
	addli r2, zero, 256
	addli r3, zero, 4096
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r20
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 377 5                         # parallel-rne.mlir:377:5
	xsignal zero, 0
	bneq r14, zero, .LBB0_297
# %bb.296:
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
.LBB0_297:
	.loc	1 378 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:378:5
	addli sp, sp, 992
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
	.long	1056                            # 0x420
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-r7mevdc0" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
