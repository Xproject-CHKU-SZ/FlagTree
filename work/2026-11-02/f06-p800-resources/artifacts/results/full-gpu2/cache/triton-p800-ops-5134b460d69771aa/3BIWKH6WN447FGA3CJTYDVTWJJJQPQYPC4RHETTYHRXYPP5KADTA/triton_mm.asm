	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-fv2yuzli" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1344
	addli r1, zero, 1
.Ltmp0:
	.loc	1 34 5 prologue_end             # parallel-rne.mlir:34:5
	core_id r10
	addli r30, sp, 1280
	xsignal_mode_cfg r1
	beq r10, zero, .LBB0_2
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
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
	xsignal r1, 0
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
	storeli.w zero, -232(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -556(r30)
	.loc	1 49 11                         # parallel-rne.mlir:49:11
	storeli.w zero, -792(r30)
	.loc	1 50 11                         # parallel-rne.mlir:50:11
	storeli.w zero, -1180(r30)
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
	.loc	1 49 11                         # parallel-rne.mlir:49:11
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
	.loc	1 50 11                         # parallel-rne.mlir:50:11
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
	storeli.w r4, -1088(r30)
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
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	mul.s r1, r2, r6
	.loc	1 43 10                         # parallel-rne.mlir:43:10
	fmac.s r2, r2, r6
	.loc	1 44 10                         # parallel-rne.mlir:44:10
	min.s r3, r2, r3
	.loc	1 53 5                          # parallel-rne.mlir:53:5
	ble.s r3, r1, .LBB0_295
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 45 11 is_stmt 1               # parallel-rne.mlir:45:11
	sext_int2long r[8:9], r1
	addli r19, zero, 64
	addli r20, zero, 2
	addli r25, zero, 7
	addli r26, zero, 3
	lui r13, 522240
	lui r4, 1048560
	addli r12, zero, 0
	store.d r[2:3], -1272(r30)              # 8-byte Folded Spill
	addli r2, zero, 4095
	lui r3, 1024
	lui r1, 1048572
	store.d r[1:2], -1280(r30)              # 8-byte Folded Spill
	lui r2, 7
	lui r1, 524287
	ori r28, r2, 4095
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	addli r2, zero, 11
	xsignal r2, 0
	.loc	1 373 7                         # parallel-rne.mlir:373:7
	addli r2, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r2, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[8:9], -1232(r30)               # 8-byte Folded Reload
	.loc	1 53 5 is_stmt 1                # parallel-rne.mlir:53:5
	load.d r[6:7], -1272(r30)               # 8-byte Folded Reload
	loadli.w r12,  -1236(r30)               # 4-byte Folded Reload
	addli.d r[8:9], r[8:9], 1
	setlt.sl r2, r[8:9], r[6:7]
	beq r2, zero, .LBB0_295
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
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
	.loc	1 80 7                          # parallel-rne.mlir:80:7
	addli r2, zero, 4
	bneq r10, r2, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r6,  28(r30)
	store.d r[8:9], -1232(r30)              # 8-byte Folded Spill
	addli r10, zero, 8
	mod.s r7, r12, r26
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	loadli.w r24,  -1180(r30)
	addli r12, r12, 1
	addli r23, zero, 0
	addli r11, zero, 64
	addli r14, zero, 2
	storeli.w r12, -1236(r30)               # 4-byte Folded Spill
	div.s r2, r8, r2
	slli r16, r7, 15
	lui r7, 24
	add.s r17, r16, r7
	div.s r2, r2, r6
	div.s r6, r2, r19
	slli r8, r6, 3
	slli r6, r6, 6
	sub.s r9, r20, r8
	sub.s r6, r2, r6
	min.s r9, r9, r10
	mod.s r10, r2, r9
	div.s r6, r6, r9
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	loadli.w r2,  -792(r30)
	add.s r7, r8, r10
	slli r8, r6, 7
	addli r10, zero, 0
	storeli.w r8, -1264(r30)                # 4-byte Folded Spill
	zext_int2long r[8:9], r6
	slli r6, r7, 6
	zext_int2long r[18:19], r7
	storeli.w r6, -1260(r30)                # 4-byte Folded Spill
	sll.d r[6:7], r[8:9], r25
	addli r8, zero, 13
	store.d r[18:19], -1256(r30)            # 8-byte Folded Spill
	sll.d r[18:19], r[18:19], r8
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r8, zero, 1
	sll.d r[8:9], r[6:7], r8
	load.d r[6:7], -1280(r30)               # 8-byte Folded Reload
	store.d r[18:19], -1208(r30)            # 8-byte Folded Spill
	store.d r[8:9], -1248(r30)              # 8-byte Folded Spill
	and.d r[6:7], r[18:19], r[6:7]
	store.d r[6:7], -1216(r30)              # 8-byte Folded Spill
	load.d r[6:7], 8(r30)
	add.ul r[6:7], r[6:7], r[8:9]
	store.d r[6:7], -1224(r30)              # 8-byte Folded Spill
	j .LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r2, 48
	addli r6, zero, 4
	addli r7, zero, 128
	ori r2, r2, 64
	.loc	1 104 9 is_stmt 1               # parallel-rne.mlir:104:9
	lock zero, r6
	addli r6, zero, 5
	dma_cfg r14, r14, zero, 0
	add.s r2, r18, r2
	dma_cfg zero, r9, zero, 2
	dma_cfg r2, r8, r19, 3
	addli r2, zero, 256
	addli r9, zero, 4
	dma_cfg r7, r19, r14, 4
	dma_cfg r7, r2, r11, 5
	addli r2, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r25, 10
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
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r19, 3
	dma_cfg r7, zero, r14, 4
	dma_cfg r7, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	xsignal r20, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -556(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r6,  -232(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r2, r2, 1
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r6, r6, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r2, -556(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	storeli.w r6, -232(r30)
.LBB0_13:                               # %.thread20
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r10, r10, 1
	beq r10, r9, .LBB0_34
.LBB0_14:                               # %.backedge
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r14, zero, 2
	addli r11, zero, 64
	.loc	1 125 15 is_stmt 1              # parallel-rne.mlir:125:15
	addli r23, r23, 1
	addli r2, r15, 0
.LBB0_15:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_30 Depth 3
                                        #       Child Loop BB0_31 Depth 3
	.loc	1 82 15                         # parallel-rne.mlir:82:15
	zext_int2long r[8:9], r10
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	addli r6, zero, 5
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	load.d r[18:19], -1208(r30)             # 8-byte Folded Reload
	load.d r[25:26], -1216(r30)             # 8-byte Folded Reload
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	sll.d r[6:7], r[8:9], r6
	.loc	1 85 15                         # parallel-rne.mlir:85:15
	add.ul r[19:20], r[6:7], r[18:19]
	addli r6, zero, 16383
	zext_int2long r[6:7], r6
	.loc	1 86 15                         # parallel-rne.mlir:86:15
	setlt.ul r6, r[6:7], r[19:20]
	.loc	1 90 15                         # parallel-rne.mlir:90:15
	bneq r6, zero, .LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[25:26], zero
.LBB0_17:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	addli r6, zero, 96
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	addli r7, zero, 58
	addli r12, zero, 128
	addli r15, r2, 1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r27
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r6, r24, r6
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	mod.s r7, r2, r7
	zext_int2long r[21:22], r12
	zext_int2long r[11:12], r11
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r24, r24, 1
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	storeli.w r15, -792(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	store.d r[11:12], -1200(r30)            # 8-byte Folded Spill
	store.d r[21:22], -1192(r30)            # 8-byte Folded Spill
	storeli.w r24, -1180(r30)
	slli r11, r6, 13
	.loc	1 100 15                        # parallel-rne.mlir:100:15
	slli r18, r7, 13
	lui r6, 48
	add.s r12, r18, r6
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	beq r27, r14, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r14, zero, 1
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	bneq r27, r14, .LBB0_22
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	load.d r[8:9], -1192(r30)               # 8-byte Folded Reload
	sub.sl r[6:7], r[19:20], r[25:26]
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	sll.d r[19:20], r[19:20], r14
	addli r26, zero, 3
	addli r25, zero, 7
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	div.sl r[6:7], r[6:7], r[8:9]
	load.d r[8:9], -1200(r30)               # 8-byte Folded Reload
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	xwait r26, 0
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	min.sl r[8:9], r[6:7], r[8:9]
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	load.d r[8:9], 0(r30)
	addli r11, r6, 64
	addli r6, zero, 57
	add.ul r[8:9], r[8:9], r[19:20]
	addli r19, zero, 64
	addli r20, zero, 2
	blt.s r6, r2, .LBB0_11
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r6, zero, 5
	.loc	1 104 9                         # parallel-rne.mlir:104:9
	addli r2, zero, 4
	lock zero, r6
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 6
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r25, 10
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
	addli r2, zero, 128
	dma_cfg r14, r14, zero, 0
	dma_cfg r14, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r19, 3
	dma_cfg r2, zero, r14, 4
	dma_cfg r2, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r14, 5
	dma_cfg zero, zero, zero, 8
	unlock r6
	j .LBB0_11
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 2
	.loc	1 105 9 is_stmt 1               # parallel-rne.mlir:105:9
	addli r2, zero, 5
	addli r19, zero, 64
	addli r26, zero, 3
	addli r9, zero, 4
	addli r25, zero, 7
	xwait r20, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r20, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r19, zero, 13
	shuffle_batch r11, r12, r2, 1
	unlock zero
	xsignal r26, 0
	xsignal r9, 0
	j .LBB0_12
.LBB0_22:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	loadli.w r14,  -232(r30)
	addli r7, zero, 57
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r2,  -556(r30)
	addli r6, zero, 80
	addli r25, zero, 7
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	mod.s r7, r14, r7
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r6, r2, r6
	addli r2, r2, 1
	storeli.w r2, -556(r30)
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	slli r2, r7, 14
	lui r7, 164
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r18, r6, 14
	.loc	1 117 15                        # parallel-rne.mlir:117:15
	addli r6, r14, 1
	add.s r12, r2, r7
	storeli.w r6, -232(r30)
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	beq r27, r25, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r19, zero, 64
	addli r20, zero, 2
	addli r26, zero, 3
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r6, zero, 6
	bneq r27, r6, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r21, zero, 16
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	sll.d r[6:7], r[8:9], r21
	load.d r[8:9], -1224(r30)               # 8-byte Folded Reload
	xwait r25, 0
	add.ul r[8:9], r[8:9], r[6:7]
	addli r6, zero, 56
	blt.s r6, r14, .LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r14, zero, 5
	addli r11, zero, 1
	addli r7, zero, 4
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	addli r6, zero, 6
	lock zero, r14
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r6, 10
	addli r6, zero, 8
	dma_cfg zero, zero, r25, 10
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
	addli r6, zero, 17
	dma_cfg zero, zero, r21, 10
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
	addli r6, zero, 128
	dma_cfg r11, r11, zero, 0
	dma_cfg r11, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r19, 3
	dma_cfg r6, zero, r7, 4
	addli r6, zero, 32
	addli r7, zero, 512
	dma_cfg r7, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	unlock r14
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r6, 164
	addli r11, zero, 32
	addli r14, zero, 512
	addli r7, zero, 5
	addli r18, zero, 6
	ori r6, r6, 64
	.loc	1 121 9                         # parallel-rne.mlir:121:9
	add.s r2, r2, r6
	addli r6, zero, 4
	lock zero, r6
	addli r6, zero, 1
	dma_cfg r6, r6, zero, 0
	dma_cfg zero, r9, zero, 2
	dma_cfg r2, r8, r19, 3
	addli r9, zero, 4
	addli r8, zero, 128
	addli r2, zero, 2048
	dma_cfg r8, r19, r9, 4
	dma_cfg r14, r2, r11, 5
	addli r2, zero, 8
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	unlock r9
	lock zero, r7
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r6, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r26, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r18, 10
	dma_cfg zero, zero, r25, 10
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
	dma_cfg zero, zero, r21, 10
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
	dma_cfg r6, r6, zero, 0
	dma_cfg r6, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r12, zero, r19, 3
	dma_cfg r8, zero, r9, 4
	dma_cfg r14, zero, r11, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r6, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	xsignal r18, 0
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	j .LBB0_13
.LBB0_27:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 6
	addli r20, zero, 2
	addli r6, zero, 32
	addli r19, zero, 64
	addli r26, zero, 3
	addli r9, zero, 4
	xwait r2, 0
	addli r2, zero, 9
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 128
	ds_cfg r20, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r6, zero, 14
	ds_cfg r2, zero, 13
	addli r2, zero, 8
	shuffle_coa r18, r12, r6, 2
	unlock zero
	xsignal r25, 0
	xsignal r2, 0
	j .LBB0_13
.LBB0_28:                               #   in Loop: Header=BB0_15 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r9, zero, 4
	.loc	1 124 9 is_stmt 1               # parallel-rne.mlir:124:9
	bneq r27, r9, .LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 8
	xwait r9, 0
	addli r8, zero, 1
	addli r6, zero, 0
	addli r12, zero, 32
	xwait r2, 0
	addli r2, zero, 1
	beq r23, zero, .LBB0_31
.LBB0_30:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r6, 13
	slli r6, r6, 8
	lock zero, r2
	mm_cfg r19, r12, r19, 0
	or r7, r7, r18
	or r6, r6, r17
	mm_cfg r20, r9, r2, 2
	mm_acc r6, r11, r7, 8
	andi r7, r8, 1
	addli r6, zero, 1
	addli r8, zero, 0
	unlock r2
	bneq r7, zero, .LBB0_30
	j .LBB0_32
.LBB0_31:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r7, r6, 13
	slli r6, r6, 8
	lock zero, r2
	mm_cfg r19, r12, r19, 0
	or r7, r7, r18
	or r6, r6, r17
	mm_cfg r20, r9, r2, 2
	mm r6, r11, r7, 8
	andi r7, r8, 1
	addli r6, zero, 1
	addli r8, zero, 0
	unlock r2
	bneq r7, zero, .LBB0_31
.LBB0_32:                               # %.thread20.thread46
                                        #   in Loop: Header=BB0_15 Depth=2
	addli r2, zero, 5
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r10, r10, 1
	.loc	1 124 9                         # parallel-rne.mlir:124:9
	xsignal r2, 0
	addli r2, zero, 9
	xsignal r2, 0
	bneq r10, r9, .LBB0_14
	j .LBB0_35
.LBB0_33:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_15 Depth=2
	.loc	1 81 7                          # parallel-rne.mlir:81:7
	addli r10, r10, 1
	bneq r10, r9, .LBB0_14
	j .LBB0_36
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	bneq r27, r9, .LBB0_36
.LBB0_35:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	storeli.w zero, -1216(r30)              # 4-byte Folded Spill
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r10
	.loc	1 128 7                         # parallel-rne.mlir:128:7
	xsignal r2, 0
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	j .LBB0_39
.LBB0_36:                               # %.thread45
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r10
	.loc	1 133 7                         # parallel-rne.mlir:133:7
	bneq r10, r26, .LBB0_38
# %bb.37:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	storeli.w r2, -1216(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1216(r30)              # 4-byte Folded Spill
.LBB0_39:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 138 7 is_stmt 1               # parallel-rne.mlir:138:7
	addli r2, zero, 255
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	xfence
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { lm, sm, gm }
	.loc	1 138 7                         # parallel-rne.mlir:138:7
	csr_set csr5, r2
	addli r2, zero, 127
	sync_core
	zext_int2long r[23:24], r2
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	beq r10, zero, .LBB0_72
# %bb.40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	beq r10, r20, .LBB0_103
.LBB0_41:                               #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 1
	bneq r10, r2, .LBB0_134
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 8
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_44
.LBB0_43:                               # %middle.block102
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	addli r25, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 176 9 is_stmt 1               # parallel-rne.mlir:176:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_133
.LBB0_44:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_53 Depth 3
                                        #       Child Loop BB0_47 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_51
# %bb.45:                               # %scalar.ph96.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_47
.LBB0_46:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 192 13 is_stmt 1              # parallel-rne.mlir:192:13
	add.s r2, r16, r2
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	stores.w r10, 0(r2)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	beq r6, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r6, r11, r1
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r7, r13, r6
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r7, zero, .LBB0_49
# %bb.48:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r6, r5, r6
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r6, zero, .LBB0_46
	j .LBB0_50
.LBB0_49:                               #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r6, r5, r6
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r6, zero, .LBB0_46
.LBB0_50:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_47 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_46
.LBB0_51:                               # %vector.body98.preheader
                                        #   in Loop: Header=BB0_44 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_53
.LBB0_52:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 177 11 is_stmt 1              # parallel-rne.mlir:177:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r6, r[10:11], r[6:7]
	.loc	1 192 13                        # parallel-rne.mlir:192:13
	add.s r7, r16, r12
	stores.w r15, 12(r7)
	stores.w r20, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 177 11                        # parallel-rne.mlir:177:11
	bneq r6, zero, .LBB0_43
.LBB0_53:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_44 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r18, 12(r8)
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	and r27, r18, r1
	.loc	1 182 19                        # parallel-rne.mlir:182:19
	setlt.u r2, r13, r27
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_55
# %bb.54:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r18, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_53 Depth=3
	or r15, r18, r3
.LBB0_56:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r9, 8(r8)
	and r14, r9, r1
	setlt.u r2, r13, r14
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_58
# %bb.57:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_53 Depth=3
	or r20, r9, r3
.LBB0_59:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r19, 4(r8)
	and r21, r19, r1
	setlt.u r2, r13, r21
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r2, zero, .LBB0_61
# %bb.60:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_62
.LBB0_61:                               #   in Loop: Header=BB0_53 Depth=3
	or r2, r19, r3
.LBB0_62:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 183 19                        # parallel-rne.mlir:183:19
	bneq r7, zero, .LBB0_64
# %bb.63:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r6, r5, r6
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r6, zero, .LBB0_65
	j .LBB0_66
.LBB0_64:                               #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 189 19 is_stmt 1              # parallel-rne.mlir:189:19
	setlt.u r6, r5, r6
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r6, zero, .LBB0_66
.LBB0_65:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_66:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	setlt.u r6, r5, r21
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r6, zero, .LBB0_69
# %bb.67:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r14
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	beq r6, zero, .LBB0_70
.LBB0_68:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r27
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r6, zero, .LBB0_52
	j .LBB0_71
.LBB0_69:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r28
	and r2, r2, r4
	setlt.u r6, r5, r14
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r6, zero, .LBB0_68
.LBB0_70:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r20, r6, r4
	setlt.u r6, r5, r27
	.loc	1 190 19                        # parallel-rne.mlir:190:19
	bneq r6, zero, .LBB0_52
.LBB0_71:                               # %vector.body98
                                        #   in Loop: Header=BB0_53 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r15, r6, r4
	j .LBB0_52
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 139 7 is_stmt 1               # parallel-rne.mlir:139:7
	xfence
	zext_int2long r[6:7], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block120
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r25, zero, 7
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	zext_int2long r[6:7], r25
	.loc	1 147 9 is_stmt 1               # parallel-rne.mlir:147:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_102
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_83 Depth 3
                                        #       Child Loop BB0_77 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 148 11 is_stmt 1              # parallel-rne.mlir:148:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_81
# %bb.75:                               # %scalar.ph114.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_77
.LBB0_76:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 163 13 is_stmt 1              # parallel-rne.mlir:163:13
	add.s r2, r16, r2
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	stores.w r10, 0(r2)
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	beq r6, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	and r6, r11, r1
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	setlt.u r7, r13, r6
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r7, zero, .LBB0_79
# %bb.78:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r6, r5, r6
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r6, zero, .LBB0_76
	j .LBB0_80
.LBB0_79:                               #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r6, r5, r6
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r6, zero, .LBB0_76
.LBB0_80:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_77 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_76
.LBB0_81:                               # %vector.body116.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_83
.LBB0_82:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 148 11 is_stmt 1              # parallel-rne.mlir:148:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r2, r[10:11], r[6:7]
	.loc	1 163 13                        # parallel-rne.mlir:163:13
	add.s r6, r16, r12
	stores.w r18, 12(r6)
	stores.w r9, 8(r6)
	stores.w r19, 4(r6)
	stores.w r8, 0(r6)
	.loc	1 148 11                        # parallel-rne.mlir:148:11
	bneq r2, zero, .LBB0_73
.LBB0_83:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r15, 12(r8)
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	and r27, r15, r1
	.loc	1 153 19                        # parallel-rne.mlir:153:19
	setlt.u r2, r13, r27
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r2, zero, .LBB0_85
# %bb.84:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r18, r15, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_83 Depth=3
	or r18, r15, r3
.LBB0_86:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r20, 8(r8)
	and r14, r20, r1
	setlt.u r2, r13, r14
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r2, zero, .LBB0_88
# %bb.87:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r20, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_83 Depth=3
	or r9, r20, r3
.LBB0_89:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r2, 4(r8)
	and r21, r2, r1
	setlt.u r6, r13, r21
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r6, zero, .LBB0_91
# %bb.90:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r2, 0
	j .LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_83 Depth=3
	or r19, r2, r3
.LBB0_92:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 154 19                        # parallel-rne.mlir:154:19
	bneq r7, zero, .LBB0_94
# %bb.93:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r6, r5, r6
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r6, zero, .LBB0_95
	j .LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 160 19 is_stmt 1              # parallel-rne.mlir:160:19
	setlt.u r6, r5, r6
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r6, zero, .LBB0_96
.LBB0_95:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_96:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	setlt.u r6, r5, r21
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r6, zero, .LBB0_99
# %bb.97:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r14
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	beq r2, zero, .LBB0_100
.LBB0_98:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r5, r27
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r2, zero, .LBB0_82
	j .LBB0_101
.LBB0_99:                               # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r2, 16
	andi r6, r6, 1
	add.s r2, r2, r6
	add.s r2, r2, r28
	and r19, r2, r4
	setlt.u r2, r5, r14
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r2, zero, .LBB0_98
.LBB0_100:                              # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r20, 16
	andi r2, r2, 1
	add.s r2, r20, r2
	add.s r2, r2, r28
	and r9, r2, r4
	setlt.u r2, r5, r27
	.loc	1 161 19                        # parallel-rne.mlir:161:19
	bneq r2, zero, .LBB0_82
.LBB0_101:                              # %vector.body116
                                        #   in Loop: Header=BB0_83 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r28
	and r18, r2, r4
	j .LBB0_82
.LBB0_102:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r10
	addli r19, zero, 64
	addli r20, zero, 2
	addli r26, zero, 3
	addli r9, zero, 4
	.loc	1 139 7                         # parallel-rne.mlir:139:7
	mfence { sm }
	.loc	1 168 7                         # parallel-rne.mlir:168:7
	bneq r10, r20, .LBB0_41
.LBB0_103:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 197 7 is_stmt 1               # parallel-rne.mlir:197:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_105
.LBB0_104:                              # %middle.block111
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	addli r25, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 205 9 is_stmt 1               # parallel-rne.mlir:205:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_133
.LBB0_105:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_114 Depth 3
                                        #       Child Loop BB0_108 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_112
# %bb.106:                              # %scalar.ph105.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_108
.LBB0_107:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 221 13 is_stmt 1              # parallel-rne.mlir:221:13
	add.s r2, r16, r2
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	stores.w r10, 0(r2)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	beq r6, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r6, r11, r1
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	setlt.u r7, r13, r6
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r7, zero, .LBB0_110
# %bb.109:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r6, r5, r6
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r6, zero, .LBB0_107
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r6, r5, r6
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r6, zero, .LBB0_107
.LBB0_111:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_108 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_107
.LBB0_112:                              # %vector.body107.preheader
                                        #   in Loop: Header=BB0_105 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_114
.LBB0_113:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 206 11 is_stmt 1              # parallel-rne.mlir:206:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r6, r[10:11], r[6:7]
	.loc	1 221 13                        # parallel-rne.mlir:221:13
	add.s r7, r16, r12
	stores.w r15, 12(r7)
	stores.w r20, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 206 11                        # parallel-rne.mlir:206:11
	bneq r6, zero, .LBB0_104
.LBB0_114:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_105 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r18, 12(r8)
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	and r27, r18, r1
	.loc	1 211 19                        # parallel-rne.mlir:211:19
	setlt.u r2, r13, r27
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r18, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_114 Depth=3
	or r15, r18, r3
.LBB0_117:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r9, 8(r8)
	and r14, r9, r1
	setlt.u r2, r13, r14
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_119
# %bb.118:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_114 Depth=3
	or r20, r9, r3
.LBB0_120:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r19, 4(r8)
	and r21, r19, r1
	setlt.u r2, r13, r21
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r2, zero, .LBB0_122
# %bb.121:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_114 Depth=3
	or r2, r19, r3
.LBB0_123:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 212 19                        # parallel-rne.mlir:212:19
	bneq r7, zero, .LBB0_125
# %bb.124:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r6, r5, r6
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r6, zero, .LBB0_126
	j .LBB0_127
.LBB0_125:                              #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 218 19 is_stmt 1              # parallel-rne.mlir:218:19
	setlt.u r6, r5, r6
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r6, zero, .LBB0_127
.LBB0_126:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_127:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	setlt.u r6, r5, r21
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r6, zero, .LBB0_130
# %bb.128:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r14
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	beq r6, zero, .LBB0_131
.LBB0_129:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r27
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r6, zero, .LBB0_113
	j .LBB0_132
.LBB0_130:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r28
	and r2, r2, r4
	setlt.u r6, r5, r14
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r6, zero, .LBB0_129
.LBB0_131:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r20, r6, r4
	setlt.u r6, r5, r27
	.loc	1 219 19                        # parallel-rne.mlir:219:19
	bneq r6, zero, .LBB0_113
.LBB0_132:                              # %vector.body107
                                        #   in Loop: Header=BB0_114 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r15, r6, r4
	j .LBB0_113
.LBB0_133:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r10
	addli r19, zero, 64
	addli r20, zero, 2
	addli r26, zero, 3
	addli r9, zero, 4
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 226 7 is_stmt 1               # parallel-rne.mlir:226:7
	loadli.w r2,  -1216(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_169
# %bb.135:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	beq r10, r9, .LBB0_200
.LBB0_136:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	beq r10, r25, .LBB0_231
.LBB0_137:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 6
	beq r10, r2, .LBB0_261
# %bb.138:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 5
	bneq r10, r2, .LBB0_292
# %bb.139:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_141
.LBB0_140:                              # %middle.block
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	addli r25, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 292 9 is_stmt 1               # parallel-rne.mlir:292:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_141:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_150 Depth 3
                                        #       Child Loop BB0_144 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_148
# %bb.142:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_144
.LBB0_143:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 308 13 is_stmt 1              # parallel-rne.mlir:308:13
	add.s r2, r16, r2
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	stores.w r10, 0(r2)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	beq r6, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r6, r11, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r7, r13, r6
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_146
# %bb.145:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r6, r5, r6
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r6, zero, .LBB0_143
	j .LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r6, r5, r6
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r6, zero, .LBB0_143
.LBB0_147:                              # %scalar.ph
                                        #   in Loop: Header=BB0_144 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_143
.LBB0_148:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_141 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_150
.LBB0_149:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 293 11 is_stmt 1              # parallel-rne.mlir:293:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r6, r[10:11], r[6:7]
	.loc	1 308 13                        # parallel-rne.mlir:308:13
	add.s r7, r16, r12
	stores.w r15, 12(r7)
	stores.w r20, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 293 11                        # parallel-rne.mlir:293:11
	bneq r6, zero, .LBB0_140
.LBB0_150:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_141 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r18, 12(r8)
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	and r27, r18, r1
	.loc	1 298 19                        # parallel-rne.mlir:298:19
	setlt.u r2, r13, r27
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r2, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r18, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_150 Depth=3
	or r15, r18, r3
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r9, 8(r8)
	and r14, r9, r1
	setlt.u r2, r13, r14
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r2, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_150 Depth=3
	or r20, r9, r3
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r19, 4(r8)
	and r21, r19, r1
	setlt.u r2, r13, r21
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r2, zero, .LBB0_158
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_159
.LBB0_158:                              #   in Loop: Header=BB0_150 Depth=3
	or r2, r19, r3
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 299 19                        # parallel-rne.mlir:299:19
	bneq r7, zero, .LBB0_165
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r6, r5, r6
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r6, zero, .LBB0_162
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_162:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	setlt.u r6, r5, r21
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r6, zero, .LBB0_166
# %bb.163:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r14
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r6, zero, .LBB0_167
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r27
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r6, zero, .LBB0_149
	j .LBB0_168
.LBB0_165:                              #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 305 19 is_stmt 1              # parallel-rne.mlir:305:19
	setlt.u r6, r5, r6
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	beq r6, zero, .LBB0_161
	j .LBB0_162
.LBB0_166:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r28
	and r2, r2, r4
	setlt.u r6, r5, r14
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r6, zero, .LBB0_164
.LBB0_167:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r20, r6, r4
	setlt.u r6, r5, r27
	.loc	1 306 19                        # parallel-rne.mlir:306:19
	bneq r6, zero, .LBB0_149
.LBB0_168:                              # %vector.body
                                        #   in Loop: Header=BB0_150 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r15, r6, r4
	j .LBB0_149
.LBB0_169:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 24
	.loc	1 226 7 is_stmt 1               # parallel-rne.mlir:226:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_171
.LBB0_170:                              # %middle.block93
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	addli r25, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 234 9 is_stmt 1               # parallel-rne.mlir:234:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_199
.LBB0_171:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_180 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_178
# %bb.172:                              # %scalar.ph87.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_174
.LBB0_173:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 250 13 is_stmt 1              # parallel-rne.mlir:250:13
	add.s r2, r16, r2
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	stores.w r10, 0(r2)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	beq r6, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r6, r11, r1
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r7, r13, r6
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r7, zero, .LBB0_176
# %bb.175:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r6, r5, r6
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r6, zero, .LBB0_173
	j .LBB0_177
.LBB0_176:                              #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r6, r5, r6
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r6, zero, .LBB0_173
.LBB0_177:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_174 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_173
.LBB0_178:                              # %vector.body89.preheader
                                        #   in Loop: Header=BB0_171 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_180
.LBB0_179:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 235 11 is_stmt 1              # parallel-rne.mlir:235:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r6, r[10:11], r[6:7]
	.loc	1 250 13                        # parallel-rne.mlir:250:13
	add.s r7, r16, r12
	stores.w r15, 12(r7)
	stores.w r20, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 235 11                        # parallel-rne.mlir:235:11
	bneq r6, zero, .LBB0_170
.LBB0_180:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_171 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r18, 12(r8)
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	and r27, r18, r1
	.loc	1 240 19                        # parallel-rne.mlir:240:19
	setlt.u r2, r13, r27
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_182
# %bb.181:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r18, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_180 Depth=3
	or r15, r18, r3
.LBB0_183:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r9, 8(r8)
	and r14, r9, r1
	setlt.u r2, r13, r14
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_185
# %bb.184:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_180 Depth=3
	or r20, r9, r3
.LBB0_186:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r19, 4(r8)
	and r21, r19, r1
	setlt.u r2, r13, r21
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r2, zero, .LBB0_188
# %bb.187:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_189
.LBB0_188:                              #   in Loop: Header=BB0_180 Depth=3
	or r2, r19, r3
.LBB0_189:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 241 19                        # parallel-rne.mlir:241:19
	bneq r7, zero, .LBB0_195
# %bb.190:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r6, r5, r6
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r6, zero, .LBB0_192
.LBB0_191:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_192:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	setlt.u r6, r5, r21
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r6, zero, .LBB0_196
# %bb.193:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r14
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r6, zero, .LBB0_197
.LBB0_194:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r27
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r6, zero, .LBB0_179
	j .LBB0_198
.LBB0_195:                              #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 247 19 is_stmt 1              # parallel-rne.mlir:247:19
	setlt.u r6, r5, r6
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	beq r6, zero, .LBB0_191
	j .LBB0_192
.LBB0_196:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r28
	and r2, r2, r4
	setlt.u r6, r5, r14
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r6, zero, .LBB0_194
.LBB0_197:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r20, r6, r4
	setlt.u r6, r5, r27
	.loc	1 248 19                        # parallel-rne.mlir:248:19
	bneq r6, zero, .LBB0_179
.LBB0_198:                              # %vector.body89
                                        #   in Loop: Header=BB0_180 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r15, r6, r4
	j .LBB0_179
.LBB0_199:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r10
	addli r19, zero, 64
	addli r20, zero, 2
	addli r26, zero, 3
	addli r9, zero, 4
	.loc	1 226 7                         # parallel-rne.mlir:226:7
	mfence { sm }
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	bneq r10, r9, .LBB0_136
.LBB0_200:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_202
.LBB0_201:                              # %middle.block84
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	addli r25, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 263 9 is_stmt 1               # parallel-rne.mlir:263:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_230
.LBB0_202:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_211 Depth 3
                                        #       Child Loop BB0_205 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_209
# %bb.203:                              # %scalar.ph78.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_205
.LBB0_204:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 279 13 is_stmt 1              # parallel-rne.mlir:279:13
	add.s r2, r16, r2
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	stores.w r10, 0(r2)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	beq r6, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r6, r11, r1
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	setlt.u r7, r13, r6
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r7, zero, .LBB0_207
# %bb.206:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r6, r5, r6
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r6, zero, .LBB0_204
	j .LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r6, r5, r6
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r6, zero, .LBB0_204
.LBB0_208:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_205 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_204
.LBB0_209:                              # %vector.body80.preheader
                                        #   in Loop: Header=BB0_202 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_211
.LBB0_210:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 264 11 is_stmt 1              # parallel-rne.mlir:264:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r6, r[10:11], r[6:7]
	.loc	1 279 13                        # parallel-rne.mlir:279:13
	add.s r7, r16, r12
	stores.w r15, 12(r7)
	stores.w r20, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 264 11                        # parallel-rne.mlir:264:11
	bneq r6, zero, .LBB0_201
.LBB0_211:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_202 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r18, 12(r8)
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	and r27, r18, r1
	.loc	1 269 19                        # parallel-rne.mlir:269:19
	setlt.u r2, r13, r27
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r2, zero, .LBB0_213
# %bb.212:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r18, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_211 Depth=3
	or r15, r18, r3
.LBB0_214:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r9, 8(r8)
	and r14, r9, r1
	setlt.u r2, r13, r14
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r2, zero, .LBB0_216
# %bb.215:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_211 Depth=3
	or r20, r9, r3
.LBB0_217:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r19, 4(r8)
	and r21, r19, r1
	setlt.u r2, r13, r21
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r2, zero, .LBB0_219
# %bb.218:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_220
.LBB0_219:                              #   in Loop: Header=BB0_211 Depth=3
	or r2, r19, r3
.LBB0_220:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 270 19                        # parallel-rne.mlir:270:19
	bneq r7, zero, .LBB0_226
# %bb.221:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r6, r5, r6
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r6, zero, .LBB0_223
.LBB0_222:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_223:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	setlt.u r6, r5, r21
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r6, zero, .LBB0_227
# %bb.224:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r14
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r6, zero, .LBB0_228
.LBB0_225:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r27
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r6, zero, .LBB0_210
	j .LBB0_229
.LBB0_226:                              #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 276 19 is_stmt 1              # parallel-rne.mlir:276:19
	setlt.u r6, r5, r6
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	beq r6, zero, .LBB0_222
	j .LBB0_223
.LBB0_227:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r28
	and r2, r2, r4
	setlt.u r6, r5, r14
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r6, zero, .LBB0_225
.LBB0_228:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r20, r6, r4
	setlt.u r6, r5, r27
	.loc	1 277 19                        # parallel-rne.mlir:277:19
	bneq r6, zero, .LBB0_210
.LBB0_229:                              # %vector.body80
                                        #   in Loop: Header=BB0_211 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r15, r6, r4
	j .LBB0_210
.LBB0_230:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r10
	addli r19, zero, 64
	addli r20, zero, 2
	addli r26, zero, 3
	.loc	1 255 7                         # parallel-rne.mlir:255:7
	mfence { sm }
	.loc	1 284 7                         # parallel-rne.mlir:284:7
	bneq r10, r25, .LBB0_137
.LBB0_231:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 342 7 is_stmt 1               # parallel-rne.mlir:342:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_233
.LBB0_232:                              # %middle.block75
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	addli r25, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 350 9 is_stmt 1               # parallel-rne.mlir:350:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_233:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_242 Depth 3
                                        #       Child Loop BB0_236 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_240
# %bb.234:                              # %scalar.ph69.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_236
.LBB0_235:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 366 13 is_stmt 1              # parallel-rne.mlir:366:13
	add.s r2, r16, r2
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	stores.w r10, 0(r2)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	beq r6, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r6, r11, r1
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r7, r13, r6
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r7, zero, .LBB0_238
# %bb.237:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r6, r5, r6
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_235
	j .LBB0_239
.LBB0_238:                              #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r6, r5, r6
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_235
.LBB0_239:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_236 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_235
.LBB0_240:                              # %vector.body71.preheader
                                        #   in Loop: Header=BB0_233 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_242
.LBB0_241:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 351 11 is_stmt 1              # parallel-rne.mlir:351:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r6, r[10:11], r[6:7]
	.loc	1 366 13                        # parallel-rne.mlir:366:13
	add.s r7, r16, r12
	stores.w r15, 12(r7)
	stores.w r20, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 351 11                        # parallel-rne.mlir:351:11
	bneq r6, zero, .LBB0_232
.LBB0_242:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_233 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r18, 12(r8)
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	and r27, r18, r1
	.loc	1 356 19                        # parallel-rne.mlir:356:19
	setlt.u r2, r13, r27
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r2, zero, .LBB0_244
# %bb.243:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r18, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_242 Depth=3
	or r15, r18, r3
.LBB0_245:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r9, 8(r8)
	and r14, r9, r1
	setlt.u r2, r13, r14
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r2, zero, .LBB0_247
# %bb.246:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_242 Depth=3
	or r20, r9, r3
.LBB0_248:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r19, 4(r8)
	and r21, r19, r1
	setlt.u r2, r13, r21
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r2, zero, .LBB0_250
# %bb.249:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_251
.LBB0_250:                              #   in Loop: Header=BB0_242 Depth=3
	or r2, r19, r3
.LBB0_251:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 357 19                        # parallel-rne.mlir:357:19
	bneq r7, zero, .LBB0_253
# %bb.252:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r6, r5, r6
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r6, zero, .LBB0_254
	j .LBB0_255
.LBB0_253:                              #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 363 19 is_stmt 1              # parallel-rne.mlir:363:19
	setlt.u r6, r5, r6
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_255
.LBB0_254:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_255:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	setlt.u r6, r5, r21
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r6, zero, .LBB0_258
# %bb.256:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r14
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	beq r6, zero, .LBB0_259
.LBB0_257:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r27
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_241
	j .LBB0_260
.LBB0_258:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r28
	and r2, r2, r4
	setlt.u r6, r5, r14
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_257
.LBB0_259:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r20, r6, r4
	setlt.u r6, r5, r27
	.loc	1 364 19                        # parallel-rne.mlir:364:19
	bneq r6, zero, .LBB0_241
.LBB0_260:                              # %vector.body71
                                        #   in Loop: Header=BB0_242 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r15, r6, r4
	j .LBB0_241
.LBB0_261:                              #   in Loop: Header=BB0_8 Depth=1
	addli r2, zero, 48
	.loc	1 313 7 is_stmt 1               # parallel-rne.mlir:313:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[6:7], r2
	j .LBB0_263
.LBB0_262:                              # %middle.block66
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[8:9], -1208(r30)               # 8-byte Folded Reload
	addli r25, zero, 7
	zext_int2long r[6:7], r2
	.loc	1 321 9 is_stmt 1               # parallel-rne.mlir:321:9
	setlt.ul r2, r[8:9], r[6:7]
	addli.d r[6:7], r[8:9], 1
	beq r2, zero, .LBB0_291
.LBB0_263:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_272 Depth 3
                                        #       Child Loop BB0_266 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r2, zero, 7
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	store.d r[6:7], -1208(r30)              # 8-byte Folded Spill
	sll.d r[25:26], r[6:7], r2
	bneq r16, r17, .LBB0_270
# %bb.264:                              # %scalar.ph60.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[8:9], zero
	j .LBB0_266
.LBB0_265:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	setlt.ul r6, r[8:9], r[23:24]
	.loc	1 337 13 is_stmt 1              # parallel-rne.mlir:337:13
	add.s r2, r16, r2
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	stores.w r10, 0(r2)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	beq r6, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[6:7], r[8:9], r[25:26]
	slli r2, r6, 2
	add.s r6, r17, r2
	loads.w r11, 0(r6)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r6, r11, r1
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r7, r13, r6
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r7, zero, .LBB0_268
# %bb.267:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r6, r5, r6
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r6, zero, .LBB0_265
	j .LBB0_269
.LBB0_268:                              #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r10, r11, r3
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r6, r5, r6
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r6, zero, .LBB0_265
.LBB0_269:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_266 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r11, 16
	andi r6, r6, 1
	add.s r6, r11, r6
	add.s r6, r6, r28
	and r10, r6, r4
	j .LBB0_265
.LBB0_270:                              # %vector.body62.preheader
                                        #   in Loop: Header=BB0_263 Depth=2
	zext_int2long r[10:11], zero
	j .LBB0_272
.LBB0_271:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 322 11 is_stmt 1              # parallel-rne.mlir:322:11
	load.d r[6:7], -1192(r30)               # 8-byte Folded Reload
	addli.d r[10:11], r[10:11], 4
	seteq.d r6, r[10:11], r[6:7]
	.loc	1 337 13                        # parallel-rne.mlir:337:13
	add.s r7, r16, r12
	stores.w r15, 12(r7)
	stores.w r20, 8(r7)
	stores.w r2, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 322 11                        # parallel-rne.mlir:322:11
	bneq r6, zero, .LBB0_262
.LBB0_272:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_263 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	add.ul r[6:7], r[10:11], r[25:26]
	slli r12, r6, 2
	add.s r8, r17, r12
	loads.w r18, 12(r8)
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	and r27, r18, r1
	.loc	1 327 19                        # parallel-rne.mlir:327:19
	setlt.u r2, r13, r27
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r2, zero, .LBB0_274
# %bb.273:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r18, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_272 Depth=3
	or r15, r18, r3
.LBB0_275:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r9, 8(r8)
	and r14, r9, r1
	setlt.u r2, r13, r14
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r2, zero, .LBB0_277
# %bb.276:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r9, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_272 Depth=3
	or r20, r9, r3
.LBB0_278:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r19, 4(r8)
	and r21, r19, r1
	setlt.u r2, r13, r21
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r2, zero, .LBB0_280
# %bb.279:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r19, 0
	j .LBB0_281
.LBB0_280:                              #   in Loop: Header=BB0_272 Depth=3
	or r2, r19, r3
.LBB0_281:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	loads.w r22, 0(r8)
	and r6, r22, r1
	setlt.u r7, r13, r6
	.loc	1 328 19                        # parallel-rne.mlir:328:19
	bneq r7, zero, .LBB0_283
# %bb.282:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r22, 0
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r6, r5, r6
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r6, zero, .LBB0_284
	j .LBB0_285
.LBB0_283:                              #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	or r8, r22, r3
	.loc	1 334 19 is_stmt 1              # parallel-rne.mlir:334:19
	setlt.u r6, r5, r6
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r6, zero, .LBB0_285
.LBB0_284:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r6, r22, 16
	andi r6, r6, 1
	add.s r6, r22, r6
	add.s r6, r6, r28
	and r8, r6, r4
.LBB0_285:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	setlt.u r6, r5, r21
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r6, zero, .LBB0_288
# %bb.286:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r14
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	beq r6, zero, .LBB0_289
.LBB0_287:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r6, r5, r27
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r6, zero, .LBB0_271
	j .LBB0_290
.LBB0_288:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r19, 16
	andi r2, r2, 1
	add.s r2, r19, r2
	add.s r2, r2, r28
	and r2, r2, r4
	setlt.u r6, r5, r14
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r6, zero, .LBB0_287
.LBB0_289:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r9, 16
	andi r6, r6, 1
	add.s r6, r9, r6
	add.s r6, r6, r28
	and r20, r6, r4
	setlt.u r6, r5, r27
	.loc	1 335 19                        # parallel-rne.mlir:335:19
	bneq r6, zero, .LBB0_271
.LBB0_290:                              # %vector.body62
                                        #   in Loop: Header=BB0_272 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r6, r18, 16
	andi r6, r6, 1
	add.s r6, r18, r6
	add.s r6, r6, r28
	and r15, r6, r4
	j .LBB0_271
.LBB0_291:                              # %.sink.split53
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 34 5 is_stmt 1                # parallel-rne.mlir:34:5
	core_id r10
	addli r19, zero, 64
	addli r20, zero, 2
	addli r26, zero, 3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_292:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 371 7 is_stmt 1               # parallel-rne.mlir:371:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 372 7                         # parallel-rne.mlir:372:7
	loadli.w r2,  -1216(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.293:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r12, zero, 1
	.loc	1 389 7 is_stmt 1               # parallel-rne.mlir:389:7
	bneq r10, zero, .LBB0_7
# %bb.294:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	loadli.w r2,  -1264(r30)                # 4-byte Folded Reload
	load.d r[21:22], -1200(r30)             # 8-byte Folded Reload
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	load.d r[14:15], -1192(r30)             # 8-byte Folded Reload
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	load.d r[17:18], 16(r30)
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	zext_int2long r[6:7], r2
	addli r2, zero, 896
	zext_int2long r[8:9], r2
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	loadli.w r2,  -1260(r30)                # 4-byte Folded Reload
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	min.ul r[8:9], r[6:7], r[8:9]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	sext_int2long r[10:11], r2
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	addli r2, zero, 17
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	addli.d r[8:9], r[8:9], 128
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	max.ul r[8:9], r[8:9], r[6:7]
	sub.sl r[6:7], r[8:9], r[6:7]
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	min.sl r[8:9], r[10:11], r[21:22]
	addli.d r[8:9], r[8:9], 64
	.loc	1 385 13                        # parallel-rne.mlir:385:13
	min.ul r[6:7], r[6:7], r[14:15]
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	load.d r[14:15], -1256(r30)             # 8-byte Folded Reload
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	max.sl r[8:9], r[8:9], r[10:11]
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	sll.d r[14:15], r[14:15], r2
	addli r2, zero, 12
	.loc	1 378 13                        # parallel-rne.mlir:378:13
	sub.sl r[8:9], r[8:9], r[10:11]
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	load.d r[10:11], -1248(r30)             # 8-byte Folded Reload
	add.ul r[14:15], r[17:18], r[14:15]
	xwait r2, 0
	ori r2, r16, 64
	.loc	1 384 13                        # parallel-rne.mlir:384:13
	min.sl r[8:9], r[8:9], r[21:22]
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	add.ul r[10:11], r[14:15], r[10:11]
	addli r14, zero, 5
	lock zero, r14
	dma_cfg r12, r12, zero, 0
	dma_cfg zero, r12, zero, 1
	dma_cfg r11, zero, zero, 2
	dma_cfg r10, r2, r19, 3
	addli r2, r6, 31
	slli r6, r6, 1
	addli r7, zero, 128
	.loc	1 34 5                          # parallel-rne.mlir:34:5
	core_id r10
	.loc	1 389 7                         # parallel-rne.mlir:389:7
	srli r2, r2, 5
	dma_cfg r19, r7, r2, 4
	andi r2, r6, 62
	addli r6, zero, 512
	addli r7, zero, 2048
	dma_cfg r7, r6, r8, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_295:                              # %._crit_edge
	.loc	1 391 5                         # parallel-rne.mlir:391:5
	xsignal zero, 0
	bneq r10, zero, .LBB0_297
# %bb.296:
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
.LBB0_297:
	.loc	1 392 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:392:5
	addli sp, sp, 1280
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
	.long	1344                            # 0x540
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu2/cache/triton-p800-ops-5134b460d69771aa/division-fv2yuzli" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
