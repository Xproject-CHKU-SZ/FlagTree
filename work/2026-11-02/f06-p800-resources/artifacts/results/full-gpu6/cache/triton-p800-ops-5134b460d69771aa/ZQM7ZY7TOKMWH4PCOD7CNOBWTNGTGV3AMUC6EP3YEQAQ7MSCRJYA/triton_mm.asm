	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-j3m0hlv1" "parallel-rne.mlir"
	.loc	1 9 0                           # parallel-rne.mlir:9:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1048
	addli r1, zero, 1
.Ltmp0:
	.loc	1 30 5 prologue_end             # parallel-rne.mlir:30:5
	core_id r11
	addli r30, sp, 984
	xsignal_mode_cfg r1
	beq r11, zero, .LBB0_2
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
	.loc	1 32 10 is_stmt 1               # parallel-rne.mlir:32:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 31 10                         # parallel-rne.mlir:31:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 43 11                         # parallel-rne.mlir:43:11
	storeli.w zero, -188(r30)
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -512(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -700(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -896(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	mul.s r1, r2, r1
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r3, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r2, -1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 43 11                         # parallel-rne.mlir:43:11
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
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r1, r2, r6
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	fmac.s r2, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	min.s r3, r2, r3
	.loc	1 49 5                          # parallel-rne.mlir:49:5
	ble.s r3, r1, .LBB0_282
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 41 11 is_stmt 1               # parallel-rne.mlir:41:11
	sext_int2long r[6:7], r1
	addli r16, zero, 6
	lui r28, 1024
	lui r13, 1048560
	addli r12, zero, 0
	store.d r[2:3], -976(r30)               # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r1, 1048572
	store.d r[1:2], -984(r30)               # 8-byte Folded Spill
	lui r2, 7
	lui r1, 524287
	ori r3, r2, 4095
	lui r2, 522239
	ori r27, r1, 4095
	lui r1, 522240
	ori r17, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -936(r30)                # 8-byte Folded Reload
	.loc	1 49 5 is_stmt 1                # parallel-rne.mlir:49:5
	load.d r[4:5], -976(r30)                # 8-byte Folded Reload
	loadli.w r12,  -940(r30)                # 4-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	beq r2, zero, .LBB0_282
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_77 Depth 3
                                        #     Child Loop BB0_45 Depth 2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_48 Depth 3
                                        #     Child Loop BB0_104 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_106 Depth 3
                                        #     Child Loop BB0_166 Depth 2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_168 Depth 3
                                        #     Child Loop BB0_195 Depth 2
                                        #       Child Loop BB0_202 Depth 3
                                        #       Child Loop BB0_197 Depth 3
                                        #     Child Loop BB0_138 Depth 2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_140 Depth 3
                                        #     Child Loop BB0_252 Depth 2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_254 Depth 3
                                        #     Child Loop BB0_224 Depth 2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
	.loc	1 76 7                          # parallel-rne.mlir:76:7
	addli r2, zero, 4
	bneq r11, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[6:7], -936(r30)               # 8-byte Folded Spill
	addli r5, zero, 8
	addli r22, zero, 1
	addli r10, zero, 13
	div.s r2, r6, r2
	div.s r6, r2, r4
	addli r2, zero, 128
	addli r4, zero, 2
	div.s r7, r6, r2
	slli r2, r7, 3
	sub.s r4, r4, r2
	min.s r8, r4, r5
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	loadli.w r5,  -700(r30)
	mod.s r4, r6, r8
	add.s r2, r2, r4
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	loadli.w r4,  -896(r30)
	setlt.u r9, r22, r2
	zext_int2long r[14:15], r2
	sll.d r[24:25], r[14:15], r10
	store.d r[14:15], -952(r30)             # 8-byte Folded Spill
	bneq r9, zero, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[9:10], zero
	j .LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	load.d r[9:10], -984(r30)               # 8-byte Folded Reload
	and.d r[9:10], r[24:25], r[9:10]
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	slli r7, r7, 7
	store.d r[9:10], -920(r30)              # 8-byte Folded Spill
	slli r2, r2, 6
	addli r10, zero, 0
	storeli.w r5, -912(r30)                 # 4-byte Folded Spill
	sub.s r6, r6, r7
	addli r7, zero, 3
	storeli.w r2, -964(r30)                 # 4-byte Folded Spill
	div.s r6, r6, r8
	mod.s r7, r12, r7
	addli r12, r12, 1
	storeli.w r12, -940(r30)                # 4-byte Folded Spill
	load.d r[11:12], 8(r30)
	zext_int2long r[8:9], r6
	slli r2, r6, 6
	slli r7, r7, 14
	sll.d r[8:9], r[8:9], r16
	storeli.w r2, -968(r30)                 # 4-byte Folded Spill
	lui r2, 12
	store.d r[8:9], -960(r30)               # 8-byte Folded Spill
	sll.d r[8:9], r[8:9], r22
	add.s r26, r7, r2
	add.ul r[8:9], r[11:12], r[8:9]
	store.d r[8:9], -928(r30)               # 8-byte Folded Spill
	addli r8, zero, 0
	j .LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=2
	lui r6, 24
	.loc	1 100 9 is_stmt 1               # parallel-rne.mlir:100:9
	lock zero, r16
	addli r14, zero, 64
	addli r9, zero, 128
	addli r19, zero, 256
	addli r18, zero, 5
	dma_cfg r21, r21, zero, 0
	ori r6, r6, 64
	dma_cfg zero, r25, zero, 2
	add.s r2, r2, r6
	addli r6, zero, 7
	dma_cfg r2, r24, r14, 3
	addli r2, zero, 2
	addli.d r[24:25], r[4:5], 0
	addli r4, r11, 0
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	dma_cfg r9, r14, r2, 4
	dma_cfg r19, r19, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r2, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 6
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
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
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
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
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r14, 3
	dma_cfg r9, zero, r2, 4
	dma_cfg r19, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	xsignal r2, 0
	loadli.w r5,  -912(r30)                 # 4-byte Folded Reload
.LBB0_15:                               # %.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -512(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r6,  -188(r30)
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	addli r2, r2, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r6, r6, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	storeli.w r2, -512(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r6, -188(r30)
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	andi r2, r22, 1
	bneq r2, zero, .LBB0_28
	j .LBB0_35
.LBB0_16:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	add.s r9, r5, r10
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r11, zero, 46
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	add.s r2, r4, r10
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	addli r6, zero, 48
	addli r12, zero, 64
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r11, r9, r11
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	mod.s r6, r2, r6
	addli r2, r2, 1
	zext_int2long r[14:15], r12
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	lui r12, 24
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	storeli.w r2, -896(r30)
	store.d r[14:15], -904(r30)             # 8-byte Folded Spill
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r14, zero, 2
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r2, r11, 14
	addli r11, r9, 1
	.loc	1 94 15                         # parallel-rne.mlir:94:15
	slli r6, r6, 14
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r11, -700(r30)
	add.s r12, r2, r12
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	beq r11, r14, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	zext_int2long r[18:19], r8
	addli r8, zero, 1
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	bneq r11, r8, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 6
	addli r6, zero, 128
	addli r11, r4, 0
	addli.d r[4:5], r[24:25], 0
	addli r21, zero, 1
	addli r16, zero, 4
	sll.d r[14:15], r[18:19], r20
	load.d r[18:19], -920(r30)              # 8-byte Folded Reload
	or.d r[14:15], r[14:15], r[24:25]
	zext_int2long r[23:24], r6
	sub.sl r[18:19], r[14:15], r[18:19]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	sll.d r[14:15], r[14:15], r8
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[18:19], r[18:19], r[23:24]
	load.d r[23:24], -904(r30)              # 8-byte Folded Reload
	min.sl r[23:24], r[18:19], r[23:24]
	sub.sl r[18:19], r[23:24], r[18:19]
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	load.d r[23:24], 0(r30)
	addli r8, r18, 64
	add.ul r[24:25], r[23:24], r[14:15]
	addli r15, zero, 3
	addli r14, zero, 45
	xwait r15, 0
	blt.s r14, r9, .LBB0_14
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r18, zero, 5
	addli r9, zero, 2
	.loc	1 100 9                         # parallel-rne.mlir:100:9
	addli r14, zero, 7
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 8
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 9
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 10
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 11
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 12
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 13
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 14
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 15
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 16
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 17
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 18
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 19
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 20
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 21
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 22
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 23
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 24
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 25
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 26
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 27
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 28
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 29
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 30
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 31
	dma_cfg zero, zero, r14, 10
	addli r14, zero, 64
	dma_cfg r21, r21, zero, 0
	dma_cfg r21, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r14, 3
	dma_cfg r6, zero, r9, 4
	addli r6, zero, 256
	dma_cfg r6, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r21, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	j .LBB0_14
.LBB0_20:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r2, zero, 2
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	addli r8, zero, 5
	xwait r2, 0
	xwait r8, 0
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_batch r6, r12, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_15
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r11,  -188(r30)
	addli r9, zero, 46
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	loadli.w r2,  -512(r30)
	addli r8, zero, 80
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	lui r12, 208
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r9, r11, r9
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	mod.s r8, r2, r8
	addli r2, r2, 1
	storeli.w r2, -512(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r2, r9, 14
	addli r9, r11, 1
	.loc	1 111 15                        # parallel-rne.mlir:111:15
	slli r8, r8, 14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r9, -188(r30)
	add.s r12, r2, r12
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r9, zero, 7
	beq r14, r9, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_16 Depth=2
	bneq r14, r16, .LBB0_29
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r23, zero, 17
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	load.d r[14:15], -928(r30)              # 8-byte Folded Reload
	addli r21, zero, 7
	addli r16, zero, 4
	addli r6, zero, 45
	sll.d r[8:9], r[18:19], r23
	xwait r21, 0
	add.ul r[8:9], r[14:15], r[8:9]
	addli r14, zero, 6
	addli r15, zero, 3
	blt.s r6, r11, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 5
	addli r19, zero, 1
	addli r11, zero, 2
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	addli r6, zero, 8
	addli r18, zero, 64
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r21, 10
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
	addli r6, zero, 18
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 19
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 20
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 21
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 22
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 23
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 24
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
	addli r6, zero, 128
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r18, 3
	dma_cfg r6, zero, r11, 4
	addli r6, zero, 256
	dma_cfg r6, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
.LBB0_25:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r6, 208
	addli r18, zero, 1
	.loc	1 117 9                         # parallel-rne.mlir:117:9
	lock zero, r16
	addli r11, zero, 64
	addli r19, zero, 256
	ori r6, r6, 64
	dma_cfg r18, r18, zero, 0
	dma_cfg zero, r9, zero, 2
	add.s r2, r2, r6
	addli r6, zero, 2
	dma_cfg r2, r8, r11, 3
	addli r2, zero, 128
	addli r8, zero, 2048
	addli r9, zero, 5
	dma_cfg r2, r11, r6, 4
	dma_cfg r19, r8, r11, 5
	addli r8, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r16
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r15, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 6
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 9
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 11
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 12
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 13
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 14
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 15
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 16
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 19
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 20
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 21
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 22
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 23
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 24
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
	addli r8, zero, 6
	dma_cfg r18, r18, zero, 0
	dma_cfg r18, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r11, 3
	dma_cfg r2, zero, r6, 4
	dma_cfg r19, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r18, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r8, 0
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	j .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r2, zero, 9
	xwait r16, 0
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 64
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r2, zero, 13
	shuffle_coa r8, r12, r2, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
.LBB0_27:                               # %.thread20
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	andi r2, r22, 1
	beq r2, zero, .LBB0_35
.LBB0_28:                               # %.backedge
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 121 15                        # parallel-rne.mlir:121:15
	addli r10, r10, 1
	addli r8, zero, 1
	addli r22, zero, 0
	.loc	1 78 15                         # parallel-rne.mlir:78:15
	j .LBB0_16
.LBB0_29:                               #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	andi r2, r22, 1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	addli r12, zero, 4
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	bneq r11, r12, .LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_16 Depth=2
	addli r9, zero, 8
	addli r15, zero, 1
	xwait r12, 0
	addli r14, zero, 1
	xwait r9, 0
	addli r9, zero, 64
	lock zero, r15
	mm_cfg r9, r9, r9, 0
	addli r9, zero, 2
	mm_cfg r12, r9, r15, 2
	beq r10, zero, .LBB0_33
# %bb.31:                               # %.preheader30
                                        #   in Loop: Header=BB0_16 Depth=2
	mm_acc r26, r6, r8, 8
	j .LBB0_34
.LBB0_32:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	bneq r2, zero, .LBB0_28
	j .LBB0_37
.LBB0_33:                               # %.preheader29
                                        #   in Loop: Header=BB0_16 Depth=2
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	mm r26, r6, r8, 8
.LBB0_34:                               # %.thread20.thread43
                                        #   in Loop: Header=BB0_16 Depth=2
	addli r6, zero, 5
	unlock r14
	xsignal r6, 0
	addli r6, zero, 9
	xsignal r6, 0
	bneq r2, zero, .LBB0_28
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 124 7 is_stmt 1               # parallel-rne.mlir:124:7
	addli r2, zero, 4
	bneq r11, r2, .LBB0_37
.LBB0_36:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -928(r30)               # 4-byte Folded Spill
	xsignal r2, 0
	.loc	1 129 7                         # parallel-rne.mlir:129:7
	j .LBB0_40
.LBB0_37:                               # %.thread42
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 3
	bneq r11, r2, .LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	storeli.w r2, -928(r30)                 # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -928(r30)               # 4-byte Folded Spill
.LBB0_40:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 134 7 is_stmt 1               # parallel-rne.mlir:134:7
	addli r2, zero, 255
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	xfence
	addli r6, zero, 1
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	mfence { lm, sm, gm }
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	csr_set csr5, r2
	addli r2, zero, 63
	sync_core
	zext_int2long r[4:5], r2
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	beq r11, zero, .LBB0_73
# %bb.41:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 2
	beq r11, r2, .LBB0_102
.LBB0_42:                               #   in Loop: Header=BB0_8 Depth=1
	bneq r11, r6, .LBB0_131
# %bb.43:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[8:9], zero
	addli r2, zero, 8
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	store.d r[8:9], -920(r30)               # 8-byte Folded Spill
	zext_int2long r[8:9], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_45
.LBB0_44:                               # %middle.block96
                                        #   in Loop: Header=BB0_45 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[8:9], r2
	.loc	1 170 9 is_stmt 1               # parallel-rne.mlir:170:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_130
.LBB0_45:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_48 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[20:21], r[8:9], r16
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	bneq r7, r26, .LBB0_52
# %bb.46:                               # %scalar.ph90.preheader
                                        #   in Loop: Header=BB0_45 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_48
.LBB0_47:                               # %scalar.ph90
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 186 13 is_stmt 1              # parallel-rne.mlir:186:13
	add.s r2, r7, r2
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	stores.w r6, 0(r2)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	beq r10, zero, .LBB0_44
.LBB0_48:                               # %scalar.ph90
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[10:11], r[8:9], r[20:21]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r11, r10, r27
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r6, r1, r11
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r6, zero, .LBB0_50
# %bb.49:                               # %scalar.ph90
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r11, r17, r11
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r11, zero, .LBB0_47
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r11, r17, r11
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r11, zero, .LBB0_47
.LBB0_51:                               # %scalar.ph90
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_47
.LBB0_52:                               # %vector.body92.preheader
                                        #   in Loop: Header=BB0_45 Depth=2
	load.d r[8:9], -920(r30)                # 8-byte Folded Reload
	j .LBB0_54
.LBB0_53:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 171 11 is_stmt 1              # parallel-rne.mlir:171:11
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 186 13                        # parallel-rne.mlir:186:13
	add.s r10, r7, r10
	stores.w r12, 12(r10)
	stores.w r14, 8(r10)
	stores.w r6, 4(r10)
	stores.w r11, 0(r10)
	.loc	1 171 11                        # parallel-rne.mlir:171:11
	seteq.d r2, r[8:9], r[18:19]
	bneq r2, zero, .LBB0_44
.LBB0_54:                               # %vector.body92
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_45 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 172 19                        # parallel-rne.mlir:172:19
	add.ul r[10:11], r[8:9], r[20:21]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 174 19                        # parallel-rne.mlir:174:19
	and r2, r22, r27
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	setlt.u r6, r1, r2
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r6, zero, .LBB0_56
# %bb.55:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_54 Depth=3
	or r12, r22, r28
.LBB0_57:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r18, 8(r11)
	and r23, r18, r27
	setlt.u r6, r1, r23
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r6, zero, .LBB0_59
# %bb.58:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_54 Depth=3
	or r14, r18, r28
.LBB0_60:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r19, 4(r11)
	and r24, r19, r27
	setlt.u r6, r1, r24
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r6, zero, .LBB0_62
# %bb.61:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_54 Depth=3
	or r6, r19, r28
.LBB0_63:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	loads.w r25, 0(r11)
	and r15, r25, r27
	setlt.u r11, r1, r15
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	bneq r11, zero, .LBB0_65
# %bb.64:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r25, 0
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r15, r17, r15
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r15, zero, .LBB0_66
	j .LBB0_67
.LBB0_65:                               #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r25, r28
	.loc	1 183 19 is_stmt 1              # parallel-rne.mlir:183:19
	setlt.u r15, r17, r15
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r15, zero, .LBB0_67
.LBB0_66:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r25, 16
	andi r11, r11, 1
	add.s r11, r25, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_67:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	setlt.u r15, r17, r24
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r15, zero, .LBB0_70
# %bb.68:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r17, r23
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	beq r15, zero, .LBB0_71
.LBB0_69:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r2, zero, .LBB0_53
	j .LBB0_72
.LBB0_70:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r6, r6, r13
	setlt.u r15, r17, r23
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r15, zero, .LBB0_69
.LBB0_71:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r3
	and r14, r14, r13
	setlt.u r2, r17, r2
	.loc	1 184 19                        # parallel-rne.mlir:184:19
	bneq r2, zero, .LBB0_53
.LBB0_72:                               # %vector.body92
                                        #   in Loop: Header=BB0_54 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_53
.LBB0_73:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block114
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[8:9], r2
	.loc	1 142 9 is_stmt 1               # parallel-rne.mlir:142:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_101
.LBB0_75:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[8:9], r16
	zext_int2long r[8:9], zero
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	beq r7, r26, .LBB0_77
	j .LBB0_82
.LBB0_76:                               # %scalar.ph108
                                        #   in Loop: Header=BB0_77 Depth=3
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r2, r7, r2
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	stores.w r6, 0(r2)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	beq r10, zero, .LBB0_74
.LBB0_77:                               # %scalar.ph108
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r11, r10, r27
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r6, r1, r11
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r6, zero, .LBB0_79
# %bb.78:                               # %scalar.ph108
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r11, r17, r11
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r11, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r11, r17, r11
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r11, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph108
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_76
.LBB0_81:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 143 11 is_stmt 1              # parallel-rne.mlir:143:11
	load.d r[14:15], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 158 13                        # parallel-rne.mlir:158:13
	add.s r6, r7, r10
	stores.w r12, 12(r6)
	stores.w r18, 8(r6)
	stores.w r19, 4(r6)
	stores.w r11, 0(r6)
	.loc	1 143 11                        # parallel-rne.mlir:143:11
	seteq.d r2, r[8:9], r[14:15]
	bneq r2, zero, .LBB0_74
.LBB0_82:                               # %vector.body110
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 144 19                        # parallel-rne.mlir:144:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 146 19                        # parallel-rne.mlir:146:19
	and r2, r22, r27
	.loc	1 148 19                        # parallel-rne.mlir:148:19
	setlt.u r6, r1, r2
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r6, zero, .LBB0_84
# %bb.83:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	or r12, r22, r28
.LBB0_85:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r14, 8(r11)
	and r23, r14, r27
	setlt.u r6, r1, r23
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r6, zero, .LBB0_87
# %bb.86:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r14, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	or r18, r14, r28
.LBB0_88:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r6, 4(r11)
	and r20, r6, r27
	setlt.u r15, r1, r20
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r15, zero, .LBB0_90
# %bb.89:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r6, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	or r19, r6, r28
.LBB0_91:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r21, 0(r11)
	and r15, r21, r27
	setlt.u r11, r1, r15
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	bneq r11, zero, .LBB0_93
# %bb.92:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r15, r17, r15
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r15, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r21, r28
	.loc	1 155 19 is_stmt 1              # parallel-rne.mlir:155:19
	setlt.u r15, r17, r15
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r15, zero, .LBB0_95
.LBB0_94:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_95:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r15, r17, r20
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r15, zero, .LBB0_98
# %bb.96:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r17, r23
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	beq r6, zero, .LBB0_99
.LBB0_97:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r2, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r15, r6, 16
	andi r15, r15, 1
	add.s r6, r6, r15
	add.s r6, r6, r3
	and r19, r6, r13
	setlt.u r6, r17, r23
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r6, zero, .LBB0_97
.LBB0_99:                               # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r14, 16
	andi r6, r6, 1
	add.s r6, r14, r6
	add.s r6, r6, r3
	and r18, r6, r13
	setlt.u r2, r17, r2
	.loc	1 156 19                        # parallel-rne.mlir:156:19
	bneq r2, zero, .LBB0_81
.LBB0_100:                              # %vector.body110
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	addli r6, zero, 1
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { sm }
	.loc	1 163 7                         # parallel-rne.mlir:163:7
	addli r2, zero, 2
	bneq r11, r2, .LBB0_42
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 191 7 is_stmt 1               # parallel-rne.mlir:191:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block105
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[8:9], r2
	.loc	1 198 9 is_stmt 1               # parallel-rne.mlir:198:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_130
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_106 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[8:9], r16
	zext_int2long r[8:9], zero
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	beq r7, r26, .LBB0_106
	j .LBB0_111
.LBB0_105:                              # %scalar.ph99
                                        #   in Loop: Header=BB0_106 Depth=3
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r2, r7, r2
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	stores.w r6, 0(r2)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	beq r10, zero, .LBB0_103
.LBB0_106:                              # %scalar.ph99
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r11, r10, r27
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r6, r1, r11
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r6, zero, .LBB0_108
# %bb.107:                              # %scalar.ph99
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r11, r17, r11
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r11, zero, .LBB0_105
	j .LBB0_109
.LBB0_108:                              #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r11, r17, r11
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r11, zero, .LBB0_105
.LBB0_109:                              # %scalar.ph99
                                        #   in Loop: Header=BB0_106 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_105
.LBB0_110:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 199 11 is_stmt 1              # parallel-rne.mlir:199:11
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 214 13                        # parallel-rne.mlir:214:13
	add.s r10, r7, r10
	stores.w r12, 12(r10)
	stores.w r14, 8(r10)
	stores.w r6, 4(r10)
	stores.w r11, 0(r10)
	.loc	1 199 11                        # parallel-rne.mlir:199:11
	seteq.d r2, r[8:9], r[18:19]
	bneq r2, zero, .LBB0_103
.LBB0_111:                              # %vector.body101
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 200 19                        # parallel-rne.mlir:200:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 202 19                        # parallel-rne.mlir:202:19
	and r2, r22, r27
	.loc	1 204 19                        # parallel-rne.mlir:204:19
	setlt.u r6, r1, r2
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r6, zero, .LBB0_113
# %bb.112:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	or r12, r22, r28
.LBB0_114:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r18, 8(r11)
	and r23, r18, r27
	setlt.u r6, r1, r23
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r6, zero, .LBB0_116
# %bb.115:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	or r14, r18, r28
.LBB0_117:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r19, 4(r11)
	and r20, r19, r27
	setlt.u r6, r1, r20
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r6, zero, .LBB0_119
# %bb.118:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	or r6, r19, r28
.LBB0_120:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r21, 0(r11)
	and r15, r21, r27
	setlt.u r11, r1, r15
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	bneq r11, zero, .LBB0_122
# %bb.121:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r15, r17, r15
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r15, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r21, r28
	.loc	1 211 19 is_stmt 1              # parallel-rne.mlir:211:19
	setlt.u r15, r17, r15
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r15, zero, .LBB0_124
.LBB0_123:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_124:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r15, r17, r20
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r15, zero, .LBB0_127
# %bb.125:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r17, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	beq r15, zero, .LBB0_128
.LBB0_126:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r6, r6, r13
	setlt.u r15, r17, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r15, zero, .LBB0_126
.LBB0_128:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r3
	and r14, r14, r13
	setlt.u r2, r17, r2
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_110
.LBB0_129:                              # %vector.body101
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_110
.LBB0_130:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_131:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	loadli.w r2,  -928(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_164
# %bb.132:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	addli r2, zero, 4
	beq r11, r2, .LBB0_193
.LBB0_133:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 275 7 is_stmt 1               # parallel-rne.mlir:275:7
	beq r11, r2, .LBB0_222
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	beq r11, r16, .LBB0_250
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r11, r2, .LBB0_279
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_138
.LBB0_137:                              # %middle.block
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[8:9], r2
	.loc	1 282 9 is_stmt 1               # parallel-rne.mlir:282:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_278
.LBB0_138:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_145 Depth 3
                                        #       Child Loop BB0_140 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[8:9], r16
	zext_int2long r[8:9], zero
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	beq r7, r26, .LBB0_140
	j .LBB0_145
.LBB0_139:                              # %scalar.ph
                                        #   in Loop: Header=BB0_140 Depth=3
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	add.s r2, r7, r2
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	stores.w r6, 0(r2)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	beq r10, zero, .LBB0_137
.LBB0_140:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r11, r10, r27
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r6, r1, r11
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r6, zero, .LBB0_142
# %bb.141:                              # %scalar.ph
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r11, r17, r11
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r11, zero, .LBB0_139
	j .LBB0_143
.LBB0_142:                              #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r11, r17, r11
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r11, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_140 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_139
.LBB0_144:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 283 11 is_stmt 1              # parallel-rne.mlir:283:11
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 298 13                        # parallel-rne.mlir:298:13
	add.s r10, r7, r10
	stores.w r12, 12(r10)
	stores.w r14, 8(r10)
	stores.w r6, 4(r10)
	stores.w r11, 0(r10)
	.loc	1 283 11                        # parallel-rne.mlir:283:11
	seteq.d r2, r[8:9], r[18:19]
	bneq r2, zero, .LBB0_137
.LBB0_145:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 284 19                        # parallel-rne.mlir:284:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 286 19                        # parallel-rne.mlir:286:19
	and r2, r22, r27
	.loc	1 288 19                        # parallel-rne.mlir:288:19
	setlt.u r6, r1, r2
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r6, zero, .LBB0_147
# %bb.146:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_148
.LBB0_147:                              #   in Loop: Header=BB0_145 Depth=3
	or r12, r22, r28
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r18, 8(r11)
	and r23, r18, r27
	setlt.u r6, r1, r23
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r6, zero, .LBB0_150
# %bb.149:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_145 Depth=3
	or r14, r18, r28
.LBB0_151:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r19, 4(r11)
	and r20, r19, r27
	setlt.u r6, r1, r20
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r6, zero, .LBB0_153
# %bb.152:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_154
.LBB0_153:                              #   in Loop: Header=BB0_145 Depth=3
	or r6, r19, r28
.LBB0_154:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	loads.w r21, 0(r11)
	and r15, r21, r27
	setlt.u r11, r1, r15
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	bneq r11, zero, .LBB0_160
# %bb.155:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r15, r17, r15
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r15, zero, .LBB0_157
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_157:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	setlt.u r15, r17, r20
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r15, zero, .LBB0_161
# %bb.158:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r17, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r15, zero, .LBB0_162
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_144
	j .LBB0_163
.LBB0_160:                              #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r21, r28
	.loc	1 295 19 is_stmt 1              # parallel-rne.mlir:295:19
	setlt.u r15, r17, r15
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	beq r15, zero, .LBB0_156
	j .LBB0_157
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r6, r6, r13
	setlt.u r15, r17, r23
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r15, zero, .LBB0_159
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r3
	and r14, r14, r13
	setlt.u r2, r17, r2
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	bneq r2, zero, .LBB0_144
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_145 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_144
.LBB0_164:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 24
	.loc	1 219 7 is_stmt 1               # parallel-rne.mlir:219:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_166
.LBB0_165:                              # %middle.block87
                                        #   in Loop: Header=BB0_166 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[8:9], r2
	.loc	1 226 9 is_stmt 1               # parallel-rne.mlir:226:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_192
.LBB0_166:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_173 Depth 3
                                        #       Child Loop BB0_168 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[8:9], r16
	zext_int2long r[8:9], zero
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	beq r7, r26, .LBB0_168
	j .LBB0_173
.LBB0_167:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_168 Depth=3
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	add.s r2, r7, r2
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	stores.w r6, 0(r2)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	beq r10, zero, .LBB0_165
.LBB0_168:                              # %scalar.ph81
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r11, r10, r27
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r6, r1, r11
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r6, zero, .LBB0_170
# %bb.169:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r11, r17, r11
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r11, zero, .LBB0_167
	j .LBB0_171
.LBB0_170:                              #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r11, r17, r11
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r11, zero, .LBB0_167
.LBB0_171:                              # %scalar.ph81
                                        #   in Loop: Header=BB0_168 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_167
.LBB0_172:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 227 11 is_stmt 1              # parallel-rne.mlir:227:11
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 242 13                        # parallel-rne.mlir:242:13
	add.s r10, r7, r10
	stores.w r12, 12(r10)
	stores.w r14, 8(r10)
	stores.w r6, 4(r10)
	stores.w r11, 0(r10)
	.loc	1 227 11                        # parallel-rne.mlir:227:11
	seteq.d r2, r[8:9], r[18:19]
	bneq r2, zero, .LBB0_165
.LBB0_173:                              # %vector.body83
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_166 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 228 19                        # parallel-rne.mlir:228:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 230 19                        # parallel-rne.mlir:230:19
	and r2, r22, r27
	.loc	1 232 19                        # parallel-rne.mlir:232:19
	setlt.u r6, r1, r2
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r6, zero, .LBB0_175
# %bb.174:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	or r12, r22, r28
.LBB0_176:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r18, 8(r11)
	and r23, r18, r27
	setlt.u r6, r1, r23
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r6, zero, .LBB0_178
# %bb.177:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_179
.LBB0_178:                              #   in Loop: Header=BB0_173 Depth=3
	or r14, r18, r28
.LBB0_179:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r19, 4(r11)
	and r20, r19, r27
	setlt.u r6, r1, r20
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r6, zero, .LBB0_181
# %bb.180:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_173 Depth=3
	or r6, r19, r28
.LBB0_182:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	loads.w r21, 0(r11)
	and r15, r21, r27
	setlt.u r11, r1, r15
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	bneq r11, zero, .LBB0_188
# %bb.183:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r15, r17, r15
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r15, zero, .LBB0_185
.LBB0_184:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_185:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	setlt.u r15, r17, r20
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r15, zero, .LBB0_189
# %bb.186:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r17, r23
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r15, zero, .LBB0_190
.LBB0_187:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r2, zero, .LBB0_172
	j .LBB0_191
.LBB0_188:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r21, r28
	.loc	1 239 19 is_stmt 1              # parallel-rne.mlir:239:19
	setlt.u r15, r17, r15
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	beq r15, zero, .LBB0_184
	j .LBB0_185
.LBB0_189:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r6, r6, r13
	setlt.u r15, r17, r23
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r15, zero, .LBB0_187
.LBB0_190:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r3
	and r14, r14, r13
	setlt.u r2, r17, r2
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	bneq r2, zero, .LBB0_172
.LBB0_191:                              # %vector.body83
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_172
.LBB0_192:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 219 7                         # parallel-rne.mlir:219:7
	mfence { sm }
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	addli r2, zero, 4
	bneq r11, r2, .LBB0_133
.LBB0_193:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_195
.LBB0_194:                              # %middle.block78
                                        #   in Loop: Header=BB0_195 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[8:9], r2
	.loc	1 254 9 is_stmt 1               # parallel-rne.mlir:254:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_221
.LBB0_195:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_202 Depth 3
                                        #       Child Loop BB0_197 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[8:9], r16
	zext_int2long r[8:9], zero
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	beq r7, r26, .LBB0_197
	j .LBB0_202
.LBB0_196:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_197 Depth=3
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	add.s r2, r7, r2
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	stores.w r6, 0(r2)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	beq r10, zero, .LBB0_194
.LBB0_197:                              # %scalar.ph72
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r11, r10, r27
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r6, r1, r11
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r6, zero, .LBB0_199
# %bb.198:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r11, r17, r11
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r11, zero, .LBB0_196
	j .LBB0_200
.LBB0_199:                              #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r11, r17, r11
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r11, zero, .LBB0_196
.LBB0_200:                              # %scalar.ph72
                                        #   in Loop: Header=BB0_197 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_196
.LBB0_201:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 255 11 is_stmt 1              # parallel-rne.mlir:255:11
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 270 13                        # parallel-rne.mlir:270:13
	add.s r10, r7, r10
	stores.w r12, 12(r10)
	stores.w r14, 8(r10)
	stores.w r6, 4(r10)
	stores.w r11, 0(r10)
	.loc	1 255 11                        # parallel-rne.mlir:255:11
	seteq.d r2, r[8:9], r[18:19]
	bneq r2, zero, .LBB0_194
.LBB0_202:                              # %vector.body74
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_195 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 256 19                        # parallel-rne.mlir:256:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 258 19                        # parallel-rne.mlir:258:19
	and r2, r22, r27
	.loc	1 260 19                        # parallel-rne.mlir:260:19
	setlt.u r6, r1, r2
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r6, zero, .LBB0_204
# %bb.203:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	or r12, r22, r28
.LBB0_205:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r18, 8(r11)
	and r23, r18, r27
	setlt.u r6, r1, r23
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r6, zero, .LBB0_207
# %bb.206:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_202 Depth=3
	or r14, r18, r28
.LBB0_208:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r19, 4(r11)
	and r20, r19, r27
	setlt.u r6, r1, r20
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r6, zero, .LBB0_210
# %bb.209:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_202 Depth=3
	or r6, r19, r28
.LBB0_211:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	loads.w r21, 0(r11)
	and r15, r21, r27
	setlt.u r11, r1, r15
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	bneq r11, zero, .LBB0_217
# %bb.212:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r15, r17, r15
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r15, zero, .LBB0_214
.LBB0_213:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_214:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	setlt.u r15, r17, r20
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r15, zero, .LBB0_218
# %bb.215:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r17, r23
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r15, zero, .LBB0_219
.LBB0_216:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_201
	j .LBB0_220
.LBB0_217:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r21, r28
	.loc	1 267 19 is_stmt 1              # parallel-rne.mlir:267:19
	setlt.u r15, r17, r15
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	beq r15, zero, .LBB0_213
	j .LBB0_214
.LBB0_218:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r6, r6, r13
	setlt.u r15, r17, r23
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r15, zero, .LBB0_216
.LBB0_219:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r3
	and r14, r14, r13
	setlt.u r2, r17, r2
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_201
.LBB0_220:                              # %vector.body74
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_201
.LBB0_221:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 247 7                         # parallel-rne.mlir:247:7
	mfence { sm }
	addli r2, zero, 7
	.loc	1 275 7                         # parallel-rne.mlir:275:7
	bneq r11, r2, .LBB0_134
.LBB0_222:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 331 7 is_stmt 1               # parallel-rne.mlir:331:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_224
.LBB0_223:                              # %middle.block69
                                        #   in Loop: Header=BB0_224 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[8:9], -912(r30)                # 8-byte Folded Reload
	.loc	1 338 9 is_stmt 1               # parallel-rne.mlir:338:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[8:9], r[8:9], 1
	beq r2, zero, .LBB0_278
.LBB0_224:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_226 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[8:9], r16
	zext_int2long r[8:9], zero
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	beq r7, r26, .LBB0_226
	j .LBB0_231
.LBB0_225:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_226 Depth=3
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r2, r7, r2
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	stores.w r6, 0(r2)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	beq r10, zero, .LBB0_223
.LBB0_226:                              # %scalar.ph63
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r11, r10, r27
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r6, r1, r11
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r6, zero, .LBB0_228
# %bb.227:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r11, r17, r11
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r11, zero, .LBB0_225
	j .LBB0_229
.LBB0_228:                              #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r11, r17, r11
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r11, zero, .LBB0_225
.LBB0_229:                              # %scalar.ph63
                                        #   in Loop: Header=BB0_226 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_225
.LBB0_230:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 339 11 is_stmt 1              # parallel-rne.mlir:339:11
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 354 13                        # parallel-rne.mlir:354:13
	add.s r10, r7, r10
	stores.w r12, 12(r10)
	stores.w r14, 8(r10)
	stores.w r6, 4(r10)
	stores.w r11, 0(r10)
	.loc	1 339 11                        # parallel-rne.mlir:339:11
	seteq.d r2, r[8:9], r[18:19]
	bneq r2, zero, .LBB0_223
.LBB0_231:                              # %vector.body65
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 340 19                        # parallel-rne.mlir:340:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 342 19                        # parallel-rne.mlir:342:19
	and r2, r22, r27
	.loc	1 344 19                        # parallel-rne.mlir:344:19
	setlt.u r6, r1, r2
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r6, zero, .LBB0_233
# %bb.232:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_231 Depth=3
	or r12, r22, r28
.LBB0_234:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r18, 8(r11)
	and r23, r18, r27
	setlt.u r6, r1, r23
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r6, zero, .LBB0_236
# %bb.235:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_231 Depth=3
	or r14, r18, r28
.LBB0_237:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r19, 4(r11)
	and r20, r19, r27
	setlt.u r6, r1, r20
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r6, zero, .LBB0_239
# %bb.238:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_240
.LBB0_239:                              #   in Loop: Header=BB0_231 Depth=3
	or r6, r19, r28
.LBB0_240:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	loads.w r21, 0(r11)
	and r15, r21, r27
	setlt.u r11, r1, r15
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	bneq r11, zero, .LBB0_242
# %bb.241:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r15, r17, r15
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r15, zero, .LBB0_243
	j .LBB0_244
.LBB0_242:                              #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r21, r28
	.loc	1 351 19 is_stmt 1              # parallel-rne.mlir:351:19
	setlt.u r15, r17, r15
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r15, zero, .LBB0_244
.LBB0_243:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_244:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	setlt.u r15, r17, r20
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r15, zero, .LBB0_247
# %bb.245:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r17, r23
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	beq r15, zero, .LBB0_248
.LBB0_246:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r2, zero, .LBB0_230
	j .LBB0_249
.LBB0_247:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r6, r6, r13
	setlt.u r15, r17, r23
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r15, zero, .LBB0_246
.LBB0_248:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r3
	and r14, r14, r13
	setlt.u r2, r17, r2
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	bneq r2, zero, .LBB0_230
.LBB0_249:                              # %vector.body65
                                        #   in Loop: Header=BB0_231 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_230
.LBB0_250:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 303 7 is_stmt 1               # parallel-rne.mlir:303:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r2
	j .LBB0_252
.LBB0_251:                              # %middle.block60
                                        #   in Loop: Header=BB0_252 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[10:11], -912(r30)              # 8-byte Folded Reload
	zext_int2long r[8:9], r2
	.loc	1 310 9 is_stmt 1               # parallel-rne.mlir:310:9
	setlt.ul r2, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	beq r2, zero, .LBB0_278
.LBB0_252:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_259 Depth 3
                                        #       Child Loop BB0_254 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -912(r30)               # 8-byte Folded Spill
	sll.d r[24:25], r[8:9], r16
	zext_int2long r[8:9], zero
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	beq r7, r26, .LBB0_254
	j .LBB0_259
.LBB0_253:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_254 Depth=3
	setlt.ul r10, r[8:9], r[4:5]
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	add.s r2, r7, r2
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	stores.w r6, 0(r2)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	beq r10, zero, .LBB0_251
.LBB0_254:                              # %scalar.ph54
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r2, r10, 2
	add.s r6, r26, r2
	loads.w r10, 0(r6)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r11, r10, r27
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r6, r1, r11
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_256
# %bb.255:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r10, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r11, r17, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r11, zero, .LBB0_253
	j .LBB0_257
.LBB0_256:                              #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r10, r28
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r11, r17, r11
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r11, zero, .LBB0_253
.LBB0_257:                              # %scalar.ph54
                                        #   in Loop: Header=BB0_254 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r10, 16
	andi r6, r6, 1
	add.s r6, r10, r6
	add.s r6, r6, r3
	and r6, r6, r13
	j .LBB0_253
.LBB0_258:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 311 11 is_stmt 1              # parallel-rne.mlir:311:11
	load.d r[18:19], -904(r30)              # 8-byte Folded Reload
	addli.d r[8:9], r[8:9], 4
	.loc	1 326 13                        # parallel-rne.mlir:326:13
	add.s r10, r7, r10
	stores.w r12, 12(r10)
	stores.w r14, 8(r10)
	stores.w r6, 4(r10)
	stores.w r11, 0(r10)
	.loc	1 311 11                        # parallel-rne.mlir:311:11
	seteq.d r2, r[8:9], r[18:19]
	bneq r2, zero, .LBB0_251
.LBB0_259:                              # %vector.body56
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_252 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 312 19                        # parallel-rne.mlir:312:19
	add.ul r[10:11], r[8:9], r[24:25]
	slli r10, r10, 2
	add.s r11, r26, r10
	loads.w r22, 12(r11)
	.loc	1 314 19                        # parallel-rne.mlir:314:19
	and r2, r22, r27
	.loc	1 316 19                        # parallel-rne.mlir:316:19
	setlt.u r6, r1, r2
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_261
# %bb.260:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_259 Depth=3
	or r12, r22, r28
.LBB0_262:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r18, 8(r11)
	and r23, r18, r27
	setlt.u r6, r1, r23
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_264
# %bb.263:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_265
.LBB0_264:                              #   in Loop: Header=BB0_259 Depth=3
	or r14, r18, r28
.LBB0_265:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r19, 4(r11)
	and r20, r19, r27
	setlt.u r6, r1, r20
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r6, zero, .LBB0_267
# %bb.266:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r6, r19, 0
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_259 Depth=3
	or r6, r19, r28
.LBB0_268:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	loads.w r21, 0(r11)
	and r15, r21, r27
	setlt.u r11, r1, r15
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	bneq r11, zero, .LBB0_270
# %bb.269:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r15, r17, r15
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r15, zero, .LBB0_271
	j .LBB0_272
.LBB0_270:                              #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r21, r28
	.loc	1 323 19 is_stmt 1              # parallel-rne.mlir:323:19
	setlt.u r15, r17, r15
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r15, zero, .LBB0_272
.LBB0_271:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r21, 16
	andi r11, r11, 1
	add.s r11, r21, r11
	add.s r11, r11, r3
	and r11, r11, r13
.LBB0_272:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	setlt.u r15, r17, r20
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r15, zero, .LBB0_275
# %bb.273:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r15, r17, r23
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	beq r15, zero, .LBB0_276
.LBB0_274:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r17, r2
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_258
	j .LBB0_277
.LBB0_275:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r19, 16
	andi r6, r6, 1
	add.s r6, r19, r6
	add.s r6, r6, r3
	and r6, r6, r13
	setlt.u r15, r17, r23
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r15, zero, .LBB0_274
.LBB0_276:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r18, 16
	andi r14, r14, 1
	add.s r14, r18, r14
	add.s r14, r14, r3
	and r14, r14, r13
	setlt.u r2, r17, r2
	.loc	1 324 19                        # parallel-rne.mlir:324:19
	bneq r2, zero, .LBB0_258
.LBB0_277:                              # %vector.body56
                                        #   in Loop: Header=BB0_259 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r22, 16
	andi r2, r2, 1
	add.s r2, r22, r2
	add.s r2, r2, r3
	and r12, r2, r13
	j .LBB0_258
.LBB0_278:                              # %.sink.split48
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 30 5 is_stmt 1                # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_279:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 359 7 is_stmt 1               # parallel-rne.mlir:359:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 360 7                         # parallel-rne.mlir:360:7
	loadli.w r2,  -928(r30)                 # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.280:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 17
	.loc	1 377 7 is_stmt 1               # parallel-rne.mlir:377:7
	bneq r11, zero, .LBB0_7
# %bb.281:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	loadli.w r2,  -968(r30)                 # 4-byte Folded Reload
	addli r6, zero, 960
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	load.d r[14:15], -952(r30)              # 8-byte Folded Reload
	load.d r[20:21], -904(r30)              # 8-byte Folded Reload
	load.d r[18:19], 16(r30)
	zext_int2long r[8:9], r6
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	loadli.w r6,  -964(r30)                 # 4-byte Folded Reload
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	zext_int2long r[4:5], r2
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	sll.d r[14:15], r[14:15], r12
	addli r2, zero, 1
	addli r12, zero, 64
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	min.ul r[8:9], r[4:5], r[8:9]
	.loc	1 362 13                        # parallel-rne.mlir:362:13
	sext_int2long r[10:11], r6
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	add.ul r[14:15], r[18:19], r[14:15]
	load.d r[18:19], -960(r30)              # 8-byte Folded Reload
	addli r6, zero, 12
	.loc	1 369 13                        # parallel-rne.mlir:369:13
	addli.d r[8:9], r[8:9], 64
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	xwait r6, 0
	sll.d r[18:19], r[18:19], r2
	.loc	1 371 13                        # parallel-rne.mlir:371:13
	max.ul r[8:9], r[8:9], r[4:5]
	sub.sl r[4:5], r[8:9], r[4:5]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	min.sl r[8:9], r[10:11], r[20:21]
	addli.d r[8:9], r[8:9], 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.ul r[4:5], r[4:5], r[20:21]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	max.sl r[8:9], r[8:9], r[10:11]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	sub.sl r[8:9], r[8:9], r[10:11]
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	add.ul r[10:11], r[14:15], r[18:19]
	addli r14, zero, 5
	lock zero, r14
	dma_cfg r2, r2, zero, 0
	dma_cfg zero, r2, zero, 1
	ori r2, r7, 64
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	min.sl r[6:7], r[8:9], r[20:21]
	addli r8, zero, 1
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r2, r12, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	.loc	1 30 5                          # parallel-rne.mlir:30:5
	core_id r11
	.loc	1 377 7                         # parallel-rne.mlir:377:7
	srli r2, r2, 5
	dma_cfg r12, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 256
	addli r5, zero, 2048
	dma_cfg r5, r4, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r8, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_282:                              # %._crit_edge
	.loc	1 379 5                         # parallel-rne.mlir:379:5
	xsignal zero, 0
	bneq r11, zero, .LBB0_284
# %bb.283:
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
.LBB0_284:
	.loc	1 380 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:380:5
	addli sp, sp, 984
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
	.long	1048                            # 0x418
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu6/cache/triton-p800-ops-5134b460d69771aa/division-j3m0hlv1" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
