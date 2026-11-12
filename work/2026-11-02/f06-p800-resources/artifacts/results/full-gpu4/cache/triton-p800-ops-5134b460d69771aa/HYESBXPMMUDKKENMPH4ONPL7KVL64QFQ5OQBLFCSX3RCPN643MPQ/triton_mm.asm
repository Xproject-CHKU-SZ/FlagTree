	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-14ebwe56" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1080
	addli r1, zero, 1
.Ltmp0:
	.loc	1 31 5 prologue_end             # parallel-rne.mlir:31:5
	core_id r9
	addli r30, sp, 1016
	xsignal_mode_cfg r1
	beq r9, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 31 5                          # parallel-rne.mlir:31:5
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
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 33 10 is_stmt 1               # parallel-rne.mlir:33:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	.loc	1 32 10                         # parallel-rne.mlir:32:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 44 11                         # parallel-rne.mlir:44:11
	storeli.w zero, -196(r30)
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -520(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -720(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -916(r30)
	.loc	1 34 10                         # parallel-rne.mlir:34:10
	mul.s r1, r2, r1
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r4, r1, r4
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r2, -1
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 44 11                         # parallel-rne.mlir:44:11
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
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w r3, -912(r30)
	storeli.w r3, -908(r30)
	storeli.w r3, -904(r30)
	storeli.w r3, -900(r30)
	storeli.w r3, -896(r30)
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
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	mul.s r1, r2, r6
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	fmac.s r2, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	min.s r2, r2, r4
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	ble.s r2, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 42 11 is_stmt 1               # parallel-rne.mlir:42:11
	sext_int2long r[18:19], r1
	addli r12, zero, 4
	addli r13, zero, 1
	addli r20, zero, 7
	lui r16, 522240
	lui r17, 1048560
	addli r6, zero, 0
	store.d r[2:3], -1008(r30)              # 8-byte Folded Spill
	addli r2, zero, 16383
	lui r1, 1048448
	store.d r[1:2], -1016(r30)              # 8-byte Folded Spill
	lui r1, 127
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -948(r30)                 # 4-byte Folded Spill
	lui r1, 524287
	ori r8, r1, 4095
	lui r1, 7
	ori r4, r1, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	addli r1, zero, 11
	addli r13, zero, 1
	xsignal r1, 0
	.loc	1 362 7                         # parallel-rne.mlir:362:7
	addli r1, zero, 12
	xsignal r1, 0
	load.d r[18:19], -968(r30)              # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 50 5                          # parallel-rne.mlir:50:5
	load.d r[1:2], -1008(r30)               # 8-byte Folded Reload
	addli.d r[18:19], r[18:19], 1
	loadli.w r6,  -972(r30)                 # 4-byte Folded Reload
	setlt.sl r1, r[18:19], r[1:2]
	beq r1, zero, .LBB0_294
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
	.loc	1 77 7                          # parallel-rne.mlir:77:7
	bneq r9, r12, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r1,  32(r30)
	loadli.w r2,  28(r30)
	addli r3, zero, 2
	addli r9, zero, 8
	store.d r[18:19], -968(r30)             # 8-byte Folded Spill
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	load.d r[11:12], 8(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	loadli.w r24,  -720(r30)
	addli r14, zero, 0
	addli r25, zero, 0
	mod.s r3, r6, r3
	addli r6, r6, 1
	div.s r1, r18, r1
	storeli.w r6, -972(r30)                 # 4-byte Folded Spill
	addli r6, zero, 16
	slli r27, r3, 12
	div.s r1, r1, r2
	addli r2, zero, 256
	div.s r2, r1, r2
	slli r7, r2, 3
	slli r2, r2, 8
	sub.s r6, r6, r7
	sub.s r2, r1, r2
	min.s r6, r6, r9
	mod.s r1, r1, r6
	div.s r2, r2, r6
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	loadli.w r6,  -916(r30)
	storeli.w r6, -936(r30)                 # 4-byte Folded Spill
	addli r6, r27, 8192
	add.s r1, r7, r1
	slli r3, r2, 5
	storeli.w r3, -1000(r30)                # 4-byte Folded Spill
	slli r7, r1, 5
	zext_int2long r[9:10], r1
	zext_int2long r[2:3], r2
	addli r1, zero, 5
	sll.d r[1:2], r[2:3], r1
	addli r3, zero, 15
	store.d r[9:10], -992(r30)              # 8-byte Folded Spill
	storeli.w r7, -996(r30)                 # 4-byte Folded Spill
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	sll.d r[18:19], r[1:2], r13
	load.d r[1:2], -1016(r30)               # 8-byte Folded Reload
	sll.d r[9:10], r[9:10], r3
	store.d r[18:19], -984(r30)             # 8-byte Folded Spill
	and.d r[1:2], r[9:10], r[1:2]
	store.d r[1:2], -944(r30)               # 8-byte Folded Spill
	add.ul r[1:2], r[11:12], r[18:19]
	store.d r[1:2], -960(r30)               # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 4
	.loc	1 101 9 is_stmt 1               # parallel-rne.mlir:101:9
	lock zero, r12
	addli r15, zero, 64
	addli r13, zero, 128
	addli r11, zero, 2
	dma_cfg r26, r26, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r21, zero, 2
	add.s r3, r7, r3
	addli r7, zero, 5
	dma_cfg r3, r20, r15, 3
	addli r3, zero, 2048
	addli r21, zero, 512
	addli r20, zero, 7
	dma_cfg r13, r15, r12, 4
	dma_cfg r21, r3, r19, 5
	addli r3, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r20, 10
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
	addli r3, zero, 18
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r15, 3
	dma_cfg r13, zero, r12, 4
	dma_cfg r21, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r11, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r3,  -520(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r7,  -196(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r3, r3, 1
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r7, r7, 1
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	storeli.w r3, -520(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	storeli.w r7, -196(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r25, r25, 1
	addli r3, zero, 8
	beq r25, r3, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 122 15                        # parallel-rne.mlir:122:15
	addli r14, r14, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 79 15                         # parallel-rne.mlir:79:15
	zext_int2long r[12:13], r25
	loadli.w r3,  -948(r30)                 # 4-byte Folded Reload
	addli r15, zero, 7
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	sll.d r[18:19], r[12:13], r20
	zext_int2long r[21:22], r3
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	add.ul r[19:20], r[18:19], r[9:10]
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	setlt.ul r3, r[21:22], r[19:20]
	load.d r[21:22], -944(r30)              # 8-byte Folded Reload
	.loc	1 87 15                         # parallel-rne.mlir:87:15
	bneq r3, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[21:22], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	loadli.w r1,  -936(r30)                 # 4-byte Folded Reload
	add.s r11, r24, r14
	.loc	1 97 15 is_stmt 1               # parallel-rne.mlir:97:15
	addli r18, zero, 49
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	addli r7, zero, 48
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	mod.s r23, r11, r18
	addli r18, zero, 480
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r3, r1, r14
	zext_int2long r[1:2], r18
	.loc	1 95 15 is_stmt 1               # parallel-rne.mlir:95:15
	mod.s r7, r3, r7
	addli r3, r3, 1
	store.d r[1:2], -928(r30)               # 8-byte Folded Spill
	storeli.w r3, -916(r30)
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	addli r3, r11, 1
	storeli.w r3, -720(r30)
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	.loc	1 95 15                         # parallel-rne.mlir:95:15
	slli r18, r7, 14
	.loc	1 97 15                         # parallel-rne.mlir:97:15
	slli r7, r23, 14
	lui r23, 4
	add.s r28, r7, r23
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r23
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	beq r23, r3, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r26, zero, 1
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	bneq r23, r26, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r3, zero, 1024
	sub.sl r[12:13], r[19:20], r[21:22]
	load.d r[1:2], -928(r30)                # 8-byte Folded Reload
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	sll.d r[18:19], r[19:20], r26
	zext_int2long r[21:22], r3
	addli r3, zero, 48
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[12:13], r[12:13], r[21:22]
	min.sl r[21:22], r[12:13], r[1:2]
	sub.sl r[12:13], r[21:22], r[12:13]
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	load.d r[20:21], 0(r30)
	add.ul r[20:21], r[20:21], r[18:19]
	addli r19, r12, 32
	addli r18, zero, 3
	addli r12, zero, 4
	xwait r18, 0
	blt.s r3, r11, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	.loc	1 101 9                         # parallel-rne.mlir:101:9
	addli r3, zero, 2
	addli r13, zero, 512
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r15, 10
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
	addli r3, zero, 18
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 19
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 64
	dma_cfg r26, r26, zero, 0
	dma_cfg r26, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r12, 4
	addli r3, zero, 32
	dma_cfg r13, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r7, zero, 2
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	addli r3, zero, 5
	addli r12, zero, 4
	addli r20, zero, 7
	xwait r7, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r7, zero, 0
	addli r7, zero, 32
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r7, zero, 13
	shuffle_batch r18, r28, r3, 1
	addli r3, zero, 3
	unlock zero
	xsignal r3, 0
	xsignal r12, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	loadli.w r3,  -520(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	loadli.w r21,  -196(r30)
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r7, zero, 80
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r11, zero, 48
	lui r15, 200
	addli r20, zero, 7
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	mod.s r7, r3, r7
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	mod.s r19, r21, r11
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	addli r3, r3, 1
	storeli.w r3, -520(r30)
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	addli r3, r21, 1
	storeli.w r3, -196(r30)
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r3, zero, 6
	.loc	1 112 15                        # parallel-rne.mlir:112:15
	slli r11, r7, 14
	.loc	1 114 15                        # parallel-rne.mlir:114:15
	slli r7, r19, 14
	add.s r28, r7, r15
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	beq r23, r20, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r23, r3, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 18
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	load.d r[1:2], -960(r30)                # 8-byte Folded Reload
	addli r18, zero, 7
	addli r3, zero, 47
	sll.d r[11:12], r[12:13], r22
	xwait r18, 0
	add.ul r[19:20], r[1:2], r[11:12]
	addli r12, zero, 4
	blt.s r3, r21, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 5
	addli r13, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	addli r3, zero, 2
	lock zero, r11
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r13, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 3
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 6
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r18, 10
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
	addli r3, zero, 19
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 64
	dma_cfg r13, r13, zero, 0
	dma_cfg r13, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r3, 3
	addli r3, zero, 128
	dma_cfg r3, zero, r13, 4
	dma_cfg r3, zero, r3, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	unlock r11
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 200
	addli r11, zero, 1
	.loc	1 118 9                         # parallel-rne.mlir:118:9
	lock zero, r12
	addli r15, zero, 64
	addli r13, zero, 128
	ori r3, r3, 64
	dma_cfg r11, r11, zero, 0
	dma_cfg zero, r20, zero, 2
	add.s r3, r7, r3
	addli r7, zero, 5
	dma_cfg r3, r19, r15, 3
	addli r3, zero, 2048
	addli r19, zero, 6
	addli r20, zero, 7
	dma_cfg r13, r15, r11, 4
	dma_cfg r13, r3, r13, 5
	addli r3, zero, 2
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 3
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r18, 10
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
	addli r3, zero, 19
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 20
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 21
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 22
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 23
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 24
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 25
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 26
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 27
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 28
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 29
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 30
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 31
	dma_cfg zero, zero, r3, 10
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r28, zero, r15, 3
	dma_cfg r13, zero, r11, 4
	dma_cfg r13, zero, r13, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r19, 0
	.loc	1 119 9 is_stmt 1               # parallel-rne.mlir:119:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r3, 0
	addli r3, zero, 9
	addli r7, zero, 32
	addli r12, zero, 4
	xwait r3, 0
	addli r3, zero, 2
	lock zero, zero
	ds_cfg r3, zero, 0
	addli r3, zero, 128
	ds_cfg r7, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r11, r28, r3, 2
	addli r3, zero, 8
	unlock zero
	xsignal r20, 0
	xsignal r3, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r12, zero, 4
	.loc	1 121 9 is_stmt 1               # parallel-rne.mlir:121:9
	bneq r23, r12, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 8
	addli r7, zero, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r13, zero, 128
	addli r15, zero, 32
	xwait r12, 0
	xwait r3, 0
	lock zero, r7
	mm_cfg r15, r13, r15, 0
	mm_cfg r3, r7, r7, 2
	beq r14, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r6, r18, r11, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	addli r25, r25, 1
	addli r3, zero, 8
	bneq r25, r3, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	mm r6, r18, r11, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 1
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r25, r25, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	unlock r3
	addli r3, zero, 5
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	addli r3, zero, 8
	bneq r25, r3, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	bneq r23, r12, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	storeli.w zero, -944(r30)               # 4-byte Folded Spill
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r9
	.loc	1 125 7                         # parallel-rne.mlir:125:7
	xsignal r1, 0
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r9
	addli r1, zero, 3
	.loc	1 130 7                         # parallel-rne.mlir:130:7
	bneq r9, r1, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	storeli.w r1, -944(r30)                 # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -944(r30)               # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 135 7 is_stmt 1               # parallel-rne.mlir:135:7
	addli r1, zero, 255
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	xfence
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	mfence { lm, sm, gm }
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	csr_set csr5, r1
	addli r1, zero, 32
	sync_core
	zext_int2long r[14:15], r1
	addli r1, zero, 31
	zext_int2long r[24:25], r1
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	beq r9, zero, .LBB0_71
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	beq r9, r1, .LBB0_102
.LBB0_40:                               #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 1
	bneq r9, r1, .LBB0_133
# %bb.41:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[2:3], r12
	mfence { lm, sm, gm }
	j .LBB0_43
.LBB0_42:                               # %middle.block99
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r20, zero, 7
	load.d r[9:10], -936(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r20
	.loc	1 171 9 is_stmt 1               # parallel-rne.mlir:171:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_132
.LBB0_43:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_52 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	bneq r27, r6, .LBB0_50
# %bb.44:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_46
.LBB0_45:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 187 13 is_stmt 1              # parallel-rne.mlir:187:13
	add.s r1, r27, r1
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r2, 0(r1)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	beq r3, zero, .LBB0_42
.LBB0_46:                               # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r3, r7, r8
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r2, r16, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r2, zero, .LBB0_48
# %bb.47:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_45
	j .LBB0_49
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_45
.LBB0_49:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_45
.LBB0_50:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_43 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_52
.LBB0_51:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 172 11 is_stmt 1              # parallel-rne.mlir:172:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	add.s r2, r27, r28
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 187 13                        # parallel-rne.mlir:187:13
	stores.w r23, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 172 11                        # parallel-rne.mlir:172:11
	bneq r1, zero, .LBB0_42
.LBB0_52:                               # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 173 19                        # parallel-rne.mlir:173:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r7, 12(r13)
	.loc	1 175 19                        # parallel-rne.mlir:175:19
	and r26, r7, r8
	.loc	1 177 19                        # parallel-rne.mlir:177:19
	setlt.u r1, r16, r26
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_54
# %bb.53:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r7, 0
	j .LBB0_55
.LBB0_54:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r23, r7, r1
.LBB0_55:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r1, zero, .LBB0_57
# %bb.56:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_58
.LBB0_57:                               #   in Loop: Header=BB0_52 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_58:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r11, 4(r13)
	and r1, r11, r8
	setlt.u r2, r16, r1
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r2, zero, .LBB0_60
# %bb.59:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_61
.LBB0_60:                               #   in Loop: Header=BB0_52 Depth=3
	lui r2, 1024
	or r21, r11, r2
.LBB0_61:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	bneq r13, zero, .LBB0_63
# %bb.62:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r3, zero, .LBB0_64
	j .LBB0_65
.LBB0_63:                               #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 184 19 is_stmt 1              # parallel-rne.mlir:184:19
	setlt.u r3, r5, r3
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r3, zero, .LBB0_65
.LBB0_64:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_65:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	setlt.u r1, r5, r1
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r1, zero, .LBB0_68
# %bb.66:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	beq r1, zero, .LBB0_69
.LBB0_67:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r1, zero, .LBB0_51
	j .LBB0_70
.LBB0_68:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r17
	setlt.u r1, r5, r18
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r1, zero, .LBB0_67
.LBB0_69:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 185 19                        # parallel-rne.mlir:185:19
	bneq r1, zero, .LBB0_51
.LBB0_70:                               # %vector.body95
                                        #   in Loop: Header=BB0_52 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r23, r1, r17
	j .LBB0_51
.LBB0_71:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	xfence
	zext_int2long r[2:3], zero
	mfence { lm, sm, gm }
	j .LBB0_73
.LBB0_72:                               # %middle.block117
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 3
	load.d r[9:10], -936(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 143 9 is_stmt 1               # parallel-rne.mlir:143:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_101
.LBB0_73:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_82 Depth 3
                                        #       Child Loop BB0_76 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	bneq r27, r6, .LBB0_80
# %bb.74:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_76
.LBB0_75:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 159 13 is_stmt 1              # parallel-rne.mlir:159:13
	add.s r1, r27, r1
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r2, 0(r1)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	beq r3, zero, .LBB0_72
.LBB0_76:                               # %scalar.ph111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r3, r7, r8
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r2, r16, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_78
# %bb.77:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_75
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_75
.LBB0_79:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_75
.LBB0_80:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_73 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_82
.LBB0_81:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 144 11 is_stmt 1              # parallel-rne.mlir:144:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	add.s r2, r27, r28
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 159 13                        # parallel-rne.mlir:159:13
	stores.w r7, 12(r2)
	stores.w r12, 8(r2)
	stores.w r11, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 144 11                        # parallel-rne.mlir:144:11
	bneq r1, zero, .LBB0_72
.LBB0_82:                               # %vector.body113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_73 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 145 19                        # parallel-rne.mlir:145:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r23, 12(r13)
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	and r26, r23, r8
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	setlt.u r1, r16, r26
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_84
# %bb.83:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r23, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r7, r23, r1
.LBB0_85:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r1, zero, .LBB0_87
# %bb.86:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_88
.LBB0_87:                               #   in Loop: Header=BB0_82 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_88:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r21, 4(r13)
	and r1, r21, r8
	setlt.u r2, r16, r1
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r2, zero, .LBB0_90
# %bb.89:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r21, 0
	j .LBB0_91
.LBB0_90:                               #   in Loop: Header=BB0_82 Depth=3
	lui r2, 1024
	or r11, r21, r2
.LBB0_91:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 150 19                        # parallel-rne.mlir:150:19
	bneq r13, zero, .LBB0_93
# %bb.92:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r3, zero, .LBB0_94
	j .LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 156 19 is_stmt 1              # parallel-rne.mlir:156:19
	setlt.u r3, r5, r3
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r3, zero, .LBB0_95
.LBB0_94:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_95:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	setlt.u r1, r5, r1
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r1, zero, .LBB0_98
# %bb.96:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	beq r1, zero, .LBB0_99
.LBB0_97:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_81
	j .LBB0_100
.LBB0_98:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r21, 16
	andi r1, r1, 1
	add.s r1, r21, r1
	add.s r1, r1, r4
	and r11, r1, r17
	setlt.u r1, r5, r18
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_97
.LBB0_99:                               # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 157 19                        # parallel-rne.mlir:157:19
	bneq r1, zero, .LBB0_81
.LBB0_100:                              # %vector.body113
                                        #   in Loop: Header=BB0_82 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r23, 16
	andi r1, r1, 1
	add.s r1, r23, r1
	add.s r1, r1, r4
	and r7, r1, r17
	j .LBB0_81
.LBB0_101:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r9
	addli r12, zero, 4
	addli r20, zero, 7
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	mfence { sm }
	.loc	1 164 7                         # parallel-rne.mlir:164:7
	addli r1, zero, 2
	bneq r9, r1, .LBB0_40
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 8
	.loc	1 192 7 is_stmt 1               # parallel-rne.mlir:192:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_104
.LBB0_103:                              # %middle.block108
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 11
	load.d r[9:10], -936(r30)               # 8-byte Folded Reload
	addli r20, zero, 7
	zext_int2long r[1:2], r1
	.loc	1 199 9 is_stmt 1               # parallel-rne.mlir:199:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	bneq r27, r6, .LBB0_111
# %bb.105:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 215 13 is_stmt 1              # parallel-rne.mlir:215:13
	add.s r1, r27, r1
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r2, 0(r1)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	beq r3, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r3, r7, r8
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r2, r16, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_109
# %bb.108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_106
.LBB0_111:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 200 11 is_stmt 1              # parallel-rne.mlir:200:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	add.s r2, r27, r28
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 215 13                        # parallel-rne.mlir:215:13
	stores.w r23, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 200 11                        # parallel-rne.mlir:200:11
	bneq r1, zero, .LBB0_103
.LBB0_113:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 201 19                        # parallel-rne.mlir:201:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r7, 12(r13)
	.loc	1 203 19                        # parallel-rne.mlir:203:19
	and r26, r7, r8
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	setlt.u r1, r16, r26
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r1, zero, .LBB0_115
# %bb.114:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r7, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r23, r7, r1
.LBB0_116:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r1, zero, .LBB0_118
# %bb.117:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_119:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r11, 4(r13)
	and r1, r11, r8
	setlt.u r2, r16, r1
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r2, zero, .LBB0_121
# %bb.120:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	lui r2, 1024
	or r21, r11, r2
.LBB0_122:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 206 19                        # parallel-rne.mlir:206:19
	bneq r13, zero, .LBB0_124
# %bb.123:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r3, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 212 19 is_stmt 1              # parallel-rne.mlir:212:19
	setlt.u r3, r5, r3
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r3, zero, .LBB0_126
.LBB0_125:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r1, r5, r1
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r1, zero, .LBB0_129
# %bb.127:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	beq r1, zero, .LBB0_130
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r17
	setlt.u r1, r5, r18
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_128
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 213 19                        # parallel-rne.mlir:213:19
	bneq r1, zero, .LBB0_112
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r23, r1, r17
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r9
	addli r12, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	loadli.w r1,  -944(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	beq r9, r12, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	beq r9, r20, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 6
	beq r9, r1, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 5
	bneq r9, r1, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 20
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 23
	load.d r[9:10], -936(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 283 9 is_stmt 1               # parallel-rne.mlir:283:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	bneq r27, r6, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 299 13 is_stmt 1              # parallel-rne.mlir:299:13
	add.s r1, r27, r1
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r2, 0(r1)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	beq r3, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r3, r7, r8
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r2, r16, r3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r2, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 284 11 is_stmt 1              # parallel-rne.mlir:284:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	add.s r2, r27, r28
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 299 13                        # parallel-rne.mlir:299:13
	stores.w r23, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 284 11                        # parallel-rne.mlir:284:11
	bneq r1, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 285 19                        # parallel-rne.mlir:285:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r7, 12(r13)
	.loc	1 287 19                        # parallel-rne.mlir:287:19
	and r26, r7, r8
	.loc	1 289 19                        # parallel-rne.mlir:289:19
	setlt.u r1, r16, r26
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r1, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r7, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r23, r7, r1
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r1, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r11, 4(r13)
	and r1, r11, r8
	setlt.u r2, r16, r1
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r2, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	lui r2, 1024
	or r21, r11, r2
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 290 19                        # parallel-rne.mlir:290:19
	bneq r13, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r1, r5, r1
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r1, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r1, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 296 19 is_stmt 1              # parallel-rne.mlir:296:19
	setlt.u r3, r5, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	beq r3, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r17
	setlt.u r1, r5, r18
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r1, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r23, r1, r17
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 12
	.loc	1 220 7 is_stmt 1               # parallel-rne.mlir:220:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_170
.LBB0_169:                              # %middle.block90
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 15
	load.d r[9:10], -936(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 227 9 is_stmt 1               # parallel-rne.mlir:227:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	bneq r27, r6, .LBB0_177
# %bb.171:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 243 13 is_stmt 1              # parallel-rne.mlir:243:13
	add.s r1, r27, r1
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r2, 0(r1)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	beq r3, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r3, r7, r8
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r2, r16, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r2, zero, .LBB0_175
# %bb.174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_172
.LBB0_177:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 228 11 is_stmt 1              # parallel-rne.mlir:228:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	add.s r2, r27, r28
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 243 13                        # parallel-rne.mlir:243:13
	stores.w r23, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 228 11                        # parallel-rne.mlir:228:11
	bneq r1, zero, .LBB0_169
.LBB0_179:                              # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 229 19                        # parallel-rne.mlir:229:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r7, 12(r13)
	.loc	1 231 19                        # parallel-rne.mlir:231:19
	and r26, r7, r8
	.loc	1 233 19                        # parallel-rne.mlir:233:19
	setlt.u r1, r16, r26
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r1, zero, .LBB0_181
# %bb.180:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r7, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r23, r7, r1
.LBB0_182:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r1, zero, .LBB0_184
# %bb.183:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_185:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r11, 4(r13)
	and r1, r11, r8
	setlt.u r2, r16, r1
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r2, zero, .LBB0_187
# %bb.186:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	lui r2, 1024
	or r21, r11, r2
.LBB0_188:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	bneq r13, zero, .LBB0_194
# %bb.189:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r3, zero, .LBB0_191
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r1, r5, r1
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r1, zero, .LBB0_195
# %bb.192:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r1, zero, .LBB0_196
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r1, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 240 19 is_stmt 1              # parallel-rne.mlir:240:19
	setlt.u r3, r5, r3
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	beq r3, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r17
	setlt.u r1, r5, r18
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r1, zero, .LBB0_193
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r1, zero, .LBB0_178
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r23, r1, r17
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r9
	addli r12, zero, 4
	addli r20, zero, 7
	.loc	1 220 7                         # parallel-rne.mlir:220:7
	mfence { sm }
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	bneq r9, r12, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 16
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_201
.LBB0_200:                              # %middle.block81
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r1, zero, 19
	load.d r[9:10], -936(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 255 9 is_stmt 1               # parallel-rne.mlir:255:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	bneq r27, r6, .LBB0_208
# %bb.202:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 271 13 is_stmt 1              # parallel-rne.mlir:271:13
	add.s r1, r27, r1
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r2, 0(r1)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	beq r3, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r3, r7, r8
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r2, r16, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r2, zero, .LBB0_206
# %bb.205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_203
.LBB0_208:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 256 11 is_stmt 1              # parallel-rne.mlir:256:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	add.s r2, r27, r28
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 271 13                        # parallel-rne.mlir:271:13
	stores.w r23, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 256 11                        # parallel-rne.mlir:256:11
	bneq r1, zero, .LBB0_200
.LBB0_210:                              # %vector.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 257 19                        # parallel-rne.mlir:257:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r7, 12(r13)
	.loc	1 259 19                        # parallel-rne.mlir:259:19
	and r26, r7, r8
	.loc	1 261 19                        # parallel-rne.mlir:261:19
	setlt.u r1, r16, r26
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_212
# %bb.211:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r7, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r23, r7, r1
.LBB0_213:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r1, zero, .LBB0_215
# %bb.214:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_216:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r11, 4(r13)
	and r1, r11, r8
	setlt.u r2, r16, r1
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r2, zero, .LBB0_218
# %bb.217:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	lui r2, 1024
	or r21, r11, r2
.LBB0_219:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 262 19                        # parallel-rne.mlir:262:19
	bneq r13, zero, .LBB0_225
# %bb.220:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r3, zero, .LBB0_222
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r1, r5, r1
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r1, zero, .LBB0_226
# %bb.223:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r1, zero, .LBB0_227
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 268 19 is_stmt 1              # parallel-rne.mlir:268:19
	setlt.u r3, r5, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	beq r3, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r17
	setlt.u r1, r5, r18
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_224
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	bneq r1, zero, .LBB0_209
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r23, r1, r17
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r9
	addli r12, zero, 4
	addli r20, zero, 7
	.loc	1 248 7                         # parallel-rne.mlir:248:7
	mfence { sm }
	.loc	1 276 7                         # parallel-rne.mlir:276:7
	bneq r9, r20, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 28
	.loc	1 332 7 is_stmt 1               # parallel-rne.mlir:332:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_232
.LBB0_231:                              # %middle.block72
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[2:3], -936(r30)                # 8-byte Folded Reload
	.loc	1 339 9 is_stmt 1               # parallel-rne.mlir:339:9
	setlt.ul r1, r[2:3], r[24:25]
	addli.d r[2:3], r[2:3], 1
	beq r1, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	bneq r27, r6, .LBB0_239
# %bb.233:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 355 13 is_stmt 1              # parallel-rne.mlir:355:13
	add.s r1, r27, r1
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r2, 0(r1)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	beq r3, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r3, r7, r8
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r2, r16, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_237
# %bb.236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_234
.LBB0_239:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 340 11 is_stmt 1              # parallel-rne.mlir:340:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	add.s r2, r27, r28
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 355 13                        # parallel-rne.mlir:355:13
	stores.w r23, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 340 11                        # parallel-rne.mlir:340:11
	bneq r1, zero, .LBB0_231
.LBB0_241:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 341 19                        # parallel-rne.mlir:341:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r7, 12(r13)
	.loc	1 343 19                        # parallel-rne.mlir:343:19
	and r26, r7, r8
	.loc	1 345 19                        # parallel-rne.mlir:345:19
	setlt.u r1, r16, r26
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_243
# %bb.242:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r7, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r23, r7, r1
.LBB0_244:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r1, zero, .LBB0_246
# %bb.245:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_247:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r11, 4(r13)
	and r1, r11, r8
	setlt.u r2, r16, r1
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r2, zero, .LBB0_249
# %bb.248:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	lui r2, 1024
	or r21, r11, r2
.LBB0_250:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 346 19                        # parallel-rne.mlir:346:19
	bneq r13, zero, .LBB0_252
# %bb.251:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r3, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 352 19 is_stmt 1              # parallel-rne.mlir:352:19
	setlt.u r3, r5, r3
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r3, zero, .LBB0_254
.LBB0_253:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r1, r5, r1
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r1, zero, .LBB0_257
# %bb.255:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	beq r1, zero, .LBB0_258
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r17
	setlt.u r1, r5, r18
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_256
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 353 19                        # parallel-rne.mlir:353:19
	bneq r1, zero, .LBB0_240
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r23, r1, r17
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r1, zero, 24
	.loc	1 304 7 is_stmt 1               # parallel-rne.mlir:304:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[2:3], r1
	j .LBB0_262
.LBB0_261:                              # %middle.block63
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r1, zero, 27
	load.d r[9:10], -936(r30)               # 8-byte Folded Reload
	zext_int2long r[1:2], r1
	.loc	1 311 9 is_stmt 1               # parallel-rne.mlir:311:9
	setlt.ul r1, r[9:10], r[1:2]
	addli.d r[2:3], r[9:10], 1
	beq r1, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r1, zero, 5
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	store.d r[2:3], -936(r30)               # 8-byte Folded Spill
	sll.d r[9:10], r[2:3], r1
	bneq r27, r6, .LBB0_269
# %bb.263:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[11:12], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	setlt.ul r3, r[11:12], r[24:25]
	.loc	1 327 13 is_stmt 1              # parallel-rne.mlir:327:13
	add.s r1, r27, r1
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	addli.d r[11:12], r[11:12], 1
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r2, 0(r1)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	beq r3, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[1:2], r[11:12], r[9:10]
	slli r1, r1, 2
	add.s r2, r6, r1
	loads.w r7, 0(r2)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r3, r7, r8
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r2, r16, r3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r2, zero, .LBB0_267
# %bb.266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r2, r7, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r2, 1024
	or r2, r7, r2
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r7, 16
	andi r2, r2, 1
	add.s r2, r7, r2
	add.s r2, r2, r4
	and r2, r2, r17
	j .LBB0_264
.LBB0_269:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[19:20], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 312 11 is_stmt 1              # parallel-rne.mlir:312:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	add.s r2, r27, r28
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	seteq.d r1, r[19:20], r[14:15]
	.loc	1 327 13                        # parallel-rne.mlir:327:13
	stores.w r23, 12(r2)
	stores.w r12, 8(r2)
	stores.w r21, 4(r2)
	stores.w r13, 0(r2)
	.loc	1 312 11                        # parallel-rne.mlir:312:11
	bneq r1, zero, .LBB0_261
.LBB0_271:                              # %vector.body59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 313 19                        # parallel-rne.mlir:313:19
	add.ul r[1:2], r[19:20], r[9:10]
	slli r28, r1, 2
	add.s r13, r6, r28
	loads.w r7, 12(r13)
	.loc	1 315 19                        # parallel-rne.mlir:315:19
	and r26, r7, r8
	.loc	1 317 19                        # parallel-rne.mlir:317:19
	setlt.u r1, r16, r26
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r1, zero, .LBB0_273
# %bb.272:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r23, r7, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r23, r7, r1
.LBB0_274:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r22, 8(r13)
	and r18, r22, r8
	setlt.u r1, r16, r18
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r1, zero, .LBB0_276
# %bb.275:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r22, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	lui r1, 1024
	or r12, r22, r1
.LBB0_277:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r11, 4(r13)
	and r1, r11, r8
	setlt.u r2, r16, r1
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r2, zero, .LBB0_279
# %bb.278:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r11, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	lui r2, 1024
	or r21, r11, r2
.LBB0_280:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r2, 0(r13)
	and r3, r2, r8
	setlt.u r13, r16, r3
	.loc	1 318 19                        # parallel-rne.mlir:318:19
	bneq r13, zero, .LBB0_282
# %bb.281:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r13, r2, 0
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r3, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r13, 1024
	or r13, r2, r13
	.loc	1 324 19 is_stmt 1              # parallel-rne.mlir:324:19
	setlt.u r3, r5, r3
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r3, zero, .LBB0_284
.LBB0_283:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r2, 16
	andi r3, r3, 1
	add.s r2, r2, r3
	add.s r2, r2, r4
	and r13, r2, r17
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r1, r5, r1
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r1, zero, .LBB0_287
# %bb.285:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r18
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	beq r1, zero, .LBB0_288
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r1, r5, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r11, 16
	andi r1, r1, 1
	add.s r1, r11, r1
	add.s r1, r1, r4
	and r21, r1, r17
	setlt.u r1, r5, r18
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_286
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r22, 16
	andi r1, r1, 1
	add.s r1, r22, r1
	add.s r1, r1, r4
	and r12, r1, r17
	setlt.u r1, r5, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	bneq r1, zero, .LBB0_270
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r1, r7, 16
	andi r1, r1, 1
	add.s r1, r7, r1
	add.s r1, r1, r4
	and r23, r1, r17
	j .LBB0_270
.LBB0_290:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 31 5 is_stmt 1                # parallel-rne.mlir:31:5
	core_id r9
	addli r12, zero, 4
	addli r20, zero, 7
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 360 7 is_stmt 1               # parallel-rne.mlir:360:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 361 7                         # parallel-rne.mlir:361:7
	loadli.w r1,  -944(r30)                 # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[18:19], -968(r30)              # 8-byte Folded Reload
	addli r13, zero, 1
	.loc	1 378 7 is_stmt 1               # parallel-rne.mlir:378:7
	bneq r9, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	loadli.w r1,  -1000(r30)                # 4-byte Folded Reload
	addli r3, zero, 992
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[11:12], -992(r30)              # 8-byte Folded Reload
	load.d r[21:22], 16(r30)
	zext_int2long r[6:7], r3
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	loadli.w r3,  -996(r30)                 # 4-byte Folded Reload
	.loc	1 368 13                        # parallel-rne.mlir:368:13
	zext_int2long r[1:2], r1
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	min.ul r[6:7], r[1:2], r[6:7]
	.loc	1 363 13                        # parallel-rne.mlir:363:13
	sext_int2long r[9:10], r3
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	addli r3, zero, 16
	.loc	1 370 13                        # parallel-rne.mlir:370:13
	addli.d r[6:7], r[6:7], 32
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	sll.d r[11:12], r[11:12], r3
	addli r3, zero, 12
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	max.ul r[6:7], r[6:7], r[1:2]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[11:12], r[21:22], r[11:12]
	addli r21, zero, 64
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	load.d r[6:7], -928(r30)                # 8-byte Folded Reload
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.ul r[1:2], r[1:2], r[14:15]
	.loc	1 365 13                        # parallel-rne.mlir:365:13
	min.sl r[6:7], r[9:10], r[6:7]
	addli.d r[6:7], r[6:7], 32
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	max.sl r[6:7], r[6:7], r[9:10]
	.loc	1 367 13                        # parallel-rne.mlir:367:13
	sub.sl r[6:7], r[6:7], r[9:10]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	load.d r[9:10], -984(r30)               # 8-byte Folded Reload
	xwait r3, 0
	ori r3, r27, 64
	.loc	1 373 13                        # parallel-rne.mlir:373:13
	min.sl r[6:7], r[6:7], r[14:15]
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	add.ul r[9:10], r[11:12], r[9:10]
	addli r11, zero, 5
	addli r12, zero, 4
	lock zero, r11
	dma_cfg r13, r13, zero, 0
	dma_cfg zero, r13, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r3, r21, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	.loc	1 31 5                          # parallel-rne.mlir:31:5
	core_id r9
	.loc	1 378 7                         # parallel-rne.mlir:378:7
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r21, r2, r3, 4
	addli r3, zero, 2048
	dma_cfg r3, r2, r6, 5
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r13, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r1, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 380 5                         # parallel-rne.mlir:380:5
	xsignal zero, 0
	bneq r9, zero, .LBB0_296
# %bb.295:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 380 5                         # parallel-rne.mlir:380:5
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
	.loc	1 381 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:381:5
	addli sp, sp, 1016
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
	.long	1080                            # 0x438
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-14ebwe56" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
