	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-x6laysvq" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1352
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r2
	addli r30, sp, 1288
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
	.loc	1 34 10 is_stmt 1               # parallel-rne.mlir:34:10
	load_param_i r3, 1
	loadli.w r4,  32(r30)
	lui r5, 1048575
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	.loc	1 45 11                         # parallel-rne.mlir:45:11
	storeli.w zero, -232(r30)
	.loc	1 46 11                         # parallel-rne.mlir:46:11
	storeli.w zero, -556(r30)
	.loc	1 47 11                         # parallel-rne.mlir:47:11
	storeli.w zero, -792(r30)
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w zero, -1180(r30)
	.loc	1 35 10                         # parallel-rne.mlir:35:10
	mul.s r1, r2, r1
	.loc	1 37 10                         # parallel-rne.mlir:37:10
	addli r2, r3, 0
	fmac.s r2, r1, r4
	.loc	1 36 10                         # parallel-rne.mlir:36:10
	mul.s r4, r1, r4
	.loc	1 38 10                         # parallel-rne.mlir:38:10
	addli r2, r2, -1
	.loc	1 39 10                         # parallel-rne.mlir:39:10
	div.s r2, r2, r3
	ori r3, r5, 4095
	.loc	1 45 11                         # parallel-rne.mlir:45:11
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
	storeli.w r3, -1176(r30)
	storeli.w r3, -1172(r30)
	storeli.w r3, -1168(r30)
	storeli.w r3, -1164(r30)
	storeli.w r3, -1160(r30)
	storeli.w r3, -1156(r30)
	storeli.w r3, -1152(r30)
	storeli.w r3, -1148(r30)
	storeli.w r3, -1144(r30)
	storeli.w r3, -1140(r30)
	storeli.w r3, -1136(r30)
	storeli.w r3, -1132(r30)
	storeli.w r3, -1128(r30)
	storeli.w r3, -1124(r30)
	storeli.w r3, -1120(r30)
	storeli.w r3, -1116(r30)
	storeli.w r3, -1112(r30)
	storeli.w r3, -1108(r30)
	storeli.w r3, -1104(r30)
	storeli.w r3, -1100(r30)
	storeli.w r3, -1096(r30)
	storeli.w r3, -1092(r30)
	storeli.w r3, -1088(r30)
	storeli.w r3, -1084(r30)
	storeli.w r3, -1080(r30)
	storeli.w r3, -1076(r30)
	storeli.w r3, -1072(r30)
	storeli.w r3, -1068(r30)
	storeli.w r3, -1064(r30)
	storeli.w r3, -1060(r30)
	storeli.w r3, -1056(r30)
	storeli.w r3, -1052(r30)
	storeli.w r3, -1048(r30)
	storeli.w r3, -1044(r30)
	storeli.w r3, -1040(r30)
	storeli.w r3, -1036(r30)
	storeli.w r3, -1032(r30)
	storeli.w r3, -1028(r30)
	storeli.w r3, -1024(r30)
	storeli.w r3, -1020(r30)
	storeli.w r3, -1016(r30)
	storeli.w r3, -1012(r30)
	storeli.w r3, -1008(r30)
	storeli.w r3, -1004(r30)
	storeli.w r3, -1000(r30)
	storeli.w r3, -996(r30)
	storeli.w r3, -992(r30)
	storeli.w r3, -988(r30)
	storeli.w r3, -984(r30)
	storeli.w r3, -980(r30)
	storeli.w r3, -976(r30)
	storeli.w r3, -972(r30)
	storeli.w r3, -968(r30)
	storeli.w r3, -964(r30)
	storeli.w r3, -960(r30)
	storeli.w r3, -956(r30)
	storeli.w r3, -952(r30)
	storeli.w r3, -948(r30)
	storeli.w r3, -944(r30)
	storeli.w r3, -940(r30)
	storeli.w r3, -936(r30)
	storeli.w r3, -932(r30)
	storeli.w r3, -928(r30)
	storeli.w r3, -924(r30)
	storeli.w r3, -920(r30)
	storeli.w r3, -916(r30)
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
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r2, r2, r4
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r2, r1, .LBB0_281
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r2
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[6:7], r1
	lui r1, 15
	addli r15, zero, 32
	addli r11, zero, 7
	addli r19, zero, 3
	addli r20, zero, 4
	addli r26, zero, 64
	lui r17, 522240
	lui r18, 1048560
	addli r9, zero, 0
	store.d r[2:3], -1280(r30)              # 8-byte Folded Spill
	ori r2, r1, 4095
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	lui r1, 1047552
	store.d r[1:2], -1288(r30)              # 8-byte Folded Spill
	lui r1, 1023
	lui r2, 522239
	ori r1, r1, 4095
	ori r5, r2, 4095
	storeli.w r1, -1220(r30)                # 4-byte Folded Spill
	lui r1, 524287
	ori r13, r1, 4095
	lui r1, 7
	ori r4, r1, 4095
	j .LBB0_8
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r1, zero, 11
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	xsignal r1, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r1, zero, 12
.LBB0_6:                                #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	xsignal r1, 0
.LBB0_7:                                #   in Loop: Header=BB0_8 Depth=1
	load.d r[6:7], -1240(r30)               # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[1:2], -1280(r30)               # 8-byte Folded Reload
	loadli.w r9,  -1244(r30)                # 4-byte Folded Reload
	addli r26, zero, 64
	addli.d r[6:7], r[6:7], 1
	setlt.sl r1, r[6:7], r[1:2]
	beq r1, zero, .LBB0_281
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_34 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #     Child Loop BB0_46 Depth 2
                                        #       Child Loop BB0_48 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #     Child Loop BB0_103 Depth 2
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_126 Depth 3
                                        #     Child Loop BB0_133 Depth 2
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_156 Depth 3
                                        #     Child Loop BB0_162 Depth 2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #     Child Loop BB0_194 Depth 2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_217 Depth 3
                                        #     Child Loop BB0_251 Depth 2
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_274 Depth 3
                                        #     Child Loop BB0_223 Depth 2
                                        #       Child Loop BB0_225 Depth 3
                                        #       Child Loop BB0_246 Depth 3
	.loc	1 78 7                          # parallel-rne.mlir:78:7
	bneq r3, r20, .LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 11
	xwait r1, 0
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r3,  28(r30)
	store.d r[6:7], -1240(r30)              # 8-byte Folded Spill
	.loc	1 98 15 is_stmt 1               # parallel-rne.mlir:98:15
	loadli.w r10,  -792(r30)
	addli r25, zero, 2
	addli r1, zero, 0
	addli r21, zero, 3
	div.s r2, r6, r2
	mod.s r6, r9, r19
	addli r9, r9, 1
	storeli.w r9, -1244(r30)                # 4-byte Folded Spill
	addli r9, zero, 8
	div.s r2, r2, r3
	addli r3, zero, 128
	slli r16, r6, 15
	lui r6, 24
	div.s r3, r2, r3
	slli r8, r3, 3
	slli r3, r3, 7
	sub.s r7, r15, r8
	sub.s r3, r2, r3
	min.s r7, r7, r9
	mod.s r9, r2, r7
	div.s r3, r3, r7
	add.s r7, r16, r6
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r2,  -1180(r30)
	add.s r6, r8, r9
	slli r8, r3, 7
	storeli.w r8, -1272(r30)                # 4-byte Folded Spill
	zext_int2long r[8:9], r3
	slli r3, r6, 6
	zext_int2long r[14:15], r6
	addli r6, zero, 0
	storeli.w r3, -1268(r30)                # 4-byte Folded Spill
	addli r3, zero, 17
	sll.d r[8:9], r[8:9], r11
	store.d r[14:15], -1264(r30)            # 8-byte Folded Spill
	sll.d r[19:20], r[14:15], r3
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r3, zero, 1
	sll.d r[14:15], r[8:9], r3
	load.d r[8:9], -1288(r30)               # 8-byte Folded Reload
	store.d r[19:20], -1208(r30)            # 8-byte Folded Spill
	store.d r[14:15], -1256(r30)            # 8-byte Folded Spill
	and.d r[8:9], r[19:20], r[8:9]
	store.d r[8:9], -1216(r30)              # 8-byte Folded Spill
	load.d r[8:9], 8(r30)
	add.ul r[8:9], r[8:9], r[14:15]
	store.d r[8:9], -1232(r30)              # 8-byte Folded Spill
	j .LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r3, 48
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	lock zero, r20
	addli r10, zero, 5
	dma_cfg r22, r22, zero, 0
	ori r3, r3, 64
	dma_cfg zero, r15, zero, 2
	add.s r3, r9, r3
	addli r9, zero, 4096
	dma_cfg r3, r14, r26, 3
	addli r3, zero, 128
	addli r15, zero, 32
	dma_cfg r3, r26, r22, 4
	dma_cfg r3, r9, r8, 5
	addli r9, zero, 6
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 8
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 9
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 10
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 11
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 12
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 13
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 14
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 15
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 16
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 17
	dma_cfg zero, zero, r9, 10
	addli r9, zero, 18
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
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r26, 3
	dma_cfg r3, zero, r22, 4
	dma_cfg r3, zero, r8, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r21, 0
