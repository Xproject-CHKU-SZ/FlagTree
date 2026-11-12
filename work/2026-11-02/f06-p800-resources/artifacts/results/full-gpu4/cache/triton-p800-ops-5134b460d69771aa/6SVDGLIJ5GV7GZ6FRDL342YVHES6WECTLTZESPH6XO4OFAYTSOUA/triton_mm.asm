	.text
	.file	"LLVMDialectModule"
	.section	.text.triton_mm,"ax",@progbits
	.globl	triton_mm                       # -- Begin function triton_mm
	.type	triton_mm,@function
triton_mm:                              # @triton_mm
.Lfunc_begin0:
	.file	1 "/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-pgap2bdg" "parallel-rne.mlir"
	.loc	1 10 0                          # parallel-rne.mlir:10:0
	.cfi_sections .debug_frame
	.cfi_startproc
# %bb.0:
	addli sp, sp, -1320
	addli r1, zero, 1
.Ltmp0:
	.loc	1 32 5 prologue_end             # parallel-rne.mlir:32:5
	core_id r21
	addli r30, sp, 1256
	xsignal_mode_cfg r1
	beq r21, zero, .LBB0_2
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
	load_param_i r4, 1
	loadli.w r3,  32(r30)
	.loc	1 33 10                         # parallel-rne.mlir:33:10
	load_param_i r6, 0
	lui r5, 1048575
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
	.loc	1 46 11                         # parallel-rne.mlir:46:11
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
	.loc	1 47 11                         # parallel-rne.mlir:47:11
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
	.loc	1 48 11                         # parallel-rne.mlir:48:11
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
	.loc	1 40 10                         # parallel-rne.mlir:40:10
	mul.s r1, r2, r6
	.loc	1 41 10                         # parallel-rne.mlir:41:10
	fmac.s r2, r2, r6
	.loc	1 42 10                         # parallel-rne.mlir:42:10
	min.s r3, r2, r3
	.loc	1 51 5                          # parallel-rne.mlir:51:5
	ble.s r3, r1, .LBB0_292
# %bb.4:                                # %.lr.ph
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	sext_int2long r[2:3], r3
	.loc	1 43 11 is_stmt 1               # parallel-rne.mlir:43:11
	sext_int2long r[6:7], r1
	lui r1, 524287
	addli r22, zero, 64
	addli r23, zero, 1
	addli r9, zero, 3
	addli r4, zero, 4
	lui r28, 522240
	addli r16, zero, 0
	store.d r[2:3], -1256(r30)              # 8-byte Folded Spill
	ori r26, r1, 4095
	lui r1, 7
	lui r2, 522239
	lui r3, 1048560
	ori r1, r1, 4095
	ori r13, r2, 4095
	j .LBB0_7
.LBB0_5:                                # %.critedge4.thread
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	addli r2, zero, 11
	addli r9, zero, 3
	xsignal r2, 0
	.loc	1 371 7                         # parallel-rne.mlir:371:7
	addli r2, zero, 12
	xsignal r2, 0
	loadli.w r16,  -1220(r30)               # 4-byte Folded Reload
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	load.d r[6:7], -1216(r30)               # 8-byte Folded Reload
	.loc	1 51 5 is_stmt 1                # parallel-rne.mlir:51:5
	load.d r[4:5], -1256(r30)               # 8-byte Folded Reload
	addli.d r[6:7], r[6:7], 1
	setlt.sl r2, r[6:7], r[4:5]
	addli r4, zero, 4
	beq r2, zero, .LBB0_292
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_28 Depth 3
                                        #     Child Loop BB0_71 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
                                        #     Child Loop BB0_41 Depth 2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
                                        #     Child Loop BB0_102 Depth 2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_105 Depth 3
                                        #     Child Loop BB0_168 Depth 2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
                                        #     Child Loop BB0_199 Depth 2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_202 Depth 3
                                        #     Child Loop BB0_138 Depth 2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_141 Depth 3
                                        #     Child Loop BB0_260 Depth 2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_263 Depth 3
                                        #     Child Loop BB0_230 Depth 2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_233 Depth 3
	.loc	1 0 5 is_stmt 0                 # parallel-rne.mlir:0:5
	addli r24, zero, 7
	.loc	1 78 7 is_stmt 1                # parallel-rne.mlir:78:7
	bneq r21, r4, .LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 11
	xwait r2, 0
.LBB0_9:                                #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r2,  32(r30)
	loadli.w r5,  28(r30)
	store.d r[6:7], -1216(r30)              # 8-byte Folded Spill
	addli r15, zero, 1
	lui r10, 24
	.loc	1 79 7 is_stmt 1                # parallel-rne.mlir:79:7
	load.d r[17:18], 8(r30)
	addli r4, zero, 0
	addli r25, zero, 3
	div.s r2, r6, r2
	mod.s r6, r16, r9
	addli r9, zero, 8
	addli r16, r16, 1
	storeli.w r16, -1220(r30)               # 4-byte Folded Spill
	div.s r2, r2, r5
	slli r6, r6, 15
	add.s r16, r6, r10
	div.s r5, r2, r22
	slli r8, r5, 3
	slli r5, r5, 6
	sub.s r7, r23, r8
	sub.s r5, r2, r5
	min.s r7, r7, r9
	mod.s r2, r2, r7
	div.s r9, r5, r7
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	loadli.w r5,  -1180(r30)
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	loadli.w r7,  -792(r30)
	add.s r2, r8, r2
	slli r8, r9, 7
	storeli.w r8, -1248(r30)                # 4-byte Folded Spill
	zext_int2long r[8:9], r9
	slli r10, r2, 6
	sll.d r[8:9], r[8:9], r24
	storeli.w r10, -1244(r30)               # 4-byte Folded Spill
	zext_int2long r[10:11], r2
	addli r2, zero, 13
	store.d r[8:9], -1232(r30)              # 8-byte Folded Spill
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	sll.d r[8:9], r[8:9], r15
	store.d r[10:11], -1240(r30)            # 8-byte Folded Spill
	sll.d r[10:11], r[10:11], r2
	add.ul r[8:9], r[17:18], r[8:9]
	addli r18, zero, 2048
	addli r17, zero, 57
	store.d r[8:9], -1200(r30)              # 8-byte Folded Spill
	load.d r[8:9], 0(r30)
	add.ul r[8:9], r[8:9], r[10:11]
	addli r11, zero, 6
	store.d r[8:9], -1192(r30)              # 8-byte Folded Spill
	addli r8, zero, 0
	j .LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	lui r7, 48
	addli r20, zero, 128
	addli r24, zero, 7
	ori r7, r7, 64
	.loc	1 102 9 is_stmt 1               # parallel-rne.mlir:102:9
	add.s r2, r2, r7
	addli r7, zero, 4
	lock zero, r7
	dma_cfg r23, r23, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r2, r11, r22, 3
	addli r12, zero, 5
	addli r11, zero, 2
	addli r2, zero, 8
	dma_cfg r20, r22, r23, 4
	dma_cfg r20, r20, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
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
	dma_cfg r23, r23, zero, 0
	dma_cfg r23, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r22, 3
	dma_cfg r20, zero, r23, 4
	dma_cfg r20, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r11, 0
	addli r11, zero, 6
.LBB0_11:                               # %.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -556(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r7,  -232(r30)
	addli r25, zero, 3
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	addli r7, r7, 1
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	storeli.w r2, -556(r30)
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	storeli.w r7, -232(r30)
.LBB0_12:                               # %.thread20
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 79 7                          # parallel-rne.mlir:79:7
	andi r2, r15, 1
	beq r2, zero, .LBB0_31
