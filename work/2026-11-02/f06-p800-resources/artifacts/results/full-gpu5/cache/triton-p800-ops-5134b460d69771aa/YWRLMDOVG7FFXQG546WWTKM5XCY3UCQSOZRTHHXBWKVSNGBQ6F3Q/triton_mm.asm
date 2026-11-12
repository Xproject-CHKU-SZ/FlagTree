	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-0ralbtth" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1448
	addli r1, zero, 1
.Ltmp0:
	.loc	1 34 5 prologue_end             # parallel-rne.mlir:34:5
	core_id r7
	addli r30, sp, 1384
	xsignal_mode_cfg r1
	beq r7, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 34 5                          # parallel-rne.mlir:34:5
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
	xsignal r1, 0
	xsignal r2, 0
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
	xsignal r2, 0
.LBB0_3:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	loadli.w r1,  24(r30)
	loadli.w r2,  28(r30)
	.loc	1 36 10 is_stmt 1               # parallel-rne.mlir:36:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	load_param_i r6, 0
	lui r5, 1048575
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -220(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -864(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -1088(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -1284(r30)
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	mul.s r1, r2, r1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	mul.s r3, r1, r3
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	addli r2, r2, -1
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	storeli.w r4, -512(r30)
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w r4, -1084(r30)
	storeli.w r4, -1080(r30)
	storeli.w r4, -1076(r30)
	storeli.w r4, -1072(r30)
	storeli.w r4, -1068(r30)
	storeli.w r4, -1064(r30)
	storeli.w r4, -1060(r30)
	storeli.w r4, -1056(r30)
	storeli.w r4, -1052(r30)
	storeli.w r4, -1048(r30)
	storeli.w r4, -1044(r30)
	storeli.w r4, -1040(r30)
	storeli.w r4, -1036(r30)
	storeli.w r4, -1032(r30)
	storeli.w r4, -1028(r30)
	storeli.w r4, -1024(r30)
	storeli.w r4, -1020(r30)
	storeli.w r4, -1016(r30)
	storeli.w r4, -1012(r30)
	storeli.w r4, -1008(r30)
	storeli.w r4, -1004(r30)
	storeli.w r4, -1000(r30)
	storeli.w r4, -996(r30)
	storeli.w r4, -992(r30)
	storeli.w r4, -988(r30)
	storeli.w r4, -984(r30)
	storeli.w r4, -980(r30)
	storeli.w r4, -976(r30)
	storeli.w r4, -972(r30)
	storeli.w r4, -968(r30)
	storeli.w r4, -964(r30)
	storeli.w r4, -960(r30)
	storeli.w r4, -956(r30)
	storeli.w r4, -952(r30)
	storeli.w r4, -948(r30)
	storeli.w r4, -944(r30)
	storeli.w r4, -940(r30)
	storeli.w r4, -936(r30)
	storeli.w r4, -932(r30)
	storeli.w r4, -928(r30)
	storeli.w r4, -924(r30)
	storeli.w r4, -920(r30)
	storeli.w r4, -916(r30)
	storeli.w r4, -912(r30)
	storeli.w r4, -908(r30)
	storeli.w r4, -904(r30)
	storeli.w r4, -900(r30)
	storeli.w r4, -896(r30)
	storeli.w r4, -892(r30)
	storeli.w r4, -888(r30)
	storeli.w r4, -884(r30)
	storeli.w r4, -880(r30)
	storeli.w r4, -876(r30)
	storeli.w r4, -872(r30)
	storeli.w r4, -868(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w r4, -1280(r30)
	storeli.w r4, -1276(r30)
	storeli.w r4, -1272(r30)
	storeli.w r4, -1268(r30)
	storeli.w r4, -1264(r30)
	storeli.w r4, -1260(r30)
	storeli.w r4, -1256(r30)
	storeli.w r4, -1252(r30)
	storeli.w r4, -1248(r30)
	storeli.w r4, -1244(r30)
	storeli.w r4, -1240(r30)
	storeli.w r4, -1236(r30)
	storeli.w r4, -1232(r30)
	storeli.w r4, -1228(r30)
	storeli.w r4, -1224(r30)
	storeli.w r4, -1220(r30)
	storeli.w r4, -1216(r30)
	storeli.w r4, -1212(r30)
	storeli.w r4, -1208(r30)
	storeli.w r4, -1204(r30)
	storeli.w r4, -1200(r30)
	storeli.w r4, -1196(r30)
	storeli.w r4, -1192(r30)
	storeli.w r4, -1188(r30)
	storeli.w r4, -1184(r30)
	storeli.w r4, -1180(r30)
	storeli.w r4, -1176(r30)
	storeli.w r4, -1172(r30)
	storeli.w r4, -1168(r30)
	storeli.w r4, -1164(r30)
	storeli.w r4, -1160(r30)
	storeli.w r4, -1156(r30)
	storeli.w r4, -1152(r30)
	storeli.w r4, -1148(r30)
	storeli.w r4, -1144(r30)
	storeli.w r4, -1140(r30)
	storeli.w r4, -1136(r30)
	storeli.w r4, -1132(r30)
	storeli.w r4, -1128(r30)
	storeli.w r4, -1124(r30)
	storeli.w r4, -1120(r30)
	storeli.w r4, -1116(r30)
	storeli.w r4, -1112(r30)
	storeli.w r4, -1108(r30)
	storeli.w r4, -1104(r30)
	storeli.w r4, -1100(r30)
	storeli.w r4, -1096(r30)
	storeli.w r4, -1092(r30)
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r1, r2, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	fmac.s r2, r2, r6
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	min.s r3, r2, r3
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	ble.s r3, r1, .LBB0_294
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 45 11 is_stmt 1               # parallel-rne.mlir:45:11
	sext_int2long r[18:19], r1
	lui r1, 15
	lui r5, 522239
	addli r17, zero, 4
	lui r12, 1024
	lui r15, 1048560
	addli r9, zero, 0
	store.d r[2:3], -1376(r30)              # 8-byte Folded Spill
	ori r2, r1, 4095
	ori r5, r5, 4095
	lui r1, 1048448
	store.d r[1:2], -1384(r30)              # 8-byte Folded Spill
	lui r1, 127
	lui r2, 7
	ori r1, r1, 4095
	ori r4, r2, 4095
	storeli.w r1, -1308(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r3, r1, 4095
	lui r1, 522240
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r2, zero, 12
	xsignal r2, 0
	load.d r[18:19], -1336(r30)             # 8-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	load.d r[8:9], -1376(r30)               # 8-byte Folded Reload
	addli.d r[18:19], r[18:19], 1
	setlt.sl r2, r[18:19], r[8:9]
	loadli.w r9,  -1340(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_294
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
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
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	bneq r7, r17, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r6,  28(r30)
	mod.s r7, r9, r17
	addli r9, r9, 1
	addli r10, zero, 8
	store.d r[18:19], -1336(r30)            # 8-byte Folded Spill
	.loc	1 100 15 is_stmt 1              # parallel-rne.mlir:100:15
	loadli.w r14,  -1088(r30)
	addli r13, zero, 0
	addli r24, zero, 0
	storeli.w r9, -1340(r30)                # 4-byte Folded Spill
	div.s r2, r18, r2
	div.s r2, r2, r6
	addli r6, zero, 128
	div.s r6, r2, r6
	slli r8, r6, 3
	slli r6, r6, 7
	sub.s r9, r17, r8
	sub.s r6, r2, r6
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	load.d r[16:17], 8(r30)
	min.s r9, r9, r10
	mod.s r2, r2, r9
	div.s r9, r6, r9
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	loadli.w r6,  -1284(r30)
	storeli.w r6, -1296(r30)                # 4-byte Folded Spill
	slli r6, r7, 15
	lui r7, 32
	add.s r28, r6, r7
	slli r7, r9, 6
	add.s r2, r8, r2
	storeli.w r7, -1368(r30)                # 4-byte Folded Spill
	zext_int2long r[7:8], r9
	slli r9, r2, 7
	storeli.w r9, -1364(r30)                # 4-byte Folded Spill
	zext_int2long r[9:10], r2
	addli r2, zero, 6
	sll.d r[7:8], r[7:8], r2
	addli r2, zero, 17
	store.d r[9:10], -1360(r30)             # 8-byte Folded Spill
	sll.d r[9:10], r[9:10], r2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r2, zero, 1
	sll.d r[18:19], r[7:8], r2
	load.d r[7:8], -1384(r30)               # 8-byte Folded Reload
	add.ul r[16:17], r[16:17], r[18:19]
	store.d r[18:19], -1352(r30)            # 8-byte Folded Spill
	and.d r[7:8], r[9:10], r[7:8]
	store.d r[16:17], -1320(r30)            # 8-byte Folded Spill
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r11, 64
	.loc	1 104 9 is_stmt 1               # parallel-rne.mlir:104:9
	lock zero, r17
	addli r20, zero, 64
	dma_cfg r27, r27, zero, 0
	ori r11, r11, 64
	dma_cfg zero, r19, zero, 2
	add.s r11, r16, r11
	addli r16, zero, 2048
	dma_cfg r11, r18, r20, 3
	addli r11, zero, 128
	addli r18, zero, 5
	addli r19, zero, 2
	dma_cfg r11, r20, r27, 4
	dma_cfg r11, r16, r26, 5
	addli r16, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r18
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 7
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 8
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 9
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 11
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 12
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 13
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 14
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 15
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 16
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 17
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 18
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 19
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 20
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 21
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 22
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 23
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 24
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 25
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 26
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 27
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 28
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 29
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 30
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 31
	dma_cfg zero, zero, r16, 10
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r20, 3
	dma_cfg r11, zero, r27, 4
	dma_cfg r11, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r18
	xsignal r19, 0
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -864(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r11,  -220(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, r2, 1
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r11, r11, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r2, -864(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	storeli.w r11, -220(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r24, r24, 1
	addli r2, zero, 32
	beq r24, r2, .LBB0_33
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 125 15                        # parallel-rne.mlir:125:15
	addli r13, r13, 1
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	zext_int2long r[17:18], r24
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	addli r2, zero, 5
	addli.d r[25:26], r[7:8], 0
	sll.d r[19:20], r[17:18], r2
	loadli.w r2,  -1308(r30)                # 4-byte Folded Reload
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	add.ul r[19:20], r[19:20], r[9:10]
	zext_int2long r[21:22], r2
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	setlt.ul r2, r[21:22], r[19:20]
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	bneq r2, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[25:26], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	loadli.w r2,  -1296(r30)                # 4-byte Folded Reload
	add.s r21, r14, r13
	.loc	1 100 15 is_stmt 1              # parallel-rne.mlir:100:15
	addli r16, zero, 55
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r11, zero, 48
	addli r22, zero, 384
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	addli r27, zero, 2
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	mod.s r16, r21, r16
	zext_int2long r[22:23], r22
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r2, r2, r13
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	store.d r[22:23], -1304(r30)            # 8-byte Folded Spill
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	addli r22, r21, 1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r11, r2, r11
	addli r2, r2, 1
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	storeli.w r22, -1088(r30)
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r22
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r2, -1284(r30)
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	lui r2, 64
	slli r16, r16, 14
	add.s r2, r16, r2
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r11, r11, 14
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	beq r22, r27, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r27, zero, 1
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	bneq r22, r27, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r11, zero, 1024
	sub.sl r[17:18], r[19:20], r[25:26]
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	sll.d r[19:20], r[19:20], r27
	zext_int2long r[25:26], r11
	addli r11, zero, 54
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[17:18], r[17:18], r[25:26]
	load.d r[25:26], -1304(r30)             # 8-byte Folded Reload
	min.sl r[25:26], r[17:18], r[25:26]
	sub.sl r[25:26], r[25:26], r[17:18]
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	load.d r[17:18], 0(r30)
	addli r26, r25, 128
	addli r25, zero, 3
	add.ul r[18:19], r[17:18], r[19:20]
	addli r17, zero, 4
	xwait r25, 0
	blt.s r11, r21, .LBB0_10
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 5
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	addli r11, zero, 2
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 7
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 16
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
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
	addli r11, zero, 64
	dma_cfg r27, r27, zero, 0
	dma_cfg r27, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r11, 3
	addli r11, zero, 128
	dma_cfg r11, zero, r27, 4
	dma_cfg r11, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r27, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	j .LBB0_10
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r17, zero, 2
	.loc	1 105 9 is_stmt 1               # parallel-rne.mlir:105:9
	addli r16, zero, 5
	xwait r17, 0
	xwait r16, 0
	lock zero, zero
	addli r16, zero, 128
	ds_cfg r17, zero, 0
	addli r17, zero, 32
	ds_cfg r17, zero, 1
	ds_cfg r17, zero, 14
	ds_cfg r16, zero, 13
	shuffle_batch r11, r2, r17, 1
	addli r17, zero, 4
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	xsignal r17, 0
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -864(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r20,  -220(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r16, zero, 160
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r19, zero, 54
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r16, r2, r16
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	mod.s r21, r20, r19
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, r2, 1
	storeli.w r2, -864(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	lui r2, 284
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r19, r16, 13
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	slli r16, r21, 13
	addli r21, r20, 1
	storeli.w r21, -220(r30)
	add.s r2, r16, r2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r21, zero, 7
	beq r22, r21, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	addli r21, zero, 6
	bneq r22, r21, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r23, zero, 16
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	load.d r[25:26], -1320(r30)             # 8-byte Folded Reload
	addli r11, zero, 53
	sll.d r[17:18], r[17:18], r23
	add.ul r[18:19], r[25:26], r[17:18]
	addli r26, zero, 7
	addli r17, zero, 4
	xwait r26, 0
	blt.s r11, r20, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r21, zero, 5
	addli r20, zero, 1
	addli r25, zero, 2
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r11, zero, 3
	lock zero, r21
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 8
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 9
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 11
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 12
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 13
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 14
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 15
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 17
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r11, 10
	addli r11, zero, 18
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
	addli r11, zero, 64
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r11, 3
	addli r11, zero, 128
	dma_cfg r11, zero, r25, 4
	addli r11, zero, 32
	addli r25, zero, 256
	dma_cfg r25, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r21
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r11, 284
	addli r20, zero, 1
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	lock zero, r17
	addli r26, zero, 64
	addli r21, zero, 2
	addli r25, zero, 32
	addli r27, zero, 256
	addli r23, zero, 7
	ori r11, r11, 64
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r19, zero, 2
	add.s r11, r16, r11
	addli r16, zero, 2048
	dma_cfg r11, r18, r26, 3
	addli r11, zero, 128
	addli r19, zero, 5
	addli r18, zero, 6
	dma_cfg r11, r26, r21, 4
	dma_cfg r27, r16, r25, 5
	addli r16, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r17
	lock zero, r19
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 8
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 9
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 10
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 11
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 12
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 13
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 14
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 15
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 16
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 17
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 18
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 19
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 20
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 21
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 22
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 23
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 24
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 25
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 26
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 27
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 28
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 29
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 30
	dma_cfg zero, zero, r16, 10
	addli r16, zero, 31
	dma_cfg zero, zero, r16, 10
	dma_cfg r20, r20, zero, 0
	dma_cfg r20, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r2, zero, r26, 3
	dma_cfg r11, zero, r21, 4
	dma_cfg r27, zero, r25, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	dma_cfg zero, zero, zero, 8
	unlock r19
	xsignal r18, 0
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	j .LBB0_12
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	addli r11, zero, 6
	addli r16, zero, 64
	addli r17, zero, 4
	xwait r11, 0
	addli r11, zero, 9
	xwait r11, 0
	addli r11, zero, 2
	lock zero, zero
	ds_cfg r11, zero, 0
	addli r11, zero, 32
	ds_cfg r16, zero, 1
	ds_cfg r11, zero, 14
	ds_cfg r16, zero, 13
	shuffle_coa r19, r2, r11, 2
	addli r2, zero, 7
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_12
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r17, zero, 4
	.loc	1 124 9 is_stmt 1               # parallel-rne.mlir:124:9
	bneq r22, r17, .LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 8
	addli r16, zero, 1
	xwait r17, 0
	addli r18, zero, 32
	addli r20, zero, 64
	xwait r2, 0
	addli r2, zero, 128
	lock zero, r16
	mm_cfg r20, r18, r2, 0
	addli r2, zero, 2
	mm_cfg r2, r2, r16, 2
	beq r13, zero, .LBB0_31
# %bb.29:                               # %.preheader30
                                        #   in Loop: Header=BB0_14 Depth=2
	mm_acc r28, r11, r19, 8
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r24, r24, 1
	addli r2, zero, 32
	bneq r24, r2, .LBB0_13
	j .LBB0_35
.LBB0_31:                               # %.preheader29
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	mm r28, r11, r19, 8
.LBB0_32:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 1
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r24, r24, 1
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	unlock r2
	addli r2, zero, 5
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r2, zero, 32
	bneq r24, r2, .LBB0_13
	j .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	bneq r22, r17, .LBB0_35
.LBB0_34:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -1324(r30)              # 4-byte Folded Spill
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	xsignal r2, 0
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	j .LBB0_38
.LBB0_35:                               # %.thread44
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	addli r2, zero, 3
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	bneq r7, r2, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	storeli.w r2, -1324(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_38
.LBB0_37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1324(r30)              # 4-byte Folded Spill
.LBB0_38:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 138 7 is_stmt 1               # parallel-rne.mlir:138:7
	addli r2, zero, 255
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	xfence
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { lm, sm, gm }
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	csr_set csr5, r2
	addli r2, zero, 63
	sync_core
	zext_int2long r[13:14], r2
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	bneq r7, zero, .LBB0_70
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block117
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[9:10], -1296(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 147 9 is_stmt 1               # parallel-rne.mlir:147:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_69
.LBB0_41:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 148 11 is_stmt 1              # parallel-rne.mlir:148:11
	store.d r[7:8], -1296(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	bneq r6, r28, .LBB0_48
# %bb.42:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	setlt.ul r7, r[16:17], r[13:14]
	.loc	1 163 13 is_stmt 1              # parallel-rne.mlir:163:13
	add.s r2, r6, r2
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	stores.w r11, 0(r2)
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	beq r7, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph111
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r18, 0(r7)
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	and r7, r18, r3
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	setlt.u r8, r1, r7
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r8, zero, .LBB0_46
# %bb.45:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r7, r5, r7
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r7, zero, .LBB0_43
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r12
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r7, r5, r7
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r7, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r11, r7, r15
	j .LBB0_43
.LBB0_48:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	zext_int2long r[23:24], zero
	j .LBB0_50
.LBB0_49:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	addli r7, zero, 64
	.loc	1 148 11 is_stmt 1              # parallel-rne.mlir:148:11
	addli.d r[23:24], r[23:24], 4
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	add.s r2, r6, r2
	zext_int2long r[7:8], r7
	stores.w r26, 12(r2)
	stores.w r21, 8(r2)
	stores.w r22, 4(r2)
	stores.w r18, 0(r2)
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	seteq.d r7, r[23:24], r[7:8]
	bneq r7, zero, .LBB0_40
.LBB0_50:                               # %vector.body113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	add.ul r[7:8], r[23:24], r[9:10]
	slli r2, r7, 2
	add.s r18, r28, r2
	loads.w r19, 12(r18)
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	and r16, r19, r3
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	setlt.u r7, r1, r16
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r7, zero, .LBB0_52
# %bb.51:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r26, r19, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	or r26, r19, r12
.LBB0_53:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r25, 8(r18)
	and r11, r25, r3
	setlt.u r7, r1, r11
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r7, zero, .LBB0_55
# %bb.54:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r21, r25, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_50 Depth=3
	or r21, r25, r12
.LBB0_56:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r17, 4(r18)
	and r20, r17, r3
	setlt.u r7, r1, r20
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r7, zero, .LBB0_58
# %bb.57:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r17, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=3
	or r22, r17, r12
.LBB0_59:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r27, 0(r18)
	and r7, r27, r3
	setlt.u r8, r1, r7
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r8, zero, .LBB0_61
# %bb.60:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r27, 0
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r7, r5, r7
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r7, zero, .LBB0_62
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r18, r27, r12
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r7, r5, r7
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r7, zero, .LBB0_63
.LBB0_62:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r27, 16
	andi r7, r7, 1
	add.s r7, r27, r7
	add.s r7, r7, r4
	and r18, r7, r15
.LBB0_63:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r7, r5, r20
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r7, zero, .LBB0_66
# %bb.64:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r11
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r7, zero, .LBB0_67
.LBB0_65:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r16
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r7, zero, .LBB0_49
	j .LBB0_68
.LBB0_66:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r17, 16
	andi r7, r7, 1
	add.s r7, r17, r7
	add.s r7, r7, r4
	and r22, r7, r15
	setlt.u r7, r5, r11
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r7, zero, .LBB0_65
.LBB0_67:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r25, 16
	andi r7, r7, 1
	add.s r7, r25, r7
	add.s r7, r7, r4
	and r21, r7, r15
	setlt.u r7, r5, r16
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r7, zero, .LBB0_49
.LBB0_68:                               # %vector.body113
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r19, 16
	andi r7, r7, 1
	add.s r7, r19, r7
	add.s r7, r7, r4
	and r26, r7, r15
	j .LBB0_49
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r7
	addli r17, zero, 4
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	mfence { sm }
.LBB0_70:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 64
	zext_int2long r[8:9], r2
	.loc	1 168 7 is_stmt 1               # parallel-rne.mlir:168:7
	addli r2, zero, 2
	store.d r[8:9], -1296(r30)              # 8-byte Folded Spill
	beq r7, r2, .LBB0_102
# %bb.71:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 1
	bneq r7, r2, .LBB0_133
# %bb.72:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_74
.LBB0_73:                               # %middle.block99
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[9:10], -1320(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 176 9 is_stmt 1               # parallel-rne.mlir:176:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_132
.LBB0_74:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	store.d r[7:8], -1320(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	bneq r6, r28, .LBB0_81
# %bb.75:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	setlt.ul r8, r[16:17], r[13:14]
	.loc	1 192 13 is_stmt 1              # parallel-rne.mlir:192:13
	add.s r2, r6, r2
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r7, 0(r2)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	beq r8, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph93
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r8, 0(r7)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r11, r8, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r7, r1, r11
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r7, zero, .LBB0_79
# %bb.78:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r11, r5, r11
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r11, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r12
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r11, r5, r11
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r11, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r15
	j .LBB0_76
.LBB0_81:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	load.d r[7:8], -1296(r30)               # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 4
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	add.s r2, r6, r2
	stores.w r19, 12(r2)
	stores.w r22, 8(r2)
	stores.w r25, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	seteq.d r7, r[26:27], r[7:8]
	bneq r7, zero, .LBB0_73
.LBB0_83:                               # %vector.body95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[7:8], r[26:27], r[9:10]
	slli r2, r7, 2
	add.s r11, r28, r2
	loads.w r16, 12(r11)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r21, r16, r3
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r7, r1, r21
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r7, zero, .LBB0_85
# %bb.84:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r16, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	or r19, r16, r12
.LBB0_86:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r18, 8(r11)
	and r17, r18, r3
	setlt.u r7, r1, r17
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r7, zero, .LBB0_88
# %bb.87:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r18, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	or r22, r18, r12
.LBB0_89:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r20, 4(r11)
	and r7, r20, r3
	setlt.u r8, r1, r7
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r8, zero, .LBB0_91
# %bb.90:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	or r25, r20, r12
.LBB0_92:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r8, 0(r11)
	and r23, r8, r3
	setlt.u r11, r1, r23
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r11, zero, .LBB0_94
# %bb.93:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r23, r5, r23
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r23, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r8, r12
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r23, r5, r23
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r23, zero, .LBB0_96
.LBB0_95:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r4
	and r11, r8, r15
.LBB0_96:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r7, r5, r7
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r7, zero, .LBB0_99
# %bb.97:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r17
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r7, zero, .LBB0_100
.LBB0_98:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r21
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r7, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	add.s r7, r7, r4
	and r25, r7, r15
	setlt.u r7, r5, r17
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r7, zero, .LBB0_98
.LBB0_100:                              # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r22, r7, r15
	setlt.u r7, r5, r21
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r7, zero, .LBB0_82
.LBB0_101:                              # %vector.body95
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r4
	and r19, r7, r15
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 32
	.loc	1 197 7 is_stmt 1               # parallel-rne.mlir:197:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_104
.LBB0_103:                              # %middle.block108
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[9:10], -1320(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 205 9 is_stmt 1               # parallel-rne.mlir:205:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_132
.LBB0_104:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_113 Depth 3
                                        #       Child Loop BB0_107 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	store.d r[7:8], -1320(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	bneq r6, r28, .LBB0_111
# %bb.105:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_107
.LBB0_106:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	setlt.ul r8, r[16:17], r[13:14]
	.loc	1 221 13 is_stmt 1              # parallel-rne.mlir:221:13
	add.s r2, r6, r2
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	stores.w r7, 0(r2)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	beq r8, zero, .LBB0_103
.LBB0_107:                              # %scalar.ph102
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r8, 0(r7)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r11, r8, r3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	setlt.u r7, r1, r11
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r7, zero, .LBB0_109
# %bb.108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r7, r8, 0
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r11, r5, r11
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r11, zero, .LBB0_106
	j .LBB0_110
.LBB0_109:                              #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r7, r8, r12
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r11, r5, r11
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r11, zero, .LBB0_106
.LBB0_110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_107 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r8, 16
	andi r7, r7, 1
	add.s r7, r8, r7
	add.s r7, r7, r4
	and r7, r7, r15
	j .LBB0_106
.LBB0_111:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_104 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_113
.LBB0_112:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	addli r7, zero, 64
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	add.s r2, r6, r2
	zext_int2long r[7:8], r7
	stores.w r16, 12(r2)
	stores.w r18, 8(r2)
	stores.w r20, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	seteq.d r7, r[26:27], r[7:8]
	bneq r7, zero, .LBB0_103
.LBB0_113:                              # %vector.body104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[7:8], r[26:27], r[9:10]
	slli r2, r7, 2
	add.s r11, r28, r2
	loads.w r19, 12(r11)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r21, r19, r3
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	setlt.u r7, r1, r21
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r7, zero, .LBB0_115
# %bb.114:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r16, r19, 0
	j .LBB0_116
.LBB0_115:                              #   in Loop: Header=BB0_113 Depth=3
	or r16, r19, r12
.LBB0_116:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r22, 8(r11)
	and r17, r22, r3
	setlt.u r7, r1, r17
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r7, zero, .LBB0_118
# %bb.117:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r18, r22, 0
	j .LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_113 Depth=3
	or r18, r22, r12
.LBB0_119:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r25, 4(r11)
	and r7, r25, r3
	setlt.u r8, r1, r7
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r8, zero, .LBB0_121
# %bb.120:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r25, 0
	j .LBB0_122
.LBB0_121:                              #   in Loop: Header=BB0_113 Depth=3
	or r20, r25, r12
.LBB0_122:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	loads.w r8, 0(r11)
	and r23, r8, r3
	setlt.u r11, r1, r23
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r11, zero, .LBB0_124
# %bb.123:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r8, 0
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r23, r5, r23
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r23, zero, .LBB0_125
	j .LBB0_126
.LBB0_124:                              #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r8, r12
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r23, r5, r23
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r23, zero, .LBB0_126
.LBB0_125:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r11, r8, 16
	andi r11, r11, 1
	add.s r8, r8, r11
	add.s r8, r8, r4
	and r11, r8, r15
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	setlt.u r7, r5, r7
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r7, zero, .LBB0_129
# %bb.127:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r17
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r7, zero, .LBB0_130
.LBB0_128:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r21
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r7, zero, .LBB0_112
	j .LBB0_131
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r25, 16
	andi r7, r7, 1
	add.s r7, r25, r7
	add.s r7, r7, r4
	and r20, r7, r15
	setlt.u r7, r5, r17
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r7, zero, .LBB0_128
.LBB0_130:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r22, 16
	andi r7, r7, 1
	add.s r7, r22, r7
	add.s r7, r7, r4
	and r18, r7, r15
	setlt.u r7, r5, r21
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r7, zero, .LBB0_112
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_113 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r19, 16
	andi r7, r7, 1
	add.s r7, r19, r7
	add.s r7, r7, r4
	and r16, r7, r15
	j .LBB0_112
.LBB0_132:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r7
	addli r17, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 226 7 is_stmt 1               # parallel-rne.mlir:226:7
	loadli.w r2,  -1324(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_168
# %bb.134:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	beq r7, r17, .LBB0_199
.LBB0_135:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	addli r2, zero, 7
	beq r7, r2, .LBB0_230
.LBB0_136:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 6
	beq r7, r2, .LBB0_260
# %bb.137:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	bneq r7, r2, .LBB0_291
# %bb.138:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_140
.LBB0_139:                              # %middle.block
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 95
	load.d r[9:10], -1320(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 292 9 is_stmt 1               # parallel-rne.mlir:292:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_290
.LBB0_140:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_149 Depth 3
                                        #       Child Loop BB0_143 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	store.d r[7:8], -1320(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	bneq r6, r28, .LBB0_147
# %bb.141:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_143
.LBB0_142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	setlt.ul r7, r[16:17], r[13:14]
	.loc	1 308 13 is_stmt 1              # parallel-rne.mlir:308:13
	add.s r2, r6, r2
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	stores.w r11, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	beq r7, zero, .LBB0_139
.LBB0_143:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r18, 0(r7)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r7, r18, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r8, r1, r7
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r8, zero, .LBB0_145
# %bb.144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r7, r5, r7
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r7, zero, .LBB0_142
	j .LBB0_146
.LBB0_145:                              #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r12
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r7, r5, r7
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r7, zero, .LBB0_142
.LBB0_146:                              # %scalar.ph
                                        #   in Loop: Header=BB0_143 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r11, r7, r15
	j .LBB0_142
.LBB0_147:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_140 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_149
.LBB0_148:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	load.d r[7:8], -1296(r30)               # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 4
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	add.s r2, r6, r2
	stores.w r19, 12(r2)
	stores.w r22, 8(r2)
	stores.w r25, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	seteq.d r7, r[26:27], r[7:8]
	bneq r7, zero, .LBB0_139
.LBB0_149:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_140 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[7:8], r[26:27], r[9:10]
	slli r2, r7, 2
	add.s r11, r28, r2
	loads.w r16, 12(r11)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r21, r16, r3
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r7, r1, r21
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_151
# %bb.150:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r16, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_149 Depth=3
	or r19, r16, r12
.LBB0_152:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r18, 8(r11)
	and r17, r18, r3
	setlt.u r7, r1, r17
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_154
# %bb.153:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r18, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_149 Depth=3
	or r22, r18, r12
.LBB0_155:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r20, 4(r11)
	and r23, r20, r3
	setlt.u r7, r1, r23
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_157
# %bb.156:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_158
.LBB0_157:                              #   in Loop: Header=BB0_149 Depth=3
	or r25, r20, r12
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	loads.w r24, 0(r11)
	and r7, r24, r3
	setlt.u r8, r1, r7
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r8, zero, .LBB0_164
# %bb.159:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r24, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r7, r5, r7
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r7, zero, .LBB0_161
.LBB0_160:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r4
	and r11, r7, r15
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	setlt.u r7, r5, r23
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r7, zero, .LBB0_165
# %bb.162:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r17
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r7, zero, .LBB0_166
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r21
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r7, zero, .LBB0_148
	j .LBB0_167
.LBB0_164:                              #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r24, r12
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r7, r5, r7
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r7, zero, .LBB0_160
	j .LBB0_161
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	add.s r7, r7, r4
	and r25, r7, r15
	setlt.u r7, r5, r17
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r7, zero, .LBB0_163
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r22, r7, r15
	setlt.u r7, r5, r21
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r7, zero, .LBB0_148
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_149 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r4
	and r19, r7, r15
	j .LBB0_148
.LBB0_168:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 48
	.loc	1 226 7 is_stmt 1               # parallel-rne.mlir:226:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_170
.LBB0_169:                              # %middle.block90
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[7:8], -1320(r30)               # 8-byte Folded Reload
	.loc	1 234 9 is_stmt 1               # parallel-rne.mlir:234:9
	setlt.ul r2, r[7:8], r[13:14]
	addli.d r[7:8], r[7:8], 1
	beq r2, zero, .LBB0_198
.LBB0_170:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_179 Depth 3
                                        #       Child Loop BB0_173 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[7:8], -1320(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	bneq r6, r28, .LBB0_177
# %bb.171:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_173
.LBB0_172:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	setlt.ul r7, r[16:17], r[13:14]
	.loc	1 250 13 is_stmt 1              # parallel-rne.mlir:250:13
	add.s r2, r6, r2
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r11, 0(r2)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	beq r7, zero, .LBB0_169
.LBB0_173:                              # %scalar.ph84
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r18, 0(r7)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r7, r18, r3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r8, r1, r7
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_175
# %bb.174:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r7, r5, r7
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r7, zero, .LBB0_172
	j .LBB0_176
.LBB0_175:                              #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r12
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r7, r5, r7
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r7, zero, .LBB0_172
.LBB0_176:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_173 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r11, r7, r15
	j .LBB0_172
.LBB0_177:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_170 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_179
.LBB0_178:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	addli r7, zero, 64
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r2, r6, r2
	zext_int2long r[7:8], r7
	stores.w r19, 12(r2)
	stores.w r22, 8(r2)
	stores.w r25, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	seteq.d r7, r[26:27], r[7:8]
	bneq r7, zero, .LBB0_169
.LBB0_179:                              # %vector.body86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_170 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[7:8], r[26:27], r[9:10]
	slli r2, r7, 2
	add.s r11, r28, r2
	loads.w r16, 12(r11)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r21, r16, r3
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r7, r1, r21
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r7, zero, .LBB0_181
# %bb.180:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r16, 0
	j .LBB0_182
.LBB0_181:                              #   in Loop: Header=BB0_179 Depth=3
	or r19, r16, r12
.LBB0_182:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r18, 8(r11)
	and r17, r18, r3
	setlt.u r7, r1, r17
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r7, zero, .LBB0_184
# %bb.183:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r18, 0
	j .LBB0_185
.LBB0_184:                              #   in Loop: Header=BB0_179 Depth=3
	or r22, r18, r12
.LBB0_185:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r20, 4(r11)
	and r23, r20, r3
	setlt.u r7, r1, r23
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r7, zero, .LBB0_187
# %bb.186:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_179 Depth=3
	or r25, r20, r12
.LBB0_188:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	loads.w r24, 0(r11)
	and r7, r24, r3
	setlt.u r8, r1, r7
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r8, zero, .LBB0_194
# %bb.189:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r24, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r7, r5, r7
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r7, zero, .LBB0_191
.LBB0_190:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r4
	and r11, r7, r15
.LBB0_191:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	setlt.u r7, r5, r23
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r7, zero, .LBB0_195
# %bb.192:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r17
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r7, zero, .LBB0_196
.LBB0_193:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r21
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r7, zero, .LBB0_178
	j .LBB0_197
.LBB0_194:                              #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r24, r12
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r7, r5, r7
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r7, zero, .LBB0_190
	j .LBB0_191
.LBB0_195:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	add.s r7, r7, r4
	and r25, r7, r15
	setlt.u r7, r5, r17
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r7, zero, .LBB0_193
.LBB0_196:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r22, r7, r15
	setlt.u r7, r5, r21
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r7, zero, .LBB0_178
.LBB0_197:                              # %vector.body86
                                        #   in Loop: Header=BB0_179 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r4
	and r19, r7, r15
	j .LBB0_178
.LBB0_198:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r7
	addli r17, zero, 4
	.loc	1 226 7                         # parallel-rne.mlir:226:7
	mfence { sm }
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	bneq r7, r17, .LBB0_135
.LBB0_199:                              #   in Loop: Header=BB0_7 Depth=1
	xfence
	mfence { lm, sm, gm }
	load.d r[7:8], -1296(r30)               # 8-byte Folded Reload
	j .LBB0_201
.LBB0_200:                              # %middle.block81
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	load.d r[9:10], -1320(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 263 9 is_stmt 1               # parallel-rne.mlir:263:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_229
.LBB0_201:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_210 Depth 3
                                        #       Child Loop BB0_204 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	store.d r[7:8], -1320(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	bneq r6, r28, .LBB0_208
# %bb.202:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_204
.LBB0_203:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	setlt.ul r7, r[16:17], r[13:14]
	.loc	1 279 13 is_stmt 1              # parallel-rne.mlir:279:13
	add.s r2, r6, r2
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	stores.w r11, 0(r2)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	beq r7, zero, .LBB0_200
.LBB0_204:                              # %scalar.ph75
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r18, 0(r7)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r7, r18, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	setlt.u r8, r1, r7
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r8, zero, .LBB0_206
# %bb.205:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r7, r5, r7
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r7, zero, .LBB0_203
	j .LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r12
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r7, r5, r7
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r7, zero, .LBB0_203
.LBB0_207:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_204 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r11, r7, r15
	j .LBB0_203
.LBB0_208:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_201 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_210
.LBB0_209:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	addli r7, zero, 64
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	addli.d r[26:27], r[26:27], 4
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	add.s r2, r6, r2
	zext_int2long r[7:8], r7
	stores.w r19, 12(r2)
	stores.w r22, 8(r2)
	stores.w r25, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	seteq.d r7, r[26:27], r[7:8]
	bneq r7, zero, .LBB0_200
.LBB0_210:                              # %vector.body77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_201 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[7:8], r[26:27], r[9:10]
	slli r2, r7, 2
	add.s r11, r28, r2
	loads.w r16, 12(r11)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r21, r16, r3
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	setlt.u r7, r1, r21
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r7, zero, .LBB0_212
# %bb.211:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r16, 0
	j .LBB0_213
.LBB0_212:                              #   in Loop: Header=BB0_210 Depth=3
	or r19, r16, r12
.LBB0_213:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r18, 8(r11)
	and r17, r18, r3
	setlt.u r7, r1, r17
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r7, zero, .LBB0_215
# %bb.214:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r18, 0
	j .LBB0_216
.LBB0_215:                              #   in Loop: Header=BB0_210 Depth=3
	or r22, r18, r12
.LBB0_216:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r20, 4(r11)
	and r23, r20, r3
	setlt.u r7, r1, r23
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r7, zero, .LBB0_218
# %bb.217:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_219
.LBB0_218:                              #   in Loop: Header=BB0_210 Depth=3
	or r25, r20, r12
.LBB0_219:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	loads.w r24, 0(r11)
	and r7, r24, r3
	setlt.u r8, r1, r7
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r8, zero, .LBB0_225
# %bb.220:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r24, 0
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r7, r5, r7
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r7, zero, .LBB0_222
.LBB0_221:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r4
	and r11, r7, r15
.LBB0_222:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	setlt.u r7, r5, r23
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r7, zero, .LBB0_226
# %bb.223:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r17
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r7, zero, .LBB0_227
.LBB0_224:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r21
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r7, zero, .LBB0_209
	j .LBB0_228
.LBB0_225:                              #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r11, r24, r12
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r7, r5, r7
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r7, zero, .LBB0_221
	j .LBB0_222
.LBB0_226:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	add.s r7, r7, r4
	and r25, r7, r15
	setlt.u r7, r5, r17
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r7, zero, .LBB0_224
.LBB0_227:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r22, r7, r15
	setlt.u r7, r5, r21
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r7, zero, .LBB0_209
.LBB0_228:                              # %vector.body77
                                        #   in Loop: Header=BB0_210 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r4
	and r19, r7, r15
	j .LBB0_209
.LBB0_229:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r7
	addli r17, zero, 4
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	mfence { sm }
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	addli r2, zero, 7
	bneq r7, r2, .LBB0_136
.LBB0_230:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 342 7 is_stmt 1               # parallel-rne.mlir:342:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_232
.LBB0_231:                              # %middle.block72
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 127
	load.d r[9:10], -1320(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 350 9 is_stmt 1               # parallel-rne.mlir:350:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_290
.LBB0_232:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_241 Depth 3
                                        #       Child Loop BB0_235 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	store.d r[7:8], -1320(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	bneq r6, r28, .LBB0_239
# %bb.233:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_235
.LBB0_234:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	setlt.ul r7, r[16:17], r[13:14]
	.loc	1 366 13 is_stmt 1              # parallel-rne.mlir:366:13
	add.s r2, r6, r2
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r11, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	beq r7, zero, .LBB0_231
.LBB0_235:                              # %scalar.ph66
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r18, 0(r7)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r7, r18, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r8, r1, r7
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, zero, .LBB0_237
# %bb.236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r7, r5, r7
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r7, zero, .LBB0_234
	j .LBB0_238
.LBB0_237:                              #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r12
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r7, r5, r7
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r7, zero, .LBB0_234
.LBB0_238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_235 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r11, r7, r15
	j .LBB0_234
.LBB0_239:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_232 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_241
.LBB0_240:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	load.d r[7:8], -1296(r30)               # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 4
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r2, r6, r2
	stores.w r19, 12(r2)
	stores.w r22, 8(r2)
	stores.w r25, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	seteq.d r7, r[26:27], r[7:8]
	bneq r7, zero, .LBB0_231
.LBB0_241:                              # %vector.body68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_232 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[7:8], r[26:27], r[9:10]
	slli r2, r7, 2
	add.s r11, r28, r2
	loads.w r16, 12(r11)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r21, r16, r3
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r7, r1, r21
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r7, zero, .LBB0_243
# %bb.242:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r16, 0
	j .LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_241 Depth=3
	or r19, r16, r12
.LBB0_244:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r18, 8(r11)
	and r17, r18, r3
	setlt.u r7, r1, r17
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r7, zero, .LBB0_246
# %bb.245:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r18, 0
	j .LBB0_247
.LBB0_246:                              #   in Loop: Header=BB0_241 Depth=3
	or r22, r18, r12
.LBB0_247:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r20, 4(r11)
	and r23, r20, r3
	setlt.u r7, r1, r23
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r7, zero, .LBB0_249
# %bb.248:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_250
.LBB0_249:                              #   in Loop: Header=BB0_241 Depth=3
	or r25, r20, r12
.LBB0_250:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	loads.w r24, 0(r11)
	and r7, r24, r3
	setlt.u r8, r1, r7
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r8, zero, .LBB0_252
# %bb.251:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r24, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r7, r5, r7
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r7, zero, .LBB0_253
	j .LBB0_254
.LBB0_252:                              #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r24, r12
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r7, r5, r7
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r7, zero, .LBB0_254
.LBB0_253:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r4
	and r11, r7, r15
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	setlt.u r7, r5, r23
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r7, zero, .LBB0_257
# %bb.255:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r17
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r7, zero, .LBB0_258
.LBB0_256:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r21
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r7, zero, .LBB0_240
	j .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	add.s r7, r7, r4
	and r25, r7, r15
	setlt.u r7, r5, r17
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r7, zero, .LBB0_256
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r22, r7, r15
	setlt.u r7, r5, r21
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r7, zero, .LBB0_240
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_241 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r4
	and r19, r7, r15
	j .LBB0_240
.LBB0_260:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 96
	.loc	1 313 7 is_stmt 1               # parallel-rne.mlir:313:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_262
.LBB0_261:                              # %middle.block63
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	load.d r[9:10], -1320(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 321 9 is_stmt 1               # parallel-rne.mlir:321:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	beq r2, zero, .LBB0_290
.LBB0_262:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_271 Depth 3
                                        #       Child Loop BB0_265 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	store.d r[7:8], -1320(r30)              # 8-byte Folded Spill
	sll.d r[9:10], r[7:8], r2
	bneq r6, r28, .LBB0_269
# %bb.263:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[16:17], zero
	j .LBB0_265
.LBB0_264:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	setlt.ul r7, r[16:17], r[13:14]
	.loc	1 337 13 is_stmt 1              # parallel-rne.mlir:337:13
	add.s r2, r6, r2
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	addli.d r[16:17], r[16:17], 1
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r11, 0(r2)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	beq r7, zero, .LBB0_261
.LBB0_265:                              # %scalar.ph57
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[7:8], r[16:17], r[9:10]
	slli r2, r7, 2
	add.s r7, r28, r2
	loads.w r18, 0(r7)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r7, r18, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r8, r1, r7
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r8, zero, .LBB0_267
# %bb.266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r11, r18, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r7, r5, r7
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r7, zero, .LBB0_264
	j .LBB0_268
.LBB0_267:                              #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r18, r12
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r7, r5, r7
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r7, zero, .LBB0_264
.LBB0_268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_265 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r11, r7, r15
	j .LBB0_264
.LBB0_269:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_262 Depth=2
	zext_int2long r[26:27], zero
	j .LBB0_271
.LBB0_270:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	load.d r[7:8], -1296(r30)               # 8-byte Folded Reload
	addli.d r[26:27], r[26:27], 4
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r2, r6, r2
	stores.w r19, 12(r2)
	stores.w r22, 8(r2)
	stores.w r25, 4(r2)
	stores.w r11, 0(r2)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	seteq.d r7, r[26:27], r[7:8]
	bneq r7, zero, .LBB0_261
.LBB0_271:                              # %vector.body59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_262 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[7:8], r[26:27], r[9:10]
	slli r2, r7, 2
	add.s r11, r28, r2
	loads.w r16, 12(r11)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r21, r16, r3
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r7, r1, r21
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r7, zero, .LBB0_273
# %bb.272:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r19, r16, 0
	j .LBB0_274
.LBB0_273:                              #   in Loop: Header=BB0_271 Depth=3
	or r19, r16, r12
.LBB0_274:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r18, 8(r11)
	and r17, r18, r3
	setlt.u r7, r1, r17
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r7, zero, .LBB0_276
# %bb.275:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r22, r18, 0
	j .LBB0_277
.LBB0_276:                              #   in Loop: Header=BB0_271 Depth=3
	or r22, r18, r12
.LBB0_277:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r20, 4(r11)
	and r23, r20, r3
	setlt.u r7, r1, r23
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r7, zero, .LBB0_279
# %bb.278:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r25, r20, 0
	j .LBB0_280
.LBB0_279:                              #   in Loop: Header=BB0_271 Depth=3
	or r25, r20, r12
.LBB0_280:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	loads.w r24, 0(r11)
	and r7, r24, r3
	setlt.u r8, r1, r7
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r8, zero, .LBB0_282
# %bb.281:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r24, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r7, r5, r7
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r7, zero, .LBB0_283
	j .LBB0_284
.LBB0_282:                              #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r11, r24, r12
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r7, r5, r7
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r7, zero, .LBB0_284
.LBB0_283:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r7, r24, 16
	andi r7, r7, 1
	add.s r7, r24, r7
	add.s r7, r7, r4
	and r11, r7, r15
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	setlt.u r7, r5, r23
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r7, zero, .LBB0_287
# %bb.285:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r17
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r7, zero, .LBB0_288
.LBB0_286:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r5, r21
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r7, zero, .LBB0_270
	j .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r20, 16
	andi r7, r7, 1
	add.s r7, r20, r7
	add.s r7, r7, r4
	and r25, r7, r15
	setlt.u r7, r5, r17
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r7, zero, .LBB0_286
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r18, 16
	andi r7, r7, 1
	add.s r7, r18, r7
	add.s r7, r7, r4
	and r22, r7, r15
	setlt.u r7, r5, r21
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r7, zero, .LBB0_270
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_271 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r16, 16
	andi r7, r7, 1
	add.s r7, r16, r7
	add.s r7, r7, r4
	and r19, r7, r15
	j .LBB0_270
.LBB0_290:                              # %.sink.split51
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r7
	addli r17, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	loadli.w r2,  -1324(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.292:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[18:19], -1336(r30)             # 8-byte Folded Reload
	addli r20, zero, 1
	.loc	1 389 7 is_stmt 1               # parallel-rne.mlir:389:7
	bneq r7, zero, .LBB0_6
# %bb.293:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	loadli.w r2,  -1368(r30)                # 4-byte Folded Reload
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	load.d r[16:17], -1304(r30)             # 8-byte Folded Reload
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	load.d r[21:22], -1352(r30)             # 8-byte Folded Reload
	addli r11, zero, 128
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	zext_int2long r[7:8], r2
	addli r2, zero, 960
	zext_int2long r[9:10], r2
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	loadli.w r2,  -1364(r30)                # 4-byte Folded Reload
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[9:10], r[7:8], r[9:10]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sext_int2long r[13:14], r2
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	addli r2, zero, 18
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	addli.d r[9:10], r[9:10], 64
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	min.sl r[16:17], r[13:14], r[16:17]
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	max.ul r[9:10], r[9:10], r[7:8]
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	addli.d r[16:17], r[16:17], 128
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	sub.sl r[7:8], r[9:10], r[7:8]
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	max.sl r[9:10], r[16:17], r[13:14]
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	load.d r[16:17], -1296(r30)             # 8-byte Folded Reload
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	sub.sl r[9:10], r[9:10], r[13:14]
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	load.d r[13:14], 16(r30)
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	min.ul r[7:8], r[7:8], r[16:17]
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	load.d r[16:17], -1360(r30)             # 8-byte Folded Reload
	sll.d r[16:17], r[16:17], r2
	addli r2, zero, 12
	add.ul r[13:14], r[13:14], r[16:17]
	xwait r2, 0
	ori r2, r6, 64
	zext_int2long r[16:17], r11
	slli r6, r7, 1
	add.ul r[13:14], r[13:14], r[21:22]
	addli r21, zero, 5
	addli r22, zero, 64
	.loc	1 384 13                        # parallel-rne.mlir:384:13
	min.sl r[9:10], r[9:10], r[16:17]
	addli r17, zero, 4
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	lock zero, r21
	dma_cfg r20, r20, zero, 0
	dma_cfg zero, r20, zero, 1
	dma_cfg r14, zero, zero, 2
	dma_cfg r13, r2, r22, 3
	addli r2, r7, 31
	addli r7, zero, 2048
	srli r2, r2, 5
	dma_cfg r22, r11, r2, 4
	andi r2, r6, 62
	addli r6, zero, 256
	dma_cfg r7, r6, r9, 5
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r7
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r20, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r21
	xsignal r2, 0
	j .LBB0_6
.LBB0_294:                              # %._crit_edge
	.loc	1 391 5                         # parallel-rne.mlir:391:5
	xsignal zero, 0
	bneq r7, zero, .LBB0_296
# %bb.295:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 391 5                         # parallel-rne.mlir:391:5
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
	.loc	1 392 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:392:5
	addli sp, sp, 1384
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
	.long	1448                            # 0x5a8
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-0ralbtth" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
