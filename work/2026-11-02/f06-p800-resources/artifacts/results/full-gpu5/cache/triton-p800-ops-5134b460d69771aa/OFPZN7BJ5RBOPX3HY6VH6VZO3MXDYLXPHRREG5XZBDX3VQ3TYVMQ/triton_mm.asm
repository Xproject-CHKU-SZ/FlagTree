	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-3pwp_9r8" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1432
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r2
	addli r30, sp, 1368
	xsignal_mode_cfg r1
	beq r2, zero, .LBB0_2
# %bb.1:                                # %.critedge
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	lui r1, 1048575
	ori r1, r1, 4095
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	csr_set csr3, r1
	sync_group
	j .LBB0_3
.LBB0_2:
	.loc	1 0 5                           # parallel-rne.mlir:0:5
	addli r2, zero, 2
	.loc	1 32 5                          # parallel-rne.mlir:32:5
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
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	lui r5, 1048575
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -220(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -864(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -1088(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -1284(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r4, 0
	fmac.s r2, r1, r3
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r3, r1, r3
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r4
	ori r4, r5, 4095
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r3, r2, r3
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r3, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[7:8], r1
	lui r1, 524287
	addli r9, zero, 128
	addli r14, zero, 1
	addli r5, zero, 4
	lui r28, 1024
	lui r13, 1048560
	addli r10, zero, 0
	store.d r[2:3], -1368(r30)              # 8-byte Folded Spill
	lui r2, 7
	ori r27, r1, 4095
	lui r1, 522240
	ori r3, r2, 4095
	lui r2, 522239
	ori r26, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r2, zero, 11
	addli r9, zero, 128
	addli r14, zero, 1
	xsignal r2, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[7:8], -1328(r30)               # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[5:6], -1368(r30)               # 8-byte Folded Reload
	loadli.w r10,  -1332(r30)               # 4-byte Folded Reload
	addli.d r[7:8], r[7:8], 1
	setlt.sl r2, r[7:8], r[5:6]
	addli r5, zero, 4
	beq r2, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #     Child Loop BB0_42 Depth 2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
                                        #     Child Loop BB0_75 Depth 2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_79 Depth 3
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
	addli r23, zero, 4
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	bneq r4, r5, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r4,  28(r30)
	store.d r[7:8], -1328(r30)              # 8-byte Folded Spill
	mod.s r6, r10, r23
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	loadli.w r20,  -1284(r30)
	addli r10, r10, 1
	addli r19, zero, 0
	storeli.w r10, -1332(r30)               # 4-byte Folded Spill
	div.s r2, r7, r2
	addli r8, zero, 8
	slli r15, r6, 15
	lui r6, 32
	div.s r2, r2, r4
	div.s r4, r2, r9
	slli r5, r4, 3
	slli r4, r4, 7
	sub.s r7, r14, r5
	sub.s r4, r2, r4
	min.s r7, r7, r8
	mod.s r2, r2, r7
	div.s r4, r4, r7
	add.s r7, r15, r6
	add.s r2, r5, r2
	slli r5, r4, 6
	storeli.w r5, -1360(r30)                # 4-byte Folded Spill
	slli r6, r2, 7
	zext_int2long r[8:9], r2
	zext_int2long r[4:5], r4
	addli r2, zero, 6
	sll.d r[4:5], r[4:5], r2
	addli r2, zero, 14
	store.d r[8:9], -1352(r30)              # 8-byte Folded Spill
	storeli.w r6, -1356(r30)                # 4-byte Folded Spill
	addli r6, zero, 0
	sll.d r[24:25], r[8:9], r2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	sll.d r[8:9], r[4:5], r14
	load.d r[4:5], 8(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	loadli.w r14,  -1088(r30)
	store.d r[8:9], -1344(r30)              # 8-byte Folded Spill
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	add.ul r[4:5], r[4:5], r[8:9]
	storeli.w r14, -1296(r30)               # 4-byte Folded Spill
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r4, 64
	addli r5, zero, 4
	addli r9, zero, 2
	ori r4, r4, 64
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	lock zero, r5
	dma_cfg r22, r22, zero, 0
	add.s r2, r2, r4
	dma_cfg zero, r12, zero, 2
	addli r4, zero, 5
	dma_cfg r2, r11, r18, 3
	addli r2, zero, 256
	dma_cfg r8, r18, r22, 4
	dma_cfg r8, r2, r10, 5
	addli r2, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	lock zero, r4
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r24, 10
	addli.d r[24:25], r[20:21], 0
	addli r20, r14, 0
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
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r16, zero, r18, 3
	dma_cfg r8, zero, r22, 4
	dma_cfg r8, zero, r10, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r4
	xsignal r9, 0
	loadli.w r14,  -1296(r30)               # 4-byte Folded Reload
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -864(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r4,  -220(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r4, r4, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r2, -864(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r4, -220(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r6, r6, 1
	beq r6, r5, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r23, zero, 4
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r19, r19, 1
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[8:9], r6
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	addli r2, zero, 5
	sll.d r[10:11], r[8:9], r2
	addli r2, zero, 16383
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[17:18], r[10:11], r[24:25]
	zext_int2long r[4:5], r2
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r2, r[4:5], r[17:18]
	.loc	1 88 15                         # parallel-rne.mlir:88:15
	bneq r2, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli.d r[10:11], r[17:18], 0
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	add.s r5, r14, r19
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r12, zero, 55
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	add.s r2, r20, r19
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r4, zero, 48
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	lui r16, 64
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r21
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r12, r5, r12
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r4, r2, r4
	addli r2, r2, 1
	storeli.w r2, -1284(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r2, r12, 14
	addli r12, r5, 1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	slli r4, r4, 14
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r12, -1088(r30)
	add.s r16, r2, r16
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r12, zero, 2
	beq r21, r12, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 1
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r21, r22, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r14, r20, 0
	addli.d r[20:21], r[24:25], 0
	addli r24, zero, 7
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	sll.d r[8:9], r[17:18], r22
	addli r4, zero, 54
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	srl.d r[17:18], r[10:11], r24
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[10:11], 0(r30)
	add.ul r[11:12], r[10:11], r[8:9]
	addli r8, zero, 128
	sub.s r10, r8, r17
	addli r17, zero, 3
	addli r18, zero, 64
	xwait r17, 0
	blt.s r4, r5, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r5, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r4, zero, 2
	lock zero, r5
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 6
	dma_cfg zero, zero, r17, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r5, 10
	dma_cfg zero, zero, r4, 10
	addli r4, zero, 8
	dma_cfg zero, zero, r24, 10
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
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r16, zero, r18, 3
	dma_cfg r8, zero, r22, 4
	dma_cfg r8, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r5
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r5, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r2, zero, 5
	addli r18, zero, 64
	xwait r5, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r5, zero, 0
	addli r5, zero, 32
	ds_cfg r5, zero, 1
	ds_cfg r5, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 3
	shuffle_batch r4, r16, r5, 1
	addli r5, zero, 4
	unlock zero
	xsignal r2, 0
	xsignal r5, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r12,  -220(r30)
	addli r10, zero, 54
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -864(r30)
	addli r5, zero, 160
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	lui r11, 284
	mod.s r10, r12, r10
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r5, r2, r5
	addli r2, r2, 1
	storeli.w r2, -864(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r2, r10, 13
	addli r10, r12, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r5, r5, 13
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r10, -220(r30)
	add.s r16, r2, r11
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r10, zero, 7
	beq r21, r10, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	addli r10, zero, 6
	addli r18, zero, 64
	bneq r21, r10, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r22, zero, 16
	addli r17, zero, 7
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	sll.d r[4:5], r[8:9], r22
	load.d r[8:9], -1304(r30)               # 8-byte Folded Reload
	xwait r17, 0
	add.ul r[10:11], r[8:9], r[4:5]
	addli r5, zero, 128
	addli r4, zero, 53
	blt.s r4, r12, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r9, zero, 5
	addli r4, zero, 1
	addli r12, zero, 2
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r8, zero, 3
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 8
	dma_cfg zero, zero, r17, 10
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
	addli r8, zero, 17
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 18
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
	addli r8, zero, 32
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r16, zero, r18, 3
	dma_cfg r5, zero, r12, 4
	addli r12, zero, 256
	dma_cfg r12, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r4, 284
	addli r8, zero, 4
	addli r12, zero, 256
	addli r9, zero, 5
	ori r4, r4, 64
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r8
	add.s r2, r2, r4
	addli r4, zero, 1
	dma_cfg r4, r4, zero, 0
	dma_cfg zero, r11, zero, 2
	dma_cfg r2, r10, r18, 3
	addli r10, zero, 2
	addli r11, zero, 32
	addli r2, zero, 2048
	dma_cfg r5, r18, r10, 4
	dma_cfg r12, r2, r11, 5
	addli r2, zero, 3
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r8
	lock zero, r9
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r4, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r8, 10
	addli r8, zero, 6
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r17, 10
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
	dma_cfg zero, zero, r22, 10
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
	dma_cfg r4, r4, zero, 0
	dma_cfg r4, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r16, zero, r18, 3
	dma_cfg r5, zero, r10, 4
	addli r5, zero, 4
	dma_cfg r12, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r4, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	xsignal r8, 0
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 6
	addli r18, zero, 64
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r18, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r18, zero, 13
	shuffle_coa r5, r16, r2, 2
	addli r2, zero, 7
	addli r5, zero, 4
	unlock zero
	xsignal r2, 0
	addli r2, zero, 8
	xsignal r2, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 4
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	bneq r21, r2, .LBB0_31
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	xwait r2, 0
	addli r2, zero, 8
	addli r8, zero, 1
	addli r9, zero, 32
	xwait r2, 0
	addli r2, zero, 128
	lock zero, r8
	mm_cfg r18, r9, r2, 0
	addli r2, zero, 2
	mm_cfg r2, r2, r8, 2
	beq r19, zero, .LBB0_32
# %bb.30:                               # %.preheader30
                                        #   in Loop: Header=BB0_15 Depth=2
	mm_acc r7, r4, r5, 8
	j .LBB0_33
.LBB0_31:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r6, r6, 1
	addli r5, zero, 4
	bneq r6, r5, .LBB0_14
	j .LBB0_36
.LBB0_32:                               # %.preheader29
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	mm r7, r4, r5, 8
.LBB0_33:                               # %.thread20.thread45
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 1
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r6, r6, 1
	addli r5, zero, 4
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	unlock r2
	addli r2, zero, 5
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r6, r5, .LBB0_14
	j .LBB0_35
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	core_id r2
	bneq r2, r5, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -1316(r30)              # 4-byte Folded Spill
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	xsignal r2, 0
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	j .LBB0_39
.LBB0_36:                               # %.thread44
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	addli r2, zero, 3
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r4, r2, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	storeli.w r2, -1316(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1316(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r2, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r2
	addli r2, zero, 63
	sync_core
	zext_int2long r[19:20], r2
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	bneq r4, zero, .LBB0_71
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[4:5], zero
	mfence { lm, sm, gm }
	j .LBB0_42
.LBB0_41:                               # %middle.block117
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -1296(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 145 9 is_stmt 1               # parallel-rne.mlir:145:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_70
.LBB0_42:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_51 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1296(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	bneq r15, r7, .LBB0_49
# %bb.43:                               # %scalar.ph111.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_46
.LBB0_44:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_46 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_45:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 161 13 is_stmt 1              # parallel-rne.mlir:161:13
	add.s r2, r15, r2
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r6, 0(r2)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	beq r8, zero, .LBB0_41
.LBB0_46:                               # %scalar.ph111
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r9, r8, r27
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r6, r1, r9
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r6, zero, .LBB0_48
# %bb.47:                               # %scalar.ph111
                                        #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r9, r26, r9
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r9, zero, .LBB0_45
	j .LBB0_44
.LBB0_48:                               #   in Loop: Header=BB0_46 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r9, r26, r9
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r9, zero, .LBB0_45
	j .LBB0_44
.LBB0_49:                               # %vector.body113.preheader
                                        #   in Loop: Header=BB0_42 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[24:25], zero
	j .LBB0_51
.LBB0_50:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	addli.d r[24:25], r[24:25], 4
	zext_int2long r[4:5], r18
	seteq.d r4, r[24:25], r[4:5]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r5, r15, r6
	stores.w r10, 12(r5)
	stores.w r8, 8(r5)
	stores.w r2, 4(r5)
	stores.w r16, 0(r5)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	bneq r4, zero, .LBB0_41
.LBB0_51:                               # %vector.body113
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[4:5], r[24:25], r[21:22]
	slli r6, r4, 2
	add.s r5, r7, r6
	loads.w r11, 12(r5)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r14, r11, r27
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r2, r1, r14
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_53
# %bb.52:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_51 Depth=3
	or r10, r11, r28
.LBB0_54:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r12, 8(r5)
	and r4, r12, r27
	setlt.u r2, r1, r4
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_56
# %bb.55:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r12, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_51 Depth=3
	or r8, r12, r28
.LBB0_57:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r9, 4(r5)
	and r23, r9, r27
	setlt.u r2, r1, r23
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_59
# %bb.58:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r9, 0
	j .LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_51 Depth=3
	or r2, r9, r28
.LBB0_60:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	loads.w r5, 0(r5)
	and r17, r5, r27
	setlt.u r16, r1, r17
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r16, zero, .LBB0_62
# %bb.61:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r16, r5, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r17, r26, r17
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r17, zero, .LBB0_63
	j .LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r16, r5, r28
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r17, r26, r17
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r17, zero, .LBB0_64
.LBB0_63:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r16, r5, 16
	andi r16, r16, 1
	add.s r5, r5, r16
	add.s r5, r5, r3
	and r16, r5, r13
.LBB0_64:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	setlt.u r5, r26, r23
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r5, zero, .LBB0_67
# %bb.65:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r9, 16
	andi r2, r2, 1
	add.s r2, r9, r2
	add.s r2, r2, r3
	and r2, r2, r13
	setlt.u r4, r26, r4
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r4, zero, .LBB0_68
.LBB0_66:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r14
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r4, zero, .LBB0_50
	j .LBB0_69
.LBB0_67:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r4, r26, r4
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r4, zero, .LBB0_66
.LBB0_68:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r12, 16
	andi r4, r4, 1
	add.s r4, r12, r4
	add.s r4, r4, r3
	and r8, r4, r13
	setlt.u r4, r26, r14
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r4, zero, .LBB0_50
.LBB0_69:                               # %vector.body113
                                        #   in Loop: Header=BB0_51 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r4, r11, 16
	andi r4, r4, 1
	add.s r4, r11, r4
	add.s r4, r4, r3
	and r10, r4, r13
	j .LBB0_50
.LBB0_70:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r4
	addli r5, zero, 4
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
.LBB0_71:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[8:9], r18
	.loc	1 166 7 is_stmt 1               # parallel-rne.mlir:166:7
	addli r2, zero, 2
	store.d r[8:9], -1296(r30)              # 8-byte Folded Spill
	beq r4, r2, .LBB0_103
# %bb.72:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r4, r2, .LBB0_134
# %bb.73:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[4:5], zero
	addli r2, zero, 16
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	store.d r[4:5], -1312(r30)              # 8-byte Folded Spill
	zext_int2long r[4:5], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_75
.LBB0_74:                               # %middle.block99
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -1304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_133
.LBB0_75:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_84 Depth 3
                                        #       Child Loop BB0_79 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	sll.d r[16:17], r[4:5], r2
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	bneq r15, r7, .LBB0_82
# %bb.76:                               # %scalar.ph93.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_79
.LBB0_77:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_79 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_78:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 190 13 is_stmt 1              # parallel-rne.mlir:190:13
	add.s r2, r15, r2
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r6, 0(r2)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r8, zero, .LBB0_74
.LBB0_79:                               # %scalar.ph93
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[8:9], r[4:5], r[16:17]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r9, r8, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r6, r1, r9
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r6, zero, .LBB0_81
# %bb.80:                               # %scalar.ph93
                                        #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r9, r26, r9
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r9, zero, .LBB0_78
	j .LBB0_77
.LBB0_81:                               #   in Loop: Header=BB0_79 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r9, r26, r9
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r9, zero, .LBB0_78
	j .LBB0_77
.LBB0_82:                               # %vector.body95.preheader
                                        #   in Loop: Header=BB0_75 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	load.d r[10:11], -1312(r30)             # 8-byte Folded Reload
	j .LBB0_84
.LBB0_83:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	load.d r[8:9], -1296(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r6, r15, r6
	addli r18, zero, 64
	stores.w r14, 12(r6)
	stores.w r2, 8(r6)
	stores.w r12, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	seteq.d r5, r[10:11], r[8:9]
	bneq r5, zero, .LBB0_74
.LBB0_84:                               # %vector.body95
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_75 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[4:5], r[10:11], r[16:17]
	slli r6, r4, 2
	add.s r4, r7, r6
	loads.w r18, 12(r4)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r8, r18, r27
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r2, r1, r8
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_86
# %bb.85:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r18, 0
	j .LBB0_87
.LBB0_86:                               #   in Loop: Header=BB0_84 Depth=3
	or r14, r18, r28
.LBB0_87:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r23, 8(r4)
	and r9, r23, r27
	setlt.u r2, r1, r9
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_89
# %bb.88:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_90
.LBB0_89:                               #   in Loop: Header=BB0_84 Depth=3
	or r2, r23, r28
.LBB0_90:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r5, 4(r4)
	and r21, r5, r27
	setlt.u r12, r1, r21
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r12, zero, .LBB0_92
# %bb.91:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r5, 0
	j .LBB0_93
.LBB0_92:                               #   in Loop: Header=BB0_84 Depth=3
	or r12, r5, r28
.LBB0_93:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	loads.w r22, 0(r4)
	and r24, r22, r27
	setlt.u r4, r1, r24
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r4, zero, .LBB0_95
# %bb.94:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r22, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r24, r26, r24
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r24, zero, .LBB0_96
	j .LBB0_97
.LBB0_95:                               #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r22, r28
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r24, r26, r24
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r24, zero, .LBB0_97
.LBB0_96:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r22, 16
	andi r4, r4, 1
	add.s r4, r22, r4
	add.s r4, r4, r3
	and r4, r4, r13
.LBB0_97:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	setlt.u r21, r26, r21
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r21, zero, .LBB0_100
# %bb.98:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	add.s r5, r5, r3
	and r12, r5, r13
	setlt.u r5, r26, r9
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r5, zero, .LBB0_101
.LBB0_99:                               # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r8
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r5, zero, .LBB0_83
	j .LBB0_102
.LBB0_100:                              # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r9
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r5, zero, .LBB0_99
.LBB0_101:                              # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r3
	and r2, r2, r13
	setlt.u r5, r26, r8
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r5, zero, .LBB0_83
.LBB0_102:                              # %vector.body95
                                        #   in Loop: Header=BB0_84 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r18, 16
	andi r5, r5, 1
	add.s r5, r18, r5
	add.s r5, r5, r3
	and r14, r5, r13
	j .LBB0_83
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 32
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_105
.LBB0_104:                              # %middle.block108
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[8:9], -1304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_109 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	bneq r15, r7, .LBB0_112
# %bb.106:                              # %scalar.ph102.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_109
.LBB0_107:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_108:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 219 13 is_stmt 1              # parallel-rne.mlir:219:13
	add.s r2, r15, r2
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r6, 0(r2)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r8, zero, .LBB0_104
.LBB0_109:                              # %scalar.ph102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r9, r8, r27
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r6, r1, r9
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r6, zero, .LBB0_111
# %bb.110:                              # %scalar.ph102
                                        #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r9, r26, r9
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r9, zero, .LBB0_108
	j .LBB0_107
.LBB0_111:                              #   in Loop: Header=BB0_109 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r9, r26, r9
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r9, zero, .LBB0_108
	j .LBB0_107
.LBB0_112:                              # %vector.body104.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[8:9], r18
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	add.s r6, r15, r6
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	seteq.d r2, r[10:11], r[8:9]
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r14, 12(r6)
	stores.w r23, 8(r6)
	stores.w r5, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	bneq r2, zero, .LBB0_104
.LBB0_114:                              # %vector.body104
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[4:5], r[10:11], r[21:22]
	slli r6, r4, 2
	add.s r4, r7, r6
	loads.w r16, 12(r4)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r8, r16, r27
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r2, r1, r8
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	or r14, r16, r28
.LBB0_117:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r2, 8(r4)
	and r9, r2, r27
	setlt.u r5, r1, r9
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r5, zero, .LBB0_119
# %bb.118:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r23, r2, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	or r23, r2, r28
.LBB0_120:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r12, 4(r4)
	and r17, r12, r27
	setlt.u r5, r1, r17
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r5, zero, .LBB0_122
# %bb.121:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r5, r12, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	or r5, r12, r28
.LBB0_123:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r18, 0(r4)
	and r24, r18, r27
	setlt.u r4, r1, r24
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r4, zero, .LBB0_125
# %bb.124:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r18, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r24, r26, r24
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r24, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r18, r28
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r24, r26, r24
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r24, zero, .LBB0_127
.LBB0_126:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r18, 16
	andi r4, r4, 1
	add.s r4, r18, r4
	add.s r4, r4, r3
	and r4, r4, r13
.LBB0_127:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r17, r26, r17
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r17, zero, .LBB0_129
# %bb.128:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r12, 16
	andi r5, r5, 1
	add.s r5, r12, r5
	add.s r5, r5, r3
	and r5, r5, r13
.LBB0_129:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r9, r26, r9
	addli r18, zero, 64
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r9, zero, .LBB0_131
# %bb.130:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r2, 16
	andi r9, r9, 1
	add.s r2, r2, r9
	add.s r2, r2, r3
	and r23, r2, r13
.LBB0_131:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r2, r26, r8
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r2, zero, .LBB0_113
# %bb.132:                              # %vector.body104
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r16, 16
	andi r2, r2, 1
	add.s r2, r16, r2
	add.s r2, r2, r3
	and r14, r2, r13
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r4
	addli r5, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	loadli.w r2,  -1316(r30)                # 4-byte Folded Reload
	beq r2, zero, .LBB0_165
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 48
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_137
.LBB0_136:                              # %middle.block90
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	load.d r[4:5], -1304(r30)               # 8-byte Folded Reload
	.loc	1 232 9 is_stmt 1               # parallel-rne.mlir:232:9
	setlt.ul r2, r[4:5], r[19:20]
	addli.d r[4:5], r[4:5], 1
	beq r2, zero, .LBB0_196
.LBB0_137:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_146 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	bneq r15, r7, .LBB0_144
# %bb.138:                              # %scalar.ph84.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_141
.LBB0_139:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_141 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_140:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 248 13 is_stmt 1              # parallel-rne.mlir:248:13
	add.s r2, r15, r2
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r6, 0(r2)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	beq r8, zero, .LBB0_136
.LBB0_141:                              # %scalar.ph84
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r9, r8, r27
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r6, r1, r9
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r6, zero, .LBB0_143
# %bb.142:                              # %scalar.ph84
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r9, r26, r9
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r9, zero, .LBB0_140
	j .LBB0_139
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r9, r26, r9
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r9, zero, .LBB0_140
	j .LBB0_139
.LBB0_144:                              # %vector.body86.preheader
                                        #   in Loop: Header=BB0_137 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_146
.LBB0_145:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[8:9], r18
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r6, r15, r6
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	seteq.d r5, r[10:11], r[8:9]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r14, 12(r6)
	stores.w r2, 8(r6)
	stores.w r12, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	bneq r5, zero, .LBB0_136
.LBB0_146:                              # %vector.body86
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_137 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[4:5], r[10:11], r[21:22]
	slli r6, r4, 2
	add.s r4, r7, r6
	loads.w r16, 12(r4)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r8, r16, r27
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r2, r1, r8
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_148
# %bb.147:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_149
.LBB0_148:                              #   in Loop: Header=BB0_146 Depth=3
	or r14, r16, r28
.LBB0_149:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r23, 8(r4)
	and r9, r23, r27
	setlt.u r2, r1, r9
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_151
# %bb.150:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_152
.LBB0_151:                              #   in Loop: Header=BB0_146 Depth=3
	or r2, r23, r28
.LBB0_152:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r5, 4(r4)
	and r24, r5, r27
	setlt.u r12, r1, r24
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r12, zero, .LBB0_154
# %bb.153:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r5, 0
	j .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_146 Depth=3
	or r12, r5, r28
.LBB0_155:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	loads.w r25, 0(r4)
	and r17, r25, r27
	setlt.u r4, r1, r17
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r4, zero, .LBB0_164
# %bb.156:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r17, r26, r17
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r17, zero, .LBB0_158
.LBB0_157:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r25, 16
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r3
	and r4, r4, r13
.LBB0_158:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	setlt.u r17, r26, r24
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r17, zero, .LBB0_161
# %bb.159:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	add.s r5, r5, r3
	and r12, r5, r13
	setlt.u r5, r26, r9
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r5, zero, .LBB0_162
.LBB0_160:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r8
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r5, zero, .LBB0_145
	j .LBB0_163
.LBB0_161:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r9
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r5, zero, .LBB0_160
.LBB0_162:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r3
	and r2, r2, r13
	setlt.u r5, r26, r8
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r5, zero, .LBB0_145
.LBB0_163:                              # %vector.body86
                                        #   in Loop: Header=BB0_146 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r3
	and r14, r5, r13
	j .LBB0_145
.LBB0_164:                              #   in Loop: Header=BB0_146 Depth=3
	or r4, r25, r28
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r17, r26, r17
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r17, zero, .LBB0_157
	j .LBB0_158
.LBB0_165:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	bneq r4, r5, .LBB0_197
.LBB0_166:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	mfence { lm, sm, gm }
	load.d r[4:5], -1296(r30)               # 8-byte Folded Reload
	j .LBB0_168
.LBB0_167:                              # %middle.block81
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 79
	load.d r[8:9], -1304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 261 9 is_stmt 1               # parallel-rne.mlir:261:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_230
.LBB0_168:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	bneq r15, r7, .LBB0_175
# %bb.169:                              # %scalar.ph75.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_172
.LBB0_170:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_172 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_171:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 277 13 is_stmt 1              # parallel-rne.mlir:277:13
	add.s r2, r15, r2
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r6, 0(r2)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	beq r8, zero, .LBB0_167
.LBB0_172:                              # %scalar.ph75
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r9, r8, r27
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r6, r1, r9
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r6, zero, .LBB0_174
# %bb.173:                              # %scalar.ph75
                                        #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r9, r26, r9
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r9, zero, .LBB0_171
	j .LBB0_170
.LBB0_174:                              #   in Loop: Header=BB0_172 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r9, r26, r9
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r9, zero, .LBB0_171
	j .LBB0_170
.LBB0_175:                              # %vector.body77.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	addli.d r[10:11], r[10:11], 4
	zext_int2long r[8:9], r18
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	add.s r6, r15, r6
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	seteq.d r5, r[10:11], r[8:9]
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r14, 12(r6)
	stores.w r2, 8(r6)
	stores.w r12, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	bneq r5, zero, .LBB0_167
.LBB0_177:                              # %vector.body77
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[4:5], r[10:11], r[21:22]
	slli r6, r4, 2
	add.s r4, r7, r6
	loads.w r16, 12(r4)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r8, r16, r27
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r2, r1, r8
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	or r14, r16, r28
.LBB0_180:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r23, 8(r4)
	and r9, r23, r27
	setlt.u r2, r1, r9
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_182
# %bb.181:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	or r2, r23, r28
.LBB0_183:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r5, 4(r4)
	and r24, r5, r27
	setlt.u r12, r1, r24
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r12, zero, .LBB0_185
# %bb.184:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r5, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	or r12, r5, r28
.LBB0_186:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r25, 0(r4)
	and r17, r25, r27
	setlt.u r4, r1, r17
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r4, zero, .LBB0_195
# %bb.187:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r17, r26, r17
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r17, zero, .LBB0_189
.LBB0_188:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r25, 16
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r3
	and r4, r4, r13
.LBB0_189:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r17, r26, r24
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r17, zero, .LBB0_192
# %bb.190:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	add.s r5, r5, r3
	and r12, r5, r13
	setlt.u r5, r26, r9
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r5, zero, .LBB0_193
.LBB0_191:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r8
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r5, zero, .LBB0_176
	j .LBB0_194
.LBB0_192:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r9
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r5, zero, .LBB0_191
.LBB0_193:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r3
	and r2, r2, r13
	setlt.u r5, r26, r8
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r5, zero, .LBB0_176
.LBB0_194:                              # %vector.body77
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r3
	and r14, r5, r13
	j .LBB0_176
.LBB0_195:                              #   in Loop: Header=BB0_177 Depth=3
	or r4, r25, r28
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r17, r26, r17
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r17, zero, .LBB0_188
	j .LBB0_189
.LBB0_196:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	addli r5, zero, 4
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	mfence { sm }
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	beq r4, r5, .LBB0_166
.LBB0_197:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 7
	.loc	1 282 7 is_stmt 1               # parallel-rne.mlir:282:7
	beq r4, r2, .LBB0_231
.LBB0_198:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r4, r2, .LBB0_261
# %bb.199:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r4, r2, .LBB0_292
# %bb.200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 80
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_202
.LBB0_201:                              # %middle.block
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 95
	load.d r[8:9], -1304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_202:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_206 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	bneq r15, r7, .LBB0_209
# %bb.203:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_206
.LBB0_204:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_205:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 306 13 is_stmt 1              # parallel-rne.mlir:306:13
	add.s r2, r15, r2
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r6, 0(r2)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r8, zero, .LBB0_201
.LBB0_206:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r9, r8, r27
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r6, r1, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r6, zero, .LBB0_208
# %bb.207:                              # %scalar.ph
                                        #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r9, r26, r9
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r9, zero, .LBB0_205
	j .LBB0_204
.LBB0_208:                              #   in Loop: Header=BB0_206 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r9, r26, r9
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r9, zero, .LBB0_205
	j .LBB0_204
.LBB0_209:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	load.d r[8:9], -1296(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r6, r15, r6
	stores.w r14, 12(r6)
	stores.w r2, 8(r6)
	stores.w r12, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	seteq.d r5, r[10:11], r[8:9]
	bneq r5, zero, .LBB0_201
.LBB0_211:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[4:5], r[10:11], r[21:22]
	slli r6, r4, 2
	add.s r4, r7, r6
	loads.w r16, 12(r4)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r8, r16, r27
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r2, r1, r8
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_213
# %bb.212:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	or r14, r16, r28
.LBB0_214:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r23, 8(r4)
	and r9, r23, r27
	setlt.u r2, r1, r9
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_216
# %bb.215:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	or r2, r23, r28
.LBB0_217:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r5, 4(r4)
	and r24, r5, r27
	setlt.u r12, r1, r24
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r12, zero, .LBB0_219
# %bb.218:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r5, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	or r12, r5, r28
.LBB0_220:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r25, 0(r4)
	and r17, r25, r27
	setlt.u r4, r1, r17
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r4, zero, .LBB0_229
# %bb.221:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r17, r26, r17
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r17, zero, .LBB0_223
.LBB0_222:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r25, 16
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r3
	and r4, r4, r13
.LBB0_223:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r17, r26, r24
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r17, zero, .LBB0_226
# %bb.224:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	add.s r5, r5, r3
	and r12, r5, r13
	setlt.u r5, r26, r9
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r5, zero, .LBB0_227
.LBB0_225:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r8
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r5, zero, .LBB0_210
	j .LBB0_228
.LBB0_226:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r9
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r5, zero, .LBB0_225
.LBB0_227:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r3
	and r2, r2, r13
	setlt.u r5, r26, r8
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r5, zero, .LBB0_210
.LBB0_228:                              # %vector.body
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r3
	and r14, r5, r13
	j .LBB0_210
.LBB0_229:                              #   in Loop: Header=BB0_211 Depth=3
	or r4, r25, r28
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r17, r26, r17
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r17, zero, .LBB0_222
	j .LBB0_223
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
	addli r2, zero, 7
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	bneq r4, r2, .LBB0_198
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 112
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_233
.LBB0_232:                              # %middle.block72
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 127
	load.d r[8:9], -1304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_237 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	bneq r15, r7, .LBB0_240
# %bb.234:                              # %scalar.ph66.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_237
.LBB0_235:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_236:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 364 13 is_stmt 1              # parallel-rne.mlir:364:13
	add.s r2, r15, r2
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r6, 0(r2)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r8, zero, .LBB0_232
.LBB0_237:                              # %scalar.ph66
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r9, r8, r27
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r6, r1, r9
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r6, zero, .LBB0_239
# %bb.238:                              # %scalar.ph66
                                        #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r9, r26, r9
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r9, zero, .LBB0_236
	j .LBB0_235
.LBB0_239:                              #   in Loop: Header=BB0_237 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r9, r26, r9
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r9, zero, .LBB0_236
	j .LBB0_235
.LBB0_240:                              # %vector.body68.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	load.d r[8:9], -1296(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r6, r15, r6
	stores.w r14, 12(r6)
	stores.w r2, 8(r6)
	stores.w r12, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	seteq.d r5, r[10:11], r[8:9]
	bneq r5, zero, .LBB0_232
.LBB0_242:                              # %vector.body68
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[4:5], r[10:11], r[21:22]
	slli r6, r4, 2
	add.s r4, r7, r6
	loads.w r16, 12(r4)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r8, r16, r27
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r2, r1, r8
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r2, zero, .LBB0_244
# %bb.243:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	or r14, r16, r28
.LBB0_245:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r23, 8(r4)
	and r9, r23, r27
	setlt.u r2, r1, r9
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r2, zero, .LBB0_247
# %bb.246:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	or r2, r23, r28
.LBB0_248:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r5, 4(r4)
	and r24, r5, r27
	setlt.u r12, r1, r24
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r12, zero, .LBB0_250
# %bb.249:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r5, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	or r12, r5, r28
.LBB0_251:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r25, 0(r4)
	and r17, r25, r27
	setlt.u r4, r1, r17
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r4, zero, .LBB0_253
# %bb.252:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r17, r26, r17
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r17, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r28
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r17, r26, r17
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r17, zero, .LBB0_255
.LBB0_254:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r25, 16
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r3
	and r4, r4, r13
.LBB0_255:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r17, r26, r24
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r17, zero, .LBB0_258
# %bb.256:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	add.s r5, r5, r3
	and r12, r5, r13
	setlt.u r5, r26, r9
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r5, zero, .LBB0_259
.LBB0_257:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r8
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r5, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r9
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r5, zero, .LBB0_257
.LBB0_259:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r3
	and r2, r2, r13
	setlt.u r5, r26, r8
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r5, zero, .LBB0_241
.LBB0_260:                              # %vector.body68
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r3
	and r14, r5, r13
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 96
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[4:5], r2
	j .LBB0_263
.LBB0_262:                              # %middle.block63
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 111
	load.d r[8:9], -1304(r30)               # 8-byte Folded Reload
	zext_int2long r[4:5], r2
	.loc	1 319 9 is_stmt 1               # parallel-rne.mlir:319:9
	setlt.ul r2, r[8:9], r[4:5]
	addli.d r[4:5], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_267 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 6
	store.d r[4:5], -1304(r30)              # 8-byte Folded Spill
	sll.d r[21:22], r[4:5], r2
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	bneq r15, r7, .LBB0_270
# %bb.264:                              # %scalar.ph57.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[4:5], zero
	j .LBB0_267
.LBB0_265:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	srli r6, r8, 16
	andi r6, r6, 1
	add.s r6, r8, r6
	add.s r6, r6, r3
	and r6, r6, r13
.LBB0_266:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	setlt.ul r8, r[4:5], r[19:20]
	.loc	1 335 13 is_stmt 1              # parallel-rne.mlir:335:13
	add.s r2, r15, r2
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	addli.d r[4:5], r[4:5], 1
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r6, 0(r2)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	beq r8, zero, .LBB0_262
.LBB0_267:                              # %scalar.ph57
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[8:9], r[4:5], r[21:22]
	slli r2, r8, 2
	add.s r6, r7, r2
	loads.w r8, 0(r6)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r9, r8, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r6, r1, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r6, zero, .LBB0_269
# %bb.268:                              # %scalar.ph57
                                        #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r6, r8, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r9, r26, r9
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r9, zero, .LBB0_266
	j .LBB0_265
.LBB0_269:                              #   in Loop: Header=BB0_267 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r6, r8, r28
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r9, r26, r9
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r9, zero, .LBB0_266
	j .LBB0_265
.LBB0_270:                              # %vector.body59.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	zext_int2long r[10:11], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	load.d r[8:9], -1296(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r6, r15, r6
	stores.w r14, 12(r6)
	stores.w r2, 8(r6)
	stores.w r12, 4(r6)
	stores.w r4, 0(r6)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	seteq.d r5, r[10:11], r[8:9]
	bneq r5, zero, .LBB0_262
.LBB0_272:                              # %vector.body59
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[4:5], r[10:11], r[21:22]
	slli r6, r4, 2
	add.s r4, r7, r6
	loads.w r16, 12(r4)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r8, r16, r27
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r2, r1, r8
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r2, zero, .LBB0_274
# %bb.273:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r14, r16, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	or r14, r16, r28
.LBB0_275:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r23, 8(r4)
	and r9, r23, r27
	setlt.u r2, r1, r9
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r2, zero, .LBB0_277
# %bb.276:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r23, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	or r2, r23, r28
.LBB0_278:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r5, 4(r4)
	and r24, r5, r27
	setlt.u r12, r1, r24
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r12, zero, .LBB0_280
# %bb.279:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r12, r5, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	or r12, r5, r28
.LBB0_281:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r25, 0(r4)
	and r17, r25, r27
	setlt.u r4, r1, r17
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r4, zero, .LBB0_283
# %bb.282:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r4, r25, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r17, r26, r17
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r17, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r4, r25, r28
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r17, r26, r17
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r17, zero, .LBB0_285
.LBB0_284:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r4, r25, 16
	andi r4, r4, 1
	add.s r4, r25, r4
	add.s r4, r4, r3
	and r4, r4, r13
.LBB0_285:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r17, r26, r24
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r17, zero, .LBB0_288
# %bb.286:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r12, r5, 16
	andi r12, r12, 1
	add.s r5, r5, r12
	add.s r5, r5, r3
	and r12, r5, r13
	setlt.u r5, r26, r9
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r5, zero, .LBB0_289
.LBB0_287:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r8
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r5, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r5, r26, r9
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r5, zero, .LBB0_287
.LBB0_289:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r23, 16
	andi r2, r2, 1
	add.s r2, r23, r2
	add.s r2, r2, r3
	and r2, r2, r13
	setlt.u r5, r26, r8
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r5, zero, .LBB0_271
.LBB0_290:                              # %vector.body59
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r5, r16, 16
	andi r5, r5, 1
	add.s r5, r16, r5
	add.s r5, r5, r3
	and r14, r5, r13
	j .LBB0_271
.LBB0_291:                              # %.sink.split51
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	loadli.w r2,  -1316(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 128
	addli r14, zero, 1
	.loc	1 387 7 is_stmt 1               # parallel-rne.mlir:387:7
	bneq r4, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	loadli.w r2,  -1360(r30)                # 4-byte Folded Reload
	zext_int2long r[10:11], zero
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[16:17], -1344(r30)             # 8-byte Folded Reload
	addli r12, zero, 128
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	zext_int2long r[4:5], r2
	addli r2, zero, 960
	zext_int2long r[6:7], r2
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	loadli.w r2,  -1356(r30)                # 4-byte Folded Reload
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	min.ul r[6:7], r[4:5], r[6:7]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	sext_int2long r[8:9], r2
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r2, zero, 18
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	addli.d r[6:7], r[6:7], 64
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	max.ul r[6:7], r[6:7], r[4:5]
	sub.sl r[4:5], r[6:7], r[4:5]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	addli.d r[6:7], r[10:11], 128
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	load.d r[10:11], -1296(r30)             # 8-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	max.sl r[6:7], r[6:7], r[8:9]
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	min.ul r[4:5], r[4:5], r[10:11]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[10:11], -1352(r30)             # 8-byte Folded Reload
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[8:9], 16(r30)
	sll.d r[10:11], r[10:11], r2
	addli r2, zero, 12
	add.ul r[8:9], r[8:9], r[10:11]
	xwait r2, 0
	ori r2, r15, 64
	zext_int2long r[10:11], r12
	add.ul r[8:9], r[8:9], r[16:17]
	addli r16, zero, 5
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.sl r[6:7], r[6:7], r[10:11]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	lock zero, r16
	dma_cfg r14, r14, zero, 0
	dma_cfg zero, r14, zero, 1
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r2, r18, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 256
	addli r8, zero, 2048
	addli r9, zero, 128
	srli r2, r2, 5
	dma_cfg r18, r12, r2, 4
	andi r2, r4, 62
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r4
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	dma_cfg r8, r5, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r16
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 389 5                         # parallel-rne.mlir:389:5
	xsignal zero, 0
	bneq r4, zero, .LBB0_297
# %bb.296:
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r1, zero, 2
	.loc	1 389 5                         # parallel-rne.mlir:389:5
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
	.loc	1 390 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:390:5
	addli sp, sp, 1368
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
	.long	1432                            # 0x598
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu5/cache/triton-p800-ops-5134b460d69771aa/division-3pwp_9r8" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