.LBB0_13:                               # %.backedge
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r15, zero, 0
	.loc	1 123 15 is_stmt 1              # parallel-rne.mlir:123:15
	addli r4, r4, 1
	addli r8, zero, 1
	addli r7, r10, 0
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_27 Depth 3
                                        #       Child Loop BB0_28 Depth 3
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r2, zero, 96
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	addli r9, zero, 58
	addli r10, r7, 1
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	mod.s r2, r5, r2
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	mod.s r9, r7, r9
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	addli r5, r5, 1
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	storeli.w r10, -792(r30)
	.loc	1 96 15                         # parallel-rne.mlir:96:15
	storeli.w r5, -1180(r30)
	slli r20, r2, 13
	.loc	1 98 15                         # parallel-rne.mlir:98:15
	slli r2, r9, 13
	lui r9, 48
	add.s r19, r2, r9
	addli r9, zero, 2
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	beq r21, r9, .LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	zext_int2long r[8:9], r8
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	bneq r21, r23, .LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	sll.d r[8:9], r[8:9], r11
	load.d r[11:12], -1192(r30)             # 8-byte Folded Reload
	addli r14, zero, 6
	add.ul r[11:12], r[11:12], r[8:9]
	addli r9, zero, 3
	addli r8, zero, 7
	xwait r9, 0
	blt.s r17, r7, .LBB0_10
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r20, zero, 5
	.loc	1 102 9                         # parallel-rne.mlir:102:9
	addli r7, zero, 2
	lock zero, r20
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 4
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 16
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 128
	dma_cfg r23, r23, zero, 0
	dma_cfg r23, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r22, 3
	dma_cfg r7, zero, r23, 4
	dma_cfg r7, zero, r22, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r20
	j .LBB0_10
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 103 9 is_stmt 1               # parallel-rne.mlir:103:9
	addli r2, zero, 5
	xwait r9, 0
	xwait r2, 0
	lock zero, zero
	addli r2, zero, 32
	ds_cfg r9, zero, 0
	ds_cfg r2, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r22, zero, 13
	shuffle_batch r20, r19, r2, 1
	addli r2, zero, 3
	unlock zero
	xsignal r2, 0
	addli r2, zero, 4
	xsignal r2, 0
	j .LBB0_11
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	loadli.w r7,  -232(r30)
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	loadli.w r2,  -556(r30)
	addli r11, zero, 80
	mod.s r11, r2, r11
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	mod.s r14, r7, r17
	.loc	1 113 15                        # parallel-rne.mlir:113:15
	addli r2, r2, 1
	storeli.w r2, -556(r30)
	slli r12, r11, 14
	.loc	1 115 15                        # parallel-rne.mlir:115:15
	slli r2, r14, 14
	addli r11, r7, 1
	lui r14, 164
	storeli.w r11, -232(r30)
	add.s r19, r2, r14
	addli r11, zero, 6
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	beq r21, r24, .LBB0_24
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	bneq r21, r11, .LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	addli r27, zero, 16
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	load.d r[11:12], -1200(r30)             # 8-byte Folded Reload
	addli r20, zero, 6
	addli r14, zero, 56
	sll.d r[8:9], r[8:9], r27
	add.ul r[11:12], r[11:12], r[8:9]
	addli r8, zero, 7
	addli r9, zero, 3
	xwait r8, 0
	blt.s r14, r7, .LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	addli r24, zero, 5
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	addli r7, zero, 2
	addli r14, zero, 4
	lock zero, r24
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r14, 10
	dma_cfg zero, zero, r24, 10
	dma_cfg zero, zero, r20, 10
	dma_cfg zero, zero, r8, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 9
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 11
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 12
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 13
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 14
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 15
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 17
	dma_cfg zero, zero, r27, 10
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 18
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 19
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 20
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 21
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 22
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 23
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 24
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 25
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 26
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 27
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 28
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 29
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 30
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 31
	dma_cfg zero, zero, r7, 10
	addli r7, zero, 128
	dma_cfg r23, r23, zero, 0
	dma_cfg r23, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r22, 3
	dma_cfg r7, zero, r14, 4
	addli r7, zero, 32
	addli r14, zero, 512
	dma_cfg r14, zero, r7, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r24
.LBB0_23:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9                           # parallel-rne.mlir:0:9
	lui r7, 164
	addli r20, zero, 128
	addli r14, zero, 32
	addli r17, zero, 512
	addli r25, zero, 3
	addli r24, zero, 7
	ori r7, r7, 64
	.loc	1 119 9                         # parallel-rne.mlir:119:9
	add.s r2, r2, r7
	addli r7, zero, 4
	lock zero, r7
	dma_cfg r23, r23, zero, 0
	dma_cfg zero, r12, zero, 2
	dma_cfg r2, r11, r22, 3
	addli r12, zero, 5
	addli r2, zero, 2
	addli r11, zero, 6
	dma_cfg r20, r22, r7, 4
	dma_cfg r17, r18, r14, 5
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r7
	lock zero, r12
	dma_cfg zero, zero, zero, 10
	dma_cfg zero, zero, r23, 10
	dma_cfg zero, zero, r2, 10
	addli r2, zero, 8
	dma_cfg zero, zero, r9, 10
	dma_cfg zero, zero, r7, 10
	dma_cfg zero, zero, r12, 10
	dma_cfg zero, zero, r11, 10
	dma_cfg zero, zero, r8, 10
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
	dma_cfg zero, zero, r27, 10
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
	dma_cfg r23, r23, zero, 0
	dma_cfg r23, zero, zero, 1
	dma_cfg zero, zero, zero, 2
	dma_cfg r19, zero, r22, 3
	dma_cfg r20, zero, r7, 4
	dma_cfg r17, zero, r14, 5
	addli r17, zero, 57
	dma_cfg zero, zero, zero, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	dma_cfg zero, zero, zero, 8
	unlock r12
	xsignal r11, 0
	.loc	1 120 9 is_stmt 1               # parallel-rne.mlir:120:9
	j .LBB0_12
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=2
	addli r2, zero, 9
	xwait r11, 0
	addli r7, zero, 128
	xwait r2, 0
	addli r2, zero, 2
	lock zero, zero
	ds_cfg r2, zero, 0
	addli r2, zero, 32
	ds_cfg r7, zero, 1
	ds_cfg r2, zero, 14
	ds_cfg r7, zero, 13
	shuffle_coa r12, r19, r2, 2
	addli r2, zero, 8
	unlock zero
	xsignal r24, 0
	xsignal r2, 0
	j .LBB0_12
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	andi r2, r15, 1
	addli r7, zero, 4
	.loc	1 122 9 is_stmt 1               # parallel-rne.mlir:122:9
	bneq r21, r7, .LBB0_30
# %bb.26:                               #   in Loop: Header=BB0_14 Depth=2
	xwait r7, 0
	addli r7, zero, 8
	addli r8, zero, 1
	addli r9, zero, 0
	addli r14, zero, 4
	addli r15, zero, 2
	addli r19, zero, 32
	xwait r7, 0
	addli r7, zero, 1
	beq r4, zero, .LBB0_28
.LBB0_27:                               # %.preheader30
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r9, 13
	slli r9, r9, 8
	lock zero, r7
	mm_cfg r22, r19, r22, 0
	or r11, r11, r12
	or r9, r9, r16
	mm_cfg r15, r14, r7, 2
	mm_acc r9, r20, r11, 8
	andi r11, r8, 1
	addli r9, zero, 1
	addli r8, zero, 0
	unlock r7
	bneq r11, zero, .LBB0_27
	j .LBB0_29
.LBB0_28:                               # %.preheader29
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	slli r11, r9, 13
	slli r9, r9, 8
	lock zero, r7
	mm_cfg r22, r19, r22, 0
	or r11, r11, r12
	or r9, r9, r16
	mm_cfg r15, r14, r7, 2
	mm r9, r20, r11, 8
	andi r11, r8, 1
	addli r9, zero, 1
	addli r8, zero, 0
	unlock r7
	bneq r11, zero, .LBB0_28