.LBB0_12:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -556(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r8,  -232(r30)
	loadli.w r1,  -1192(r30)                # 4-byte Folded Reload
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r3, r3, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r8, r8, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r3, -556(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r8, -232(r30)
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r6, r6, 1
	beq r6, r26, .LBB0_36
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r25, zero, 2
	addli r21, zero, 3
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r1, r1, 1
	addli r10, r12, 0
.LBB0_14:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_31 Depth 3
                                        #       Child Loop BB0_34 Depth 3
	.loc	1 80 15                         # parallel-rne.mlir:80:15
	zext_int2long r[14:15], r6
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	addli r3, zero, 5
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	load.d r[19:20], -1208(r30)             # 8-byte Folded Reload
	load.d r[27:28], -1216(r30)             # 8-byte Folded Reload
	addli r24, zero, 32
	storeli.w r1, -1192(r30)                # 4-byte Folded Spill
	.loc	1 81 15                         # parallel-rne.mlir:81:15
	sll.d r[8:9], r[14:15], r3
	loadli.w r3,  -1220(r30)                # 4-byte Folded Reload
	.loc	1 83 15                         # parallel-rne.mlir:83:15
	add.ul r[19:20], r[8:9], r[19:20]
	zext_int2long r[8:9], r3
	.loc	1 84 15                         # parallel-rne.mlir:84:15
	setlt.ul r3, r[8:9], r[19:20]
	bneq r3, zero, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	zext_int2long r[27:28], zero
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 96 15 is_stmt 1               # parallel-rne.mlir:96:15
	addli r3, zero, 96
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r8, zero, 58
	addli r12, r10, 1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r9, r10, r8
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r3, r2, r3
	addli r8, zero, 1984
	addli r2, r2, 1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r12, -792(r30)
	zext_int2long r[22:23], r8
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r2, -1180(r30)
	store.d r[22:23], -1200(r30)            # 8-byte Folded Spill
	slli r8, r3, 13
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r9, r9, 13
	lui r3, 48
	add.s r23, r9, r3
	beq r1, r25, .LBB0_20
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 15 is_stmt 0                # parallel-rne.mlir:0:15
	addli r22, zero, 1
	bneq r1, r22, .LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 2048
	sub.sl r[14:15], r[19:20], r[27:28]
	load.d r[24:25], -1200(r30)             # 8-byte Folded Reload
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	sll.d r[19:20], r[19:20], r22
	addli r21, zero, 2
	zext_int2long r[27:28], r3
	addli r3, zero, 57
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	div.sl r[14:15], r[14:15], r[27:28]
	min.sl r[27:28], r[14:15], r[24:25]
	sub.sl r[27:28], r[27:28], r[14:15]
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	load.d r[14:15], 0(r30)
	addli r8, r27, 64
	add.ul r[14:15], r[14:15], r[19:20]
	addli r19, zero, 3
	addli r20, zero, 4
	xwait r19, 0
	blt.s r3, r10, .LBB0_11
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r10, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r3, zero, 6
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r11, 10
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
	addli r3, zero, 128
	dma_cfg r22, r22, zero, 0
	dma_cfg r22, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r26, 3
	dma_cfg r3, zero, r22, 4
	dma_cfg r3, zero, r26, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	j .LBB0_11
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r21, zero, 2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r3, zero, 5
	addli r15, zero, 32
	addli r19, zero, 3
	addli r20, zero, 4
	xwait r21, 0
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 32
	ds_cfg r21, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r3, zero, 14
	ds_cfg r26, zero, 13
	shuffle_batch r8, r23, r3, 1
	unlock zero
	xsignal r19, 0
	xsignal r20, 0
	j .LBB0_12
.LBB0_21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r11,  -232(r30)
	addli r10, zero, 57
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r3,  -556(r30)
	addli r9, zero, 80
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	lui r20, 164
	addli r19, zero, 7
	mod.s r10, r11, r10
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	mod.s r9, r3, r9
	addli r3, r3, 1
	storeli.w r3, -556(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r3, r11, 1
	storeli.w r3, -232(r30)
	.loc	1 120 9                         # parallel-rne.mlir:120:9
	addli r3, zero, 6
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r10, r10, 14
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	slli r9, r9, 14
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	add.s r23, r10, r20
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r1, r19, .LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r1, r3, .LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r3, zero, 17
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	load.d r[19:20], -1232(r30)             # 8-byte Folded Reload
	sll.d r[8:9], r[14:15], r3
	addli r14, zero, 7
	addli r15, zero, 17
	addli r3, zero, 56
	add.ul r[8:9], r[19:20], r[8:9]
	addli r19, zero, 1
	xwait r14, 0
	blt.s r3, r11, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 5
	addli r11, zero, 4
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r3, zero, 6
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r25, 10
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r3, 10
	addli r3, zero, 8
	dma_cfg zero, zero, r14, 10
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
	addli r3, zero, 18
	dma_cfg zero, zero, r15, 10
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
	addli r3, zero, 128
	dma_cfg r19, r19, zero, 0
	dma_cfg r19, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r26, 3
	dma_cfg r3, zero, r11, 4
	addli r3, zero, 512
	dma_cfg r3, zero, r24, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r3, 164
	addli r20, zero, 4
	addli r11, zero, 512
	addli r21, zero, 2
	addli r22, zero, 6
	ori r3, r3, 64
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	lock zero, r20
	dma_cfg r19, r19, zero, 0
	add.s r3, r10, r3
	dma_cfg zero, r9, zero, 2
	addli r10, zero, 5
	dma_cfg r3, r8, r26, 3
	addli r3, zero, 128
	addli r8, zero, 32
	addli r9, zero, 4096
	dma_cfg r3, r26, r20, 4
	dma_cfg r11, r9, r8, 5
	addli r8, zero, 8
	addli r9, zero, 1
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r19, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	lock zero, r10
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r19, 10
	addli r19, zero, 3
	dma_cfg zero, zero, r21, 10
	dma_cfg zero, zero, r19, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r10, 10
	dma_cfg zero, zero, r22, 10
	dma_cfg zero, zero, r14, 10
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
	dma_cfg zero, zero, r15, 10
	addli r15, zero, 32
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
	dma_cfg r9, r9, zero, 0
	dma_cfg r9, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r23, zero, r26, 3
	dma_cfg r3, zero, r20, 4
	dma_cfg r11, zero, r15, 5
	addli r11, zero, 7
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r9, 5
	dma_cfg zero, zero, zero, 8
	unlock r10
	xsignal r22, 0
	j .LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	xwait r3, 0
	addli r3, zero, 9
	addli r21, zero, 2
	addli r8, zero, 32
	addli r15, zero, 32
	addli r11, zero, 7
	addli r19, zero, 3
	addli r20, zero, 4
	xwait r3, 0
	lock zero, zero
	addli r3, zero, 128
	ds_cfg r21, zero, 0
	ds_cfg r3, zero, 1
	ds_cfg r8, zero, 14
	ds_cfg r3, zero, 13
	addli r3, zero, 8
	shuffle_coa r9, r23, r8, 2
	unlock zero
	xsignal r11, 0
	xsignal r3, 0
.LBB0_27:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	loadli.w r1,  -1192(r30)                # 4-byte Folded Reload
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	addli r6, r6, 1
	bneq r6, r26, .LBB0_13
	j .LBB0_36
.LBB0_28:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r20, zero, 4
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	bneq r1, r20, .LBB0_32
# %bb.29:                               #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 8
	xwait r20, 0
	addli r15, zero, 32
	addli r19, zero, 3
	addli r21, zero, 2
	xwait r3, 0
	loadli.w r1,  -1192(r30)                # 4-byte Folded Reload
	beq r1, zero, .LBB0_33
# %bb.30:                               # %.preheader30.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r10, zero, 1
	addli r11, zero, 1
	addli r3, zero, 0
.LBB0_31:                               # %.preheader30
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	slli r14, r3, 13
	slli r3, r3, 8
	lock zero, r10
	mm_cfg r26, r15, r26, 0
	or r14, r14, r9
	or r3, r3, r7
	mm_cfg r21, r20, r10, 2
	mm_acc r3, r8, r14, 8
	andi r14, r11, 1
	addli r3, zero, 1
	addli r11, zero, 0
	unlock r10
	bneq r14, zero, .LBB0_31
	j .LBB0_35
.LBB0_32:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	loadli.w r1,  -1192(r30)                # 4-byte Folded Reload
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	addli r6, r6, 1
	addli r15, zero, 32
	addli r11, zero, 7
	addli r19, zero, 3
	addli r21, zero, 2
	bneq r6, r26, .LBB0_13
	j .LBB0_38
.LBB0_33:                               # %.preheader29.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r10, zero, 1
	addli r11, zero, 1
	addli r3, zero, 0
.LBB0_34:                               # %.preheader29
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	slli r14, r3, 13
	slli r3, r3, 8
	lock zero, r10
	mm_cfg r26, r15, r26, 0
	or r14, r14, r9
	or r3, r3, r7
	mm_cfg r21, r20, r10, 2
	mm r3, r8, r14, 8
	andi r14, r11, 1
	addli r3, zero, 1
	addli r11, zero, 0
	unlock r10
	bneq r14, zero, .LBB0_34
.LBB0_35:                               # %.thread20.thread46
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r3, zero, 5
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	addli r6, r6, 1
	addli r11, zero, 7
	.loc	1 122 9                         # parallel-rne.mlir:122:9
	xsignal r3, 0
	addli r3, zero, 9
	xsignal r3, 0
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	bneq r6, r26, .LBB0_13
	j .LBB0_37
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	core_id r1
	bneq r1, r20, .LBB0_38
.LBB0_37:                               # %.thread21
                                        #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	storeli.w zero, -1208(r30)              # 4-byte Folded Spill
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 126 7                         # parallel-rne.mlir:126:7
	xsignal r1, 0
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	j .LBB0_41
.LBB0_38:                               # %.thread45
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r3, r19, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_8 Depth=1
	addli r1, zero, 10
	xwait r1, 0
	addli r1, zero, 1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	storeli.w r1, -1208(r30)                # 4-byte Folded Spill
	addli r1, zero, 13
	xwait r1, 0
	j .LBB0_41
.LBB0_40:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1208(r30)              # 4-byte Folded Spill
.LBB0_41:                               # %.critedge2
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r1, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r1
	addli r1, zero, 128
	sync_core
	zext_int2long r[25:26], r1
	addli r1, zero, 127
	zext_int2long r[1:2], r1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	beq r3, zero, .LBB0_72
# %bb.42:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	beq r3, r21, .LBB0_101
.LBB0_43:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r6
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r3, zero, 1
	bneq r6, r3, .LBB0_130
# %bb.44:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 8
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_46
.LBB0_45:                               # %middle.block102
                                        #   in Loop: Header=BB0_46 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 15
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli r11, zero, 7
	beq r3, zero, .LBB0_129
.LBB0_46:                               # %.preheader26
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
                                        #       Child Loop BB0_69 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	beq r16, r7, .LBB0_69
	j .LBB0_48
.LBB0_47:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r6, r16, r6
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r12, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	bneq r3, zero, .LBB0_45
.LBB0_48:                               # %vector.body98
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r10, 12(r27)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r15, r10, r13
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r3, r17, r15
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r3, zero, .LBB0_50
# %bb.49:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_51
.LBB0_50:                               #   in Loop: Header=BB0_48 Depth=3
	lui r3, 1024
	or r12, r10, r3
.LBB0_51:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	loads.w r11, 8(r27)
	and r28, r11, r13
	setlt.u r3, r17, r28
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r3, zero, .LBB0_53
# %bb.52:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_48 Depth=3
	lui r3, 1024
	or r20, r11, r3
.LBB0_54:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	loads.w r19, 4(r27)
	and r21, r19, r13
	setlt.u r3, r17, r21
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r3, zero, .LBB0_56
# %bb.55:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_57
.LBB0_56:                               #   in Loop: Header=BB0_48 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_57:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r27, zero, .LBB0_59
# %bb.58:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r5, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r3, zero, .LBB0_60
	j .LBB0_61
.LBB0_59:                               #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r22, r27
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r5, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_61
.LBB0_60:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_61:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	setlt.u r3, r5, r21
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_64
# %bb.62:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r4
	and r14, r3, r18
	setlt.u r3, r5, r28
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r3, zero, .LBB0_65
.LBB0_63:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_47
	j .LBB0_66
.LBB0_64:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_63
.LBB0_65:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r20, r3, r18
	setlt.u r3, r5, r15
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_47
.LBB0_66:                               # %vector.body98
                                        #   in Loop: Header=BB0_48 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r12, r3, r18
	j .LBB0_47
.LBB0_67:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_69 Depth=3
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_68:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r6, r16, r6
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r10, 0(r6)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r3, zero, .LBB0_45
.LBB0_69:                               # %scalar.ph96
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_46 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r3, r11, r13
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r10, r17, r3
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r10, zero, .LBB0_71
# %bb.70:                               # %scalar.ph96
                                        #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r5, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_68
	j .LBB0_67
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r3, r5, r3
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r3, zero, .LBB0_68
	j .LBB0_67
.LBB0_72:                               #   in Loop: Header=BB0_8 Depth=1
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	xfence
	zext_int2long r[8:9], zero
	mfence { lm, sm, gm }
	j .LBB0_74
.LBB0_73:                               # %middle.block120
                                        #   in Loop: Header=BB0_74 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r11, zero, 7
	load.d r[14:15], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r11
	.loc	1 145 9 is_stmt 1               # parallel-rne.mlir:145:9
	setlt.ul r3, r[14:15], r[8:9]
	addli.d r[8:9], r[14:15], 1
	beq r3, zero, .LBB0_100
.LBB0_74:                               # %.preheader28
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_76 Depth 3
                                        #       Child Loop BB0_97 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	beq r16, r7, .LBB0_97
	j .LBB0_76
.LBB0_75:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r6, r16, r6
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r10, 12(r6)
	stores.w r11, 8(r6)
	stores.w r19, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	bneq r3, zero, .LBB0_73
.LBB0_76:                               # %vector.body116
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r12, 12(r27)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r15, r12, r13
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r3, r17, r15
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r3, zero, .LBB0_78
# %bb.77:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r12, 0
	j .LBB0_79
.LBB0_78:                               #   in Loop: Header=BB0_76 Depth=3
	lui r3, 1024
	or r10, r12, r3
.LBB0_79:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r20, 8(r27)
	and r28, r20, r13
	setlt.u r3, r17, r28
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r3, zero, .LBB0_81
# %bb.80:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r20, 0
	j .LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_76 Depth=3
	lui r3, 1024
	or r11, r20, r3
.LBB0_82:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r14, 4(r27)
	and r21, r14, r13
	setlt.u r3, r17, r21
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r3, zero, .LBB0_84
# %bb.83:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r19, r14, 0
	j .LBB0_85
.LBB0_84:                               #   in Loop: Header=BB0_76 Depth=3
	lui r3, 1024
	or r19, r14, r3
.LBB0_85:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r27, zero, .LBB0_87
# %bb.86:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r3, zero, .LBB0_88
	j .LBB0_89
.LBB0_87:                               #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r22, r27
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_89
.LBB0_88:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_89:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	setlt.u r3, r5, r21
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_92
# %bb.90:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r14, 16
	andi r3, r3, 1
	add.s r3, r14, r3
	add.s r3, r3, r4
	and r19, r3, r18
	setlt.u r3, r5, r28
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r3, zero, .LBB0_93
.LBB0_91:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_75
	j .LBB0_94
.LBB0_92:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_91
.LBB0_93:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r20, 16
	andi r3, r3, 1
	add.s r3, r20, r3
	add.s r3, r3, r4
	and r11, r3, r18
	setlt.u r3, r5, r15
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_75
.LBB0_94:                               # %vector.body116
                                        #   in Loop: Header=BB0_76 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r12, 16
	andi r3, r3, 1
	add.s r3, r12, r3
	add.s r3, r3, r4
	and r10, r3, r18
	j .LBB0_75
.LBB0_95:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_97 Depth=3
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_96:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r6, r16, r6
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r10, 0(r6)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	beq r3, zero, .LBB0_73
.LBB0_97:                               # %scalar.ph114
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r3, r11, r13
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r10, r17, r3
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r10, zero, .LBB0_99
# %bb.98:                               # %scalar.ph114
                                        #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_96
	j .LBB0_95
.LBB0_99:                               #   in Loop: Header=BB0_97 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r3, r5, r3
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r3, zero, .LBB0_96
	j .LBB0_95
.LBB0_100:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	addli r15, zero, 32
	addli r19, zero, 3
	addli r20, zero, 4
	addli r21, zero, 2
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	bneq r3, r21, .LBB0_43
.LBB0_101:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 16
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_103
.LBB0_102:                              # %middle.block111
                                        #   in Loop: Header=BB0_103 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 23
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli r11, zero, 7
	beq r3, zero, .LBB0_129
.LBB0_103:                              # %.preheader27
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_126 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	beq r16, r7, .LBB0_126
	j .LBB0_105
.LBB0_104:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	add.s r6, r16, r6
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r12, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	bneq r3, zero, .LBB0_102
.LBB0_105:                              # %vector.body107
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r10, 12(r27)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r15, r10, r13
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r3, r17, r15
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r3, zero, .LBB0_107
# %bb.106:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_105 Depth=3
	lui r3, 1024
	or r12, r10, r3
.LBB0_108:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	loads.w r11, 8(r27)
	and r28, r11, r13
	setlt.u r3, r17, r28
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r3, zero, .LBB0_110
# %bb.109:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_111
.LBB0_110:                              #   in Loop: Header=BB0_105 Depth=3
	lui r3, 1024
	or r20, r11, r3
.LBB0_111:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	loads.w r19, 4(r27)
	and r21, r19, r13
	setlt.u r3, r17, r21
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r3, zero, .LBB0_113
# %bb.112:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_105 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_114:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r27, zero, .LBB0_116
# %bb.115:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r3, r5, r3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r3, zero, .LBB0_117
	j .LBB0_118
.LBB0_116:                              #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r22, r27
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r3, r5, r3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r3, zero, .LBB0_118
.LBB0_117:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_118:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	setlt.u r3, r5, r21
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r3, zero, .LBB0_121
# %bb.119:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r4
	and r14, r3, r18
	setlt.u r3, r5, r28
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r3, zero, .LBB0_122
.LBB0_120:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r3, zero, .LBB0_104
	j .LBB0_123
.LBB0_121:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r3, zero, .LBB0_120
.LBB0_122:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r20, r3, r18
	setlt.u r3, r5, r15
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r3, zero, .LBB0_104
.LBB0_123:                              # %vector.body107
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r12, r3, r18
	j .LBB0_104
.LBB0_124:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_126 Depth=3
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_125:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	add.s r6, r16, r6
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r10, 0(r6)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r3, zero, .LBB0_102
.LBB0_126:                              # %scalar.ph105
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_103 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r3, r11, r13
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r10, r17, r3
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r10, zero, .LBB0_128
# %bb.127:                              # %scalar.ph105
                                        #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r3, r5, r3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r3, zero, .LBB0_125
	j .LBB0_124
.LBB0_128:                              #   in Loop: Header=BB0_126 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r3, r5, r3
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r3, zero, .LBB0_125
	j .LBB0_124
.LBB0_129:                              # %.sink.split
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, zero, 32
	addli r19, zero, 3
	addli r20, zero, 4
	mfence { sm }
.LBB0_130:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	loadli.w r3,  -1208(r30)                # 4-byte Folded Reload
	beq r3, zero, .LBB0_159
# %bb.131:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 24
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_133
.LBB0_132:                              # %middle.block93
                                        #   in Loop: Header=BB0_133 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 31
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 232 9 is_stmt 1               # parallel-rne.mlir:232:9
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli r11, zero, 7
	beq r3, zero, .LBB0_188
.LBB0_133:                              # %.preheader25
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_135 Depth 3
                                        #       Child Loop BB0_156 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	beq r16, r7, .LBB0_156
	j .LBB0_135
.LBB0_134:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r6, r16, r6
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r12, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	bneq r3, zero, .LBB0_132
.LBB0_135:                              # %vector.body89
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_133 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r10, 12(r27)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r15, r10, r13
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r3, r17, r15
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r3, zero, .LBB0_137
# %bb.136:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_135 Depth=3
	lui r3, 1024
	or r12, r10, r3
.LBB0_138:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	loads.w r11, 8(r27)
	and r28, r11, r13
	setlt.u r3, r17, r28
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r3, zero, .LBB0_140
# %bb.139:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_135 Depth=3
	lui r3, 1024
	or r20, r11, r3
.LBB0_141:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	loads.w r19, 4(r27)
	and r21, r19, r13
	setlt.u r3, r17, r21
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r3, zero, .LBB0_143
# %bb.142:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_135 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_144:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r27, zero, .LBB0_153
# %bb.145:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r5, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_147
.LBB0_146:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_147:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	setlt.u r3, r5, r21
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_150
# %bb.148:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r4
	and r14, r3, r18
	setlt.u r3, r5, r28
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r3, zero, .LBB0_151
.LBB0_149:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_134
	j .LBB0_152
.LBB0_150:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_149
.LBB0_151:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r20, r3, r18
	setlt.u r3, r5, r15
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_134
.LBB0_152:                              # %vector.body89
                                        #   in Loop: Header=BB0_135 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r12, r3, r18
	j .LBB0_134
.LBB0_153:                              #   in Loop: Header=BB0_135 Depth=3
	lui r27, 1024
	or r27, r22, r27
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r5, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r3, zero, .LBB0_146
	j .LBB0_147
.LBB0_154:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_155:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r6, r16, r6
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r10, 0(r6)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	beq r3, zero, .LBB0_132
.LBB0_156:                              # %scalar.ph87
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_133 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r3, r11, r13
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r10, r17, r3
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r10, zero, .LBB0_158
# %bb.157:                              # %scalar.ph87
                                        #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r5, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_155
	j .LBB0_154
.LBB0_158:                              #   in Loop: Header=BB0_156 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r3, r5, r3
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r3, zero, .LBB0_155
	j .LBB0_154
.LBB0_159:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	bneq r3, r20, .LBB0_189
.LBB0_160:                              #   in Loop: Header=BB0_8 Depth=1
	xfence
	zext_int2long r[8:9], r15
	mfence { lm, sm, gm }
	j .LBB0_162
.LBB0_161:                              # %middle.block84
                                        #   in Loop: Header=BB0_162 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 39
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 261 9 is_stmt 1               # parallel-rne.mlir:261:9
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli r11, zero, 7
	beq r3, zero, .LBB0_220
.LBB0_162:                              # %.preheader24
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_164 Depth 3
                                        #       Child Loop BB0_185 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	beq r16, r7, .LBB0_185
	j .LBB0_164
.LBB0_163:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	add.s r6, r16, r6
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r12, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	bneq r3, zero, .LBB0_161
.LBB0_164:                              # %vector.body80
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r10, 12(r27)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r15, r10, r13
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r3, r17, r15
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r3, zero, .LBB0_166
# %bb.165:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_167
.LBB0_166:                              #   in Loop: Header=BB0_164 Depth=3
	lui r3, 1024
	or r12, r10, r3
.LBB0_167:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r11, 8(r27)
	and r28, r11, r13
	setlt.u r3, r17, r28
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r3, zero, .LBB0_169
# %bb.168:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_170
.LBB0_169:                              #   in Loop: Header=BB0_164 Depth=3
	lui r3, 1024
	or r20, r11, r3
.LBB0_170:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r19, 4(r27)
	and r21, r19, r13
	setlt.u r3, r17, r21
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r3, zero, .LBB0_172
# %bb.171:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_173
.LBB0_172:                              #   in Loop: Header=BB0_164 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_173:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r27, zero, .LBB0_182
# %bb.174:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r3, r5, r3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r3, zero, .LBB0_176
.LBB0_175:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_176:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	setlt.u r3, r5, r21
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r3, zero, .LBB0_179
# %bb.177:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r4
	and r14, r3, r18
	setlt.u r3, r5, r28
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r3, zero, .LBB0_180
.LBB0_178:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r3, zero, .LBB0_163
	j .LBB0_181
.LBB0_179:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r3, zero, .LBB0_178
.LBB0_180:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r20, r3, r18
	setlt.u r3, r5, r15
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r3, zero, .LBB0_163
.LBB0_181:                              # %vector.body80
                                        #   in Loop: Header=BB0_164 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r12, r3, r18
	j .LBB0_163
.LBB0_182:                              #   in Loop: Header=BB0_164 Depth=3
	lui r27, 1024
	or r27, r22, r27
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r3, r5, r3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r3, zero, .LBB0_175
	j .LBB0_176
.LBB0_183:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_184:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	add.s r6, r16, r6
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r10, 0(r6)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	beq r3, zero, .LBB0_161
.LBB0_185:                              # %scalar.ph78
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r3, r11, r13
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r10, r17, r3
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r10, zero, .LBB0_187
# %bb.186:                              # %scalar.ph78
                                        #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r3, r5, r3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r3, zero, .LBB0_184
	j .LBB0_183
.LBB0_187:                              #   in Loop: Header=BB0_185 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r3, r5, r3
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r3, zero, .LBB0_184
	j .LBB0_183
.LBB0_188:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, zero, 32
	addli r19, zero, 3
	addli r20, zero, 4
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	mfence { sm }
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	beq r3, r20, .LBB0_160
.LBB0_189:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	beq r3, r11, .LBB0_221
.LBB0_190:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r6
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	addli r3, zero, 6
	beq r6, r3, .LBB0_249
# %bb.191:                              #   in Loop: Header=BB0_8 Depth=1
	addli r3, zero, 5
	bneq r6, r3, .LBB0_278
# %bb.192:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 40
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_194
.LBB0_193:                              # %middle.block
                                        #   in Loop: Header=BB0_194 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r3, zero, 47
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli r11, zero, 7
	beq r3, zero, .LBB0_277
.LBB0_194:                              # %.preheader
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_196 Depth 3
                                        #       Child Loop BB0_217 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	beq r16, r7, .LBB0_217
	j .LBB0_196
.LBB0_195:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r6, r16, r6
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r12, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	bneq r3, zero, .LBB0_193
.LBB0_196:                              # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_194 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r10, 12(r27)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r15, r10, r13
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r3, r17, r15
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_198
# %bb.197:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_199
.LBB0_198:                              #   in Loop: Header=BB0_196 Depth=3
	lui r3, 1024
	or r12, r10, r3
.LBB0_199:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r11, 8(r27)
	and r28, r11, r13
	setlt.u r3, r17, r28
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_201
# %bb.200:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_202
.LBB0_201:                              #   in Loop: Header=BB0_196 Depth=3
	lui r3, 1024
	or r20, r11, r3
.LBB0_202:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r19, 4(r27)
	and r21, r19, r13
	setlt.u r3, r17, r21
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r3, zero, .LBB0_204
# %bb.203:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_196 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_205:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r27, zero, .LBB0_214
# %bb.206:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r3, r5, r3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_208
.LBB0_207:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_208:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	setlt.u r3, r5, r21
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_211
# %bb.209:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r4
	and r14, r3, r18
	setlt.u r3, r5, r28
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r3, zero, .LBB0_212
.LBB0_210:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_195
	j .LBB0_213
.LBB0_211:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_210
.LBB0_212:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r20, r3, r18
	setlt.u r3, r5, r15
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_195
.LBB0_213:                              # %vector.body
                                        #   in Loop: Header=BB0_196 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r12, r3, r18
	j .LBB0_195
.LBB0_214:                              #   in Loop: Header=BB0_196 Depth=3
	lui r27, 1024
	or r27, r22, r27
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r3, r5, r3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r3, zero, .LBB0_207
	j .LBB0_208
.LBB0_215:                              # %scalar.ph
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_216:                              # %scalar.ph
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r6, r16, r6
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r10, 0(r6)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r3, zero, .LBB0_193
.LBB0_217:                              # %scalar.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_194 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r3, r11, r13
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r10, r17, r3
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r10, zero, .LBB0_219
# %bb.218:                              # %scalar.ph
                                        #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r3, r5, r3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_216
	j .LBB0_215
.LBB0_219:                              #   in Loop: Header=BB0_217 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r3, r5, r3
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r3, zero, .LBB0_216
	j .LBB0_215
.LBB0_220:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	addli r15, zero, 32
	addli r19, zero, 3
	addli r20, zero, 4
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	bneq r3, r11, .LBB0_190
.LBB0_221:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 56
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_223
.LBB0_222:                              # %middle.block75
                                        #   in Loop: Header=BB0_223 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 63
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli r11, zero, 7
	beq r3, zero, .LBB0_277
.LBB0_223:                              # %.preheader22
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_225 Depth 3
                                        #       Child Loop BB0_246 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	beq r16, r7, .LBB0_246
	j .LBB0_225
.LBB0_224:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r6, r16, r6
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r12, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	bneq r3, zero, .LBB0_222
.LBB0_225:                              # %vector.body71
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_223 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r10, 12(r27)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r15, r10, r13
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r3, r17, r15
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_227
# %bb.226:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_228
.LBB0_227:                              #   in Loop: Header=BB0_225 Depth=3
	lui r3, 1024
	or r12, r10, r3
.LBB0_228:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	loads.w r11, 8(r27)
	and r28, r11, r13
	setlt.u r3, r17, r28
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_230
# %bb.229:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_231
.LBB0_230:                              #   in Loop: Header=BB0_225 Depth=3
	lui r3, 1024
	or r20, r11, r3
.LBB0_231:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	loads.w r19, 4(r27)
	and r21, r19, r13
	setlt.u r3, r17, r21
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r3, zero, .LBB0_233
# %bb.232:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_225 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_234:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r27, zero, .LBB0_236
# %bb.235:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r3, r5, r3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r3, zero, .LBB0_237
	j .LBB0_238
.LBB0_236:                              #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r22, r27
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r3, r5, r3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r3, zero, .LBB0_238
.LBB0_237:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_238:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	setlt.u r3, r5, r21
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r3, zero, .LBB0_241
# %bb.239:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r4
	and r14, r3, r18
	setlt.u r3, r5, r28
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r3, zero, .LBB0_242
.LBB0_240:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r3, zero, .LBB0_224
	j .LBB0_243
.LBB0_241:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r3, zero, .LBB0_240
.LBB0_242:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r20, r3, r18
	setlt.u r3, r5, r15
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r3, zero, .LBB0_224
.LBB0_243:                              # %vector.body71
                                        #   in Loop: Header=BB0_225 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r12, r3, r18
	j .LBB0_224
.LBB0_244:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_246 Depth=3
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_245:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r6, r16, r6
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r10, 0(r6)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r3, zero, .LBB0_222
.LBB0_246:                              # %scalar.ph69
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_223 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r3, r11, r13
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r10, r17, r3
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r10, zero, .LBB0_248
# %bb.247:                              # %scalar.ph69
                                        #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r3, r5, r3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r3, zero, .LBB0_245
	j .LBB0_244
.LBB0_248:                              #   in Loop: Header=BB0_246 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r3, r5, r3
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r3, zero, .LBB0_245
	j .LBB0_244
.LBB0_249:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r3, zero, 48
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[8:9], r3
	j .LBB0_251
.LBB0_250:                              # %middle.block66
                                        #   in Loop: Header=BB0_251 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r3, zero, 55
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[8:9], r3
	.loc	1 319 9 is_stmt 1               # parallel-rne.mlir:319:9
	setlt.ul r3, r[10:11], r[8:9]
	addli.d r[8:9], r[10:11], 1
	addli r11, zero, 7
	beq r3, zero, .LBB0_277
.LBB0_251:                              # %.preheader23
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_253 Depth 3
                                        #       Child Loop BB0_274 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	sll.d r[23:24], r[8:9], r11
	zext_int2long r[8:9], zero
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	beq r16, r7, .LBB0_274
	j .LBB0_253
.LBB0_252:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	addli.d r[8:9], r[8:9], 4
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r6, r16, r6
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	seteq.d r3, r[8:9], r[25:26]
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r12, 12(r6)
	stores.w r20, 8(r6)
	stores.w r14, 4(r6)
	stores.w r27, 0(r6)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	bneq r3, zero, .LBB0_250
.LBB0_253:                              # %vector.body62
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_251 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r27, r7, r6
	loads.w r10, 12(r27)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r15, r10, r13
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r3, r17, r15
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_255
# %bb.254:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r10, 0
	j .LBB0_256
.LBB0_255:                              #   in Loop: Header=BB0_253 Depth=3
	lui r3, 1024
	or r12, r10, r3
.LBB0_256:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r11, 8(r27)
	and r28, r11, r13
	setlt.u r3, r17, r28
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_258
# %bb.257:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r20, r11, 0
	j .LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_253 Depth=3
	lui r3, 1024
	or r20, r11, r3
.LBB0_259:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r19, 4(r27)
	and r21, r19, r13
	setlt.u r3, r17, r21
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r3, zero, .LBB0_261
# %bb.260:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r19, 0
	j .LBB0_262
.LBB0_261:                              #   in Loop: Header=BB0_253 Depth=3
	lui r3, 1024
	or r14, r19, r3
.LBB0_262:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	loads.w r22, 0(r27)
	and r3, r22, r13
	setlt.u r27, r17, r3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r27, zero, .LBB0_264
# %bb.263:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r27, r22, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r3, r5, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r3, zero, .LBB0_265
	j .LBB0_266
.LBB0_264:                              #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r27, 1024
	or r27, r22, r27
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r3, r5, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r3, zero, .LBB0_266
.LBB0_265:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r3, r22, 16
	andi r3, r3, 1
	add.s r3, r22, r3
	add.s r3, r3, r4
	and r27, r3, r18
.LBB0_266:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	setlt.u r3, r5, r21
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r3, zero, .LBB0_269
# %bb.267:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r19, 16
	andi r3, r3, 1
	add.s r3, r19, r3
	add.s r3, r3, r4
	and r14, r3, r18
	setlt.u r3, r5, r28
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r3, zero, .LBB0_270
.LBB0_268:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r15
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r3, zero, .LBB0_252
	j .LBB0_271
.LBB0_269:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r3, r5, r28
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r3, zero, .LBB0_268
.LBB0_270:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r20, r3, r18
	setlt.u r3, r5, r15
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r3, zero, .LBB0_252
.LBB0_271:                              # %vector.body62
                                        #   in Loop: Header=BB0_253 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r3, r10, 16
	andi r3, r3, 1
	add.s r3, r10, r3
	add.s r3, r3, r4
	and r12, r3, r18
	j .LBB0_252
.LBB0_272:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_274 Depth=3
	srli r3, r11, 16
	andi r3, r3, 1
	add.s r3, r11, r3
	add.s r3, r3, r4
	and r10, r3, r18
.LBB0_273:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	setlt.ul r3, r[8:9], r[1:2]
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r6, r16, r6
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	addli.d r[8:9], r[8:9], 1
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r10, 0(r6)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	beq r3, zero, .LBB0_250
.LBB0_274:                              # %scalar.ph60
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_251 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[10:11], r[8:9], r[23:24]
	slli r6, r10, 2
	add.s r3, r7, r6
	loads.w r11, 0(r3)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r3, r11, r13
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r10, r17, r3
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r10, zero, .LBB0_276
# %bb.275:                              # %scalar.ph60
                                        #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r10, r11, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r3, r5, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r3, zero, .LBB0_273
	j .LBB0_272
.LBB0_276:                              #   in Loop: Header=BB0_274 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r10, 1024
	or r10, r11, r10
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r3, r5, r3
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r3, zero, .LBB0_273
	j .LBB0_272
.LBB0_277:                              # %.sink.split53
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, zero, 32
	addli r19, zero, 3
	addli r20, zero, 4
	mfence { sm }
.LBB0_278:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r1, zero, 255
	csr_set csr5, r1
	sync_core
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	loadli.w r1,  -1208(r30)                # 4-byte Folded Reload
	bneq r1, zero, .LBB0_5
# %bb.279:                              # %.critedge4
                                        #   in Loop: Header=BB0_8 Depth=1
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	bneq r3, zero, .LBB0_7
# %bb.280:                              #   in Loop: Header=BB0_8 Depth=1
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	loadli.w r1,  -1272(r30)                # 4-byte Folded Reload
	addli r3, zero, 1920
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	load.d r[10:11], -1200(r30)             # 8-byte Folded Reload
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[22:23], -1256(r30)             # 8-byte Folded Reload
	addli r14, zero, 5
	addli r12, zero, 1
	addli r21, zero, 64
	zext_int2long r[6:7], r3
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	loadli.w r3,  -1268(r30)                # 4-byte Folded Reload
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	zext_int2long r[1:2], r1
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	min.ul r[6:7], r[1:2], r[6:7]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	sext_int2long r[8:9], r3
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r3, zero, 18
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	addli.d r[6:7], r[6:7], 128
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[10:11], r[8:9], r[10:11]
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	max.ul r[6:7], r[6:7], r[1:2]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	addli.d r[10:11], r[10:11], 64
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	sub.sl r[1:2], r[6:7], r[1:2]
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	max.sl r[6:7], r[10:11], r[8:9]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[10:11], -1264(r30)             # 8-byte Folded Reload
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	sub.sl r[6:7], r[6:7], r[8:9]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[8:9], 16(r30)
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	min.ul r[1:2], r[1:2], r[25:26]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	sll.d r[10:11], r[10:11], r3
	addli r3, zero, 12
	add.ul r[8:9], r[8:9], r[10:11]
	xwait r3, 0
	lock zero, r14
	ori r3, r16, 64
	zext_int2long r[10:11], r21
	dma_cfg r12, r12, zero, 0
	add.ul r[8:9], r[8:9], r[22:23]
	dma_cfg zero, r12, zero, 1
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.sl r[6:7], r[6:7], r[10:11]
	addli r11, zero, 7
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	dma_cfg r9, zero, zero, 2
	dma_cfg r8, r3, r21, 3
	addli r3, r1, 31
	slli r1, r1, 1
	addli r2, zero, 128
	srli r3, r3, 5
	andi r1, r1, 62
	dma_cfg r21, r2, r3, 4
	addli r2, zero, 512
	addli r3, zero, 4096
	dma_cfg r3, r2, r6, 5
	.loc	1 32 5                          # parallel-rne.mlir:32:5
	core_id r3
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	dma_cfg zero, zero, r1, 8
	dma_run zero
	dma_cfg zero, zero, r12, 5
	addli r1, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r14
	j .LBB0_6
.LBB0_281:                              # %._crit_edge
	.loc	1 389 5                         # parallel-rne.mlir:389:5
	xsignal zero, 0
	bneq r3, zero, .LBB0_283
# %bb.282:
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
.LBB0_283:
	.loc	1 390 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:390:5
	addli sp, sp, 1288
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
	.long	1352                            # 0x548
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu0/cache/triton-p800-ops-5134b460d69771aa/division-x6laysvq" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