.LBB0_29:                               # %.thread20.thread44
                                        #   in Loop: Header=BB0_14 Depth=2
	addli r7, zero, 5
	addli r11, zero, 6
	xsignal r7, 0
	addli r7, zero, 9
	xsignal r7, 0
	bneq r2, zero, .LBB0_13
	j .LBB0_32
.LBB0_30:                               # %.thread20.thread
                                        #   in Loop: Header=BB0_14 Depth=2
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	bneq r2, zero, .LBB0_13
	j .LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 126 7 is_stmt 1               # parallel-rne.mlir:126:7
	addli r2, zero, 4
	bneq r21, r2, .LBB0_33
.LBB0_32:                               # %.thread21
                                        #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	storeli.w zero, -1204(r30)              # 4-byte Folded Spill
	xsignal r2, 0
	j .LBB0_36
.LBB0_33:                               # %.thread43
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 131 7                         # parallel-rne.mlir:131:7
	bneq r21, r25, .LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 10
	xwait r2, 0
	addli r2, zero, 1
	.loc	1 132 7                         # parallel-rne.mlir:132:7
	storeli.w r2, -1204(r30)                # 4-byte Folded Spill
	addli r2, zero, 13
	xwait r2, 0
	j .LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	storeli.w zero, -1204(r30)              # 4-byte Folded Spill
.LBB0_36:                               # %.critedge2
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 136 7 is_stmt 1               # parallel-rne.mlir:136:7
	addli r2, zero, 255
	.loc	1 134 7                         # parallel-rne.mlir:134:7
	xfence
	addli r9, zero, 7
	.loc	1 135 7                         # parallel-rne.mlir:135:7
	mfence { lm, sm, gm }
	.loc	1 136 7                         # parallel-rne.mlir:136:7
	csr_set csr5, r2
	addli r2, zero, 128
	sync_core
	zext_int2long r[17:18], r2
	addli r2, zero, 127
	zext_int2long r[4:5], r2
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	beq r21, zero, .LBB0_69
# %bb.37:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, zero, 2
	beq r21, r2, .LBB0_100
.LBB0_38:                               #   in Loop: Header=BB0_7 Depth=1
	bneq r21, r23, .LBB0_131
# %bb.39:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	zext_int2long r[7:8], zero
	addli r2, zero, 8
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	store.d r[7:8], -1200(r30)              # 8-byte Folded Spill
	zext_int2long r[7:8], r2
	xfence
	mfence { lm, sm, gm }
	j .LBB0_41
.LBB0_40:                               # %middle.block101
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 15
	load.d r[9:10], -1192(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 174 9 is_stmt 1               # parallel-rne.mlir:174:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_130
.LBB0_41:                               # %.preheader26
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_44 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[22:23], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	bneq r6, r16, .LBB0_48
# %bb.42:                               # %scalar.ph95.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_44
.LBB0_43:                               # %scalar.ph95
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 190 13 is_stmt 1              # parallel-rne.mlir:190:13
	add.s r2, r6, r2
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r9, 0(r2)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	beq r10, zero, .LBB0_40
.LBB0_44:                               # %scalar.ph95
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[9:10], r[7:8], r[22:23]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r11, r10, r26
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r9, r28, r11
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r9, zero, .LBB0_46
# %bb.45:                               # %scalar.ph95
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r11, r13, r11
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r11, zero, .LBB0_43
	j .LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r11, r13, r11
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r11, zero, .LBB0_43
.LBB0_47:                               # %scalar.ph95
                                        #   in Loop: Header=BB0_44 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_43
.LBB0_48:                               # %vector.body97.preheader
                                        #   in Loop: Header=BB0_41 Depth=2
	load.d r[19:20], -1200(r30)             # 8-byte Folded Reload
	j .LBB0_50
.LBB0_49:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 175 11 is_stmt 1              # parallel-rne.mlir:175:11
	addli.d r[19:20], r[19:20], 4
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	add.s r9, r6, r10
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	seteq.d r7, r[19:20], r[17:18]
	.loc	1 190 13                        # parallel-rne.mlir:190:13
	stores.w r15, 12(r9)
	stores.w r2, 8(r9)
	stores.w r14, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 175 11                        # parallel-rne.mlir:175:11
	bneq r7, zero, .LBB0_40
.LBB0_50:                               # %vector.body97
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_41 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 176 19                        # parallel-rne.mlir:176:19
	add.ul r[7:8], r[19:20], r[22:23]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r12, 12(r8)
	.loc	1 178 19                        # parallel-rne.mlir:178:19
	and r7, r12, r26
	.loc	1 180 19                        # parallel-rne.mlir:180:19
	setlt.u r2, r28, r7
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_52
# %bb.51:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_50 Depth=3
	lui r2, 1024
	or r15, r12, r2
.LBB0_53:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r11, 8(r8)
	and r21, r11, r26
	setlt.u r2, r28, r21
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r2, zero, .LBB0_55
# %bb.54:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	j .LBB0_56
.LBB0_55:                               #   in Loop: Header=BB0_50 Depth=3
	lui r2, 1024
	or r2, r11, r2
.LBB0_56:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r9, 4(r8)
	and r24, r9, r26
	setlt.u r14, r28, r24
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r14, zero, .LBB0_58
# %bb.57:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_59
.LBB0_58:                               #   in Loop: Header=BB0_50 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_59:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	loads.w r25, 0(r8)
	and r27, r25, r26
	setlt.u r8, r28, r27
	.loc	1 181 19                        # parallel-rne.mlir:181:19
	bneq r8, zero, .LBB0_61
# %bb.60:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r25, 0
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r27, r13, r27
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r27, zero, .LBB0_62
	j .LBB0_63
.LBB0_61:                               #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r25, r8
	.loc	1 187 19 is_stmt 1              # parallel-rne.mlir:187:19
	setlt.u r27, r13, r27
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r27, zero, .LBB0_63
.LBB0_62:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r25, 16
	andi r8, r8, 1
	add.s r8, r25, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_63:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	setlt.u r24, r13, r24
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r24, zero, .LBB0_66
# %bb.64:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r21
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	beq r9, zero, .LBB0_67
.LBB0_65:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r7, zero, .LBB0_49
	j .LBB0_68
.LBB0_66:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r21
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r9, zero, .LBB0_65
.LBB0_67:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r7, r13, r7
	.loc	1 188 19                        # parallel-rne.mlir:188:19
	bneq r7, zero, .LBB0_49
.LBB0_68:                               # %vector.body97
                                        #   in Loop: Header=BB0_50 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r12, 16
	andi r7, r7, 1
	add.s r7, r12, r7
	add.s r7, r7, r1
	and r15, r7, r3
	j .LBB0_49
.LBB0_69:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 137 7 is_stmt 1               # parallel-rne.mlir:137:7
	xfence
	zext_int2long r[7:8], zero
	mfence { lm, sm, gm }
	j .LBB0_71
.LBB0_70:                               # %middle.block119
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r9, zero, 7
	load.d r[10:11], -1192(r30)             # 8-byte Folded Reload
	zext_int2long r[7:8], r9
	.loc	1 145 9 is_stmt 1               # parallel-rne.mlir:145:9
	setlt.ul r2, r[10:11], r[7:8]
	addli.d r[7:8], r[10:11], 1
	beq r2, zero, .LBB0_99
.LBB0_71:                               # %.preheader28
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
                                        #       Child Loop BB0_74 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	bneq r6, r16, .LBB0_78
# %bb.72:                               # %scalar.ph113.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_74
.LBB0_73:                               # %scalar.ph113
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 161 13 is_stmt 1              # parallel-rne.mlir:161:13
	add.s r2, r6, r2
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r9, 0(r2)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	beq r10, zero, .LBB0_70
.LBB0_74:                               # %scalar.ph113
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[9:10], r[7:8], r[24:25]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r11, r10, r26
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r9, r28, r11
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r9, zero, .LBB0_76
# %bb.75:                               # %scalar.ph113
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r11, r13, r11
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r11, zero, .LBB0_73
	j .LBB0_77
.LBB0_76:                               #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r11, r13, r11
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r11, zero, .LBB0_73
.LBB0_77:                               # %scalar.ph113
                                        #   in Loop: Header=BB0_74 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_73
.LBB0_78:                               # %vector.body115.preheader
                                        #   in Loop: Header=BB0_71 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_80
.LBB0_79:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 146 11 is_stmt 1              # parallel-rne.mlir:146:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	add.s r7, r6, r10
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	seteq.d r2, r[22:23], r[17:18]
	.loc	1 161 13                        # parallel-rne.mlir:161:13
	stores.w r12, 12(r7)
	stores.w r11, 8(r7)
	stores.w r9, 4(r7)
	stores.w r8, 0(r7)
	.loc	1 146 11                        # parallel-rne.mlir:146:11
	bneq r2, zero, .LBB0_70
.LBB0_80:                               # %vector.body115
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_71 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 147 19                        # parallel-rne.mlir:147:19
	add.ul r[7:8], r[22:23], r[24:25]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r15, 12(r8)
	.loc	1 149 19                        # parallel-rne.mlir:149:19
	and r7, r15, r26
	.loc	1 151 19                        # parallel-rne.mlir:151:19
	setlt.u r2, r28, r7
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r2, zero, .LBB0_82
# %bb.81:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r12, r15, 0
	j .LBB0_83
.LBB0_82:                               #   in Loop: Header=BB0_80 Depth=3
	lui r2, 1024
	or r12, r15, r2
.LBB0_83:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r2, 8(r8)
	and r21, r2, r26
	setlt.u r9, r28, r21
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r9, zero, .LBB0_85
# %bb.84:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r11, r2, 0
	j .LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_80 Depth=3
	lui r9, 1024
	or r11, r2, r9
.LBB0_86:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r14, 4(r8)
	and r19, r14, r26
	setlt.u r9, r28, r19
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r9, zero, .LBB0_88
# %bb.87:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r9, r14, 0
	j .LBB0_89
.LBB0_88:                               #   in Loop: Header=BB0_80 Depth=3
	lui r9, 1024
	or r9, r14, r9
.LBB0_89:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	loads.w r20, 0(r8)
	and r27, r20, r26
	setlt.u r8, r28, r27
	.loc	1 152 19                        # parallel-rne.mlir:152:19
	bneq r8, zero, .LBB0_91
# %bb.90:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r27, r13, r27
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r27, zero, .LBB0_92
	j .LBB0_93
.LBB0_91:                               #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r20, r8
	.loc	1 158 19 is_stmt 1              # parallel-rne.mlir:158:19
	setlt.u r27, r13, r27
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r27, zero, .LBB0_93
.LBB0_92:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r20, 16
	andi r8, r8, 1
	add.s r8, r20, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_93:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	setlt.u r19, r13, r19
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r19, zero, .LBB0_96
# %bb.94:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r14, r13, r21
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	beq r14, zero, .LBB0_97
.LBB0_95:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r2, r13, r7
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r2, zero, .LBB0_79
	j .LBB0_98
.LBB0_96:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r9, r14, 16
	andi r9, r9, 1
	add.s r9, r14, r9
	add.s r9, r9, r1
	and r9, r9, r3
	setlt.u r14, r13, r21
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r14, zero, .LBB0_95
.LBB0_97:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r11, r2, 16
	andi r11, r11, 1
	add.s r2, r2, r11
	add.s r2, r2, r1
	and r11, r2, r3
	setlt.u r2, r13, r7
	.loc	1 159 19                        # parallel-rne.mlir:159:19
	bneq r2, zero, .LBB0_79
.LBB0_98:                               # %vector.body115
                                        #   in Loop: Header=BB0_80 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r15, 16
	andi r2, r2, 1
	add.s r2, r15, r2
	add.s r2, r2, r1
	and r12, r2, r3
	j .LBB0_79
.LBB0_99:                               #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r21
	addli r22, zero, 64
	addli r23, zero, 1
	addli r11, zero, 6
	.loc	1 137 7                         # parallel-rne.mlir:137:7
	mfence { sm }
	.loc	1 166 7                         # parallel-rne.mlir:166:7
	addli r2, zero, 2
	bneq r21, r2, .LBB0_38
.LBB0_100:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 16
	.loc	1 195 7 is_stmt 1               # parallel-rne.mlir:195:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_102
.LBB0_101:                              # %middle.block110
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 23
	load.d r[9:10], -1192(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 203 9 is_stmt 1               # parallel-rne.mlir:203:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_130
.LBB0_102:                              # %.preheader27
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_111 Depth 3
                                        #       Child Loop BB0_105 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	bneq r6, r16, .LBB0_109
# %bb.103:                              # %scalar.ph104.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_105
.LBB0_104:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 219 13 is_stmt 1              # parallel-rne.mlir:219:13
	add.s r2, r6, r2
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r9, 0(r2)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	beq r10, zero, .LBB0_101
.LBB0_105:                              # %scalar.ph104
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[9:10], r[7:8], r[24:25]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r11, r10, r26
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r9, r28, r11
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r9, zero, .LBB0_107
# %bb.106:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r11, r13, r11
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r11, zero, .LBB0_104
	j .LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r11, r13, r11
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r11, zero, .LBB0_104
.LBB0_108:                              # %scalar.ph104
                                        #   in Loop: Header=BB0_105 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_104
.LBB0_109:                              # %vector.body106.preheader
                                        #   in Loop: Header=BB0_102 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_111
.LBB0_110:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 204 11 is_stmt 1              # parallel-rne.mlir:204:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	add.s r9, r6, r10
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	seteq.d r7, r[22:23], r[17:18]
	.loc	1 219 13                        # parallel-rne.mlir:219:13
	stores.w r15, 12(r9)
	stores.w r2, 8(r9)
	stores.w r14, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 204 11                        # parallel-rne.mlir:204:11
	bneq r7, zero, .LBB0_101
.LBB0_111:                              # %vector.body106
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 205 19                        # parallel-rne.mlir:205:19
	add.ul r[7:8], r[22:23], r[24:25]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r12, 12(r8)
	.loc	1 207 19                        # parallel-rne.mlir:207:19
	and r7, r12, r26
	.loc	1 209 19                        # parallel-rne.mlir:209:19
	setlt.u r2, r28, r7
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r2, zero, .LBB0_113
# %bb.112:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_111 Depth=3
	lui r2, 1024
	or r15, r12, r2
.LBB0_114:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r11, 8(r8)
	and r21, r11, r26
	setlt.u r2, r28, r21
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r2, zero, .LBB0_116
# %bb.115:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	j .LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_111 Depth=3
	lui r2, 1024
	or r2, r11, r2
.LBB0_117:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r9, 4(r8)
	and r19, r9, r26
	setlt.u r14, r28, r19
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r14, zero, .LBB0_119
# %bb.118:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_120
.LBB0_119:                              #   in Loop: Header=BB0_111 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_120:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	loads.w r20, 0(r8)
	and r27, r20, r26
	setlt.u r8, r28, r27
	.loc	1 210 19                        # parallel-rne.mlir:210:19
	bneq r8, zero, .LBB0_122
# %bb.121:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r27, r13, r27
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r27, zero, .LBB0_123
	j .LBB0_124
.LBB0_122:                              #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r20, r8
	.loc	1 216 19 is_stmt 1              # parallel-rne.mlir:216:19
	setlt.u r27, r13, r27
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r27, zero, .LBB0_124
.LBB0_123:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r20, 16
	andi r8, r8, 1
	add.s r8, r20, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_124:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	setlt.u r19, r13, r19
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r19, zero, .LBB0_127
# %bb.125:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r21
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	beq r9, zero, .LBB0_128
.LBB0_126:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r7, zero, .LBB0_110
	j .LBB0_129
.LBB0_127:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r21
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r9, zero, .LBB0_126
.LBB0_128:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r7, r13, r7
	.loc	1 217 19                        # parallel-rne.mlir:217:19
	bneq r7, zero, .LBB0_110
.LBB0_129:                              # %vector.body106
                                        #   in Loop: Header=BB0_111 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r12, 16
	andi r7, r7, 1
	add.s r7, r12, r7
	add.s r7, r7, r1
	and r15, r7, r3
	j .LBB0_110
.LBB0_130:                              # %.sink.split
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r21
	addli r22, zero, 64
	addli r23, zero, 1
	addli r11, zero, 6
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_131:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	loadli.w r2,  -1204(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_166
# %bb.132:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	addli r2, zero, 4
	beq r21, r2, .LBB0_197
.LBB0_133:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	beq r21, r9, .LBB0_228
.LBB0_134:                              #   in Loop: Header=BB0_7 Depth=1
	beq r21, r11, .LBB0_258
# %bb.135:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 5
	bneq r21, r2, .LBB0_289
# %bb.136:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 40
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_138
.LBB0_137:                              # %middle.block
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 47
	load.d r[9:10], -1192(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 290 9 is_stmt 1               # parallel-rne.mlir:290:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_288
.LBB0_138:                              # %.preheader
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_147 Depth 3
                                        #       Child Loop BB0_141 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	bneq r6, r16, .LBB0_145
# %bb.139:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_141
.LBB0_140:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 306 13 is_stmt 1              # parallel-rne.mlir:306:13
	add.s r2, r6, r2
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r9, 0(r2)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	beq r10, zero, .LBB0_137
.LBB0_141:                              # %scalar.ph
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[9:10], r[7:8], r[24:25]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r11, r10, r26
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r9, r28, r11
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r9, zero, .LBB0_143
# %bb.142:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r11, r13, r11
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r11, zero, .LBB0_140
	j .LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r11, r13, r11
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r11, zero, .LBB0_140
.LBB0_144:                              # %scalar.ph
                                        #   in Loop: Header=BB0_141 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_140
.LBB0_145:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_138 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_147
.LBB0_146:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 291 11 is_stmt 1              # parallel-rne.mlir:291:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	add.s r9, r6, r10
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	seteq.d r7, r[22:23], r[17:18]
	.loc	1 306 13                        # parallel-rne.mlir:306:13
	stores.w r15, 12(r9)
	stores.w r2, 8(r9)
	stores.w r14, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 291 11                        # parallel-rne.mlir:291:11
	bneq r7, zero, .LBB0_137
.LBB0_147:                              # %vector.body
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_138 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 292 19                        # parallel-rne.mlir:292:19
	add.ul r[7:8], r[22:23], r[24:25]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r12, 12(r8)
	.loc	1 294 19                        # parallel-rne.mlir:294:19
	and r7, r12, r26
	.loc	1 296 19                        # parallel-rne.mlir:296:19
	setlt.u r2, r28, r7
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_149
# %bb.148:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_147 Depth=3
	lui r2, 1024
	or r15, r12, r2
.LBB0_150:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r11, 8(r8)
	and r21, r11, r26
	setlt.u r2, r28, r21
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r2, zero, .LBB0_152
# %bb.151:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	j .LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_147 Depth=3
	lui r2, 1024
	or r2, r11, r2
.LBB0_153:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r9, 4(r8)
	and r19, r9, r26
	setlt.u r14, r28, r19
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r14, zero, .LBB0_155
# %bb.154:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_156
.LBB0_155:                              #   in Loop: Header=BB0_147 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_156:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	loads.w r20, 0(r8)
	and r27, r20, r26
	setlt.u r8, r28, r27
	.loc	1 297 19                        # parallel-rne.mlir:297:19
	bneq r8, zero, .LBB0_162
# %bb.157:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r27, r13, r27
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r27, zero, .LBB0_159
.LBB0_158:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r20, 16
	andi r8, r8, 1
	add.s r8, r20, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_159:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	setlt.u r19, r13, r19
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r19, zero, .LBB0_163
# %bb.160:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r21
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r9, zero, .LBB0_164
.LBB0_161:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r7, zero, .LBB0_146
	j .LBB0_165
.LBB0_162:                              #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r20, r8
	.loc	1 303 19 is_stmt 1              # parallel-rne.mlir:303:19
	setlt.u r27, r13, r27
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	beq r27, zero, .LBB0_158
	j .LBB0_159
.LBB0_163:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r21
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r9, zero, .LBB0_161
.LBB0_164:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r7, r13, r7
	.loc	1 304 19                        # parallel-rne.mlir:304:19
	bneq r7, zero, .LBB0_146
.LBB0_165:                              # %vector.body
                                        #   in Loop: Header=BB0_147 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r12, 16
	andi r7, r7, 1
	add.s r7, r12, r7
	add.s r7, r7, r1
	and r15, r7, r3
	j .LBB0_146
.LBB0_166:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 24
	.loc	1 224 7 is_stmt 1               # parallel-rne.mlir:224:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_168
.LBB0_167:                              # %middle.block92
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 31
	load.d r[9:10], -1192(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 232 9 is_stmt 1               # parallel-rne.mlir:232:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_196
.LBB0_168:                              # %.preheader25
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_171 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	bneq r6, r16, .LBB0_175
# %bb.169:                              # %scalar.ph86.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_171
.LBB0_170:                              # %scalar.ph86
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 248 13 is_stmt 1              # parallel-rne.mlir:248:13
	add.s r2, r6, r2
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r9, 0(r2)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	beq r10, zero, .LBB0_167
.LBB0_171:                              # %scalar.ph86
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[9:10], r[7:8], r[24:25]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r11, r10, r26
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r9, r28, r11
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r9, zero, .LBB0_173
# %bb.172:                              # %scalar.ph86
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r11, r13, r11
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r11, zero, .LBB0_170
	j .LBB0_174
.LBB0_173:                              #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r11, r13, r11
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r11, zero, .LBB0_170
.LBB0_174:                              # %scalar.ph86
                                        #   in Loop: Header=BB0_171 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_170
.LBB0_175:                              # %vector.body88.preheader
                                        #   in Loop: Header=BB0_168 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_177
.LBB0_176:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 233 11 is_stmt 1              # parallel-rne.mlir:233:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	add.s r9, r6, r10
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	seteq.d r7, r[22:23], r[17:18]
	.loc	1 248 13                        # parallel-rne.mlir:248:13
	stores.w r15, 12(r9)
	stores.w r2, 8(r9)
	stores.w r14, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 233 11                        # parallel-rne.mlir:233:11
	bneq r7, zero, .LBB0_167
.LBB0_177:                              # %vector.body88
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 234 19                        # parallel-rne.mlir:234:19
	add.ul r[7:8], r[22:23], r[24:25]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r12, 12(r8)
	.loc	1 236 19                        # parallel-rne.mlir:236:19
	and r7, r12, r26
	.loc	1 238 19                        # parallel-rne.mlir:238:19
	setlt.u r2, r28, r7
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_179
# %bb.178:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_180
.LBB0_179:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r15, r12, r2
.LBB0_180:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r11, 8(r8)
	and r21, r11, r26
	setlt.u r2, r28, r21
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r2, zero, .LBB0_182
# %bb.181:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	j .LBB0_183
.LBB0_182:                              #   in Loop: Header=BB0_177 Depth=3
	lui r2, 1024
	or r2, r11, r2
.LBB0_183:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r9, 4(r8)
	and r19, r9, r26
	setlt.u r14, r28, r19
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r14, zero, .LBB0_185
# %bb.184:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_186
.LBB0_185:                              #   in Loop: Header=BB0_177 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_186:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	loads.w r20, 0(r8)
	and r27, r20, r26
	setlt.u r8, r28, r27
	.loc	1 239 19                        # parallel-rne.mlir:239:19
	bneq r8, zero, .LBB0_192
# %bb.187:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r27, r13, r27
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r27, zero, .LBB0_189
.LBB0_188:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r20, 16
	andi r8, r8, 1
	add.s r8, r20, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_189:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	setlt.u r19, r13, r19
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r19, zero, .LBB0_193
# %bb.190:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r21
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r9, zero, .LBB0_194
.LBB0_191:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r7, zero, .LBB0_176
	j .LBB0_195
.LBB0_192:                              #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r20, r8
	.loc	1 245 19 is_stmt 1              # parallel-rne.mlir:245:19
	setlt.u r27, r13, r27
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	beq r27, zero, .LBB0_188
	j .LBB0_189
.LBB0_193:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r21
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r9, zero, .LBB0_191
.LBB0_194:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r7, r13, r7
	.loc	1 246 19                        # parallel-rne.mlir:246:19
	bneq r7, zero, .LBB0_176
.LBB0_195:                              # %vector.body88
                                        #   in Loop: Header=BB0_177 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r12, 16
	andi r7, r7, 1
	add.s r7, r12, r7
	add.s r7, r7, r1
	and r15, r7, r3
	j .LBB0_176
.LBB0_196:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r21
	addli r22, zero, 64
	addli r23, zero, 1
	addli r11, zero, 6
	.loc	1 224 7                         # parallel-rne.mlir:224:7
	mfence { sm }
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	addli r2, zero, 4
	bneq r21, r2, .LBB0_133
.LBB0_197:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 32
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_199
.LBB0_198:                              # %middle.block83
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 0 7                           # parallel-rne.mlir:0:7
	addli r2, zero, 39
	load.d r[9:10], -1192(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 261 9 is_stmt 1               # parallel-rne.mlir:261:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_227
.LBB0_199:                              # %.preheader24
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_208 Depth 3
                                        #       Child Loop BB0_202 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	bneq r6, r16, .LBB0_206
# %bb.200:                              # %scalar.ph77.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_202
.LBB0_201:                              # %scalar.ph77
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 277 13 is_stmt 1              # parallel-rne.mlir:277:13
	add.s r2, r6, r2
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r9, 0(r2)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	beq r10, zero, .LBB0_198
.LBB0_202:                              # %scalar.ph77
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[9:10], r[7:8], r[24:25]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r11, r10, r26
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r9, r28, r11
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r9, zero, .LBB0_204
# %bb.203:                              # %scalar.ph77
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r11, r13, r11
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r11, zero, .LBB0_201
	j .LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r11, r13, r11
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r11, zero, .LBB0_201
.LBB0_205:                              # %scalar.ph77
                                        #   in Loop: Header=BB0_202 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_201
.LBB0_206:                              # %vector.body79.preheader
                                        #   in Loop: Header=BB0_199 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_208
.LBB0_207:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 262 11 is_stmt 1              # parallel-rne.mlir:262:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	add.s r9, r6, r10
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	seteq.d r7, r[22:23], r[17:18]
	.loc	1 277 13                        # parallel-rne.mlir:277:13
	stores.w r15, 12(r9)
	stores.w r2, 8(r9)
	stores.w r14, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 262 11                        # parallel-rne.mlir:262:11
	bneq r7, zero, .LBB0_198
.LBB0_208:                              # %vector.body79
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_199 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 263 19                        # parallel-rne.mlir:263:19
	add.ul r[7:8], r[22:23], r[24:25]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r12, 12(r8)
	.loc	1 265 19                        # parallel-rne.mlir:265:19
	and r7, r12, r26
	.loc	1 267 19                        # parallel-rne.mlir:267:19
	setlt.u r2, r28, r7
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_210
# %bb.209:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_211
.LBB0_210:                              #   in Loop: Header=BB0_208 Depth=3
	lui r2, 1024
	or r15, r12, r2
.LBB0_211:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r11, 8(r8)
	and r21, r11, r26
	setlt.u r2, r28, r21
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r2, zero, .LBB0_213
# %bb.212:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	j .LBB0_214
.LBB0_213:                              #   in Loop: Header=BB0_208 Depth=3
	lui r2, 1024
	or r2, r11, r2
.LBB0_214:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r9, 4(r8)
	and r19, r9, r26
	setlt.u r14, r28, r19
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r14, zero, .LBB0_216
# %bb.215:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_208 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_217:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	loads.w r20, 0(r8)
	and r27, r20, r26
	setlt.u r8, r28, r27
	.loc	1 268 19                        # parallel-rne.mlir:268:19
	bneq r8, zero, .LBB0_223
# %bb.218:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r27, r13, r27
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r27, zero, .LBB0_220
.LBB0_219:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r20, 16
	andi r8, r8, 1
	add.s r8, r20, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_220:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	setlt.u r19, r13, r19
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r19, zero, .LBB0_224
# %bb.221:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r21
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r9, zero, .LBB0_225
.LBB0_222:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r7, zero, .LBB0_207
	j .LBB0_226
.LBB0_223:                              #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r20, r8
	.loc	1 274 19 is_stmt 1              # parallel-rne.mlir:274:19
	setlt.u r27, r13, r27
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	beq r27, zero, .LBB0_219
	j .LBB0_220
.LBB0_224:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r21
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r9, zero, .LBB0_222
.LBB0_225:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r7, r13, r7
	.loc	1 275 19                        # parallel-rne.mlir:275:19
	bneq r7, zero, .LBB0_207
.LBB0_226:                              # %vector.body79
                                        #   in Loop: Header=BB0_208 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r12, 16
	andi r7, r7, 1
	add.s r7, r12, r7
	add.s r7, r7, r1
	and r15, r7, r3
	j .LBB0_207
.LBB0_227:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r21
	addli r22, zero, 64
	addli r23, zero, 1
	addli r11, zero, 6
	.loc	1 253 7                         # parallel-rne.mlir:253:7
	mfence { sm }
	.loc	1 282 7                         # parallel-rne.mlir:282:7
	bneq r21, r9, .LBB0_134
.LBB0_228:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 56
	.loc	1 340 7 is_stmt 1               # parallel-rne.mlir:340:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_230
.LBB0_229:                              # %middle.block74
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 63
	load.d r[9:10], -1192(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 348 9 is_stmt 1               # parallel-rne.mlir:348:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_288
.LBB0_230:                              # %.preheader22
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_233 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	bneq r6, r16, .LBB0_237
# %bb.231:                              # %scalar.ph68.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_233
.LBB0_232:                              # %scalar.ph68
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 364 13 is_stmt 1              # parallel-rne.mlir:364:13
	add.s r2, r6, r2
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r9, 0(r2)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	beq r10, zero, .LBB0_229
.LBB0_233:                              # %scalar.ph68
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[9:10], r[7:8], r[24:25]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r11, r10, r26
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r9, r28, r11
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r9, zero, .LBB0_235
# %bb.234:                              # %scalar.ph68
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r11, r13, r11
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r11, zero, .LBB0_232
	j .LBB0_236
.LBB0_235:                              #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r11, r13, r11
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r11, zero, .LBB0_232
.LBB0_236:                              # %scalar.ph68
                                        #   in Loop: Header=BB0_233 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_232
.LBB0_237:                              # %vector.body70.preheader
                                        #   in Loop: Header=BB0_230 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_239
.LBB0_238:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 349 11 is_stmt 1              # parallel-rne.mlir:349:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	add.s r9, r6, r10
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	seteq.d r7, r[22:23], r[17:18]
	.loc	1 364 13                        # parallel-rne.mlir:364:13
	stores.w r15, 12(r9)
	stores.w r2, 8(r9)
	stores.w r14, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 349 11                        # parallel-rne.mlir:349:11
	bneq r7, zero, .LBB0_229
.LBB0_239:                              # %vector.body70
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_230 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 350 19                        # parallel-rne.mlir:350:19
	add.ul r[7:8], r[22:23], r[24:25]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r12, 12(r8)
	.loc	1 352 19                        # parallel-rne.mlir:352:19
	and r7, r12, r26
	.loc	1 354 19                        # parallel-rne.mlir:354:19
	setlt.u r2, r28, r7
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r2, zero, .LBB0_241
# %bb.240:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_242
.LBB0_241:                              #   in Loop: Header=BB0_239 Depth=3
	lui r2, 1024
	or r15, r12, r2
.LBB0_242:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r11, 8(r8)
	and r21, r11, r26
	setlt.u r2, r28, r21
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r2, zero, .LBB0_244
# %bb.243:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	j .LBB0_245
.LBB0_244:                              #   in Loop: Header=BB0_239 Depth=3
	lui r2, 1024
	or r2, r11, r2
.LBB0_245:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r9, 4(r8)
	and r19, r9, r26
	setlt.u r14, r28, r19
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r14, zero, .LBB0_247
# %bb.246:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_248
.LBB0_247:                              #   in Loop: Header=BB0_239 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_248:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	loads.w r20, 0(r8)
	and r27, r20, r26
	setlt.u r8, r28, r27
	.loc	1 355 19                        # parallel-rne.mlir:355:19
	bneq r8, zero, .LBB0_250
# %bb.249:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r27, r13, r27
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r27, zero, .LBB0_251
	j .LBB0_252
.LBB0_250:                              #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r20, r8
	.loc	1 361 19 is_stmt 1              # parallel-rne.mlir:361:19
	setlt.u r27, r13, r27
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r27, zero, .LBB0_252
.LBB0_251:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r20, 16
	andi r8, r8, 1
	add.s r8, r20, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_252:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	setlt.u r19, r13, r19
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r19, zero, .LBB0_255
# %bb.253:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r21
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	beq r9, zero, .LBB0_256
.LBB0_254:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r7, zero, .LBB0_238
	j .LBB0_257
.LBB0_255:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r21
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r9, zero, .LBB0_254
.LBB0_256:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r7, r13, r7
	.loc	1 362 19                        # parallel-rne.mlir:362:19
	bneq r7, zero, .LBB0_238
.LBB0_257:                              # %vector.body70
                                        #   in Loop: Header=BB0_239 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r12, 16
	andi r7, r7, 1
	add.s r7, r12, r7
	add.s r7, r7, r1
	and r15, r7, r3
	j .LBB0_238
.LBB0_258:                              #   in Loop: Header=BB0_7 Depth=1
	addli r2, zero, 48
	.loc	1 311 7 is_stmt 1               # parallel-rne.mlir:311:7
	xfence
	mfence { lm, sm, gm }
	zext_int2long r[7:8], r2
	j .LBB0_260
.LBB0_259:                              # %middle.block65
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	addli r2, zero, 55
	load.d r[9:10], -1192(r30)              # 8-byte Folded Reload
	zext_int2long r[7:8], r2
	.loc	1 319 9 is_stmt 1               # parallel-rne.mlir:319:9
	setlt.ul r2, r[9:10], r[7:8]
	addli.d r[7:8], r[9:10], 1
	addli r9, zero, 7
	beq r2, zero, .LBB0_288
.LBB0_260:                              # %.preheader23
                                        #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_269 Depth 3
                                        #       Child Loop BB0_263 Depth 3
	.loc	1 0 9 is_stmt 0                 # parallel-rne.mlir:0:9
	sll.d r[24:25], r[7:8], r9
	store.d r[7:8], -1192(r30)              # 8-byte Folded Spill
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	bneq r6, r16, .LBB0_267
# %bb.261:                              # %scalar.ph59.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	.loc	1 0 11 is_stmt 0                # parallel-rne.mlir:0:11
	zext_int2long r[7:8], zero
	j .LBB0_263
.LBB0_262:                              # %scalar.ph59
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	setlt.ul r10, r[7:8], r[4:5]
	.loc	1 335 13 is_stmt 1              # parallel-rne.mlir:335:13
	add.s r2, r6, r2
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	addli.d r[7:8], r[7:8], 1
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r9, 0(r2)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	beq r10, zero, .LBB0_259
.LBB0_263:                              # %scalar.ph59
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[9:10], r[7:8], r[24:25]
	slli r2, r9, 2
	add.s r9, r16, r2
	loads.w r10, 0(r9)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r11, r10, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r9, r28, r11
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r9, zero, .LBB0_265
# %bb.264:                              # %scalar.ph59
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r9, r10, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r11, r13, r11
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r11, zero, .LBB0_262
	j .LBB0_266
.LBB0_265:                              #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r9, 1024
	or r9, r10, r9
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r11, r13, r11
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r11, zero, .LBB0_262
.LBB0_266:                              # %scalar.ph59
                                        #   in Loop: Header=BB0_263 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r9, r10, 16
	andi r9, r9, 1
	add.s r9, r10, r9
	add.s r9, r9, r1
	and r9, r9, r3
	j .LBB0_262
.LBB0_267:                              # %vector.body61.preheader
                                        #   in Loop: Header=BB0_260 Depth=2
	zext_int2long r[22:23], zero
	j .LBB0_269
.LBB0_268:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 320 11 is_stmt 1              # parallel-rne.mlir:320:11
	addli.d r[22:23], r[22:23], 4
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	add.s r9, r6, r10
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	seteq.d r7, r[22:23], r[17:18]
	.loc	1 335 13                        # parallel-rne.mlir:335:13
	stores.w r15, 12(r9)
	stores.w r2, 8(r9)
	stores.w r14, 4(r9)
	stores.w r8, 0(r9)
	.loc	1 320 11                        # parallel-rne.mlir:320:11
	bneq r7, zero, .LBB0_259
.LBB0_269:                              # %vector.body61
                                        #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_260 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	.loc	1 321 19                        # parallel-rne.mlir:321:19
	add.ul r[7:8], r[22:23], r[24:25]
	slli r10, r7, 2
	add.s r8, r16, r10
	loads.w r12, 12(r8)
	.loc	1 323 19                        # parallel-rne.mlir:323:19
	and r7, r12, r26
	.loc	1 325 19                        # parallel-rne.mlir:325:19
	setlt.u r2, r28, r7
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r2, zero, .LBB0_271
# %bb.270:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	addli r15, r12, 0
	j .LBB0_272
.LBB0_271:                              #   in Loop: Header=BB0_269 Depth=3
	lui r2, 1024
	or r15, r12, r2
.LBB0_272:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r11, 8(r8)
	and r21, r11, r26
	setlt.u r2, r28, r21
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r2, zero, .LBB0_274
# %bb.273:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r2, r11, 0
	j .LBB0_275
.LBB0_274:                              #   in Loop: Header=BB0_269 Depth=3
	lui r2, 1024
	or r2, r11, r2
.LBB0_275:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r9, 4(r8)
	and r19, r9, r26
	setlt.u r14, r28, r19
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r14, zero, .LBB0_277
# %bb.276:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r14, r9, 0
	j .LBB0_278
.LBB0_277:                              #   in Loop: Header=BB0_269 Depth=3
	lui r14, 1024
	or r14, r9, r14
.LBB0_278:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	loads.w r20, 0(r8)
	and r27, r20, r26
	setlt.u r8, r28, r27
	.loc	1 326 19                        # parallel-rne.mlir:326:19
	bneq r8, zero, .LBB0_280
# %bb.279:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	addli r8, r20, 0
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r27, r13, r27
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r27, zero, .LBB0_281
	j .LBB0_282
.LBB0_280:                              #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	lui r8, 1024
	or r8, r20, r8
	.loc	1 332 19 is_stmt 1              # parallel-rne.mlir:332:19
	setlt.u r27, r13, r27
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r27, zero, .LBB0_282
.LBB0_281:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19 is_stmt 0                # parallel-rne.mlir:0:19
	srli r8, r20, 16
	andi r8, r8, 1
	add.s r8, r20, r8
	add.s r8, r8, r1
	and r8, r8, r3
.LBB0_282:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	setlt.u r19, r13, r19
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r19, zero, .LBB0_285
# %bb.283:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r9, r13, r21
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	beq r9, zero, .LBB0_286
.LBB0_284:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 0                           # parallel-rne.mlir:0:0
	setlt.u r7, r13, r7
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r7, zero, .LBB0_268
	j .LBB0_287
.LBB0_285:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r14, r9, 16
	andi r14, r14, 1
	add.s r9, r9, r14
	add.s r9, r9, r1
	and r14, r9, r3
	setlt.u r9, r13, r21
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r9, zero, .LBB0_284
.LBB0_286:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r2, r11, 16
	andi r2, r2, 1
	add.s r2, r11, r2
	add.s r2, r2, r1
	and r2, r2, r3
	setlt.u r7, r13, r7
	.loc	1 333 19                        # parallel-rne.mlir:333:19
	bneq r7, zero, .LBB0_268
.LBB0_287:                              # %vector.body61
                                        #   in Loop: Header=BB0_269 Depth=3
	.loc	1 0 19                          # parallel-rne.mlir:0:19
	srli r7, r12, 16
	andi r7, r7, 1
	add.s r7, r12, r7
	add.s r7, r7, r1
	and r15, r7, r3
	j .LBB0_268
.LBB0_288:                              # %.sink.split50
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 32 5 is_stmt 1                # parallel-rne.mlir:32:5
	core_id r21
	addli r22, zero, 64
	addli r23, zero, 1
	.loc	1 0 0 is_stmt 0                 # parallel-rne.mlir:0:0
	mfence { sm }
.LBB0_289:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 369 7 is_stmt 1               # parallel-rne.mlir:369:7
	addli r2, zero, 255
	csr_set csr5, r2
	sync_core
	.loc	1 370 7                         # parallel-rne.mlir:370:7
	loadli.w r2,  -1204(r30)                # 4-byte Folded Reload
	bneq r2, zero, .LBB0_5
# %bb.290:                              # %.critedge4
                                        #   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 7 is_stmt 0                 # parallel-rne.mlir:0:7
	loadli.w r16,  -1220(r30)               # 4-byte Folded Reload
	addli r9, zero, 3
	.loc	1 387 7 is_stmt 1               # parallel-rne.mlir:387:7
	bneq r21, zero, .LBB0_6
# %bb.291:                              #   in Loop: Header=BB0_7 Depth=1
	.loc	1 377 13                        # parallel-rne.mlir:377:13
	loadli.w r2,  -1248(r30)                # 4-byte Folded Reload
	zext_int2long r[11:12], zero
	zext_int2long r[14:15], r22
	zext_int2long r[4:5], r2
	addli r2, zero, 896
	zext_int2long r[7:8], r2
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	loadli.w r2,  -1244(r30)                # 4-byte Folded Reload
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	min.ul r[7:8], r[4:5], r[7:8]
	.loc	1 372 13                        # parallel-rne.mlir:372:13
	sext_int2long r[9:10], r2
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	addli r2, zero, 17
	.loc	1 379 13                        # parallel-rne.mlir:379:13
	addli.d r[7:8], r[7:8], 128
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	min.sl r[11:12], r[9:10], r[11:12]
	.loc	1 381 13                        # parallel-rne.mlir:381:13
	max.ul r[7:8], r[7:8], r[4:5]
	sub.sl r[4:5], r[7:8], r[4:5]
	.loc	1 374 13                        # parallel-rne.mlir:374:13
	addli.d r[7:8], r[11:12], 64
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[11:12], -1240(r30)             # 8-byte Folded Reload
	.loc	1 375 13                        # parallel-rne.mlir:375:13
	max.sl r[7:8], r[7:8], r[9:10]
	.loc	1 383 13                        # parallel-rne.mlir:383:13
	min.ul r[4:5], r[4:5], r[17:18]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	sll.d r[11:12], r[11:12], r2
	addli r2, zero, 12
	.loc	1 376 13                        # parallel-rne.mlir:376:13
	sub.sl r[7:8], r[7:8], r[9:10]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	load.d r[9:10], 16(r30)
	add.ul r[9:10], r[9:10], r[11:12]
	load.d r[11:12], -1232(r30)             # 8-byte Folded Reload
	xwait r2, 0
	ori r2, r6, 64
	.loc	1 382 13                        # parallel-rne.mlir:382:13
	min.sl r[6:7], r[7:8], r[14:15]
	.loc	1 387 7                         # parallel-rne.mlir:387:7
	sll.d r[11:12], r[11:12], r23
	add.ul r[9:10], r[9:10], r[11:12]
	addli r11, zero, 5
	lock zero, r11
	dma_cfg r23, r23, zero, 0
	dma_cfg zero, r23, zero, 1
	dma_cfg r10, zero, zero, 2
	dma_cfg r9, r2, r22, 3
	addli r2, r4, 31
	slli r4, r4, 1
	addli r5, zero, 128
	addli r9, zero, 3
	srli r2, r2, 5
	dma_cfg r22, r5, r2, 4
	andi r2, r4, 62
	addli r4, zero, 512
	addli r5, zero, 2048
	dma_cfg r5, r4, r6, 5
	dma_cfg zero, zero, r2, 8
	dma_run zero
	dma_cfg zero, zero, r23, 5
	addli r2, zero, 13
	dma_cfg zero, zero, zero, 8
	unlock r11
	xsignal r2, 0
	j .LBB0_6
.LBB0_292:                              # %._crit_edge
	.loc	1 389 5                         # parallel-rne.mlir:389:5
	xsignal zero, 0
	bneq r21, zero, .LBB0_294
# %bb.293:
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
.LBB0_294:
	.loc	1 390 5 epilogue_begin is_stmt 1 # parallel-rne.mlir:390:5
	addli sp, sp, 1256
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
	.long	1320                            # 0x528
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
.asciz	"/home/zhaoweiming/f06-resources-20261102/results/full-gpu4/cache/triton-p800-ops-5134b460d69771aa/division-pgap2bdg" # string offset=25
	.ident	"KUNLUNXIN XPU C/C++ Compiler Version 4.0.0, based on clang version 22.1.8 (ssh://zhangzhuangzhuang01@icode.baidu.com:8235/baidu/xpu/llvm 2579dbaec939a3e7e5a0f46f43a0a00255c03f1f)"
	.section	".note.GNU-stack","",@progbits
	.eabi_attribute	4, 1	# TAG_CDNN_Inst_Is_Used
	.section	.debug_line,"",@progbits
.Lline_table_start0:
